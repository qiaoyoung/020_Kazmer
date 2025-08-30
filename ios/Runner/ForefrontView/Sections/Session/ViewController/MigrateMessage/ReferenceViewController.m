
#import <Foundation/Foundation.h>

@interface PeriodData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PeriodData

+ (instancetype)sharedInstance {
    static PeriodData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PeriodDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)PeriodDataToCache:(Byte *)data {
    int criticism = data[0];
    Byte ceiling = data[1];
    int scripOverall = data[2];
    for (int i = scripOverall; i < scripOverall + criticism; i++) {
        int value = data[i] - ceiling;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[scripOverall + criticism] = 0;
    return data + scripOverall;
}

- (NSString *)StringFromPeriodData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PeriodDataToCache:data]];
}

//: 合并失败
- (NSString *)kTitleFlowerValue {
    /* static */ NSString *kTitleFlowerValue = nil;
    if (!kTitleFlowerValue) {
		NSString *origin = @"0C4D0790FFC62132DDD532060332F1FE3501F257";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleFlowerValue = [self StringFromPeriodData:value];
    }
    return kTitleFlowerValue;
}

//: 解压失败
- (NSString *)kTitle_ankleContent {
    /* static */ NSString *kTitle_ankleContent = nil;
    if (!kTitle_ankleContent) {
		NSString *origin = @"0C45032DECE82AD3D02AE9F62DF9EA4F";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_ankleContent = [self StringFromPeriodData:value];
    }
    return kTitle_ankleContent;
}

//: 导入失败！
- (NSString *)kName_artiInkData {
    /* static */ NSString *kName_artiInkData = nil;
    if (!kName_artiInkData) {
		NSString *origin = @"0F480B305DA0D3813FBE362DF7042DCDED2DECF930FCED3704C9A8";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_artiInkData = [self StringFromPeriodData:value];
    }
    return kName_artiInkData;
}

//: 返回会话列表
- (NSString *)kTitle_handsomeValue {
    /* static */ NSString *kTitle_handsomeValue = nil;
    if (!kTitle_handsomeValue) {
		NSString *origin = @"12560C89DBC47783093D724A3E15EA3BF1F43A12F03E05F33BDEED3EF7FE21";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_handsomeValue = [self StringFromPeriodData:value];
    }
    return kTitle_handsomeValue;
}

//: 取消导入
- (NSString *)kContent_originallyValue {
    /* static */ NSString *kContent_originallyValue = nil;
    if (!kContent_originallyValue) {
		NSString *origin = @"0C1109AE4FA26A4476F6A0A7F7C799F6C0CDF696B673";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_originallyValue = [self StringFromPeriodData:value];
    }
    return kContent_originallyValue;
}

//: 重新导入
- (NSString *)kTextPrecedentValue {
    /* static */ NSString *kTextPrecedentValue = nil;
    if (!kTextPrecedentValue) {
		NSString *origin = @"0C06091214D3D2756FEF8D93EC9CB6EBB5C2EB8BAB9A";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextPrecedentValue = [self StringFromPeriodData:value];
    }
    return kTextPrecedentValue;
}

//: unzip
- (NSString *)kTitlePitaContent {
    /* static */ NSString *kTitlePitaContent = nil;
    if (!kTitlePitaContent) {
		NSString *origin = @"052307669E28A098919D8C9355";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePitaContent = [self StringFromPeriodData:value];
    }
    return kTitlePitaContent;
}

//: 本地消息导入
- (NSString *)kTitleRiceText {
    /* static */ NSString *kTitleRiceText = nil;
    if (!kTitleRiceText) {
		NSString *origin = @"12140A944C43890E80AEFAB0C0F9B0C4FACA9CFA95C3F9C3D0F999B906";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRiceText = [self StringFromPeriodData:value];
    }
    return kTitleRiceText;
}

