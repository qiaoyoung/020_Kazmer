
#import <Foundation/Foundation.h>

@interface SoapBubbleData : NSObject

+ (instancetype)sharedInstance;

//: 本地消息导入
@property (nonatomic, copy) NSString *notiRnaMessage;

//: 重新导入
@property (nonatomic, copy) NSString *mainPressedText;

//: 合并失败
@property (nonatomic, copy) NSString *dreamMatteAddStr;

//: 恭喜你
@property (nonatomic, copy) NSString *dream_hugeRumenValue;

//: 确定要取消导入？
@property (nonatomic, copy) NSString *userBubbleQuickMayContent;

//: 消息导入成功
@property (nonatomic, copy) NSString *user_medalData;

//: 返回会话列表
@property (nonatomic, copy) NSString *main_patienceFormat;

//: 下载消息文件失败
@property (nonatomic, copy) NSString *user_messageMeaningMsg;

//: zip
@property (nonatomic, copy) NSString *noti_viewIdent;

//: decryped
@property (nonatomic, copy) NSString *app_isolationBidStatePath;

//: 继续导入
@property (nonatomic, copy) NSString *noti_employId;

//: 导入失败！
@property (nonatomic, copy) NSString *app_championIdent;

//: iOS-zip-aes256
@property (nonatomic, copy) NSString *appCurName;

//: 导入本地消息需要较长时间，请耐心等待
@property (nonatomic, copy) NSString *mStoneUrl;

//: NIM
@property (nonatomic, copy) NSString *mPlaceLagKey;

//: 取消导入
@property (nonatomic, copy) NSString *main_primaryStr;

//: 解压失败
@property (nonatomic, copy) NSString *dream_companyHistoryValue;

//: unzip
@property (nonatomic, copy) NSString *showEndFormat;

@end

@implementation SoapBubbleData

+ (instancetype)sharedInstance {
    static SoapBubbleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SoapBubbleDataToCache:(Byte *)data {
    int receptacle = data[0];
    Byte nineCorner = data[1];
    int sexy = data[2];
    for (int i = sexy; i < sexy + receptacle; i++) {
        int value = data[i] - nineCorner;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[sexy + receptacle] = 0;
    return data + sexy;
}

- (NSString *)StringFromSoapBubbleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SoapBubbleDataToCache:data]];
}

//: 导入本地消息需要较长时间，请耐心等待
- (NSString *)mStoneUrl {
    if (!_mStoneUrl) {
        Byte value[] = {54, 16, 9, 212, 148, 47, 23, 36, 177, 245, 191, 204, 245, 149, 181, 246, 172, 188, 245, 172, 192, 246, 198, 152, 246, 145, 191, 249, 172, 144, 248, 182, 145, 248, 206, 147, 249, 165, 207, 246, 167, 198, 249, 167, 196, 255, 204, 156, 248, 191, 199, 248, 144, 160, 245, 207, 147, 247, 189, 153, 245, 206, 149, 95};
        _mStoneUrl = [self StringFromSoapBubbleData:value];
    }
    return _mStoneUrl;
}

//: 合并失败
- (NSString *)dreamMatteAddStr {
    if (!_dreamMatteAddStr) {
        Byte value[] = {12, 67, 4, 139, 40, 211, 203, 40, 252, 249, 40, 231, 244, 43, 247, 232, 249};
        _dreamMatteAddStr = [self StringFromSoapBubbleData:value];
    }
    return _dreamMatteAddStr;
}

//: zip
- (NSString *)noti_viewIdent {
    if (!_noti_viewIdent) {
        Byte value[] = {3, 54, 10, 255, 11, 2, 111, 188, 226, 59, 176, 159, 166, 213};
        _noti_viewIdent = [self StringFromSoapBubbleData:value];
    }
    return _noti_viewIdent;
}

//: 返回会话列表
- (NSString *)main_patienceFormat {
    if (!_main_patienceFormat) {
        Byte value[] = {18, 74, 8, 99, 215, 182, 142, 125, 50, 9, 222, 47, 229, 232, 46, 6, 228, 50, 249, 231, 47, 210, 225, 50, 235, 242, 136};
        _main_patienceFormat = [self StringFromSoapBubbleData:value];
    }
    return _main_patienceFormat;
}

