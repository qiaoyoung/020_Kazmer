
#import <Foundation/Foundation.h>

typedef struct {
    Byte vernalEquinox;
    Byte *tonight;
    unsigned int doingto;
	int endQuest;
	int slaveRegulation;
	int prompt;
} StructSnapData;

@interface SnapData : NSObject

+ (instancetype)sharedInstance;

//: 确定要取消导出?
@property (nonatomic, copy) NSString *kName_qualityString;

//: 导出失败!
@property (nonatomic, copy) NSString *kName_sustainValue;

//: 0123456789012345
@property (nonatomic, copy) NSString *kName_bullData;

//: 取消导出
@property (nonatomic, copy) NSString *kContent_sculptureName;

//: 重新导出
@property (nonatomic, copy) NSString *kTextRelativelyCurrentData;

//: 导出本地消息需要较长时间，请耐心等待
@property (nonatomic, copy) NSString *kTitleOverallData;

//: 继续导出
@property (nonatomic, copy) NSString *kTextRatedData;

//: 可导出的消息记录总数为空
@property (nonatomic, copy) NSString *kTitle_heavilyString;

//: 本地消息导出
@property (nonatomic, copy) NSString *kTitleLoopData;

//: 本地消息格式化导出失败
@property (nonatomic, copy) NSString *kTitleFolioValue;

//: 恭喜你
@property (nonatomic, copy) NSString *kTextStaffPoetMarName;

//: aes256
@property (nonatomic, copy) NSString *kNameNumbString;

//: 本地消息导出成功，请在新设备上点击导入吧
@property (nonatomic, copy) NSString *kContent_colorfulName;

@end

@implementation SnapData

