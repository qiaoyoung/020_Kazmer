//
//  USERExportMessageViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

#import "USERExportMessageViewController.h"
#import "USERMigrateProgressView.h"
#import "USERMigrateCompleteView.h"
#import "NSString+USER.h"
#import "NSData+USER.h"
#import "USERExportMessageDelegateImpl.h"
#import "SVProgressHUD.h"
#import "UIView+Toast.h"


static NSString * const aesVectorString = @"0123456789012345";

@interface USERExportMessageViewController ()

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, copy) NSString *secureKey;

@end

@implementation USERExportMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"本地消息导出".user_localized;

    USERMigrateProgressView *progressView = [[USERMigrateProgressView alloc] initWithFrame:self.view.bounds];
    [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    progressView.tip = @"导出本地消息需要较长时间，请耐心等待".user_localized;
    self.contentView = progressView;
    
    [self exportMessageInfos];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    const CGRect bounds = self.view.bounds;
    self.contentView.frame = bounds;
}

- (void)setContentView:(UIView *)contentView {
    if (_contentView == contentView) {
        return;
    }
    if (contentView) {
        [self.view addSubview:contentView];
    }
    if (_contentView) {
        [_contentView removeFromSuperview];
    }
    _contentView = contentView;
}

#pragma mark
- (void)exportMessageInfos {
    USERExportMessageDelegateImpl *exportImpl = [[USERExportMessageDelegateImpl alloc] init];
    
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   progress:^(float progress)
    {
        if ([self.contentView isKindOfClass:[USERMigrateProgressView class]]) {
            USERMigrateProgressView *progressView = (USERMigrateProgressView *)self.contentView;
            progressView.progress = progress;
        }
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        if (error || !resultFilePath) {
            if (error.code == 1001) {
                [self onExportEmpty:error];
            }
            else {
                [self onExportFailed:error];
            }
        }
        else {
            [self onExportSuccessAtPath:resultFilePath];
        }
    }];
}

#pragma mark -- action
- (void)onCancelButton:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".user_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    // 取消导出
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    }];
    [alertController addAction:actionCancel];
    
    // 继续导出
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];

    }];
    [alertController addAction:actionGoon];
    
    //
    [self presentViewController:alertController animated:YES completion:nil];
    self.curAlertController = alertController;
}

- (void)onReturnButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -- private
- (void)onExportFailed:(NSError *)error {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".user_localized message:@"本地消息格式化导出失败".user_localized preferredStyle:UIAlertControllerStyleAlert];
    
    // 返回
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [alertController addAction:actionBack];
    
    // 重新导出
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];
        [self exportMessageInfos];
    }];
    [alertController addAction:actionRetry];
    
    //
    [self presentViewController:alertController animated:YES completion:nil];
    self.curAlertController = alertController;
}

- (void)onExportSuccessAtPath:(NSString *)infoFilePath {
    [SVProgressHUD show];
    
    // 对导出结果进行压缩，可以有效减少文件尺寸
    NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    if (!zipFilePath) {
        [SVProgressHUD dismiss];
        return;
    }
    
    // 对导出结果进行加密，避免明文消息的泄露
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self uploadMessageFileToServer:encryptedFilePath];
        });
    });
}

- (void)onExportEmpty:(NSError *)error {
    NSLog(@"error %@", error);
    NSString *errorDscription = @"可导出的消息记录总数为空".user_localized;
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

- (void)onMigrateToRemoteFailed:(NSError *)error {
    [SVProgressHUD dismiss];
    
    [self onExportFailed:error];
}

- (void)onMigrateToRemoteSuccess {
    [SVProgressHUD dismiss];
    
    USERMigrateCompleteView *completeView = [[USERMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    completeView.title = @"恭喜你".user_localized;
    completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".user_localized;
    [completeView.actionButton setTitle:@"返回".user_localized forState:UIControlStateNormal];
    [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    self.contentView = completeView;
}

#pragma mark -- 压缩
- (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
    return nil;
}

#pragma mark -- 加密
- (NSString *)encryptMessageDataAtPath:(NSString *)path {
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSString *aesKey = [NSString randomStringWithLength:32];
    self.secureKey = aesKey;
    NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    [encryptedData writeToFile:encrypedPath atomically:YES];
    
    // 移除中间文件
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    });
    
    return encrypedPath;
}

#pragma mark -- upload to server
- (void)uploadMessageFileToServer:(NSString *)path {
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      progress:nil
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        if (error || !urlString) {
            [self onMigrateToRemoteFailed:error];
            return;
        }

        [self updateMigrateMessageInfoWithURL:urlString];
    }];
}

- (void)updateMigrateMessageInfoWithURL:(NSString *)url {
    
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        key:self.secureKey
                                                                 completion:^(NSError * _Nullable error)
    {
        [SVProgressHUD dismiss];

        if (error) {
            [self onMigrateToRemoteFailed:error];
        }
        else {
            [self onMigrateToRemoteSuccess];
        }
    }];
}

@end
