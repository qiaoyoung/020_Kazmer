
#import <Foundation/Foundation.h>

@interface VanishData : NSObject

+ (instancetype)sharedInstance;

//: data
@property (nonatomic, copy) NSString *dreamViewPath;

//: #4B43DE
@property (nonatomic, copy) NSString *main_scribePointMyTitle;

//: ic_invite
@property (nonatomic, copy) NSString *m_bubbleMsg;

//: 移出本群
@property (nonatomic, copy) NSString *user_controlNameId;

//: #F6F7FA
@property (nonatomic, copy) NSString *user_shouldIdent;

//: #ECECEC
@property (nonatomic, copy) NSString *user_curIdent;

//: ic_group_lists
@property (nonatomic, copy) NSString *dreamLanceUserId;

//: activity_group_member_info2_inviter
@property (nonatomic, copy) NSString *userRestoreOptMessage;

//: #EEEEEE
@property (nonatomic, copy) NSString *main_monthTubePropertyValue;

//: message_remark_name
@property (nonatomic, copy) NSString *k_representativeFormat;

//: #2C3042
@property (nonatomic, copy) NSString *appFiftyScaleValue;

//: ic_sex_woman
@property (nonatomic, copy) NSString *user_afterwardFormat;

//: #8A8E98
@property (nonatomic, copy) NSString *userSimplySeparationUrl;

//: activity_group_member_info2_shenfen
@property (nonatomic, copy) NSString *showStylePath;

//: group_member_info_activity_mute_msg
@property (nonatomic, copy) NSString *dreamSuggestFatigueId;

//: personcart_profile_bg
@property (nonatomic, copy) NSString *mainViewIdent;

//: user_id
@property (nonatomic, copy) NSString *k_developerFormat;

//: personCard_bg
@property (nonatomic, copy) NSString *mStoneMessage;

//: 本地不存在
@property (nonatomic, copy) NSString *app_dateTitle;

//: code
@property (nonatomic, copy) NSString *mainValueMessage;

//: head_default
@property (nonatomic, copy) NSString *kDrinkContent;

//: ic_sex_man
@property (nonatomic, copy) NSString *app_simplyPhotographKey;

//: icon_me_arrow
@property (nonatomic, copy) NSString *noti_flowStr;

//: back_arrow_bl
@property (nonatomic, copy) NSString *k_inflationTitle;

//: ic_card_edit
@property (nonatomic, copy) NSString *appUndergoValue;

//: #FF483D
@property (nonatomic, copy) NSString *dreamDistinctiveIdent;

//: account
@property (nonatomic, copy) NSString *mainContributionMessage;

//: modify_activity_modify_success
@property (nonatomic, copy) NSString *noti_allMsg;

//: ic_identity_authentication
@property (nonatomic, copy) NSString *appGivingFormat;

//: /user/detail
@property (nonatomic, copy) NSString *mRumenValue;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *show_undergoData;

//: #ffffff
@property (nonatomic, copy) NSString *dream_primaryPath;

@end

@implementation VanishData

+ (instancetype)sharedInstance {
    static VanishData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VanishDataToCache:(Byte *)data {
    int nameHolder = data[0];
    int ship = data[1];
    for (int i = 0; i < nameHolder / 2; i++) {
        int begin = ship + i;
        int end = ship + nameHolder - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[ship + nameHolder] = 0;
    return data + ship;
}

- (NSString *)StringFromVanishData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VanishDataToCache:data]];
}  

//: #4B43DE
- (NSString *)main_scribePointMyTitle {
    if (!_main_scribePointMyTitle) {
        Byte value[] = {7, 11, 54, 207, 14, 121, 77, 100, 129, 142, 104, 69, 68, 51, 52, 66, 52, 35, 130};
        _main_scribePointMyTitle = [self StringFromVanishData:value];
    }
    return _main_scribePointMyTitle;
}

//: #ffffff
- (NSString *)dream_primaryPath {
    if (!_dream_primaryPath) {
        Byte value[] = {7, 3, 208, 102, 102, 102, 102, 102, 102, 35, 244};
        _dream_primaryPath = [self StringFromVanishData:value];
    }
    return _dream_primaryPath;
}

//: 移出本群
- (NSString *)user_controlNameId {
    if (!_user_controlNameId) {
        Byte value[] = {12, 4, 122, 91, 164, 190, 231, 172, 156, 230, 186, 135, 229, 187, 167, 231, 81};
        _user_controlNameId = [self StringFromVanishData:value];
    }
    return _user_controlNameId;
}