+ (instancetype)sharedInstance {
    static SnapData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SnapDataToByte:(StructSnapData *)data {
    for (int i = 0; i < data->doingto; i++) {
        data->tonight[i] ^= data->vernalEquinox;
    }
    data->tonight[data->doingto] = 0;
	if (data->doingto >= 3) {
		data->endQuest = data->tonight[0];
		data->slaveRegulation = data->tonight[1];
		data->prompt = data->tonight[2];
	}
    return data->tonight;
}

- (NSString *)StringFromSnapData:(StructSnapData *)data {
    return [NSString stringWithUTF8String:(char *)[self SnapDataToByte:data]];
}

//: 本地消息导出成功，请在新设备上点击导入吧
- (NSString *)kContent_colorfulName {
    if (!_kContent_colorfulName) {
        StructSnapData value = (StructSnapData){99, (Byte []){133, 255, 207, 134, 255, 211, 133, 213, 235, 133, 226, 204, 134, 204, 223, 134, 228, 217, 133, 235, 243, 134, 233, 252, 140, 223, 239, 139, 204, 212, 134, 255, 203, 133, 245, 211, 139, 205, 221, 134, 199, 228, 135, 219, 233, 132, 225, 218, 134, 228, 216, 134, 204, 223, 134, 230, 198, 134, 243, 196, 61}, 60, 250, 136, 181};
        _kContent_colorfulName = [self StringFromSnapData:&value];
    }
    return _kContent_colorfulName;
}

//: aes256
- (NSString *)kNameNumbString {
    if (!_kNameNumbString) {
        StructSnapData value = (StructSnapData){245, (Byte []){148, 144, 134, 199, 192, 195, 93}, 6, 83, 169, 232};
        _kNameNumbString = [self StringFromSnapData:&value];
    }
    return _kNameNumbString;
}

//: 可导出的消息记录总数为空
- (NSString *)kTitle_heavilyString {
    if (!_kTitle_heavilyString) {
        StructSnapData value = (StructSnapData){119, (Byte []){146, 248, 216, 146, 216, 203, 146, 240, 205, 144, 237, 243, 145, 193, 255, 145, 246, 216, 159, 217, 199, 146, 202, 226, 145, 247, 204, 145, 226, 199, 147, 207, 205, 144, 222, 205, 200}, 36, 234, 213, 49};
        _kTitle_heavilyString = [self StringFromSnapData:&value];
    }
    return _kTitle_heavilyString;
}

//: 导出失败!
- (NSString *)kName_sustainValue {
    if (!_kName_sustainValue) {
        StructSnapData value = (StructSnapData){24, (Byte []){253, 183, 164, 253, 159, 162, 253, 188, 169, 240, 172, 189, 57, 52}, 13, 32, 11, 15};
        _kName_sustainValue = [self StringFromSnapData:&value];
    }
    return _kName_sustainValue;
}

//: 本地消息导出
- (NSString *)kTitleLoopData {
    if (!_kTitleLoopData) {
        StructSnapData value = (StructSnapData){163, (Byte []){69, 63, 15, 70, 63, 19, 69, 21, 43, 69, 34, 12, 70, 12, 31, 70, 36, 25, 1}, 18, 34, 30, 217};
        _kTitleLoopData = [self StringFromSnapData:&value];
    }
    return _kTitleLoopData;
}

//: 确定要取消导出?
- (NSString *)kName_qualityString {
    if (!_kName_qualityString) {
        StructSnapData value = (StructSnapData){28, (Byte []){251, 189, 178, 249, 178, 134, 244, 186, 157, 249, 147, 138, 250, 170, 148, 249, 179, 160, 249, 155, 166, 35, 2}, 22, 159, 98, 216};
        _kName_qualityString = [self StringFromSnapData:&value];
    }
    return _kName_qualityString;
}

//: 重新导出
- (NSString *)kTextRelativelyCurrentData {
    if (!_kTextRelativelyCurrentData) {
        StructSnapData value = (StructSnapData){130, (Byte []){107, 5, 15, 100, 20, 50, 103, 45, 62, 103, 5, 56, 250}, 12, 165, 167, 156};
        _kTextRelativelyCurrentData = [self StringFromSnapData:&value];
    }
    return _kTextRelativelyCurrentData;
}

//: 0123456789012345
- (NSString *)kName_bullData {
    if (!_kName_bullData) {
        StructSnapData value = (StructSnapData){149, (Byte []){165, 164, 167, 166, 161, 160, 163, 162, 173, 172, 165, 164, 167, 166, 161, 160, 218}, 16, 194, 219, 150};
        _kName_bullData = [self StringFromSnapData:&value];
    }
    return _kName_bullData;
}

//: 本地消息格式化导出失败
- (NSString *)kTitleFolioValue {
    if (!_kTitleFolioValue) {
        StructSnapData value = (StructSnapData){217, (Byte []){63, 69, 117, 60, 69, 105, 63, 111, 81, 63, 88, 118, 63, 121, 101, 60, 101, 86, 60, 85, 79, 60, 118, 101, 60, 94, 99, 60, 125, 104, 49, 109, 124, 124}, 33, 74, 149, 38};
        _kTitleFolioValue = [self StringFromSnapData:&value];
    }
    return _kTitleFolioValue;
}

//: 取消导出
- (NSString *)kContent_sculptureName {
    if (!_kContent_sculptureName) {
        StructSnapData value = (StructSnapData){64, (Byte []){165, 207, 214, 166, 246, 200, 165, 239, 252, 165, 199, 250, 124}, 12, 18, 129, 107};
        _kContent_sculptureName = [self StringFromSnapData:&value];
    }
    return _kContent_sculptureName;
}

//: 恭喜你
- (NSString *)kTextStaffPoetMarName {
    if (!_kTextStaffPoetMarName) {
        StructSnapData value = (StructSnapData){233, (Byte []){15, 104, 68, 12, 127, 117, 13, 84, 73, 148}, 9, 109, 163, 231};
        _kTextStaffPoetMarName = [self StringFromSnapData:&value];
    }
    return _kTextStaffPoetMarName;
}

//: 导出本地消息需要较长时间，请耐心等待
- (NSString *)kTitleOverallData {
    if (!_kTitleOverallData) {
        StructSnapData value = (StructSnapData){70, (Byte []){163, 233, 250, 163, 193, 252, 160, 218, 234, 163, 218, 246, 160, 240, 206, 160, 199, 233, 175, 218, 198, 174, 224, 199, 174, 248, 197, 175, 211, 249, 160, 209, 240, 175, 209, 242, 169, 250, 202, 174, 233, 241, 174, 198, 214, 163, 249, 197, 161, 235, 207, 163, 248, 195, 167}, 54, 129, 201, 90};
        _kTitleOverallData = [self StringFromSnapData:&value];
    }
    return _kTitleOverallData;
}

//: 继续导出
- (NSString *)kTextRatedData {
    if (!_kTextRatedData) {
        StructSnapData value = (StructSnapData){144, (Byte []){119, 43, 55, 119, 43, 61, 117, 63, 44, 117, 23, 42, 114}, 12, 39, 40, 85};
        _kTextRatedData = [self StringFromSnapData:&value];
    }
    return _kTextRatedData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERExportMessageViewController.h"
#import "CleanViewController.h"
//: #import "USERMigrateProgressView.h"
#import "AdjoinView.h"
//: #import "USERMigrateCompleteView.h"
#import "DisplayView.h"
//: #import "NSString+USER.h"
#import "NSString+Turn.h"
//: #import "NSData+USER.h"
#import "NSData+Turn.h"
//: #import "USERExportMessageDelegateImpl.h"
#import "HarmShould.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";

static NSString * const show_resData (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"start"];
    }
    return  [SnapData sharedInstance].kName_bullData;
};

