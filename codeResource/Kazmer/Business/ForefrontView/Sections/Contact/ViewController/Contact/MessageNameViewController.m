
#import <Foundation/Foundation.h>

typedef struct {
    Byte playKey;
    Byte *searched;
    unsigned int enableRange;
	int onCurrent;
} StructProcrusteanBedData;

@interface ProcrusteanBedData : NSObject

@end

@implementation ProcrusteanBedData

//: setting_privacy_camera
+ (NSString *)kTitle_showText {
    /* static */ NSString *kTitle_showText = nil;
    if (!kTitle_showText) {
		NSArray<NSNumber *> *origin = @[@89, @79, @94, @94, @67, @68, @77, @117, @90, @88, @67, @92, @75, @73, @83, @117, @73, @75, @71, @79, @88, @75, @7];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){42, (Byte *)data.bytes, 22, 168};
        kTitle_showText = [self StringFromProcrusteanBedData:&value];
    }
    return kTitle_showText;
}

+ (NSString *)StringFromProcrusteanBedData:(StructProcrusteanBedData *)data {
    return [NSString stringWithUTF8String:(char *)[self ProcrusteanBedDataToByte:data]];
}

//: warm_prompt
+ (NSString *)kText_topName {
    /* static */ NSString *kText_topName = nil;
    if (!kText_topName) {
		NSArray<NSNumber *> *origin = @[@143, @153, @138, @149, @167, @136, @138, @151, @149, @136, @140, @154];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){248, (Byte *)data.bytes, 11, 59};
        kText_topName = [self StringFromProcrusteanBedData:&value];
    }
    return kText_topName;
}

//: contact_tag_fragment_cancel
+ (NSString *)kNameErrorData {
    /* static */ NSString *kNameErrorData = nil;
    if (!kNameErrorData) {
		NSArray<NSNumber *> *origin = @[@162, @174, @175, @181, @160, @162, @181, @158, @181, @160, @166, @158, @167, @179, @160, @166, @172, @164, @175, @181, @158, @162, @160, @175, @162, @164, @173, @249];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){193, (Byte *)data.bytes, 27, 97};
        kNameErrorData = [self StringFromProcrusteanBedData:&value];
    }
    return kNameErrorData;
}

//: tag_activity_set
+ (NSString *)kTitle_withValue {
    /* static */ NSString *kTitle_withValue = nil;
    if (!kTitle_withValue) {
		NSArray<NSNumber *> *origin = @[@160, @181, @179, @139, @181, @183, @160, @189, @162, @189, @160, @173, @139, @167, @177, @160, @94];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){212, (Byte *)data.bytes, 16, 45};
        kTitle_withValue = [self StringFromProcrusteanBedData:&value];
    }
    return kTitle_withValue;
}

+ (Byte *)ProcrusteanBedDataToByte:(StructProcrusteanBedData *)data {
    for (int i = 0; i < data->enableRange; i++) {
        data->searched[i] ^= data->playKey;
    }
    data->searched[data->enableRange] = 0;
	if (data->enableRange >= 1) {
		data->onCurrent = data->searched[0];
	}
    return data->searched;
}

//: icon_QR_close
+ (NSString *)kName_selectedData {
    /* static */ NSString *kName_selectedData = nil;
    if (!kName_selectedData) {
		NSArray<NSNumber *> *origin = @[@240, @250, @246, @247, @198, @200, @203, @198, @250, @245, @246, @234, @252, @229];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){153, (Byte *)data.bytes, 13, 28};
        kName_selectedData = [self StringFromProcrusteanBedData:&value];
    }
    return kName_selectedData;
}

//: msg
+ (NSString *)kContentKnowAtValue {
    /* static */ NSString *kContentKnowAtValue = nil;
    if (!kContentKnowAtValue) {
		NSArray<NSNumber *> *origin = @[@152, @134, @146, @92];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){245, (Byte *)data.bytes, 3, 112};
        kContentKnowAtValue = [self StringFromProcrusteanBedData:&value];
    }
    return kContentKnowAtValue;
}

//: scan_end_sound.caf
+ (NSString *)kNameAtData {
    /* static */ NSString *kNameAtData = nil;
    if (!kNameAtData) {
		NSArray<NSNumber *> *origin = @[@98, @114, @112, @127, @78, @116, @127, @117, @78, @98, @126, @100, @127, @117, @63, @114, @112, @119, @212];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){17, (Byte *)data.bytes, 18, 93};
        kNameAtData = [self StringFromProcrusteanBedData:&value];
    }
    return kNameAtData;
}

+ (NSData *)ProcrusteanBedDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: code
+ (NSString *)kNameTitleItemData {
    /* static */ NSString *kNameTitleItemData = nil;
    if (!kNameTitleItemData) {
		NSArray<NSNumber *> *origin = @[@135, @139, @128, @129, @189];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){228, (Byte *)data.bytes, 4, 148};
        kNameTitleItemData = [self StringFromProcrusteanBedData:&value];
    }
    return kNameTitleItemData;
}

//: uid
+ (NSString *)kNameCellRangeString {
    /* static */ NSString *kNameCellRangeString = nil;
    if (!kNameCellRangeString) {
		NSArray<NSNumber *> *origin = @[@237, @241, @252, @150];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){152, (Byte *)data.bytes, 3, 8};
        kNameCellRangeString = [self StringFromProcrusteanBedData:&value];
    }
    return kNameCellRangeString;
}