//: iOS-zip-aes256
- (NSString *)kText_migrationName {
    /* static */ NSString *kText_migrationName = nil;
    if (!kText_migrationName) {
		NSString *origin = @"0E560ABFA606293D016BBFA5A983D0BFC683B7BBC9888B8CD9";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_migrationName = [self StringFromPeriodData:value];
    }
    return kText_migrationName;
}

//: 导入本地消息需要较长时间，请耐心等待
- (NSString *)kContentBothName {
    /* static */ NSString *kContentBothName = nil;
    if (!kContentBothName) {
		NSString *origin = @"361608BBDF9793EFFBC5D2FB9BBBFCB2C2FBB2C6FCCC9EFC97C5FFB296FEBC97FED499FFABD5FCADCCFFADCA05D2A2FEC5CDFE96A6FBD599FDC39FFBD49B14";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentBothName = [self StringFromPeriodData:value];
    }
    return kContentBothName;
}

//: 0123456789012345
- (NSString *)kText_reservationData {
    /* static */ NSString *kText_reservationData = nil;
    if (!kText_reservationData) {
		NSString *origin = @"100306F1A11A333435363738393A3B3C333435363738FC";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_reservationData = [self StringFromPeriodData:value];
    }
    return kText_reservationData;
}

//: 继续导入
- (NSString *)kTextCalledProductiveData {
    /* static */ NSString *kTextCalledProductiveData = nil;
    if (!kTextCalledProductiveData) {
		NSString *origin = @"0C34065427881BEFDB1BEFE119E3F019B9D94D";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextCalledProductiveData = [self StringFromPeriodData:value];
    }
    return kTextCalledProductiveData;
}

//: 下载消息文件失败
- (NSString *)kName_deployString {
    /* static */ NSString *kName_deployString = nil;
    if (!kName_deployString) {
		NSString *origin = @"18570695C52C3B0FE23F14143D0DDF3DD8063DEDDE3B120D3CFB083F0BFCEC";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_deployString = [self StringFromPeriodData:value];
    }
    return kName_deployString;
}

//: decryped
- (NSString *)kTitleValidData {
    /* static */ NSString *kTitleValidData = nil;
    if (!kTitleValidData) {
		NSString *origin = @"08140BCCBA3A360E8B7B1B787977868D84797838";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleValidData = [self StringFromPeriodData:value];
    }
    return kTitleValidData;
}

//: NIM
- (NSString *)kTitleOkayValue {
    /* static */ NSString *kTitleOkayValue = nil;
    if (!kTitleOkayValue) {
		NSString *origin = @"0343044E918C90B3";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleOkayValue = [self StringFromPeriodData:value];
    }
    return kTitleOkayValue;
}

//: 消息导入成功
- (NSString *)kContentReceptionString {
    /* static */ NSString *kContentReceptionString = nil;
    if (!kContentReceptionString) {
		NSString *origin = @"124F07C440869A3505D735D0FE34FE0B34D4F435D7DF34D9EE0C";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentReceptionString = [self StringFromPeriodData:value];
    }
    return kContentReceptionString;
}

//: zip
- (NSString *)kContentBeautyRangeConsistName {
    /* static */ NSString *kContentBeautyRangeConsistName = nil;
    if (!kContentBeautyRangeConsistName) {
		NSString *origin = @"03550A73C3891468685ECFBEC54D";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentBeautyRangeConsistName = [self StringFromPeriodData:value];
    }
    return kContentBeautyRangeConsistName;
}

//: 确定要取消导入？
- (NSString *)kName_besidesData {
    /* static */ NSString *kName_besidesData = nil;
    if (!kName_besidesData) {
		NSString *origin = @"1831040118D2DF16DFCB19D7B216C0C717E7B916E0ED16B6D620EDD070";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_besidesData = [self StringFromPeriodData:value];
    }
    return kName_besidesData;
}

