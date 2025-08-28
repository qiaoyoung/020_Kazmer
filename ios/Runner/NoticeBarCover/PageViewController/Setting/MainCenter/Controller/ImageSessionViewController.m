
#import <Foundation/Foundation.h>

@interface BarreFreedData : NSObject

@end

@implementation BarreFreedData

+ (Byte *)BarreFreedDataToCache:(Byte *)data {
    int dba = data[0];
    Byte oldMaid = data[1];
    int imageBubbleShow = data[2];
    for (int i = imageBubbleShow; i < imageBubbleShow + dba; i++) {
        int value = data[i] - oldMaid;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[imageBubbleShow + dba] = 0;
    return data + imageBubbleShow;
}

+ (NSString *)StringFromBarreFreedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BarreFreedDataToCache:data]];
}

//: setting_privacy
+ (NSString *)m_skyPath {
    /* static */ NSString *m_skyPath = nil;
    if (!m_skyPath) {
        Byte value[] = {15, 66, 9, 182, 136, 157, 44, 36, 93, 181, 167, 182, 182, 171, 176, 169, 161, 178, 180, 171, 184, 163, 165, 187, 200};
        m_skyPath = [self StringFromBarreFreedData:value];
    }
    return m_skyPath;
}

//: zh-Hant
+ (NSString *)main_rumenValue {
    /* static */ NSString *main_rumenValue = nil;
    if (!main_rumenValue) {
        Byte value[] = {7, 56, 13, 16, 96, 60, 159, 185, 50, 154, 18, 189, 56, 178, 160, 101, 128, 153, 166, 172, 192};
        main_rumenValue = [self StringFromBarreFreedData:value];
    }
    return main_rumenValue;
}

//: spa
+ (NSString *)appRnaFishingValue {
    /* static */ NSString *appRnaFishingValue = nil;
    if (!appRnaFishingValue) {
        Byte value[] = {3, 48, 4, 243, 163, 160, 145, 200};
        appRnaFishingValue = [self StringFromBarreFreedData:value];
    }
    return appRnaFishingValue;
}

//: photo_account_def
+ (NSString *)showUserKey {
    /* static */ NSString *showUserKey = nil;
    if (!showUserKey) {
        Byte value[] = {17, 29, 7, 44, 237, 219, 204, 141, 133, 140, 145, 140, 124, 126, 128, 128, 140, 146, 139, 145, 124, 129, 130, 131, 130};
        showUserKey = [self StringFromBarreFreedData:value];
    }
    return showUserKey;
}

//: my_user_info_activity_title
+ (NSString *)k_quickBarTitle {
    /* static */ NSString *k_quickBarTitle = nil;
    if (!k_quickBarTitle) {
        Byte value[] = {27, 83, 8, 125, 36, 50, 114, 68, 192, 204, 178, 200, 198, 184, 197, 178, 188, 193, 185, 194, 178, 180, 182, 199, 188, 201, 188, 199, 204, 178, 199, 188, 199, 191, 184, 190};
        k_quickBarTitle = [self StringFromBarreFreedData:value];
    }
    return k_quickBarTitle;
}

//: friend_info_activity_xu
+ (NSString *)mGenetPath {
    /* static */ NSString *mGenetPath = nil;
    if (!mGenetPath) {
        Byte value[] = {23, 89, 8, 29, 103, 177, 88, 198, 191, 203, 194, 190, 199, 189, 184, 194, 199, 191, 200, 184, 186, 188, 205, 194, 207, 194, 205, 210, 184, 209, 206, 18};
        mGenetPath = [self StringFromBarreFreedData:value];
    }
    return mGenetPath;
}

//: icon_options_grdefault
+ (NSString *)notiSuccessContent {
    /* static */ NSString *notiSuccessContent = nil;
    if (!notiSuccessContent) {
        Byte value[] = {22, 62, 9, 175, 186, 210, 69, 25, 40, 167, 161, 173, 172, 157, 173, 174, 178, 167, 173, 172, 177, 157, 165, 176, 162, 163, 164, 159, 179, 170, 178, 85};
        notiSuccessContent = [self StringFromBarreFreedData:value];
    }
    return notiSuccessContent;
}

//: group_info_activity_update_failed
+ (NSString *)appShowMonthStr {
    /* static */ NSString *appShowMonthStr = nil;
    if (!appShowMonthStr) {
        Byte value[] = {33, 84, 8, 153, 142, 202, 193, 244, 187, 198, 195, 201, 196, 179, 189, 194, 186, 195, 179, 181, 183, 200, 189, 202, 189, 200, 205, 179, 201, 196, 184, 181, 200, 185, 179, 186, 181, 189, 192, 185, 184, 6};
        appShowMonthStr = [self StringFromBarreFreedData:value];
    }
    return appShowMonthStr;
}