//: @interface USERExportMessageViewController ()
@interface CleanViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation USERExportMessageViewController
@implementation CleanViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".user_localized;
    self.title = [SnapData sharedInstance].kTitleLoopData.nominate;

    //: USERMigrateProgressView *progressView = [[USERMigrateProgressView alloc] initWithFrame:self.view.bounds];
    AdjoinView *progressView = [[AdjoinView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(wantsed:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".user_localized;
    progressView.tip = [SnapData sharedInstance].kTitleOverallData.nominate;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self status];
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
- (void)status {
    //: USERExportMessageDelegateImpl *exportImpl = [[USERExportMessageDelegateImpl alloc] init];
    HarmShould *exportImpl = [[HarmShould alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[USERMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[AdjoinView class]]) {
            //: USERMigrateProgressView *progressView = (USERMigrateProgressView *)self.contentView;
            AdjoinView *progressView = (AdjoinView *)self.contentView;
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
                [self sendBlank:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self exhibit:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self my:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)wantsed:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".user_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[SnapData sharedInstance].kName_qualityString.nominate message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[SnapData sharedInstance].kContent_sculptureName.nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[SnapData sharedInstance].kTextRatedData.nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)keyed:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)exhibit:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".user_localized message:@"本地消息格式化导出失败".user_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[SnapData sharedInstance].kName_sustainValue.nominate message:[SnapData sharedInstance].kTitleFolioValue.nominate preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[SnapData sharedInstance].kTextRelativelyCurrentData.nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self status];
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
- (void)my:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self format:infoFilePath];
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
        NSString *encryptedFilePath = [self representation:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self read:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)sendBlank:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".user_localized;
    NSString *errorDscription = [SnapData sharedInstance].kTitle_heavilyString.nominate;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)assemblage:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self exhibit:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)canOrigin {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: USERMigrateCompleteView *completeView = [[USERMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DisplayView *completeView = [[DisplayView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".user_localized;
    completeView.title = [SnapData sharedInstance].kTextStaffPoetMarName.nominate;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".user_localized;
    completeView.message = [SnapData sharedInstance].kContent_colorfulName.nominate;
    //: [completeView.actionButton setTitle:@"返回".user_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".nominate forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(keyed:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)format:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)representation:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString placeDevice:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data my:aesKey table:show_resData(nil)];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[SnapData sharedInstance].kNameNumbString];
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
- (void)read:(NSString *)path {
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
            [self assemblage:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self sole:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)sole:(NSString *)url {

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
            [self assemblage:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self canOrigin];
        }
    //: }];
    }];
}

//: @end
@end
//: __SAVE__ ignore_string [558.5]