//: 恭喜你
- (NSString *)kTitlePorkString {
    /* static */ NSString *kTitlePorkString = nil;
    if (!kTitlePorkString) {
		NSString *origin = @"09260D834A3252ACABFFDE22F70CA7D30BBCC20AE3C69E";
		NSData *data = [PeriodData PeriodDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePorkString = [self StringFromPeriodData:value];
    }
    return kTitlePorkString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReferenceViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERImportMessageViewController.h"
#import "ReferenceViewController.h"
//: #import "USERMigrateProgressView.h"
#import "AdjoinView.h"
//: #import "USERMigrateCompleteView.h"
#import "DisplayView.h"
//: #import "NSData+USER.h"
#import "NSData+Turn.h"
//: #import "USERImportMessageDelegateImpl.h"
#import "TextImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";

static NSString * const show_resData (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"start"];
    }
    return  [[PeriodData sharedInstance] kText_reservationData];
};

//: @interface USERImportMessageViewController ()
@interface ReferenceViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation USERImportMessageViewController
@implementation ReferenceViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".user_localized;
    self.title = [[PeriodData sharedInstance] kTitleRiceText].nominate;

    //: USERMigrateProgressView *progressView = [[USERMigrateProgressView alloc] initWithFrame:self.view.bounds];
    AdjoinView *progressView = [[AdjoinView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(wantsed:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".user_localized;
    progressView.tip = [[PeriodData sharedInstance] kContentBothName].nominate;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self number];
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
- (void)wantsed:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".user_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[[PeriodData sharedInstance] kName_besidesData].nominate message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[[PeriodData sharedInstance] kContent_originallyValue].nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".user_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[[PeriodData sharedInstance] kTextCalledProductiveData].nominate style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: USERMainTabController *tabController = [USERMainTabController instance];
    TranslateTabletBarController *tabController = [TranslateTabletBarController with];
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
- (void)statusDescription:(NSError *)error place:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".user_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[[PeriodData sharedInstance] kName_artiInkData].nominate message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[[PeriodData sharedInstance] kTextPrecedentValue].nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self number];
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
- (void)roundLength {
    //: USERMigrateCompleteView *completeView = [[USERMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    DisplayView *completeView = [[DisplayView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".user_localized;
    completeView.title = [[PeriodData sharedInstance] kTitlePorkString].nominate;
    //: completeView.message = @"消息导入成功".user_localized;
    completeView.message = [[PeriodData sharedInstance] kContentReceptionString].nominate;
    //: [completeView.actionButton setTitle:@"返回会话列表".user_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:[[PeriodData sharedInstance] kTitle_handsomeValue].nominate forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(keyed:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)number {
    //: [self removeTempFiles];
    [self tempCustomRemove];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self clean];
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
             //: [self onImportFailed:error description:@"下载消息文件失败".user_localized];
             [self statusDescription:error place:[[PeriodData sharedInstance] kName_deployString].nominate];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self changePath:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self nameBy:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self path:unzipPath];

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
- (NSString *)changePath:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data subOn:aesKey blue:show_resData(nil)];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:[[PeriodData sharedInstance] kTitleValidData]];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:[[PeriodData sharedInstance] kContentBeautyRangeConsistName]];
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
- (NSString *)nameBy:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:[[PeriodData sharedInstance] kTitlePitaContent]];

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
- (void)path:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".user_localized];
        [self statusDescription:nil place:[[PeriodData sharedInstance] kTitle_ankleContent].nominate];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: USERImportMessageDelegateImpl *importImpl = [[USERImportMessageDelegateImpl alloc] init];
    TextImpl *importImpl = [[TextImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: USERMigrateProgressView *progressView = (USERMigrateProgressView *)self.contentView;
        AdjoinView *progressView = (AdjoinView *)self.contentView;
        //: if ([progressView isKindOfClass:[USERMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[AdjoinView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".user_localized];
            [self statusDescription:error place:[[PeriodData sharedInstance] kTitleFlowerValue].nominate];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self roundLength];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)clean {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:[[PeriodData sharedInstance] kTitleOkayValue]];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:[[PeriodData sharedInstance] kText_migrationName]];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)tempCustomRemove {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self clean] error:nil];
}

//: @end
@end
//: __SAVE__ ignore_string [558.5]