//: icon_photo
+ (NSString *)showHoppingFreedGivingKey {
    /* static */ NSString *showHoppingFreedGivingKey = nil;
    if (!showHoppingFreedGivingKey) {
        Byte value[] = {10, 23, 9, 136, 52, 163, 252, 28, 166, 128, 122, 134, 133, 118, 135, 127, 134, 139, 134, 16};
        showHoppingFreedGivingKey = [self StringFromBarreFreedData:value];
    }
    return showHoppingFreedGivingKey;
}

//: userinfo_bg
+ (NSString *)m_showStr {
    /* static */ NSString *m_showStr = nil;
    if (!m_showStr) {
        Byte value[] = {11, 93, 7, 228, 186, 174, 182, 210, 208, 194, 207, 198, 203, 195, 204, 188, 191, 196, 8};
        m_showStr = [self StringFromBarreFreedData:value];
    }
    return m_showStr;
}

//: user_id
+ (NSString *)k_valueTextMonthUrl {
    /* static */ NSString *k_valueTextMonthUrl = nil;
    if (!k_valueTextMonthUrl) {
        Byte value[] = {7, 61, 12, 103, 27, 192, 127, 129, 112, 198, 172, 152, 178, 176, 162, 175, 156, 166, 161, 212};
        k_valueTextMonthUrl = [self StringFromBarreFreedData:value];
    }
    return k_valueTextMonthUrl;
}

//: icon_me_arrow
+ (NSString *)k_evolveId {
    /* static */ NSString *k_evolveId = nil;
    if (!k_evolveId) {
        Byte value[] = {13, 81, 6, 120, 219, 239, 186, 180, 192, 191, 176, 190, 182, 176, 178, 195, 195, 192, 200, 160};
        k_evolveId = [self StringFromBarreFreedData:value];
    }
    return k_evolveId;
}

//: jpg
+ (NSString *)m_cartStateTitle {
    /* static */ NSString *m_cartStateTitle = nil;
    if (!m_cartStateTitle) {
        Byte value[] = {3, 1, 13, 202, 210, 177, 108, 243, 28, 184, 144, 204, 189, 107, 113, 104, 75};
        m_cartStateTitle = [self StringFromBarreFreedData:value];
    }
    return m_cartStateTitle;
}

//: activity_my_user_info_nick
+ (NSString *)noti_crushId {
    /* static */ NSString *noti_crushId = nil;
    if (!noti_crushId) {
        Byte value[] = {26, 91, 7, 82, 171, 144, 115, 188, 190, 207, 196, 209, 196, 207, 212, 186, 200, 212, 186, 208, 206, 192, 205, 186, 196, 201, 193, 202, 186, 201, 196, 190, 198, 158};
        noti_crushId = [self StringFromBarreFreedData:value];
    }
    return noti_crushId;
}

//: code
+ (NSString *)mMedalValue {
    /* static */ NSString *mMedalValue = nil;
    if (!mMedalValue) {
        Byte value[] = {4, 40, 11, 236, 134, 113, 226, 125, 68, 107, 76, 139, 151, 140, 141, 70};
        mMedalValue = [self StringFromBarreFreedData:value];
    }
    return mMedalValue;
}

//: icon_copy
+ (NSString *)user_extraId {
    /* static */ NSString *user_extraId = nil;
    if (!user_extraId) {
        Byte value[] = {9, 88, 10, 200, 58, 145, 166, 72, 75, 96, 193, 187, 199, 198, 183, 187, 199, 200, 209, 178};
        user_extraId = [self StringFromBarreFreedData:value];
    }
    return user_extraId;
}

//: /user/edit
+ (NSString *)appHorribleViewCompanyUrl {
    /* static */ NSString *appHorribleViewCompanyUrl = nil;
    if (!appHorribleViewCompanyUrl) {
        Byte value[] = {10, 65, 3, 112, 182, 180, 166, 179, 112, 166, 165, 170, 181, 110};
        appHorribleViewCompanyUrl = [self StringFromBarreFreedData:value];
    }
    return appHorribleViewCompanyUrl;
}

//: account
+ (NSString *)mainMarkHormoneMsg {
    /* static */ NSString *mainMarkHormoneMsg = nil;
    if (!mainMarkHormoneMsg) {
        Byte value[] = {7, 53, 11, 226, 138, 43, 165, 109, 255, 38, 42, 150, 152, 152, 164, 170, 163, 169, 81};
        mainMarkHormoneMsg = [self StringFromBarreFreedData:value];
    }
    return mainMarkHormoneMsg;
}

