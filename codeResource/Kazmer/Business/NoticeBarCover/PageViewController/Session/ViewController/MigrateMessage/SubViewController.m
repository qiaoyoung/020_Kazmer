
#import <Foundation/Foundation.h>

typedef struct {
    Byte bowHuge;
    Byte *prevalence;
    unsigned int vidBoomSuggest;
	int lanceDoing;
	int economically;
} StructAmericanEgretData;

@interface AmericanEgretData : NSObject

@end

@implementation AmericanEgretData

+ (Byte *)AmericanEgretDataToByte:(StructAmericanEgretData *)data {
    for (int i = 0; i < data->vidBoomSuggest; i++) {
        data->prevalence[i] ^= data->bowHuge;
    }
    data->prevalence[data->vidBoomSuggest] = 0;
	if (data->vidBoomSuggest >= 2) {
		data->lanceDoing = data->prevalence[0];
		data->economically = data->prevalence[1];
	}
    return data->prevalence;
}

+ (NSString *)StringFromAmericanEgretData:(StructAmericanEgretData *)data {
    return [NSString stringWithUTF8String:(char *)[self AmericanEgretDataToByte:data]];
}

//: 重新导出
+ (NSString *)m_engagementTitle {
    /* static */ NSString *m_engagementTitle = nil;
    if (!m_engagementTitle) {
        StructAmericanEgretData value = (StructAmericanEgretData){74, (Byte []){163, 205, 199, 172, 220, 250, 175, 229, 246, 175, 205, 240, 74}, 12, 136, 48};
        m_engagementTitle = [self StringFromAmericanEgretData:&value];
    }
    return m_engagementTitle;
}

//: 本地消息格式化导出失败
+ (NSString *)notiClothIdent {
    /* static */ NSString *notiClothIdent = nil;
    if (!notiClothIdent) {
        StructAmericanEgretData value = (StructAmericanEgretData){108, (Byte []){138, 240, 192, 137, 240, 220, 138, 218, 228, 138, 237, 195, 138, 204, 208, 137, 208, 227, 137, 224, 250, 137, 195, 208, 137, 235, 214, 137, 200, 221, 132, 216, 201, 5}, 33, 202, 241};
        notiClothIdent = [self StringFromAmericanEgretData:&value];
    }
    return notiClothIdent;
}

//: 取消导出
+ (NSString *)notiTubeStr {
    /* static */ NSString *notiTubeStr = nil;
    if (!notiTubeStr) {
        StructAmericanEgretData value = (StructAmericanEgretData){135, (Byte []){98, 8, 17, 97, 49, 15, 98, 40, 59, 98, 0, 61, 11}, 12, 157, 27};
        notiTubeStr = [self StringFromAmericanEgretData:&value];
    }
    return notiTubeStr;
}

//: 导出失败!
+ (NSString *)userRnaText {
    /* static */ NSString *userRnaText = nil;
    if (!userRnaText) {
        StructAmericanEgretData value = (StructAmericanEgretData){144, (Byte []){117, 63, 44, 117, 23, 42, 117, 52, 33, 120, 36, 53, 177, 61}, 13, 118, 112};
        userRnaText = [self StringFromAmericanEgretData:&value];
    }
    return userRnaText;
}

//: 可导出的消息记录总数为空
+ (NSString *)user_endMatteValue {
    /* static */ NSString *user_endMatteValue = nil;
    if (!user_endMatteValue) {
        StructAmericanEgretData value = (StructAmericanEgretData){24, (Byte []){253, 151, 183, 253, 183, 164, 253, 159, 162, 255, 130, 156, 254, 174, 144, 254, 153, 183, 240, 182, 168, 253, 165, 141, 254, 152, 163, 254, 141, 168, 252, 160, 162, 255, 177, 162, 56}, 36, 121, 21};
        user_endMatteValue = [self StringFromAmericanEgretData:&value];
    }
    return user_endMatteValue;
}

//: 本地消息导出成功，请在新设备上点击导入吧
+ (NSString *)show_valueKey {
    /* static */ NSString *show_valueKey = nil;
    if (!show_valueKey) {
        StructAmericanEgretData value = (StructAmericanEgretData){124, (Byte []){154, 224, 208, 153, 224, 204, 154, 202, 244, 154, 253, 211, 153, 211, 192, 153, 251, 198, 154, 244, 236, 153, 246, 227, 147, 192, 240, 148, 211, 203, 153, 224, 212, 154, 234, 204, 148, 210, 194, 153, 216, 251, 152, 196, 246, 155, 254, 197, 153, 251, 199, 153, 211, 192, 153, 249, 217, 153, 236, 219, 41}, 60, 3, 16};
        show_valueKey = [self StringFromAmericanEgretData:&value];
    }
    return show_valueKey;
}

