
#import <Foundation/Foundation.h>

typedef struct {
    Byte thimbleName;
    Byte *inclose;
    unsigned int total;
} StructHinduCalendarMonthData;

@interface HinduCalendarMonthData : NSObject

+ (instancetype)sharedInstance;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *user_cornerValue;

//: data
@property (nonatomic, copy) NSString *m_powerStr;

//: scan_end_sound.caf
@property (nonatomic, copy) NSString *showPressedImageViewMessage;

//: account
@property (nonatomic, copy) NSString *k_cornerData;

//: code
@property (nonatomic, copy) NSString *appCommentText;

//: uid
@property (nonatomic, copy) NSString *main_changeFormat;

//: icon_QR_close
@property (nonatomic, copy) NSString *user_onFormat;

//: /user/search
@property (nonatomic, copy) NSString *main_removeIdent;

//: tag_activity_set
@property (nonatomic, copy) NSString *dream_tapMsg;

//: warm_prompt
@property (nonatomic, copy) NSString *appCurKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *dreamCommentData;

//: msg
@property (nonatomic, copy) NSString *showPowerId;

@end

@implementation HinduCalendarMonthData

+ (instancetype)sharedInstance {
    static HinduCalendarMonthData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HinduCalendarMonthDataToByte:(StructHinduCalendarMonthData *)data {
    for (int i = 0; i < data->total; i++) {
        data->inclose[i] ^= data->thimbleName;
    }
    data->inclose[data->total] = 0;
    return data->inclose;
}

- (NSString *)StringFromHinduCalendarMonthData:(StructHinduCalendarMonthData *)data {
    return [NSString stringWithUTF8String:(char *)[self HinduCalendarMonthDataToByte:data]];
}

//: msg
- (NSString *)showPowerId {
    if (!_showPowerId) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){28, (Byte []){113, 111, 123, 101}, 3};
        _showPowerId = [self StringFromHinduCalendarMonthData:&value];
    }
    return _showPowerId;
}

//: data
- (NSString *)m_powerStr {
    if (!_m_powerStr) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){215, (Byte []){179, 182, 163, 182, 228}, 4};
        _m_powerStr = [self StringFromHinduCalendarMonthData:&value];
    }
    return _m_powerStr;
}

//: uid
- (NSString *)main_changeFormat {
    if (!_main_changeFormat) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){221, (Byte []){168, 180, 185, 87}, 3};
        _main_changeFormat = [self StringFromHinduCalendarMonthData:&value];
    }
    return _main_changeFormat;
}

//: setting_privacy_camera
- (NSString *)user_cornerValue {
    if (!_user_cornerValue) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){111, (Byte []){28, 10, 27, 27, 6, 1, 8, 48, 31, 29, 6, 25, 14, 12, 22, 48, 12, 14, 2, 10, 29, 14, 3}, 22};
        _user_cornerValue = [self StringFromHinduCalendarMonthData:&value];
    }
    return _user_cornerValue;
}

//: tag_activity_set
- (NSString *)dream_tapMsg {
    if (!_dream_tapMsg) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){75, (Byte []){63, 42, 44, 20, 42, 40, 63, 34, 61, 34, 63, 50, 20, 56, 46, 63, 66}, 16};
        _dream_tapMsg = [self StringFromHinduCalendarMonthData:&value];
    }
    return _dream_tapMsg;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamCommentData {
    if (!_dreamCommentData) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){216, (Byte []){187, 183, 182, 172, 185, 187, 172, 135, 172, 185, 191, 135, 190, 170, 185, 191, 181, 189, 182, 172, 135, 187, 185, 182, 187, 189, 180, 201}, 27};
        _dreamCommentData = [self StringFromHinduCalendarMonthData:&value];
    }
    return _dreamCommentData;
}

//: icon_QR_close
- (NSString *)user_onFormat {
    if (!_user_onFormat) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){78, (Byte []){39, 45, 33, 32, 17, 31, 28, 17, 45, 34, 33, 61, 43, 69}, 13};
        _user_onFormat = [self StringFromHinduCalendarMonthData:&value];
    }
    return _user_onFormat;
}

//: code
- (NSString *)appCommentText {
    if (!_appCommentText) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){180, (Byte []){215, 219, 208, 209, 246}, 4};
        _appCommentText = [self StringFromHinduCalendarMonthData:&value];
    }
    return _appCommentText;
}

//: /user/search
- (NSString *)main_removeIdent {
    if (!_main_removeIdent) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){20, (Byte []){59, 97, 103, 113, 102, 59, 103, 113, 117, 102, 119, 124, 243}, 12};
        _main_removeIdent = [self StringFromHinduCalendarMonthData:&value];
    }
    return _main_removeIdent;
}