//: ko-KP
+ (NSString *)mainTeamId {
    /* static */ NSString *mainTeamId = nil;
    if (!mainTeamId) {
        Byte value[] = {5, 22, 5, 14, 22, 129, 133, 67, 97, 102, 43};
        mainTeamId = [self StringFromBarreFreedData:value];
    }
    return mainTeamId;
}

//: zh-Hans
+ (NSString *)app_patrolText {
    /* static */ NSString *app_patrolText = nil;
    if (!app_patrolText) {
        Byte value[] = {7, 94, 12, 200, 196, 5, 132, 40, 119, 222, 78, 148, 216, 198, 139, 166, 191, 204, 209, 112};
        app_patrolText = [self StringFromBarreFreedData:value];
    }
    return app_patrolText;
}

//: data
+ (NSString *)main_crushKey {
    /* static */ NSString *main_crushKey = nil;
    if (!main_crushKey) {
        Byte value[] = {4, 44, 6, 173, 60, 46, 144, 141, 160, 141, 243};
        main_crushKey = [self StringFromBarreFreedData:value];
    }
    return main_crushKey;
}

//: account_gender
+ (NSString *)m_repairPetitionId {
    /* static */ NSString *m_repairPetitionId = nil;
    if (!m_repairPetitionId) {
        Byte value[] = {14, 1, 8, 5, 166, 108, 43, 51, 98, 100, 100, 112, 118, 111, 117, 96, 104, 102, 111, 101, 102, 115, 175};
        m_repairPetitionId = [self StringFromBarreFreedData:value];
    }
    return m_repairPetitionId;
}

//: contact_tag_fragment_cancel
+ (NSString *)user_titleManMsg {
    /* static */ NSString *user_titleManMsg = nil;
    if (!user_titleManMsg) {
        Byte value[] = {27, 30, 10, 82, 147, 140, 22, 183, 24, 20, 129, 141, 140, 146, 127, 129, 146, 125, 146, 127, 133, 125, 132, 144, 127, 133, 139, 131, 140, 146, 125, 129, 127, 140, 129, 131, 138, 137};
        user_titleManMsg = [self StringFromBarreFreedData:value];
    }
    return user_titleManMsg;
}

//: accout_nickname
+ (NSString *)m_patienceStr {
    /* static */ NSString *m_patienceStr = nil;
    if (!m_patienceStr) {
        Byte value[] = {15, 16, 5, 169, 255, 113, 115, 115, 127, 133, 132, 111, 126, 121, 115, 123, 126, 113, 125, 117, 66};
        m_patienceStr = [self StringFromBarreFreedData:value];
    }
    return m_patienceStr;
}

//: account_account
+ (NSString *)dreamPorterName {
    /* static */ NSString *dreamPorterName = nil;
    if (!dreamPorterName) {
        Byte value[] = {15, 58, 6, 245, 83, 71, 155, 157, 157, 169, 175, 168, 174, 153, 155, 157, 157, 169, 175, 168, 174, 30};
        dreamPorterName = [self StringFromBarreFreedData:value];
    }
    return dreamPorterName;
}

//: friend_info_activity_nv
+ (NSString *)showWeepNameMessage {
    /* static */ NSString *showWeepNameMessage = nil;
    if (!showWeepNameMessage) {
        Byte value[] = {23, 97, 13, 254, 60, 227, 8, 42, 206, 107, 113, 51, 110, 199, 211, 202, 198, 207, 197, 192, 202, 207, 199, 208, 192, 194, 196, 213, 202, 215, 202, 213, 218, 192, 207, 215, 239};
        showWeepNameMessage = [self StringFromBarreFreedData:value];
    }
    return showWeepNameMessage;
}

//: #5D5F66
+ (NSString *)k_combinationTitle {
    /* static */ NSString *k_combinationTitle = nil;
    if (!k_combinationTitle) {
        Byte value[] = {7, 31, 7, 252, 58, 159, 244, 66, 84, 99, 84, 101, 85, 85, 195};
        k_combinationTitle = [self StringFromBarreFreedData:value];
    }
    return k_combinationTitle;
}

//: activity_friend_info_sex
+ (NSString *)mainNumberValue {
    /* static */ NSString *mainNumberValue = nil;
    if (!mainNumberValue) {
        Byte value[] = {24, 51, 13, 136, 213, 92, 16, 114, 201, 254, 162, 207, 8, 148, 150, 167, 156, 169, 156, 167, 172, 146, 153, 165, 156, 152, 161, 151, 146, 156, 161, 153, 162, 146, 166, 152, 171, 144};
        mainNumberValue = [self StringFromBarreFreedData:value];
    }
    return mainNumberValue;
}