//: 导出本地消息需要较长时间，请耐心等待
+ (NSString *)user_deerCigarMessage {
    /* static */ NSString *user_deerCigarMessage = nil;
    if (!user_deerCigarMessage) {
        StructAmericanEgretData value = (StructAmericanEgretData){111, (Byte []){138, 192, 211, 138, 232, 213, 137, 243, 195, 138, 243, 223, 137, 217, 231, 137, 238, 192, 134, 243, 239, 135, 201, 238, 135, 209, 236, 134, 250, 208, 137, 248, 217, 134, 248, 219, 128, 211, 227, 135, 192, 216, 135, 239, 255, 138, 208, 236, 136, 194, 230, 138, 209, 234, 116}, 54, 137, 31};
        user_deerCigarMessage = [self StringFromAmericanEgretData:&value];
    }
    return user_deerCigarMessage;
}

//: 恭喜你
+ (NSString *)notiAddMessage {
    /* static */ NSString *notiAddMessage = nil;
    if (!notiAddMessage) {
        StructAmericanEgretData value = (StructAmericanEgretData){85, (Byte []){179, 212, 248, 176, 195, 201, 177, 232, 245, 130}, 9, 68, 21};
        notiAddMessage = [self StringFromAmericanEgretData:&value];
    }
    return notiAddMessage;
}

//: 确定要取消导出?
+ (NSString *)mLanceId {
    /* static */ NSString *mLanceId = nil;
    if (!mLanceId) {
        StructAmericanEgretData value = (StructAmericanEgretData){100, (Byte []){131, 197, 202, 129, 202, 254, 140, 194, 229, 129, 235, 242, 130, 210, 236, 129, 203, 216, 129, 227, 222, 91, 7}, 22, 188, 99};
        mLanceId = [self StringFromAmericanEgretData:&value];
    }
    return mLanceId;
}

//: 继续导出
+ (NSString *)dream_closeHistoryFormat {
    /* static */ NSString *dream_closeHistoryFormat = nil;
    if (!dream_closeHistoryFormat) {
        StructAmericanEgretData value = (StructAmericanEgretData){44, (Byte []){203, 151, 139, 203, 151, 129, 201, 131, 144, 201, 171, 150, 66}, 12, 138, 72};
        dream_closeHistoryFormat = [self StringFromAmericanEgretData:&value];
    }
    return dream_closeHistoryFormat;
}

//: aes256
+ (NSString *)k_armPath {
    /* static */ NSString *k_armPath = nil;
    if (!k_armPath) {
        StructAmericanEgretData value = (StructAmericanEgretData){115, (Byte []){18, 22, 0, 65, 70, 69, 23}, 6, 249, 175};
        k_armPath = [self StringFromAmericanEgretData:&value];
    }
    return k_armPath;
}

//: 本地消息导出
+ (NSString *)m_educationalTitle {
    /* static */ NSString *m_educationalTitle = nil;
    if (!m_educationalTitle) {
        StructAmericanEgretData value = (StructAmericanEgretData){253, (Byte []){27, 97, 81, 24, 97, 77, 27, 75, 117, 27, 124, 82, 24, 82, 65, 24, 122, 71, 166}, 18, 107, 14};
        m_educationalTitle = [self StringFromAmericanEgretData:&value];
    }
    return m_educationalTitle;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "SubViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "FindView.h"
//: #import "NTESMigrateCompleteView.h"
#import "RansackedView.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import "NSData+NTES.h"
#import "NSData+Zone.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "ValueImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const m_whiteTitleMsg = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface SubViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation SubViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = [AmericanEgretData m_educationalTitle].textIndex;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    FindView *progressView = [[FindView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(buttonCancelAlong:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [AmericanEgretData user_deerCigarMessage].textIndex;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self messageTing];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)messageTing {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    ValueImpl *exportImpl = [[ValueImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[FindView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            FindView *progressView = (FindView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self smuggle:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self show:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self disable:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)buttonCancelAlong:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[AmericanEgretData mLanceId].textIndex message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[AmericanEgretData notiTubeStr].textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[AmericanEgretData dream_closeHistoryFormat].textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];

    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)mied:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)show:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[AmericanEgretData userRnaText].textIndex message:[AmericanEgretData notiClothIdent].textIndex preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[AmericanEgretData m_engagementTitle].textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self messageTing];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)disable:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self contentCourseOfAction:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self halogenView:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self change:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)smuggle:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = [AmericanEgretData user_endMatteValue].textIndex;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)signaling:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self show:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)memberRecent {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    RansackedView *completeView = [[RansackedView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [AmericanEgretData notiAddMessage].textIndex;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = [AmericanEgretData show_valueKey].textIndex;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".textIndex forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(mied:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)contentCourseOfAction:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)halogenView:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString targetTitle:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data value:aesKey position:m_whiteTitleMsg];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[AmericanEgretData k_armPath]];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)change:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self signaling:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self lipReadDown:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)lipReadDown:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self signaling:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self memberRecent];
        }
    //: }];
    }];
}

//: @end
@end