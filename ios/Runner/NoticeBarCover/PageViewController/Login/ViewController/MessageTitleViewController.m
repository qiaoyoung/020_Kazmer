
#import <Foundation/Foundation.h>

@interface BluebackSalmonData : NSObject

@end

@implementation BluebackSalmonData

+ (Byte *)BluebackSalmonDataToCache:(Byte *)data {
    int bound = data[0];
    int cigar = data[1];
    for (int i = 0; i < bound / 2; i++) {
        int begin = cigar + i;
        int end = cigar + bound - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[cigar + bound] = 0;
    return data + cigar;
}

+ (NSString *)StringFromBluebackSalmonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BluebackSalmonDataToCache:data]];
}  

//: message_send_album
+ (NSString *)main_simplyName {
    /* static */ NSString *main_simplyName = nil;
    if (!main_simplyName) {
        Byte value[] = {18, 6, 50, 173, 151, 32, 109, 117, 98, 108, 97, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 55};
        main_simplyName = [self StringFromBluebackSalmonData:value];
    }
    return main_simplyName;
}

//: register_avtivity3_avatar
+ (NSString *)mContainerTitle {
    /* static */ NSString *mContainerTitle = nil;
    if (!mContainerTitle) {
        Byte value[] = {25, 8, 197, 50, 12, 223, 182, 165, 114, 97, 116, 97, 118, 97, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 1};
        mContainerTitle = [self StringFromBluebackSalmonData:value];
    }
    return mContainerTitle;
}

//: #999999
+ (NSString *)main_bookMessage {
    /* static */ NSString *main_bookMessage = nil;
    if (!main_bookMessage) {
        Byte value[] = {7, 3, 59, 57, 57, 57, 57, 57, 57, 35, 221};
        main_bookMessage = [self StringFromBluebackSalmonData:value];
    }
    return main_bookMessage;
}

//: icon_photo
+ (NSString *)app_allName {
    /* static */ NSString *app_allName = nil;
    if (!app_allName) {
        Byte value[] = {10, 3, 79, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 125};
        app_allName = [self StringFromBluebackSalmonData:value];
    }
    return app_allName;
}

//: tag_activity_set
+ (NSString *)mainGarlicMsg {
    /* static */ NSString *mainGarlicMsg = nil;
    if (!mainGarlicMsg) {
        Byte value[] = {16, 10, 137, 94, 143, 35, 237, 25, 146, 23, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 180};
        mainGarlicMsg = [self StringFromBluebackSalmonData:value];
    }
    return mainGarlicMsg;
}

//: nickname
+ (NSString *)dreamKeyNecessaryMessage {
    /* static */ NSString *dreamKeyNecessaryMessage = nil;
    if (!dreamKeyNecessaryMessage) {
        Byte value[] = {8, 9, 5, 128, 255, 37, 152, 229, 233, 101, 109, 97, 110, 107, 99, 105, 110, 191};
        dreamKeyNecessaryMessage = [self StringFromBluebackSalmonData:value];
    }
    return dreamKeyNecessaryMessage;
}

//: activity_login_login
+ (NSString *)mainTitleText {
    /* static */ NSString *mainTitleText = nil;
    if (!mainTitleText) {
        Byte value[] = {20, 11, 94, 12, 127, 174, 85, 134, 121, 110, 56, 110, 105, 103, 111, 108, 95, 110, 105, 103, 111, 108, 95, 121, 116, 105, 118, 105, 116, 99, 97, 125};
        mainTitleText = [self StringFromBluebackSalmonData:value];
    }
    return mainTitleText;
}

//: #fffWatch
+ (NSString *)dream_cueData {
    /* static */ NSString *dream_cueData = nil;
    if (!dream_cueData) {
        Byte value[] = {7, 2, 102, 102, 102, 102, 102, 102, 35, 85};
        dream_cueData = [self StringFromBluebackSalmonData:value];
    }
    return dream_cueData;
}

//: login_nickname
+ (NSString *)main_bookValue {
    /* static */ NSString *main_bookValue = nil;
    if (!main_bookValue) {
        Byte value[] = {14, 6, 231, 116, 51, 209, 101, 109, 97, 110, 107, 99, 105, 110, 95, 110, 105, 103, 111, 108, 10};
        main_bookValue = [self StringFromBluebackSalmonData:value];
    }
    return main_bookValue;
}

//: register_good_nick
+ (NSString *)k_nuclearImageFormat {
    /* static */ NSString *k_nuclearImageFormat = nil;
    if (!k_nuclearImageFormat) {
        Byte value[] = {18, 2, 107, 99, 105, 110, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 17};
        k_nuclearImageFormat = [self StringFromBluebackSalmonData:value];
    }
    return k_nuclearImageFormat;
}

