
#import <Foundation/Foundation.h>

@interface PremiseData : NSObject

+ (instancetype)sharedInstance;

//: warm_prompt
@property (nonatomic, copy) NSString *dream_cartValue;

//: icon_photo
@property (nonatomic, copy) NSString *dreamPremiseContainerFormat;

//: hant
@property (nonatomic, copy) NSString *k_hoppingIdent;

//: zh-Hant
@property (nonatomic, copy) NSString *userSuccessMsg;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *app_showerText;

//: #5D5F66
@property (nonatomic, copy) NSString *show_tableMessageFormat;

//: setting_privacy
@property (nonatomic, copy) NSString *app_thanksText;

//: user_profile_avtivity_head
@property (nonatomic, copy) NSString *notiFiftyId;

//: nickname
@property (nonatomic, copy) NSString *notiShipId;

//: #000000
@property (nonatomic, copy) NSString *app_boomContent;

//: message_send_album
@property (nonatomic, copy) NSString *main_economicallyStr;

//: spa
@property (nonatomic, copy) NSString *noti_colorIdent;

//: tag_activity_set
@property (nonatomic, copy) NSString *user_vanishItchStr;

//: contact_list_activity_complete
@property (nonatomic, copy) NSString *kColorFormat;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *app_trainUrl;

//: register_avtivity3_avatar
@property (nonatomic, copy) NSString *userPatrolValue;

//: #4B43DE
@property (nonatomic, copy) NSString *mainEvolveIdent;

//: login_bg
@property (nonatomic, copy) NSString *show_meatGenetValue;

//: register_good_avater
@property (nonatomic, copy) NSString *main_centerShowerIdent;

//: ko-KP
@property (nonatomic, copy) NSString *notiEmployTitle;

//: zh-Hans
@property (nonatomic, copy) NSString *mainLanceShowerValue;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kOperationName;

//: head_default
@property (nonatomic, copy) NSString *mHormoneUrl;

//: ic_hi
@property (nonatomic, copy) NSString *dream_matteUrl;

@end

@implementation PremiseData

+ (instancetype)sharedInstance {
    static PremiseData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PremiseDataToCache:(Byte *)data {
    int lanceYa = data[0];
    Byte duringArrest = data[1];
    int speculation = data[2];
    for (int i = speculation; i < speculation + lanceYa; i++) {
        int value = data[i] - duringArrest;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[speculation + lanceYa] = 0;
    return data + speculation;
}

- (NSString *)StringFromPremiseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PremiseDataToCache:data]];
}

//: login_bg
- (NSString *)show_meatGenetValue {
    if (!_show_meatGenetValue) {
        Byte value[] = {8, 78, 10, 122, 99, 167, 67, 218, 126, 187, 186, 189, 181, 183, 188, 173, 176, 181, 51};
        _show_meatGenetValue = [self StringFromPremiseData:value];
    }
    return _show_meatGenetValue;
}

//: nickname
- (NSString *)notiShipId {
    if (!_notiShipId) {
        Byte value[] = {8, 36, 6, 229, 80, 62, 146, 141, 135, 143, 146, 133, 145, 137, 4};
        _notiShipId = [self StringFromPremiseData:value];
    }
    return _notiShipId;
}

//: hant
- (NSString *)k_hoppingIdent {
    if (!_k_hoppingIdent) {
        Byte value[] = {4, 14, 12, 114, 208, 175, 132, 215, 234, 152, 244, 181, 118, 111, 124, 130, 119};
        _k_hoppingIdent = [self StringFromPremiseData:value];
    }
    return _k_hoppingIdent;
}

//: message_send_album
- (NSString *)main_economicallyStr {
    if (!_main_economicallyStr) {
        Byte value[] = {18, 62, 12, 53, 93, 201, 36, 240, 9, 187, 61, 200, 171, 163, 177, 177, 159, 165, 163, 157, 177, 163, 172, 162, 157, 159, 170, 160, 179, 171, 115};
        _main_economicallyStr = [self StringFromPremiseData:value];
    }
    return _main_economicallyStr;
}