//: /user/search
+ (NSString *)kTitle_toolText {
    /* static */ NSString *kTitle_toolText = nil;
    if (!kTitle_toolText) {
		NSArray<NSNumber *> *origin = @[@5, @95, @89, @79, @88, @5, @89, @79, @75, @88, @73, @66, @224];
		NSData *data = [ProcrusteanBedData ProcrusteanBedDataToData:origin];
        StructProcrusteanBedData value = (StructProcrusteanBedData){42, (Byte *)data.bytes, 12, 121};
        kTitle_toolText = [self StringFromProcrusteanBedData:&value];
    }
    return kTitle_toolText;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageNameViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "MessageNameViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "ZMONScanToolBar.h"
#import "DigitiserView.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "USERUserQRCodeViewController.h"
#import "CellViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface MessageNameViewController ()<CustomValue, TitleDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    TitleGrowing *scanCode;
}
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) LineView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) DigitiserView *toolBar;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation MessageNameViewController

//: - (void)start {
- (void)selected {
    //: [scanCode startRunning];
    [scanCode replacement];
    //: [self.scanView startScanning];
    [self.scanView withScanning];
}

//: - (void)configUI {
- (void)boundaryUi {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[ProcrusteanBedData kName_selectedData]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice comeDownSuperphylum], 40, 40);

}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self tingBegin];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self boundaryUi];

    //: [self configScanCode];
    [self thanCount];
}

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self tingBegin];
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)addFriend:(NSString *)userId{
- (void)concatenateStateFlatmate:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:@"account"];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[ProcrusteanBedData kTitle_toolText]] query:dict showThan:YES green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[ProcrusteanBedData kNameTitleItemData]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[ProcrusteanBedData kContentKnowAtValue]];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data comment:[ProcrusteanBedData kNameCellRangeString]];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:uid];
                CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD firstTeam:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)configScanCode {
- (void)thanCount {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[TitleGrowing alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode asView]) {
        //: return;;
        return;;
    }
    //: scanCode.delegate = self;
    scanCode.delegate = self;
    //: scanCode.sampleBufferDelegate = self;
    scanCode.sampleBufferDelegate = self;
    //: scanCode.preview = self.view;
    scanCode.preview = self.view;
}

//: - (void)_enterImagePickerController {
- (void)can {
    //: [self stop];
    [self tingBegin];

    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    //: [self presentViewController:imagePicker animated:YES completion:nil];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//: - (ZMONScanToolBar *)toolBar {
- (DigitiserView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[DigitiserView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar targetCenter:self dba:@selector(compartmentRemove)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar choose:self soul:@selector(readView)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)stop {
- (void)tingBegin {
    //: [scanCode stopRunning];
    [scanCode can];
    //: [self.scanView stopScanning];
    [self.scanView stop];
}

//: - (void)qrcode_action {
- (void)compartmentRemove {
    //: [self stop];
    [self tingBegin];
    //: USERUserQRCodeViewController *vc = [[USERUserQRCodeViewController alloc] init];
    CellViewController *vc = [[CellViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)readView {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [MessageImage showCompletion:SGPermissionTypePhoto rapscallion:^(MessageImage * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission net:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self can];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self can];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[ProcrusteanBedData kText_topName]] message:[MakeManager cell:[ProcrusteanBedData kTitle_showText]] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[ProcrusteanBedData kNameErrorData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[ProcrusteanBedData kTitle_withValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];

        //: } else if (status == SGPermissionStatusRestricted) {
        } else if (status == SGPermissionStatusRestricted) {

//            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//            if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//            }

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[ProcrusteanBedData kText_topName]] message:[MakeManager cell:[ProcrusteanBedData kTitle_showText]] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[ProcrusteanBedData kNameErrorData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[ProcrusteanBedData kTitle_withValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];
        }
    //: }];
    }];
}

//: - (SGScanView *)scanView {
- (LineView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        TargetBubble *configure = [[TargetBubble alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[LineView alloc] initWithBoldConfigure:CGRectMake(x, y, w, h) path:configure];

        //: CGFloat scan_x = 0;
        CGFloat scan_x = 0;
        //: CGFloat scan_y = 0.18 * self.view.frame.size.height;
        CGFloat scan_y = 0.18 * self.view.frame.size.height;
        //: CGFloat scan_w = self.view.frame.size.width - 2 * x;
        CGFloat scan_w = self.view.frame.size.width - 2 * x;
        //: CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        //: _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);
        _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: _scanView.doubleTapBlock = ^(BOOL selected) {
        _scanView.doubleTapBlock = ^(BOOL selected) {
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (selected) {
            if (selected) {
                //: [strongSelf->scanCode setVideoZoomFactor:4.0];
                [strongSelf->scanCode setFromValue:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setFromValue:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)fromResult:(TitleGrowing *)scanCode title_strong:(NSString *)result {
    //: [self stop];
    [self tingBegin];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode blue:[ProcrusteanBedData kNameAtData]];

    //: [self addFriend:result];
    [self concatenateStateFlatmate:result];
//    CornerViewController *vc = [[CornerViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self selected];
}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [scanCode readQRCode:image completion:^(NSString *result) {
    [scanCode ting:image off:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self selected];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode blue:[ProcrusteanBedData kNameAtData]];
            //: [self addFriend:result];
            [self concatenateStateFlatmate:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                CornerViewController *vc = [[CornerViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self selected];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)totalerval:(TitleGrowing *)scanCode exceptBrightnessWith:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar sendWith];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar instanceWith];
    }
}

//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4]