//: friend_info_activity_nan
+ (NSString *)dream_resortBubblePath {
    /* static */ NSString *dream_resortBubblePath = nil;
    if (!dream_resortBubblePath) {
        Byte value[] = {24, 3, 4, 41, 105, 117, 108, 104, 113, 103, 98, 108, 113, 105, 114, 98, 100, 102, 119, 108, 121, 108, 119, 124, 98, 113, 100, 113, 163};
        dream_resortBubblePath = [self StringFromBarreFreedData:value];
    }
    return dream_resortBubblePath;
}

//: hant
+ (NSString *)show_rnaFormat {
    /* static */ NSString *show_rnaFormat = nil;
    if (!show_rnaFormat) {
        Byte value[] = {4, 39, 10, 196, 163, 204, 4, 15, 144, 146, 143, 136, 149, 155, 234};
        show_rnaFormat = [self StringFromBarreFreedData:value];
    }
    return show_rnaFormat;
}

//: setting_privacy_camera
+ (NSString *)user_hoppingName {
    /* static */ NSString *user_hoppingName = nil;
    if (!user_hoppingName) {
        Byte value[] = {22, 15, 8, 4, 216, 36, 153, 129, 130, 116, 131, 131, 120, 125, 118, 110, 127, 129, 120, 133, 112, 114, 136, 110, 114, 112, 124, 116, 129, 112, 200};
        user_hoppingName = [self StringFromBarreFreedData:value];
    }
    return user_hoppingName;
}

//: user_profile_avtivity_account
+ (NSString *)kTableFreedValue {
    /* static */ NSString *kTableFreedValue = nil;
    if (!kTableFreedValue) {
        Byte value[] = {29, 6, 8, 57, 181, 64, 250, 72, 123, 121, 107, 120, 101, 118, 120, 117, 108, 111, 114, 107, 101, 103, 124, 122, 111, 124, 111, 122, 127, 101, 103, 105, 105, 117, 123, 116, 122, 159};
        kTableFreedValue = [self StringFromBarreFreedData:value];
    }
    return kTableFreedValue;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)user_hormoneIdent {
    /* static */ NSString *user_hormoneIdent = nil;
    if (!user_hormoneIdent) {
        Byte value[] = {39, 45, 6, 52, 162, 219, 162, 160, 146, 159, 140, 150, 155, 147, 156, 140, 142, 163, 161, 150, 163, 150, 161, 166, 140, 162, 157, 153, 156, 142, 145, 140, 142, 163, 142, 161, 142, 159, 140, 147, 142, 150, 153, 146, 145, 153};
        user_hormoneIdent = [self StringFromBarreFreedData:value];
    }
    return user_hormoneIdent;
}

//: warm_prompt
+ (NSString *)dream_timeIdent {
    /* static */ NSString *dream_timeIdent = nil;
    if (!dream_timeIdent) {
        Byte value[] = {11, 52, 4, 77, 171, 149, 166, 161, 147, 164, 166, 163, 161, 164, 168, 14};
        dream_timeIdent = [self StringFromBarreFreedData:value];
    }
    return dream_timeIdent;
}

//: back_arrow_bl
+ (NSString *)app_shipTapName {
    /* static */ NSString *app_shipTapName = nil;
    if (!app_shipTapName) {
        Byte value[] = {13, 71, 4, 172, 169, 168, 170, 178, 166, 168, 185, 185, 182, 190, 166, 169, 179, 4};
        app_shipTapName = [self StringFromBarreFreedData:value];
    }
    return app_shipTapName;
}

//: tag_activity_set
+ (NSString *)mDuringTitle {
    /* static */ NSString *mDuringTitle = nil;
    if (!mDuringTitle) {
        Byte value[] = {16, 23, 13, 3, 93, 233, 212, 179, 144, 157, 28, 248, 236, 139, 120, 126, 118, 120, 122, 139, 128, 141, 128, 139, 144, 118, 138, 124, 139, 230};
        mDuringTitle = [self StringFromBarreFreedData:value];
    }
    return mDuringTitle;
}

//: gender
+ (NSString *)main_companyMsg {
    /* static */ NSString *main_companyMsg = nil;
    if (!main_companyMsg) {
        Byte value[] = {6, 44, 4, 142, 147, 145, 154, 144, 145, 158, 205};
        main_companyMsg = [self StringFromBarreFreedData:value];
    }
    return main_companyMsg;
}