//: 继续导入
- (NSString *)noti_employId {
    if (!_noti_employId) {
        Byte value[] = {12, 13, 11, 204, 216, 25, 68, 57, 154, 141, 255, 244, 200, 180, 244, 200, 186, 242, 188, 201, 242, 146, 178, 17};
        _noti_employId = [self StringFromSoapBubbleData:value];
    }
    return _noti_employId;
}

//: 消息导入成功
- (NSString *)user_medalData {
    if (!_user_medalData) {
        Byte value[] = {18, 75, 12, 97, 173, 123, 245, 190, 80, 179, 103, 208, 49, 1, 211, 49, 204, 250, 48, 250, 7, 48, 208, 240, 49, 211, 219, 48, 213, 234, 64};
        _user_medalData = [self StringFromSoapBubbleData:value];
    }
    return _user_medalData;
}

//: decryped
- (NSString *)app_isolationBidStatePath {
    if (!_app_isolationBidStatePath) {
        Byte value[] = {8, 35, 13, 129, 37, 255, 215, 80, 12, 57, 190, 159, 13, 135, 136, 134, 149, 156, 147, 136, 135, 148};
        _app_isolationBidStatePath = [self StringFromSoapBubbleData:value];
    }
    return _app_isolationBidStatePath;
}

//: NIM
- (NSString *)mPlaceLagKey {
    if (!_mPlaceLagKey) {
        Byte value[] = {3, 96, 7, 144, 221, 179, 104, 174, 169, 173, 232};
        _mPlaceLagKey = [self StringFromSoapBubbleData:value];
    }
    return _mPlaceLagKey;
}

//: unzip
- (NSString *)showEndFormat {
    if (!_showEndFormat) {
        Byte value[] = {5, 63, 11, 190, 134, 185, 132, 111, 93, 52, 114, 180, 173, 185, 168, 175, 158};
        _showEndFormat = [self StringFromSoapBubbleData:value];
    }
    return _showEndFormat;
}

//: 取消导入
- (NSString *)main_primaryStr {
    if (!_main_primaryStr) {
        Byte value[] = {12, 99, 4, 102, 72, 242, 249, 73, 25, 235, 72, 18, 31, 72, 232, 8, 198};
        _main_primaryStr = [self StringFromSoapBubbleData:value];
    }
    return _main_primaryStr;
}

//: 导入失败！
- (NSString *)app_championIdent {
    if (!_app_championIdent) {
        Byte value[] = {15, 2, 13, 177, 169, 10, 145, 189, 249, 249, 83, 175, 72, 231, 177, 190, 231, 135, 167, 231, 166, 179, 234, 182, 167, 241, 190, 131, 182};
        _app_championIdent = [self StringFromSoapBubbleData:value];
    }
    return _app_championIdent;
}

//: 下载消息文件失败
- (NSString *)user_messageMeaningMsg {
    if (!_user_messageMeaningMsg) {
        Byte value[] = {24, 77, 11, 150, 146, 107, 39, 55, 182, 129, 79, 49, 5, 216, 53, 10, 10, 51, 3, 213, 51, 206, 252, 51, 227, 212, 49, 8, 3, 50, 241, 254, 53, 1, 242, 208};
        _user_messageMeaningMsg = [self StringFromSoapBubbleData:value];
    }
    return _user_messageMeaningMsg;
}

//: 解压失败
- (NSString *)dream_companyHistoryValue {
    if (!_dream_companyHistoryValue) {
        Byte value[] = {12, 85, 5, 122, 74, 61, 252, 248, 58, 227, 224, 58, 249, 6, 61, 9, 250, 166};
        _dream_companyHistoryValue = [self StringFromSoapBubbleData:value];
    }
    return _dream_companyHistoryValue;
}

//: 确定要取消导入？
- (NSString *)userBubbleQuickMayContent {
    if (!_userBubbleQuickMayContent) {
        Byte value[] = {24, 73, 12, 76, 117, 81, 255, 69, 237, 233, 231, 21, 48, 234, 247, 46, 247, 227, 49, 239, 202, 46, 216, 223, 47, 255, 209, 46, 248, 5, 46, 206, 238, 56, 5, 232, 2};
        _userBubbleQuickMayContent = [self StringFromSoapBubbleData:value];
    }
    return _userBubbleQuickMayContent;
}