//: warm_prompt
+ (NSString *)user_shirtStr {
    /* static */ NSString *user_shirtStr = nil;
    if (!user_shirtStr) {
        Byte value[] = {11, 3, 228, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 184};
        user_shirtStr = [self StringFromBluebackSalmonData:value];
    }
    return user_shirtStr;
}

//: #4B43DE
+ (NSString *)userResortId {
    /* static */ NSString *userResortId = nil;
    if (!userResortId) {
        Byte value[] = {7, 2, 69, 68, 51, 52, 66, 52, 35, 249};
        userResortId = [self StringFromBluebackSalmonData:value];
    }
    return userResortId;
}

//: hant
+ (NSString *)kAllPath {
    /* static */ NSString *kAllPath = nil;
    if (!kAllPath) {
        Byte value[] = {4, 8, 217, 126, 29, 122, 77, 163, 116, 110, 97, 104, 55};
        kAllPath = [self StringFromBluebackSalmonData:value];
    }
    return kAllPath;
}

//: group_info_activity_update_failed
+ (NSString *)noti_intellectualUrl {
    /* static */ NSString *noti_intellectualUrl = nil;
    if (!noti_intellectualUrl) {
        Byte value[] = {33, 7, 239, 114, 110, 244, 139, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 100, 112, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 223};
        noti_intellectualUrl = [self StringFromBluebackSalmonData:value];
    }
    return noti_intellectualUrl;
}

//: #333333
+ (NSString *)appPublisherId {
    /* static */ NSString *appPublisherId = nil;
    if (!appPublisherId) {
        Byte value[] = {7, 9, 22, 83, 14, 84, 231, 69, 2, 51, 51, 51, 51, 51, 51, 35, 73};
        appPublisherId = [self StringFromBluebackSalmonData:value];
    }
    return appPublisherId;
}

//: jpg
+ (NSString *)appSilverScribeFormat {
    /* static */ NSString *appSilverScribeFormat = nil;
    if (!appSilverScribeFormat) {
        Byte value[] = {3, 7, 187, 151, 40, 254, 23, 103, 112, 106, 232};
        appSilverScribeFormat = [self StringFromBluebackSalmonData:value];
    }
    return appSilverScribeFormat;
}

//: ic_close_b
+ (NSString *)show_curName {
    /* static */ NSString *show_curName = nil;
    if (!show_curName) {
        Byte value[] = {10, 11, 175, 141, 83, 83, 204, 31, 8, 113, 78, 98, 95, 101, 115, 111, 108, 99, 95, 99, 105, 77};
        show_curName = [self StringFromBluebackSalmonData:value];
    }
    return show_curName;
}

//: zh-Hant
+ (NSString *)main_thoroughlyStr {
    /* static */ NSString *main_thoroughlyStr = nil;
    if (!main_thoroughlyStr) {
        Byte value[] = {7, 7, 166, 67, 136, 228, 134, 116, 110, 97, 72, 45, 104, 122, 29};
        main_thoroughlyStr = [self StringFromBluebackSalmonData:value];
    }
    return main_thoroughlyStr;
}

//: photo_account_def
+ (NSString *)app_capitalPath {
    /* static */ NSString *app_capitalPath = nil;
    if (!app_capitalPath) {
        Byte value[] = {17, 9, 134, 196, 169, 172, 140, 117, 103, 102, 101, 100, 95, 116, 110, 117, 111, 99, 99, 97, 95, 111, 116, 111, 104, 112, 231};
        app_capitalPath = [self StringFromBluebackSalmonData:value];
    }
    return app_capitalPath;
}

//: nickname_same_account
+ (NSString *)dream_scribeName {
    /* static */ NSString *dream_scribeName = nil;
    if (!dream_scribeName) {
        Byte value[] = {21, 9, 13, 130, 17, 141, 80, 38, 211, 116, 110, 117, 111, 99, 99, 97, 95, 101, 109, 97, 115, 95, 101, 109, 97, 110, 107, 99, 105, 110, 140};
        dream_scribeName = [self StringFromBluebackSalmonData:value];
    }
    return dream_scribeName;
}

//: contact_tag_fragment_cancel
+ (NSString *)userBarreLagIdent {
    /* static */ NSString *userBarreLagIdent = nil;
    if (!userBarreLagIdent) {
        Byte value[] = {27, 11, 110, 171, 40, 159, 4, 80, 209, 134, 143, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 218};
        userBarreLagIdent = [self StringFromBluebackSalmonData:value];
    }
    return userBarreLagIdent;
}