//: /user/detail
+ (NSString *)main_conventData {
    /* static */ NSString *main_conventData = nil;
    if (!main_conventData) {
        Byte value[] = {12, 19, 11, 112, 149, 201, 180, 191, 77, 12, 95, 66, 136, 134, 120, 133, 66, 119, 120, 135, 116, 124, 127, 249};
        main_conventData = [self StringFromBarreFreedData:value];
    }
    return main_conventData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageSessionViewController.m
//  Riverla
//
//  Created by Yan Wang on 2024/12/30.
//  Copyright © 2024 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchUserInfoViewController.h"
#import "ImageSessionViewController.h"
//: #import "NTESSignSettingViewController.h"
#import "TimeViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "KEKESetNickNameView.h"
#import "ReplacementView.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import "NSSetSexView.h"
#import "TitleSexView.h"
//: #import "NSSetAvater.h"
#import "SetView.h"

//: @interface WatchUserInfoViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface ImageSessionViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,ModeDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (strong, nonatomic) UIImageView *imgHeader;
@property (strong, nonatomic) UIImageView *imgHeader;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;

//: @property (strong, nonatomic) UILabel *labNickname;
@property (strong, nonatomic) UILabel *labNickname;
//: @property (strong, nonatomic) UILabel *nickName;
@property (strong, nonatomic) UILabel *nickName;
//: @property (strong, nonatomic) UIButton *btnNickname;
@property (strong, nonatomic) UIButton *btnNickname;
//: @property (strong, nonatomic) UILabel *labAccount;
@property (strong, nonatomic) UILabel *labAccount;
//: @property (strong, nonatomic) UILabel *account;
@property (strong, nonatomic) UILabel *account;
//: @property (strong, nonatomic) UIButton *btnCopy;
@property (strong, nonatomic) UIButton *btnCopy;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *sign;
@property (strong, nonatomic) UILabel *sign;
//: @property (strong, nonatomic) UIButton *btnSign;
@property (strong, nonatomic) UIButton *btnSign;
//: @property (strong, nonatomic) UILabel *labSex;
@property (strong, nonatomic) UILabel *labSex;
//: @property (strong, nonatomic) UILabel *sex;
@property (strong, nonatomic) UILabel *sex;

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;
//: @property (nonatomic, strong) UIView *cropView;
@property (nonatomic, strong) UIView *cropView;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;
//: @property (nonatomic, strong) NSSetSexView *sexView;
@property (nonatomic, strong) TitleSexView *sexView;
//: @property (nonatomic, strong) KEKESetNickNameView *changeNickNameView;
@property (nonatomic, strong) ReplacementView *changeNickNameView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) SetView *aleartView;


//: @end
@end

//: @implementation WatchUserInfoViewController
@implementation ImageSessionViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"userinfo_bg"];
    bg.image = [UIImage imageNamed:[BarreFreedData m_showStr]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BarreFreedData app_shipTapName]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"my_user_info_activity_title"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[BarreFreedData k_quickBarTitle]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: [self loadUiView];
    [self flipView];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [self refresh];
    [self withShoot];
}