//: user_id
- (NSString *)k_developerFormat {
    if (!_k_developerFormat) {
        Byte value[] = {7, 7, 10, 197, 66, 246, 184, 100, 105, 95, 114, 101, 115, 117, 191};
        _k_developerFormat = [self StringFromVanishData:value];
    }
    return _k_developerFormat;
}

//: /user/detail
- (NSString *)mRumenValue {
    if (!_mRumenValue) {
        Byte value[] = {12, 10, 161, 69, 70, 165, 145, 89, 62, 163, 108, 105, 97, 116, 101, 100, 47, 114, 101, 115, 117, 47, 30};
        _mRumenValue = [self StringFromVanishData:value];
    }
    return _mRumenValue;
}

//: #FF483D
- (NSString *)dreamDistinctiveIdent {
    if (!_dreamDistinctiveIdent) {
        Byte value[] = {7, 9, 135, 129, 125, 142, 241, 56, 92, 68, 51, 56, 52, 70, 70, 35, 201};
        _dreamDistinctiveIdent = [self StringFromVanishData:value];
    }
    return _dreamDistinctiveIdent;
}

//: ic_invite
- (NSString *)m_bubbleMsg {
    if (!_m_bubbleMsg) {
        Byte value[] = {9, 7, 236, 95, 60, 123, 82, 101, 116, 105, 118, 110, 105, 95, 99, 105, 187};
        _m_bubbleMsg = [self StringFromVanishData:value];
    }
    return _m_bubbleMsg;
}

//: modify_activity_modify_success
- (NSString *)noti_allMsg {
    if (!_noti_allMsg) {
        Byte value[] = {30, 3, 129, 115, 115, 101, 99, 99, 117, 115, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 74};
        _noti_allMsg = [self StringFromVanishData:value];
    }
    return _noti_allMsg;
}

//: ic_identity_authentication
- (NSString *)appGivingFormat {
    if (!_appGivingFormat) {
        Byte value[] = {26, 6, 53, 77, 73, 173, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 95, 121, 116, 105, 116, 110, 101, 100, 105, 95, 99, 105, 104};
        _appGivingFormat = [self StringFromVanishData:value];
    }
    return _appGivingFormat;
}

//: #EEEEEE
- (NSString *)main_monthTubePropertyValue {
    if (!_main_monthTubePropertyValue) {
        Byte value[] = {7, 5, 213, 184, 159, 69, 69, 69, 69, 69, 69, 35, 85};
        _main_monthTubePropertyValue = [self StringFromVanishData:value];
    }
    return _main_monthTubePropertyValue;
}

//: ic_sex_woman
- (NSString *)user_afterwardFormat {
    if (!_user_afterwardFormat) {
        Byte value[] = {12, 3, 167, 110, 97, 109, 111, 119, 95, 120, 101, 115, 95, 99, 105, 151};
        _user_afterwardFormat = [self StringFromVanishData:value];
    }
    return _user_afterwardFormat;
}

//: data
- (NSString *)dreamViewPath {
    if (!_dreamViewPath) {
        Byte value[] = {4, 10, 170, 142, 5, 248, 229, 249, 24, 134, 97, 116, 97, 100, 179};
        _dreamViewPath = [self StringFromVanishData:value];
    }
    return _dreamViewPath;
}

//: message_remark_name
- (NSString *)k_representativeFormat {
    if (!_k_representativeFormat) {
        Byte value[] = {19, 3, 247, 101, 109, 97, 110, 95, 107, 114, 97, 109, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 229};
        _k_representativeFormat = [self StringFromVanishData:value];
    }
    return _k_representativeFormat;
}

//: activity_group_member_info2_inviter
- (NSString *)userRestoreOptMessage {
    if (!_userRestoreOptMessage) {
        Byte value[] = {35, 8, 20, 174, 100, 218, 78, 66, 114, 101, 116, 105, 118, 110, 105, 95, 50, 111, 102, 110, 105, 95, 114, 101, 98, 109, 101, 109, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 134};
        _userRestoreOptMessage = [self StringFromVanishData:value];
    }
    return _userRestoreOptMessage;
}