//: iOS-zip-aes256
- (NSString *)appCurName {
    if (!_appCurName) {
        Byte value[] = {14, 8, 6, 48, 44, 45, 113, 87, 91, 53, 130, 113, 120, 53, 105, 109, 123, 58, 61, 62, 226};
        _appCurName = [self StringFromSoapBubbleData:value];
    }
    return _appCurName;
}

//: 恭喜你
- (NSString *)dream_hugeRumenValue {
    if (!_dream_hugeRumenValue) {
        Byte value[] = {9, 71, 3, 45, 200, 244, 44, 221, 227, 43, 4, 231, 2};
        _dream_hugeRumenValue = [self StringFromSoapBubbleData:value];
    }
    return _dream_hugeRumenValue;
}

//: 本地消息导入
- (NSString *)notiRnaMessage {
    if (!_notiRnaMessage) {
        Byte value[] = {18, 95, 10, 207, 120, 80, 75, 237, 182, 89, 69, 251, 11, 68, 251, 15, 69, 21, 231, 69, 224, 14, 68, 14, 27, 68, 228, 4, 107};
        _notiRnaMessage = [self StringFromSoapBubbleData:value];
    }
    return _notiRnaMessage;
}

//: 重新导入
- (NSString *)mainPressedText {
    if (!_mainPressedText) {
        Byte value[] = {12, 98, 12, 246, 30, 162, 1, 131, 158, 222, 97, 46, 75, 233, 239, 72, 248, 18, 71, 17, 30, 71, 231, 7, 187};
        _mainPressedText = [self StringFromSoapBubbleData:value];
    }
    return _mainPressedText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EncounterViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "EncounterViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "FindView.h"
//: #import "NTESMigrateCompleteView.h"
#import "RansackedView.h"
//: #import "NSData+NTES.h"
#import "NSData+Zone.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "ImageImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "UserBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const m_whiteTitleMsg = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface EncounterViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation EncounterViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = [SoapBubbleData sharedInstance].notiRnaMessage.textIndex;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    FindView *progressView = [[FindView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(buttonCancelAlong:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [SoapBubbleData sharedInstance].mStoneUrl.textIndex;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self nameOpen];
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

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)buttonCancelAlong:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[SoapBubbleData sharedInstance].userBubbleQuickMayContent.textIndex message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[SoapBubbleData sharedInstance].main_primaryStr.textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[SoapBubbleData sharedInstance].noti_employId.textIndex style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    UserBarController *tabController = [UserBarController scaleInstance];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)ruddy:(NSError *)error report:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[SoapBubbleData sharedInstance].app_championIdent.textIndex message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[SoapBubbleData sharedInstance].mainPressedText.textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self nameOpen];
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

//: - (void)onImportSuccess {
- (void)blue {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    RansackedView *completeView = [[RansackedView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [SoapBubbleData sharedInstance].dream_hugeRumenValue.textIndex;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = [SoapBubbleData sharedInstance].user_medalData.textIndex;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:[SoapBubbleData sharedInstance].main_patienceFormat.textIndex forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(mied:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)nameOpen {
    //: [self removeTempFiles];
    [self worker];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self dataPath];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self ruddy:error report:[SoapBubbleData sharedInstance].user_messageMeaningMsg.textIndex];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self size:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self takeHome:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self telephoneMessage:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)size:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data image:aesKey stateChild:m_whiteTitleMsg];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:[SoapBubbleData sharedInstance].app_isolationBidStatePath];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:[SoapBubbleData sharedInstance].noti_viewIdent];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)takeHome:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:[SoapBubbleData sharedInstance].showEndFormat];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)telephoneMessage:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self ruddy:nil report:[SoapBubbleData sharedInstance].dream_companyHistoryValue.textIndex];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    ImageImpl *importImpl = [[ImageImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        FindView *progressView = (FindView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[FindView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self ruddy:error report:[SoapBubbleData sharedInstance].dreamMatteAddStr.textIndex];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self blue];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)dataPath {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:[SoapBubbleData sharedInstance].mPlaceLagKey];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:[SoapBubbleData sharedInstance].appCurName];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)worker {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self dataPath] error:nil];
}

//: @end
@end