//: - (void)loadUiView
- (void)flipView
{
    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice vg_statusBarHeight])+15, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice tingHeight])+15, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.imgHeader.image = [UIImage imageNamed:@"photo_account_def"];
    self.imgHeader.image = [UIImage imageNamed:[BarreFreedData showUserKey]];
    //: self.imgHeader.layer.cornerRadius = 70;
    self.imgHeader.layer.cornerRadius = 70;
    //: self.imgHeader.layer.masksToBounds = YES;
    self.imgHeader.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.imgHeader];
    [avaterView addSubview:self.imgHeader];
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
    [self.btnPhoto setImage:[UIImage imageNamed:[BarreFreedData showHoppingFreedGivingKey]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(handleThePhoto) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(exhibitContent) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: accountView.backgroundColor = [UIColor whiteColor];
    accountView.backgroundColor = [UIColor whiteColor];
    //: accountView.layer.cornerRadius = 12;
    accountView.layer.cornerRadius = 12;
    //: [self.view addSubview:accountView];
    [self.view addSubview:accountView];
    //: UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: accountImg.image = [UIImage imageNamed:@"account_account"];
    accountImg.image = [UIImage imageNamed:[BarreFreedData dreamPorterName]];
    //: [accountView addSubview:accountImg];
    [accountView addSubview:accountImg];
    //: self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labAccount.font = [UIFont systemFontOfSize:16.f];
    self.labAccount.font = [UIFont systemFontOfSize:16.f];
    //: self.labAccount.textColor = [UIColor blackColor];
    self.labAccount.textColor = [UIColor blackColor];
    //: self.labAccount.text = [WatchLanguageManager getTextWithKey:@"user_profile_avtivity_account"];
    self.labAccount.text = [PaintedNaturalLanguageTo exhibit:[BarreFreedData kTableFreedValue]];
    //: [accountView addSubview:self.labAccount];
    [accountView addSubview:self.labAccount];
    //: self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.account.font = [UIFont systemFontOfSize:14.f];
    self.account.font = [UIFont systemFontOfSize:14.f];
    //: self.account.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.account.textColor = [UIColor min:[BarreFreedData k_combinationTitle]];
    //: self.account.textAlignment = NSTextAlignmentRight;
    self.account.textAlignment = NSTextAlignmentRight;
    //: [accountView addSubview:self.account];
    [accountView addSubview:self.account];
    //: self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    //: [self.btnCopy setImage:[UIImage imageNamed:@"icon_copy"] forState:(UIControlStateNormal)];
    [self.btnCopy setImage:[UIImage imageNamed:[BarreFreedData user_extraId]] forState:(UIControlStateNormal)];
    //: [self.btnCopy addTarget:self action:@selector(handleTheCopy) forControlEvents:UIControlEventTouchUpInside];
    [self.btnCopy addTarget:self action:@selector(greenBlue) forControlEvents:UIControlEventTouchUpInside];
    //: [accountView addSubview:self.btnCopy];
    [accountView addSubview:self.btnCopy];

    //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: nameView.backgroundColor = [UIColor whiteColor];
    nameView.backgroundColor = [UIColor whiteColor];
    //: nameView.layer.cornerRadius = 12;
    nameView.layer.cornerRadius = 12;
    //: [self.view addSubview:nameView];
    [self.view addSubview:nameView];
    //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheNickName)];
    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(currentValue)];
    //: [nameView addGestureRecognizer:panGesture];
    [nameView addGestureRecognizer:panGesture];
    //: UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: nameImg.image = [UIImage imageNamed:@"accout_nickname"];
    nameImg.image = [UIImage imageNamed:[BarreFreedData m_patienceStr]];
    //: [nameView addSubview:nameImg];
    [nameView addSubview:nameImg];
    //: self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labNickname.font = [UIFont systemFontOfSize:16.f];
    self.labNickname.font = [UIFont systemFontOfSize:16.f];
    //: self.labNickname.textColor = [UIColor blackColor];
    self.labNickname.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labNickname.text = [WatchLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.labNickname.text = [PaintedNaturalLanguageTo exhibit:[BarreFreedData noti_crushId]];
    //: [nameView addSubview:self.labNickname];
    [nameView addSubview:self.labNickname];
    //: self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.nickName.font = [UIFont systemFontOfSize:14.f];
    self.nickName.font = [UIFont systemFontOfSize:14.f];
    //: self.nickName.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.nickName.textColor = [UIColor min:[BarreFreedData k_combinationTitle]];
    //: self.nickName.textAlignment = NSTextAlignmentRight;
    self.nickName.textAlignment = NSTextAlignmentRight;
    //: [nameView addSubview:self.nickName];
    [nameView addSubview:self.nickName];
    //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    arrow.image = [UIImage imageNamed:[BarreFreedData k_evolveId]];
    //: [nameView addSubview:arrow];
    [nameView addSubview:arrow];

    //: UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: sexView.backgroundColor = [UIColor whiteColor];
    sexView.backgroundColor = [UIColor whiteColor];
    //: sexView.layer.cornerRadius = 12;
    sexView.layer.cornerRadius = 12;
    //: [self.view addSubview:sexView];
    [self.view addSubview:sexView];
    //: UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSex)];
    UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(frontAdd)];
    //: [sexView addGestureRecognizer:sexGesture];
    [sexView addGestureRecognizer:sexGesture];
    //: UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: sexImg.image = [UIImage imageNamed:@"account_gender"];
    sexImg.image = [UIImage imageNamed:[BarreFreedData m_repairPetitionId]];
    //: [sexView addSubview:sexImg];
    [sexView addSubview:sexImg];
    //: self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labSex.font = [UIFont systemFontOfSize:16.f];
    self.labSex.font = [UIFont systemFontOfSize:16.f];
    //: self.labSex.textColor = [UIColor blackColor];
    self.labSex.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labSex.text = [WatchLanguageManager getTextWithKey:@"activity_friend_info_sex"];
    self.labSex.text = [PaintedNaturalLanguageTo exhibit:[BarreFreedData mainNumberValue]];
    //: [sexView addSubview:self.labSex];
    [sexView addSubview:self.labSex];
    //: self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.sex.font = [UIFont systemFontOfSize:14.f];
    self.sex.font = [UIFont systemFontOfSize:14.f];
    //: self.sex.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.sex.textColor = [UIColor min:[BarreFreedData k_combinationTitle]];
    //: self.sex.textAlignment = NSTextAlignmentRight;
    self.sex.textAlignment = NSTextAlignmentRight;
    //: [sexView addSubview:self.sex];
    [sexView addSubview:self.sex];
    //: UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: sexarrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    sexarrow.image = [UIImage imageNamed:[BarreFreedData k_evolveId]];
    //: [sexView addSubview:sexarrow];
    [sexView addSubview:sexarrow];

//    UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom, SCREEN_WIDTH-30, 80)];
//    [self.view addSubview:signView];
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSign)];
//    [signView addGestureRecognizer:tapGesture];
//    self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
//    self.labSign.font = [UIFont systemFontOfSize:16.f];
//    self.labSign.textColor = [UIColor blackColor];
//    self.labSign.text = LangKey(@"user_profile_avtivity_signature");
//    [signView addSubview:self.labSign];
//    UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-30-12, 14, 12, 12)];
//    arrow1.image = [UIImage imageNamed:@"icon_me_arrow"];
//    [signView addSubview:arrow1];
//    self.sign = [[UILabel alloc]initWithFrame:CGRectMake(0, self.labSign.bottom, SCREEN_WIDTH-30, 40)];
//    self.sign.font = [UIFont systemFontOfSize:14.f];
//    self.sign.textColor = TextColor_2;
//    self.sign.numberOfLines = 0;
//    [signView addSubview:self.sign];

}
//: - (void)refresh {
- (void)withShoot {
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"icon_options_grdefault"]];
    [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[BarreFreedData notiSuccessContent]]];

    //: self.nickName.text = me.userInfo.nickName;
    self.nickName.text = me.userInfo.nickName;