//: back_arrow_bl
- (NSString *)kOperationName {
    if (!_kOperationName) {
        Byte value[] = {13, 65, 12, 68, 236, 179, 122, 118, 35, 249, 75, 215, 163, 162, 164, 172, 160, 162, 179, 179, 176, 184, 160, 163, 173, 221};
        _kOperationName = [self StringFromPremiseData:value];
    }
    return _kOperationName;
}

//: tag_activity_set
- (NSString *)user_vanishItchStr {
    if (!_user_vanishItchStr) {
        Byte value[] = {16, 71, 12, 24, 106, 41, 159, 223, 248, 71, 84, 239, 187, 168, 174, 166, 168, 170, 187, 176, 189, 176, 187, 192, 166, 186, 172, 187, 71};
        _user_vanishItchStr = [self StringFromPremiseData:value];
    }
    return _user_vanishItchStr;
}

//: user_profile_avtivity_head
- (NSString *)notiFiftyId {
    if (!_notiFiftyId) {
        Byte value[] = {26, 15, 6, 188, 222, 73, 132, 130, 116, 129, 110, 127, 129, 126, 117, 120, 123, 116, 110, 112, 133, 131, 120, 133, 120, 131, 136, 110, 119, 116, 112, 115, 154};
        _notiFiftyId = [self StringFromPremiseData:value];
    }
    return _notiFiftyId;
}

//: contact_list_activity_complete
- (NSString *)kColorFormat {
    if (!_kColorFormat) {
        Byte value[] = {30, 96, 13, 127, 136, 65, 56, 178, 103, 153, 250, 180, 43, 195, 207, 206, 212, 193, 195, 212, 191, 204, 201, 211, 212, 191, 193, 195, 212, 201, 214, 201, 212, 217, 191, 195, 207, 205, 208, 204, 197, 212, 197, 112};
        _kColorFormat = [self StringFromPremiseData:value];
    }
    return _kColorFormat;
}

//: spa
- (NSString *)noti_colorIdent {
    if (!_noti_colorIdent) {
        Byte value[] = {3, 75, 9, 158, 123, 42, 119, 109, 249, 190, 187, 172, 47};
        _noti_colorIdent = [self StringFromPremiseData:value];
    }
    return _noti_colorIdent;
}

//: #000000
- (NSString *)app_boomContent {
    if (!_app_boomContent) {
        Byte value[] = {7, 81, 10, 190, 162, 151, 73, 101, 39, 100, 116, 129, 129, 129, 129, 129, 129, 240};
        _app_boomContent = [self StringFromPremiseData:value];
    }
    return _app_boomContent;
}

//: setting_privacy_camera
- (NSString *)app_trainUrl {
    if (!_app_trainUrl) {
        Byte value[] = {22, 59, 6, 79, 22, 236, 174, 160, 175, 175, 164, 169, 162, 154, 171, 173, 164, 177, 156, 158, 180, 154, 158, 156, 168, 160, 173, 156, 36};
        _app_trainUrl = [self StringFromPremiseData:value];
    }
    return _app_trainUrl;
}

//: warm_prompt
- (NSString *)dream_cartValue {
    if (!_dream_cartValue) {
        Byte value[] = {11, 32, 4, 56, 151, 129, 146, 141, 127, 144, 146, 143, 141, 144, 148, 91};
        _dream_cartValue = [self StringFromPremiseData:value];
    }
    return _dream_cartValue;
}

//: zh-Hant
- (NSString *)userSuccessMsg {
    if (!_userSuccessMsg) {
        Byte value[] = {7, 78, 6, 66, 151, 219, 200, 182, 123, 150, 175, 188, 194, 195};
        _userSuccessMsg = [self StringFromPremiseData:value];
    }
    return _userSuccessMsg;
}