//: personcart_profile_bg
- (NSString *)mainViewIdent {
    if (!_mainViewIdent) {
        Byte value[] = {21, 6, 131, 163, 29, 102, 103, 98, 95, 101, 108, 105, 102, 111, 114, 112, 95, 116, 114, 97, 99, 110, 111, 115, 114, 101, 112, 19};
        _mainViewIdent = [self StringFromVanishData:value];
    }
    return _mainViewIdent;
}

//: #8A8E98
- (NSString *)userSimplySeparationUrl {
    if (!_userSimplySeparationUrl) {
        Byte value[] = {7, 10, 111, 148, 243, 245, 37, 185, 211, 110, 56, 57, 69, 56, 65, 56, 35, 231};
        _userSimplySeparationUrl = [self StringFromVanishData:value];
    }
    return _userSimplySeparationUrl;
}

//: activity_group_member_info2_shenfen
- (NSString *)showStylePath {
    if (!_showStylePath) {
        Byte value[] = {35, 9, 202, 102, 169, 212, 88, 89, 78, 110, 101, 102, 110, 101, 104, 115, 95, 50, 111, 102, 110, 105, 95, 114, 101, 98, 109, 101, 109, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 158};
        _showStylePath = [self StringFromVanishData:value];
    }
    return _showStylePath;
}

//: ic_group_lists
- (NSString *)dreamLanceUserId {
    if (!_dreamLanceUserId) {
        Byte value[] = {14, 10, 171, 223, 138, 7, 125, 194, 188, 254, 115, 116, 115, 105, 108, 95, 112, 117, 111, 114, 103, 95, 99, 105, 29};
        _dreamLanceUserId = [self StringFromVanishData:value];
    }
    return _dreamLanceUserId;
}

//: icon_me_arrow
- (NSString *)noti_flowStr {
    if (!_noti_flowStr) {
        Byte value[] = {13, 3, 152, 119, 111, 114, 114, 97, 95, 101, 109, 95, 110, 111, 99, 105, 175};
        _noti_flowStr = [self StringFromVanishData:value];
    }
    return _noti_flowStr;
}

//: personCard_bg
- (NSString *)mStoneMessage {
    if (!_mStoneMessage) {
        Byte value[] = {13, 3, 219, 103, 98, 95, 100, 114, 97, 67, 110, 111, 115, 114, 101, 112, 200};
        _mStoneMessage = [self StringFromVanishData:value];
    }
    return _mStoneMessage;
}

//: #F6F7FA
- (NSString *)user_shouldIdent {
    if (!_user_shouldIdent) {
        Byte value[] = {7, 3, 156, 65, 70, 55, 70, 54, 70, 35, 154};
        _user_shouldIdent = [self StringFromVanishData:value];
    }
    return _user_shouldIdent;
}

//: #ECECEC
- (NSString *)user_curIdent {
    if (!_user_curIdent) {
        Byte value[] = {7, 8, 79, 77, 119, 14, 64, 118, 67, 69, 67, 69, 67, 69, 35, 7};
        _user_curIdent = [self StringFromVanishData:value];
    }
    return _user_curIdent;
}

//: ic_sex_man
- (NSString *)app_simplyPhotographKey {
    if (!_app_simplyPhotographKey) {
        Byte value[] = {10, 7, 49, 205, 169, 185, 206, 110, 97, 109, 95, 120, 101, 115, 95, 99, 105, 205};
        _app_simplyPhotographKey = [self StringFromVanishData:value];
    }
    return _app_simplyPhotographKey;
}

//: back_arrow_bl
- (NSString *)k_inflationTitle {
    if (!_k_inflationTitle) {
        Byte value[] = {13, 8, 233, 186, 178, 12, 113, 244, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 66};
        _k_inflationTitle = [self StringFromVanishData:value];
    }
    return _k_inflationTitle;
}

//: group_member_info_activity_mute_msg
- (NSString *)dreamSuggestFatigueId {
    if (!_dreamSuggestFatigueId) {
        Byte value[] = {35, 12, 176, 61, 165, 70, 71, 114, 73, 195, 40, 198, 103, 115, 109, 95, 101, 116, 117, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 114, 101, 98, 109, 101, 109, 95, 112, 117, 111, 114, 103, 167};
        _dreamSuggestFatigueId = [self StringFromVanishData:value];
    }
    return _dreamSuggestFatigueId;
}

//: head_default
- (NSString *)kDrinkContent {
    if (!_kDrinkContent) {
        Byte value[] = {12, 5, 162, 123, 83, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 49};
        _kDrinkContent = [self StringFromVanishData:value];
    }
    return _kDrinkContent;
}