//    self.account.text = me.userId;
//    self.sign.text = me.userInfo.sign.length ? me.userInfo.sign : LangKey(@"未设置");
    //: self.sex.text = [self genderString:me.userInfo.gender];
    self.sex.text = [self clean:me.userInfo.gender];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = me.userId;
    dict[[BarreFreedData k_valueTextMonthUrl]] = me.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[BarreFreedData main_conventData]] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[BarreFreedData mMedalValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[BarreFreedData main_crushKey]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data record:[BarreFreedData mainMarkHormoneMsg]];

            //: self.account.text = account;
            self.account.text = account;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}
//: - (void)handleTheNickName
- (void)currentValue
{
    //: [self.view addSubview:self.changeNickNameView];
    [self.view addSubview:self.changeNickNameView];
    //: [ self.changeNickNameView reloadWithNickname: self.nickName.text];
    [ self.changeNickNameView sub: self.nickName.text];
    //: [self.changeNickNameView animationShow];
    [self.changeNickNameView orderedSeries];
}
//: - (void)handleTheSign
- (void)searchedSign
{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    TimeViewController *vc = [[TimeViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handleTheSex
- (void)frontAdd
{
    //: [self.view addSubview:self.sexView];
    [self.view addSubview:self.sexView];
    //: [self.sexView reloadWithGender: self.selectedGender];
    [self.sexView nameLoadGender: self.selectedGender];
    //: [self.sexView animationShow];
    [self.sexView circumference];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
    self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: self.selectedGender = selectedGender;
        self.selectedGender = selectedGender;
        //: [self remoteUpdateGender];
        [self user];
    //: };
    };
}
//: - (void)remoteUpdateGender{
- (void)user{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"gender"] = @(self.selectedGender);
    dict[[BarreFreedData main_companyMsg]] = @(self.selectedGender);
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/edit"] params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[BarreFreedData appHorribleViewCompanyUrl]] reload_strong:dict with:YES forward:^(id responseObject) {

        //: [wself.sexView animationClose];
        [wself.sexView impendentImage];
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: self.sex.text = [self genderString:self.selectedGender];
    self.sex.text = [self clean:self.selectedGender];

}

//: - (NSString *)genderString:(NSInteger )gender{
- (NSString *)clean:(NSInteger )gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case 1:
        case 1:
            //: genderStr = [WatchLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [PaintedNaturalLanguageTo exhibit:[BarreFreedData dream_resortBubblePath]];
            //: break;
            break;
        //: case 2:
        case 2:
            //: genderStr = [WatchLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [PaintedNaturalLanguageTo exhibit:[BarreFreedData showWeepNameMessage]];
            //: break;
            break;
        //: case 0:
        case 0:
            //: genderStr = [WatchLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [PaintedNaturalLanguageTo exhibit:[BarreFreedData mGenetPath]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: - (void)handleTheCopy
- (void)greenBlue
{
    //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    //: pasteboard.string = self.account.text;
    pasteboard.string = self.account.text;
    //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"复制"]
    [self.view makeToast:[PaintedNaturalLanguageTo exhibit:@"复制"]
                     //: duration:2
                     duration:2
                     //: position:CSToastPositionCenter];
                     position:CSToastPositionCenter];
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
                        [self higherBy:nil];

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
            [self higherBy:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData dream_timeIdent]] message:[PaintedNaturalLanguageTo exhibit:[BarreFreedData user_hoppingName]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData user_titleManMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData mDuringTitle]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self higherBy:nil];
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
        [self higherBy:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData dream_timeIdent]] message:[PaintedNaturalLanguageTo exhibit:[BarreFreedData m_skyPath]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData user_titleManMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BarreFreedData mDuringTitle]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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