//: register_good_avater
- (NSString *)main_centerShowerIdent {
    if (!_main_centerShowerIdent) {
        Byte value[] = {20, 92, 9, 94, 182, 10, 188, 66, 233, 206, 193, 195, 197, 207, 208, 193, 206, 187, 195, 203, 203, 192, 187, 189, 210, 189, 208, 193, 206, 165};
        _main_centerShowerIdent = [self StringFromPremiseData:value];
    }
    return _main_centerShowerIdent;
}

//: ic_hi
- (NSString *)dream_matteUrl {
    if (!_dream_matteUrl) {
        Byte value[] = {5, 80, 3, 185, 179, 175, 184, 185, 50};
        _dream_matteUrl = [self StringFromPremiseData:value];
    }
    return _dream_matteUrl;
}

//: icon_photo
- (NSString *)dreamPremiseContainerFormat {
    if (!_dreamPremiseContainerFormat) {
        Byte value[] = {10, 72, 6, 153, 198, 13, 177, 171, 183, 182, 167, 184, 176, 183, 188, 183, 77};
        _dreamPremiseContainerFormat = [self StringFromPremiseData:value];
    }
    return _dreamPremiseContainerFormat;
}

//: register_avtivity3_avatar
- (NSString *)userPatrolValue {
    if (!_userPatrolValue) {
        Byte value[] = {25, 92, 11, 104, 29, 63, 174, 98, 39, 64, 115, 206, 193, 195, 197, 207, 208, 193, 206, 187, 189, 210, 208, 197, 210, 197, 208, 213, 143, 187, 189, 210, 189, 208, 189, 206, 5};
        _userPatrolValue = [self StringFromPremiseData:value];
    }
    return _userPatrolValue;
}

//: setting_privacy
- (NSString *)app_thanksText {
    if (!_app_thanksText) {
        Byte value[] = {15, 29, 6, 222, 58, 12, 144, 130, 145, 145, 134, 139, 132, 124, 141, 143, 134, 147, 126, 128, 150, 164};
        _app_thanksText = [self StringFromPremiseData:value];
    }
    return _app_thanksText;
}

//: ko-KP
- (NSString *)notiEmployTitle {
    if (!_notiEmployTitle) {
        Byte value[] = {5, 33, 5, 28, 124, 140, 144, 78, 108, 113, 32};
        _notiEmployTitle = [self StringFromPremiseData:value];
    }
    return _notiEmployTitle;
}

//: zh-Hans
- (NSString *)mainLanceShowerValue {
    if (!_mainLanceShowerValue) {
        Byte value[] = {7, 33, 8, 151, 136, 225, 197, 31, 155, 137, 78, 105, 130, 143, 148, 95};
        _mainLanceShowerValue = [self StringFromPremiseData:value];
    }
    return _mainLanceShowerValue;
}

//: head_default
- (NSString *)mHormoneUrl {
    if (!_mHormoneUrl) {
        Byte value[] = {12, 49, 4, 129, 153, 150, 146, 149, 144, 149, 150, 151, 146, 166, 157, 165, 86};
        _mHormoneUrl = [self StringFromPremiseData:value];
    }
    return _mHormoneUrl;
}

//: contact_tag_fragment_cancel
- (NSString *)app_showerText {
    if (!_app_showerText) {
        Byte value[] = {27, 18, 5, 213, 30, 117, 129, 128, 134, 115, 117, 134, 113, 134, 115, 121, 113, 120, 132, 115, 121, 127, 119, 128, 134, 113, 117, 115, 128, 117, 119, 126, 41};
        _app_showerText = [self StringFromPremiseData:value];
    }
    return _app_showerText;
}

//: #4B43DE
- (NSString *)mainEvolveIdent {
    if (!_mainEvolveIdent) {
        Byte value[] = {7, 31, 6, 184, 30, 147, 66, 83, 97, 83, 82, 99, 100, 138};
        _mainEvolveIdent = [self StringFromPremiseData:value];
    }
    return _mainEvolveIdent;
}