//: scan_end_sound.caf
- (NSString *)showPressedImageViewMessage {
    if (!_showPressedImageViewMessage) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){150, (Byte []){229, 245, 247, 248, 201, 243, 248, 242, 201, 229, 249, 227, 248, 242, 184, 245, 247, 240, 233}, 18};
        _showPressedImageViewMessage = [self StringFromHinduCalendarMonthData:&value];
    }
    return _showPressedImageViewMessage;
}

//: warm_prompt
- (NSString *)appCurKey {
    if (!_appCurKey) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){178, (Byte []){197, 211, 192, 223, 237, 194, 192, 221, 223, 194, 198, 12}, 11};
        _appCurKey = [self StringFromHinduCalendarMonthData:&value];
    }
    return _appCurKey;
}

//: account
- (NSString *)k_cornerData {
    if (!_k_cornerData) {
        StructHinduCalendarMonthData value = (StructHinduCalendarMonthData){22, (Byte []){119, 117, 117, 121, 99, 120, 98, 230}, 7};
        _k_cornerData = [self StringFromHinduCalendarMonthData:&value];
    }
    return _k_cornerData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldSessionViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "OldSessionViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "ZMONScanToolBar.h"
#import "DevelopmentView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "SizeViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface OldSessionViewController ()<QuickDelegate, CellQueryInfo, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    EdgeShow *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) MentalRepresentationView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) DevelopmentView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation OldSessionViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self item];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self earlierStart];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self item];
}

//: - (void)start {
- (void)earlierStart {
    //: [scanCode startRunning];
    [scanCode label];
    //: [self.scanView startScanning];
    [self.scanView language];
}

//: - (void)stop {
- (void)item {
    //: [scanCode stopRunning];
    [scanCode forbid];
    //: [self.scanView stopScanning];
    [self.scanView continueForthComment];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self unmistakable];

    //: [self configScanCode];
    [self can];
}

//: - (void)configUI {
- (void)unmistakable {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[HinduCalendarMonthData sharedInstance].user_onFormat] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice tingHeight], 40, 40);

}

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)can {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[EdgeShow alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode size]) {
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

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)title:(EdgeShow *)scanCode sumBy:(NSString *)result {
    //: [self stop];
    [self item];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode sessionReplySuccess:[HinduCalendarMonthData sharedInstance].showPressedImageViewMessage];

    //: [self addFriend:result];
    [self shouldFriend:result];
//    ApproximateViewController *vc = [[ApproximateViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)maxTime:(EdgeShow *)scanCode viewBrightness:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar perimeter];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar name];
    }
}

//: - (SGScanView *)scanView {
- (MentalRepresentationView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        RepresentationOld *configure = [[RepresentationOld alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[MentalRepresentationView alloc] initWithInputLight:CGRectMake(x, y, w, h) convert:configure];

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
                [strongSelf->scanCode setTag:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setTag:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (DevelopmentView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[DevelopmentView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar roundMessageEnable:self colorAction:@selector(tacticalManoeuvre)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar search:self need:@selector(pickFile)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)tacticalManoeuvre {
    //: [self stop];
    [self item];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    SizeViewController *vc = [[SizeViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)pickFile {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [DoingOldPermission with:SGPermissionTypePhoto completion:^(DoingOldPermission * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission post:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self objectSum];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self objectSum];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].appCurKey] message:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].user_cornerValue] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].dreamCommentData] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].dream_tapMsg] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].appCurKey] message:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].user_cornerValue] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].dreamCommentData] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[HinduCalendarMonthData sharedInstance].dream_tapMsg] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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


//: - (void)_enterImagePickerController {
- (void)objectSum {
    //: [self stop];
    [self item];

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

//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self earlierStart];
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
    [scanCode listing:image mobile:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self earlierStart];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode sessionReplySuccess:[HinduCalendarMonthData sharedInstance].showPressedImageViewMessage];
            //: [self addFriend:result];
            [self shouldFriend:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                ApproximateViewController *vc = [[ApproximateViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)shouldFriend:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[HinduCalendarMonthData sharedInstance].k_cornerData];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[HinduCalendarMonthData sharedInstance].main_removeIdent] reload_strong:dict with:YES forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[HinduCalendarMonthData sharedInstance].appCommentText];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict record:[HinduCalendarMonthData sharedInstance].showPowerId];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[HinduCalendarMonthData sharedInstance].m_powerStr];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data record:[HinduCalendarMonthData sharedInstance].main_changeFormat];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD index:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end