//: - (void)handleThePhoto
- (void)exhibitContent
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView table];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
////    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
////        [self requestAuthorizationForVideo];
////
////    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        [self requestAuthorizationForPhotoLibrary];
//    }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
////    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}
//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)higherBy:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

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
    //裁剪
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;//YES和NO不影响选择视频 但是视频也不能裁剪
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;//是否是圆形裁剪 YES 则是圆形裁剪 NO 方形
//    // 设置竖屏下的裁剪尺寸
//    NSInteger left = 30;
//    NSInteger widthHeight = self.view.tz_width - 2 * left;
//    NSInteger top = (self.view.tz_height - widthHeight) / 2;
//    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
//    imagePickerVc.scaleAspectFillCrop = YES;

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
        preferredlang = [BarreFreedData mainTeamId];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[BarreFreedData appRnaFishingValue]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [BarreFreedData app_patrolText];
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
    }else if ([langType containsString:[BarreFreedData show_rnaFormat]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [BarreFreedData main_rumenValue];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

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
            //: [self uploadImage:photos.firstObject];
            [self key:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}


//: - (void)onTouchSignSetting:(id)sender{
- (void)mark:(id)sender{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    TimeViewController *vc = [[TimeViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NIMUserManagerDelagate
#pragma mark - NIMUserManagerDelagate
//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: [self refresh];
        [self withShoot];
    }
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)toolTouch:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self totalercalate:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self totalercalate:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)totalercalate:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf key:image];
//    weakSelf.aratarImgView.image = image;

    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)key:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [RegisterColor exceptLast:[BarreFreedData m_cartStateTitle]];
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
                //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                    //: if (!error) {
                    if (!error) {
                        //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        //: [sdManager.imageCache storeImage:imageForAvatarUpload
                        [sdManager.imageCache storeImage:imageForAvatarUpload
                                               //: imageData:data
                                               imageData:data
                                                  //: forKey:urlString
                                                  forKey:urlString
                                               //: cacheType:SDImageCacheTypeAll
                                               cacheType:SDImageCacheTypeAll
                                              //: completion:nil];
                                              completion:nil];
                        //: [wself refresh];
                        [wself withShoot];
                    //: }else{
                    }else{
                        //: [wself.view makeToast:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                        [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[BarreFreedData user_hormoneIdent]]
                                     //: duration:2
                                     duration:2
                                     //: position:CSToastPositionCenter];
                                     position:CSToastPositionCenter];
                    }
                //: }];
                }];
            //: }else{
            }else{
                //: [wself.view makeToast:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[BarreFreedData user_hormoneIdent]]
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
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[BarreFreedData appShowMonthStr]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}
//: - (KEKESetNickNameView *)changeNickNameView
- (ReplacementView *)changeNickNameView
{
    //: if(!_changeNickNameView){
    if(!_changeNickNameView){
        //: _changeNickNameView = [[KEKESetNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeNickNameView = [[ReplacementView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeNickNameView.hidden = YES;
    }
    //: return _changeNickNameView;
    return _changeNickNameView;
}

//: - (NSSetSexView *)sexView
- (TitleSexView *)sexView
{
    //: if(!_sexView){
    if(!_sexView){
        //: _sexView = [[NSSetSexView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _sexView = [[TitleSexView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _sexView.hidden = YES;
    }
    //: return _sexView;
    return _sexView;
}

//: - (NSSetAvater *)aleartView{
- (SetView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[SetView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end