//: #F6F6F6
+ (NSString *)notiKillerTimeName {
    /* static */ NSString *notiKillerTimeName = nil;
    if (!notiKillerTimeName) {
        Byte value[] = {7, 7, 54, 50, 200, 232, 25, 54, 70, 54, 70, 54, 70, 35, 215};
        notiKillerTimeName = [self StringFromBluebackSalmonData:value];
    }
    return notiKillerTimeName;
}

//: register_avtivity3_nick
+ (NSString *)show_remindUrl {
    /* static */ NSString *show_remindUrl = nil;
    if (!show_remindUrl) {
        Byte value[] = {23, 5, 2, 73, 51, 107, 99, 105, 110, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 29};
        show_remindUrl = [self StringFromBluebackSalmonData:value];
    }
    return show_remindUrl;
}

//: zh-Hans
+ (NSString *)noti_diskStr {
    /* static */ NSString *noti_diskStr = nil;
    if (!noti_diskStr) {
        Byte value[] = {7, 2, 115, 110, 97, 72, 45, 104, 122, 126};
        noti_diskStr = [self StringFromBluebackSalmonData:value];
    }
    return noti_diskStr;
}

//: nickname_tip
+ (NSString *)m_attendanceMessage {
    /* static */ NSString *m_attendanceMessage = nil;
    if (!m_attendanceMessage) {
        Byte value[] = {12, 7, 138, 2, 76, 186, 247, 112, 105, 116, 95, 101, 109, 97, 110, 107, 99, 105, 110, 159};
        m_attendanceMessage = [self StringFromBluebackSalmonData:value];
    }
    return m_attendanceMessage;
}

//: setting_privacy_camera
+ (NSString *)k_towardsUrl {
    /* static */ NSString *k_towardsUrl = nil;
    if (!k_towardsUrl) {
        Byte value[] = {22, 7, 104, 249, 206, 114, 25, 97, 114, 101, 109, 97, 99, 95, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 177};
        k_towardsUrl = [self StringFromBluebackSalmonData:value];
    }
    return k_towardsUrl;
}

//: login_bg
+ (NSString *)m_ployKey {
    /* static */ NSString *m_ployKey = nil;
    if (!m_ployKey) {
        Byte value[] = {8, 6, 76, 102, 165, 189, 103, 98, 95, 110, 105, 103, 111, 108, 114};
        m_ployKey = [self StringFromBluebackSalmonData:value];
    }
    return m_ployKey;
}

//: setting_privacy
+ (NSString *)m_itchMessage {
    /* static */ NSString *m_itchMessage = nil;
    if (!m_itchMessage) {
        Byte value[] = {15, 7, 144, 7, 69, 168, 131, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 90};
        m_itchMessage = [self StringFromBluebackSalmonData:value];
    }
    return m_itchMessage;
}

//: spa
+ (NSString *)app_patienceDeerMessage {
    /* static */ NSString *app_patienceDeerMessage = nil;
    if (!app_patienceDeerMessage) {
        Byte value[] = {3, 9, 165, 191, 233, 227, 240, 22, 159, 97, 112, 115, 131};
        app_patienceDeerMessage = [self StringFromBluebackSalmonData:value];
    }
    return app_patienceDeerMessage;
}

//: ko-KP
+ (NSString *)user_ligationData {
    /* static */ NSString *user_ligationData = nil;
    if (!user_ligationData) {
        Byte value[] = {5, 6, 141, 170, 202, 132, 80, 75, 45, 111, 107, 110};
        user_ligationData = [self StringFromBluebackSalmonData:value];
    }
    return user_ligationData;
}

//: #5D5F66
+ (NSString *)mOverseeStr {
    /* static */ NSString *mOverseeStr = nil;
    if (!mOverseeStr) {
        Byte value[] = {7, 8, 142, 26, 192, 37, 250, 57, 54, 54, 70, 53, 68, 53, 35, 58};
        mOverseeStr = [self StringFromBluebackSalmonData:value];
    }
    return mOverseeStr;
}

//: activity_register_account_has_account
+ (NSString *)dreamResortMarchPorterStr {
    /* static */ NSString *dreamResortMarchPorterStr = nil;
    if (!dreamResortMarchPorterStr) {
        Byte value[] = {37, 10, 207, 4, 139, 154, 192, 86, 95, 175, 116, 110, 117, 111, 99, 99, 97, 95, 115, 97, 104, 95, 116, 110, 117, 111, 99, 99, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 121, 116, 105, 118, 105, 116, 99, 97, 94};
        dreamResortMarchPorterStr = [self StringFromBluebackSalmonData:value];
    }
    return dreamResortMarchPorterStr;
}