//: ic_card_edit
- (NSString *)appUndergoValue {
    if (!_appUndergoValue) {
        Byte value[] = {12, 11, 228, 231, 85, 140, 82, 105, 101, 105, 13, 116, 105, 100, 101, 95, 100, 114, 97, 99, 95, 99, 105, 79};
        _appUndergoValue = [self StringFromVanishData:value];
    }
    return _appUndergoValue;
}

//: account
- (NSString *)mainContributionMessage {
    if (!_mainContributionMessage) {
        Byte value[] = {7, 8, 235, 132, 246, 141, 177, 133, 116, 110, 117, 111, 99, 99, 97, 219};
        _mainContributionMessage = [self StringFromVanishData:value];
    }
    return _mainContributionMessage;
}

//: 本地不存在
- (NSString *)app_dateTitle {
    if (!_app_dateTitle) {
        Byte value[] = {15, 6, 112, 185, 155, 63, 168, 156, 229, 152, 173, 229, 141, 184, 228, 176, 156, 229, 172, 156, 230, 224};
        _app_dateTitle = [self StringFromVanishData:value];
    }
    return _app_dateTitle;
}

//: code
- (NSString *)mainValueMessage {
    if (!_mainValueMessage) {
        Byte value[] = {4, 3, 33, 101, 100, 111, 99, 128};
        _mainValueMessage = [self StringFromVanishData:value];
    }
    return _mainValueMessage;
}

//: #2C3042
- (NSString *)appFiftyScaleValue {
    if (!_appFiftyScaleValue) {
        Byte value[] = {7, 4, 214, 36, 50, 52, 48, 51, 67, 50, 35, 53};
        _appFiftyScaleValue = [self StringFromVanishData:value];
    }
    return _appFiftyScaleValue;
}

//: group_info_activity_op_failed
- (NSString *)show_undergoData {
    if (!_show_undergoData) {
        Byte value[] = {29, 2, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 55};
        _show_undergoData = [self StringFromVanishData:value];
    }
    return _show_undergoData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardViewController.h"
#import "MajorLeagueTeamSubMemberPositionCardViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "BarPage.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "FFFTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "ButtonNameView.h"
//: #import "FFFKitColorButtonCell.h"
#import "MakeModeView.h"
//: #import "FFFKitSwitcherCell.h"
#import "SightView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "FFFTeamHelper.h"
#import "MakeBubble.h"

//: @interface FFFTeamMemberCardViewController ()<NIMUserManagerDelegate>
@interface MajorLeagueTeamSubMemberPositionCardViewController ()<NIMUserManagerDelegate>

//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) ButtonNameView *groupNickNameView;

//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) BarPage *delegator;

//: @property (nonatomic,weak) id <FFFTeamMemberListDataSource> dataSource;
@property (nonatomic,weak) id <EventColor> dataSource;

//: @property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) NSArray *data;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;
//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;

//: @end
@end

//: @implementation FFFTeamMemberCardViewController
@implementation MajorLeagueTeamSubMemberPositionCardViewController

//: - (void)dealloc {
- (void)dealloc {

}
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
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:[VanishData sharedInstance].user_shouldIdent];

    //: self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];
    self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];


    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: [scrollView addSubview:self.userView];
    [scrollView addSubview:self.userView];
    //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);
    self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);
    self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);

//    [self refresh];

    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.memberId;
    dict[[VanishData sharedInstance].k_developerFormat] = self.memberId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[VanishData sharedInstance].mRumenValue] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[VanishData sharedInstance].mainValueMessage];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[VanishData sharedInstance].dreamViewPath];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data record:[VanishData sharedInstance].mainContributionMessage];
//            NSString *avatar = [data newStringValueForKey:@"avatar"];

            //: self.accountId.text = self.userAcount;
            self.accountId.text = self.userAcount;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}


//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)updateTeamNick
- (void)sendBorder
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView userSession];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
            [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
                                                   //: newNick:Name
                                                   newNick:Name
                                                    //: inTeam:self.teamListManager.team.teamId
                                                    inTeam:self.teamListManager.team.teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
                //: self.accountNickname.text = Name;
                self.accountNickname.text = Name;
                //: [self.groupNickNameView animationClose];
                [self.groupNickNameView impendentImage];
            //: }];
            }];
        //: };
        };
}