//: #5D5F66
- (NSString *)show_tableMessageFormat {
    if (!_show_tableMessageFormat) {
        Byte value[] = {7, 85, 10, 42, 247, 3, 167, 60, 54, 20, 120, 138, 153, 138, 155, 139, 139, 76};
        _show_tableMessageFormat = [self StringFromPremiseData:value];
    }
    return _show_tableMessageFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AvatarViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterAvatarViewController.h"
#import "AvatarViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+InputSub.h"
//: #import "KEKESetNickNameView.h"
#import "ReplacementView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "BarTo.h"

//: @interface FFFRegisterAvatarViewController ()
@interface AvatarViewController ()


//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;


//: @end
@end

//: @implementation FFFRegisterAvatarViewController
@implementation AvatarViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[PremiseData sharedInstance].show_meatGenetValue];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initTable];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[PremiseData sharedInstance].kOperationName] forState:(UIControlStateNormal)];
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

//: - (void)initUI
- (void)initTable
{


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_head"];
    titleLabel.text = [PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].notiFiftyId];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor min:[PremiseData sharedInstance].show_tableMessageFormat];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].main_centerShowerIdent];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    //: [self.view addSubview:imgView];
    [self.view addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 75;
    _aratarImgView.layer.cornerRadius = 75;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[PremiseData sharedInstance].mHormoneUrl];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

    //: UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    //: usericon.image = [UIImage imageNamed:@"ic_hi"];
    usericon.image = [UIImage imageNamed:[PremiseData sharedInstance].dream_matteUrl];
    //: [imgView addSubview:usericon];
    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    //: cameraicon.backgroundColor = [UIColor whiteColor];
    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[PremiseData sharedInstance].dreamPremiseContainerFormat] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(exhibitSession) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.nickName;
    tita.text = self.nickName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor min:[PremiseData sharedInstance].app_boomContent];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:16];
    tita.font = [UIFont systemFontOfSize:16];
    //: [self.view addSubview:tita];
    [self.view addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    self.registButton.backgroundColor = [UIColor min:[PremiseData sharedInstance].mainEvolveIdent];
//    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    self.registButton.layer.shadowColor = [UIColor min:[PremiseData sharedInstance].mainEvolveIdent].CGColor;
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].kColorFormat] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(clickImage) forControlEvents:UIControlEventTouchUpInside];


}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)contentPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [self pushTZImagePickerControllerWithAsset:nil];
                        [self enable:nil];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [self pushTZImagePickerControllerWithAsset:nil];
            [self enable:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].dream_cartValue] message:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].app_trainUrl] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].app_showerText] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].user_vanishItchStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)fullPin
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self pushTZImagePickerControllerWithAsset:nil];
                    [self enable:nil];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self enable:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].dream_cartValue] message:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].app_thanksText] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].app_showerText] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].user_vanishItchStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
}







//: - (void)showPicker {
- (void)exhibitSession {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].main_economicallyStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self fullPin];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].app_showerText] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


//    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)enable:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = twineInside([OnName user].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [PremiseData sharedInstance].notiEmployTitle;
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[PremiseData sharedInstance].noti_colorIdent]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [PremiseData sharedInstance].mainLanceShowerValue;
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[PremiseData sharedInstance].k_hoppingIdent]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [PremiseData sharedInstance].userSuccessMsg;
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)clickImage{

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    BarTo *manager = [BarTo districtManager];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD index:[PaintedNaturalLanguageTo exhibit:[PremiseData sharedInstance].userPatrolValue]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.nickName forKey:@"nickname"];
    [manager.registDict setObject:self.nickName forKey:[PremiseData sharedInstance].notiShipId];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [BarTo with:self.navigationController];
}


//: @end
@end