//: contact_list_activity_complete
+ (NSString *)mEngagementStr {
    /* static */ NSString *mEngagementStr = nil;
    if (!mEngagementStr) {
        Byte value[] = {30, 12, 250, 39, 32, 52, 152, 95, 144, 143, 109, 59, 101, 116, 101, 108, 112, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 116, 99, 97, 116, 110, 111, 99, 48};
        mEngagementStr = [self StringFromBluebackSalmonData:value];
    }
    return mEngagementStr;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)m_insistIdent {
    /* static */ NSString *m_insistIdent = nil;
    if (!m_insistIdent) {
        Byte value[] = {39, 9, 208, 238, 201, 19, 76, 71, 9, 100, 101, 108, 105, 97, 102, 95, 114, 97, 116, 97, 118, 97, 95, 100, 97, 111, 108, 112, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 38};
        m_insistIdent = [self StringFromBluebackSalmonData:value];
    }
    return m_insistIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageTitleViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "MessageTitleViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "NTESRegistConfigManager.h"
#import "BarTo.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"

//: @interface RegisterInfoViewController ()
@interface MessageTitleViewController ()

//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;

//: @property (nonatomic, strong) NSString *avaterUrl;
@property (nonatomic, strong) NSString *avaterUrl;

//: @end
@end

//: @implementation RegisterInfoViewController
@implementation MessageTitleViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[BluebackSalmonData m_ployKey]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initCount];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)initUI
- (void)initCount
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice tingHeight]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[BluebackSalmonData show_curName]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[BluebackSalmonData k_nuclearImageFormat]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor min:[BluebackSalmonData mOverseeStr]];
    //: labtitle.font = [UIFont systemFontOfSize:14];
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.image = [UIImage imageNamed:[BluebackSalmonData app_capitalPath]];
    //: self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.cornerRadius = 70;
    //: self.aratarImgView.layer.masksToBounds = YES;
    self.aratarImgView.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.aratarImgView];
    [avaterView addSubview:self.aratarImgView];
    //: self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    //: self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.cornerRadius = 24;
    //: self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.layer.masksToBounds = YES;
    //: self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    //: [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto setImage:[UIImage imageNamed:[BluebackSalmonData app_allName]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(exhibitSession) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor min:[BluebackSalmonData notiKillerTimeName]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[BluebackSalmonData main_bookValue]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor min:[BluebackSalmonData appPublisherId]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[WatchLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData m_attendanceMessage]] attributes:@{NSForegroundColorAttributeName:[UIColor min:[BluebackSalmonData main_bookMessage]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[WatchLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData mEngagementStr]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(clickImage) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _loginButton.backgroundColor = [UIColor min:[BluebackSalmonData userResortId]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice tingHeight]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _registerButton.backgroundColor = [UIColor min:[BluebackSalmonData userResortId]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#fffWatch"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor min:[BluebackSalmonData dream_cueData]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[WatchLanguageManager getTextWithKey:@"activity_register_account_has_account"],[WatchLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData dreamResortMarchPorterStr]],[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData mainTitleText]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(greenFlush) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}


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
                        [self bankManager:nil];

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
            [self bankManager:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData user_shirtStr]] message:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData k_towardsUrl]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData userBarreLagIdent]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData mainGarlicMsg]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self bankManager:nil];
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
        [self bankManager:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData user_shirtStr]] message:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData m_itchMessage]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData userBarreLagIdent]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData mainGarlicMsg]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData main_simplyName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self fullPin];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData userBarreLagIdent]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
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
- (void)bankManager:(PHAsset *)asset {

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
    //: NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger widthHeight = self.view.width - 2 * left;
    //: NSInteger top = (self.view.height - widthHeight) / 2;
    NSInteger top = (self.view.height - widthHeight) / 2;
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
        preferredlang = [BluebackSalmonData user_ligationData];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[BluebackSalmonData app_patienceDeerMessage]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [BluebackSalmonData noti_diskStr];
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
    }else if ([langType containsString:[BluebackSalmonData kAllPath]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [BluebackSalmonData main_thoroughlyStr];
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
//            [self uploadImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)backgroundPraise:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [RegisterColor exceptLast:[BluebackSalmonData appSilverScribeFormat]];
    //: NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[RegisterColor capture] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error && wself) {
            if (!error && wself) {
                //: NSLog(@"urlString：%@",urlString);
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData m_insistIdent]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData noti_intellectualUrl]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}


//: - (void)gotologin
- (void)greenFlush
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}
//: - (void)nextButtonClick
- (void)clickImage
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData show_remindUrl]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData dream_scribeName]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    BarTo *manager = [BarTo districtManager];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[WatchLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD index:[PaintedNaturalLanguageTo exhibit:[BluebackSalmonData mContainerTitle]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[BluebackSalmonData dreamKeyNecessaryMessage]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [BarTo with:self.navigationController];
}

//: @end
@end