//: - (void)updateMute:(UISwitch *)switcher
- (void)maxDisplay:(UISwitch *)switcher
{
    //: BOOL mute = switcher.on;
    BOOL mute = switcher.on;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
    [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                             //: userId:self.memberId
                                             userId:self.memberId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
        //: NSString *msg = nil;
        NSString *msg = nil;
        //: if (!error) {
        if (!error) {
            //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
            msg = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].noti_allMsg];
        //: }else{
        }else{
            //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
            msg = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].show_undergoData];
            //: switcher.on = !mute;
            switcher.on = !mute;
        }
        //: [self showToastMsg:msg];
        [self fullMsg:msg];
     //: }];
     }];
}

//: -(void)removeMember
-(void)handleClanMember
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
    [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
                                     //: fromTeam:self.teamListManager.team.teamId
                                     fromTeam:self.teamListManager.team.teamId
                                   //: completion:^(NSError *error) {
                                   completion:^(NSError *error) {
        //: [weakSelf.navigationController popViewControllerAnimated:NO];
        [weakSelf.navigationController popViewControllerAnimated:NO];
    //: }];
    }];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)showToastMsg:(NSString *)msg {
- (void)fullMsg:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[VanishData sharedInstance].mStoneMessage];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice vg_statusBarHeight]+44+20, 345, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice tingHeight]+44+20, 345, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[VanishData sharedInstance].mainViewIdent];
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice tingHeight]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[VanishData sharedInstance].kDrinkContent]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            sexImg.image = [UIImage imageNamed:[VanishData sharedInstance].app_simplyPhotographKey];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            sexImg.image = [UIImage imageNamed:[VanishData sharedInstance].user_afterwardFormat];
        }
        //: [_userView addSubview:sexImg];
        [_userView addSubview:sexImg];

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor min:[VanishData sharedInstance].appFiftyScaleValue];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountId];
        [_userView addSubview:self.accountId];

        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[VanishData sharedInstance].k_inflationTitle] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice tingHeight], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:nameView];
        [contView addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateTeamNick)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sendBorder)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[VanishData sharedInstance].appUndergoValue];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labTitleRemark.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.labTitleRemark.textColor = [UIColor min:[VanishData sharedInstance].appFiftyScaleValue];
        //: self.labTitleRemark.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].k_representativeFormat];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor min:[VanishData sharedInstance].userSimplySeparationUrl];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[VanishData sharedInstance].noti_flowStr];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor min:[VanishData sharedInstance].user_curIdent];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

        //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box2];
        [contView addSubview:box2];
        //: UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon2.image = [UIImage imageNamed:@"ic_identity_authentication"];
        icon2.image = [UIImage imageNamed:[VanishData sharedInstance].appGivingFormat];
        //: [box2 addSubview:icon2];
        [box2 addSubview:icon2];
        //: UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        //: lab2.font = [UIFont systemFontOfSize:14];
        lab2.font = [UIFont systemFontOfSize:14];
        //: lab2.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab2.textColor = [UIColor min:[VanishData sharedInstance].appFiftyScaleValue];
        //: lab2.text = [FFFLanguageManager getTextWithKey:@"activity_group_member_info2_shenfen"];
        lab2.text = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].showStylePath];
        //: [box2 addSubview:lab2];
        [box2 addSubview:lab2];
        //: UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        //: sublab2.font = [UIFont systemFontOfSize:12];
        sublab2.font = [UIFont systemFontOfSize:12];
        //: sublab2.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        sublab2.textColor = [UIColor min:[VanishData sharedInstance].main_scribePointMyTitle];
        //: sublab2.text = [FFFTeamHelper memberTypeText:self.member.type];
        sublab2.text = [MakeBubble kind:self.member.type];
        //: [box2 addSubview:sublab2];
        [box2 addSubview:sublab2];
        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow2.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow2.image = [UIImage imageNamed:[VanishData sharedInstance].noti_flowStr];
        //: [box2 addSubview:arrow2];
        [box2 addSubview:arrow2];
        //: UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line2.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line2.backgroundColor = [UIColor min:[VanishData sharedInstance].user_curIdent];
        //: [box2 addSubview:line2];
        [box2 addSubview:line2];

        //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box3];
        [contView addSubview:box3];
        //: UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon3.image = [UIImage imageNamed:@"ic_invite"];
        icon3.image = [UIImage imageNamed:[VanishData sharedInstance].m_bubbleMsg];
        //: [box3 addSubview:icon3];
        [box3 addSubview:icon3];
        //: UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        //: lab3.font = [UIFont systemFontOfSize:14];
        lab3.font = [UIFont systemFontOfSize:14];
        //: lab3.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab3.textColor = [UIColor min:[VanishData sharedInstance].appFiftyScaleValue];
        //: lab3.text = [FFFLanguageManager getTextWithKey:@"activity_group_member_info2_inviter"];
        lab3.text = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].userRestoreOptMessage];
        //: [box3 addSubview:lab3];
        [box3 addSubview:lab3];
        //: UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        //: sublab3.font = [UIFont systemFontOfSize:12];
        sublab3.font = [UIFont systemFontOfSize:12];
        //: sublab3.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        sublab3.textColor = [UIColor min:[VanishData sharedInstance].main_scribePointMyTitle];
        //: sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : @"本地不存在".nim_localized;
        sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : [VanishData sharedInstance].app_dateTitle.messageWith;
        //: [box3 addSubview:sublab3];
        [box3 addSubview:sublab3];
        //: UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow3.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow3.image = [UIImage imageNamed:[VanishData sharedInstance].noti_flowStr];
        //: [box3 addSubview:arrow3];
        [box3 addSubview:arrow3];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor min:[VanishData sharedInstance].user_curIdent];
        //: [box3 addSubview:line3];
        [box3 addSubview:line3];

        //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        //: [contView addSubview:box4];
        [contView addSubview:box4];
        //: UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: icon4.image = [UIImage imageNamed:@"ic_group_lists"];
        icon4.image = [UIImage imageNamed:[VanishData sharedInstance].dreamLanceUserId];
        //: [box4 addSubview:icon4];
        [box4 addSubview:icon4];
        //: UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        //: lab4.font = [UIFont systemFontOfSize:14];
        lab4.font = [UIFont systemFontOfSize:14];
        //: lab4.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab4.textColor = [UIColor min:[VanishData sharedInstance].appFiftyScaleValue];
        //: lab4.text = [FFFLanguageManager getTextWithKey:@"group_member_info_activity_mute_msg"];
        lab4.text = [PaintedNaturalLanguageTo exhibit:[VanishData sharedInstance].dreamSuggestFatigueId];
        //: [box4 addSubview:lab4];
        [box4 addSubview:lab4];
        //: UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        //: [pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#4B43DE"]];
        [pushSwitch setOnTintColor: [UIColor min:[VanishData sharedInstance].main_scribePointMyTitle]];
        //: [pushSwitch addTarget:self action:@selector(updateMute:) forControlEvents:UIControlEventValueChanged];
        [pushSwitch addTarget:self action:@selector(maxDisplay:) forControlEvents:UIControlEventValueChanged];
        //: pushSwitch.on = _member.isMuted;
        pushSwitch.on = _member.isMuted;
        //: [box4 addSubview:pushSwitch];
        [box4 addSubview:pushSwitch];


        //: BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
        BOOL canEdit = [ObjectUtil window:self.teamListManager.myTeamInfo];
        //: if(canEdit){
        if(canEdit){
            //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            //: self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
            [self.btnDelete setTitleColor:[UIColor min:[VanishData sharedInstance].dreamDistinctiveIdent] forState:UIControlStateNormal];
            //: [self.btnDelete setTitle:@"移出本群".nim_localized forState:UIControlStateNormal];
            [self.btnDelete setTitle:[VanishData sharedInstance].user_controlNameId.messageWith forState:UIControlStateNormal];
            //: [self.btnDelete addTarget:self action:@selector(removeMember) forControlEvents:UIControlEventTouchUpInside];
            [self.btnDelete addTarget:self action:@selector(handleClanMember) forControlEvents:UIControlEventTouchUpInside];
            //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
            self.btnDelete.backgroundColor = [UIColor min:[VanishData sharedInstance].dream_primaryPath];
            //: self.btnDelete.layer.borderWidth = 1;
            self.btnDelete.layer.borderWidth = 1;
            //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
            self.btnDelete.layer.borderColor = [UIColor min:[VanishData sharedInstance].main_monthTubePropertyValue].CGColor;
            //: self.btnDelete.layer.cornerRadius = 24;
            self.btnDelete.layer.cornerRadius = 24;
            //: [_personView addSubview:self.btnDelete];
            [_personView addSubview:self.btnDelete];
        }


    }
    //: return _personView;
    return _personView;
}


//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (ButtonNameView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[ButtonNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}



//: @end
@end