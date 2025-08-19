
#import <Foundation/Foundation.h>

typedef struct {
    Byte companyText;
    Byte *interval;
    unsigned int large;
	int cedeAdd;
	int styleInsist;
	int keyControl;
} StructBodyData;

@interface BodyData : NSObject

@end

@implementation BodyData

+ (Byte *)BodyDataToByte:(StructBodyData *)data {
    for (int i = 0; i < data->large; i++) {
        data->interval[i] ^= data->companyText;
    }
    data->interval[data->large] = 0;
	if (data->large >= 3) {
		data->cedeAdd = data->interval[0];
		data->styleInsist = data->interval[1];
		data->keyControl = data->interval[2];
	}
    return data->interval;
}

+ (NSString *)StringFromBodyData:(StructBodyData *)data {
    return [NSString stringWithUTF8String:(char *)[self BodyDataToByte:data]];
}

//: 5D5F66
+ (NSString *)mDeveloperTitle {
    /* static */ NSString *mDeveloperTitle = nil;
    if (!mDeveloperTitle) {
        StructBodyData value = (StructBodyData){95, (Byte []){106, 27, 106, 25, 105, 105, 190}, 6, 213, 238, 97};
        mDeveloperTitle = [self StringFromBodyData:&value];
    }
    return mDeveloperTitle;
}

//: #000000
+ (NSString *)appDistinctiveStr {
    /* static */ NSString *appDistinctiveStr = nil;
    if (!appDistinctiveStr) {
        StructBodyData value = (StructBodyData){140, (Byte []){175, 188, 188, 188, 188, 188, 188, 105}, 7, 27, 198, 135};
        appDistinctiveStr = [self StringFromBodyData:&value];
    }
    return appDistinctiveStr;
}

//: 邀请你加入高级群
+ (NSString *)main_commentMsg {
    /* static */ NSString *main_commentMsg = nil;
    if (!main_commentMsg) {
        StructBodyData value = (StructBodyData){58, (Byte []){211, 184, 186, 210, 149, 141, 222, 135, 154, 223, 176, 154, 223, 191, 159, 211, 145, 162, 221, 128, 157, 221, 132, 158, 122}, 24, 193, 168, 34};
        main_commentMsg = [self StringFromBodyData:&value];
    }
    return main_commentMsg;
}

//: postscript
+ (NSString *)mainNowhereMessage {
    /* static */ NSString *mainNowhereMessage = nil;
    if (!mainNowhereMessage) {
        StructBodyData value = (StructBodyData){154, (Byte []){234, 245, 233, 238, 233, 249, 232, 243, 234, 238, 161}, 10, 242, 193, 82};
        mainNowhereMessage = [self StringFromBodyData:&value];
    }
    return mainNowhereMessage;
}

//: back_arrow_bl
+ (NSString *)dreamCombinationRnaMsg {
    /* static */ NSString *dreamCombinationRnaMsg = nil;
    if (!dreamCombinationRnaMsg) {
        StructBodyData value = (StructBodyData){181, (Byte []){215, 212, 214, 222, 234, 212, 199, 199, 218, 194, 234, 215, 217, 228}, 13, 69, 188, 124};
        dreamCombinationRnaMsg = [self StringFromBodyData:&value];
    }
    return dreamCombinationRnaMsg;
}

//: canAddFriend
+ (NSString *)mainQuietPath {
    /* static */ NSString *mainQuietPath = nil;
    if (!mainQuietPath) {
        StructBodyData value = (StructBodyData){89, (Byte []){58, 56, 55, 24, 61, 61, 31, 43, 48, 60, 55, 61, 214}, 12, 218, 122, 87};
        mainQuietPath = [self StringFromBodyData:&value];
    }
    return mainQuietPath;
}

//: head_default
+ (NSString *)kValueName {
    /* static */ NSString *kValueName = nil;
    if (!kValueName) {
        StructBodyData value = (StructBodyData){143, (Byte []){231, 234, 238, 235, 208, 235, 234, 233, 238, 250, 227, 251, 80}, 12, 199, 149, 15};
        kValueName = [self StringFromBodyData:&value];
    }
    return kValueName;
}

//: ic_group_addmember
+ (NSString *)app_showTotalimateValue {
    /* static */ NSString *app_showTotalimateValue = nil;
    if (!app_showTotalimateValue) {
        StructBodyData value = (StructBodyData){205, (Byte []){164, 174, 146, 170, 191, 162, 184, 189, 146, 172, 169, 169, 160, 168, 160, 175, 168, 191, 120}, 18, 85, 156, 20};
        app_showTotalimateValue = [self StringFromBodyData:&value];
    }
    return app_showTotalimateValue;
}

//: group_member_info_activity_team_creator
+ (NSString *)show_garlicText {
    /* static */ NSString *show_garlicText = nil;
    if (!show_garlicText) {
        StructBodyData value = (StructBodyData){185, (Byte []){222, 203, 214, 204, 201, 230, 212, 220, 212, 219, 220, 203, 230, 208, 215, 223, 214, 230, 216, 218, 205, 208, 207, 208, 205, 192, 230, 205, 220, 216, 212, 230, 218, 203, 220, 216, 205, 214, 203, 144}, 39, 83, 190, 255};
        show_garlicText = [self StringFromBodyData:&value];
    }
    return show_garlicText;
}

//: #F6F6F6
+ (NSString *)show_employAfterwardText {
    /* static */ NSString *show_employAfterwardText = nil;
    if (!show_employAfterwardText) {
        StructBodyData value = (StructBodyData){38, (Byte []){5, 96, 16, 96, 16, 96, 16, 25}, 7, 186, 244, 107};
        show_employAfterwardText = [self StringFromBodyData:&value];
    }
    return show_employAfterwardText;
}

//: kNIMTeamListDataTeamMembersChanged
+ (NSString *)mainUntilEmployViewUrl {
    /* static */ NSString *mainUntilEmployViewUrl = nil;
    if (!mainUntilEmployViewUrl) {
        StructBodyData value = (StructBodyData){165, (Byte []){206, 235, 236, 232, 241, 192, 196, 200, 233, 204, 214, 209, 225, 196, 209, 196, 241, 192, 196, 200, 232, 192, 200, 199, 192, 215, 214, 230, 205, 196, 203, 194, 192, 193, 254}, 34, 116, 71, 123};
        mainUntilEmployViewUrl = [self StringFromBodyData:&value];
    }
    return mainUntilEmployViewUrl;
}

//: 扩展消息
+ (NSString *)dreamShootPath {
    /* static */ NSString *dreamShootPath = nil;
    if (!dreamShootPath) {
        StructBodyData value = (StructBodyData){142, (Byte []){104, 7, 39, 107, 63, 27, 104, 56, 6, 104, 15, 33, 94}, 12, 245, 219, 155};
        dreamShootPath = [self StringFromBodyData:&value];
    }
    return dreamShootPath;
}

//: group_info_activity_team_member
+ (NSString *)dream_addTubeData {
    /* static */ NSString *dream_addTubeData = nil;
    if (!dream_addTubeData) {
        StructBodyData value = (StructBodyData){42, (Byte []){77, 88, 69, 95, 90, 117, 67, 68, 76, 69, 117, 75, 73, 94, 67, 92, 67, 94, 83, 117, 94, 79, 75, 71, 117, 71, 79, 71, 72, 79, 88, 215}, 31, 85, 106, 69};
        dream_addTubeData = [self StringFromBodyData:&value];
    }
    return dream_addTubeData;
}

//: data
+ (NSString *)showTitleChangeValue {
    /* static */ NSString *showTitleChangeValue = nil;
    if (!showTitleChangeValue) {
        StructBodyData value = (StructBodyData){56, (Byte []){92, 89, 76, 89, 64}, 4, 125, 251, 141};
        showTitleChangeValue = [self StringFromBodyData:&value];
    }
    return showTitleChangeValue;
}

//: #4B43DE
+ (NSString *)k_primaryIdent {
    /* static */ NSString *k_primaryIdent = nil;
    if (!k_primaryIdent) {
        StructBodyData value = (StructBodyData){94, (Byte []){125, 106, 28, 106, 109, 26, 27, 82}, 7, 33, 33, 145};
        k_primaryIdent = [self StringFromBodyData:&value];
    }
    return k_primaryIdent;
}

//: code
+ (NSString *)dreamHistoryFormat {
    /* static */ NSString *dreamHistoryFormat = nil;
    if (!dreamHistoryFormat) {
        StructBodyData value = (StructBodyData){192, (Byte []){163, 175, 164, 165, 152}, 4, 130, 23, 233};
        dreamHistoryFormat = [self StringFromBodyData:&value];
    }
    return dreamHistoryFormat;
}

//: 邀请你加入讨论组
+ (NSString *)user_endFormat {
    /* static */ NSString *user_endFormat = nil;
    if (!user_endFormat) {
        StructBodyData value = (StructBodyData){42, (Byte []){195, 168, 170, 194, 133, 157, 206, 151, 138, 207, 160, 138, 207, 175, 143, 194, 132, 130, 194, 132, 144, 205, 145, 174, 31}, 24, 15, 63, 105};
        user_endFormat = [self StringFromBodyData:&value];
    }
    return user_endFormat;
}

//: 邀请你加入超大群
+ (NSString *)kScribeMsg {
    /* static */ NSString *kScribeMsg = nil;
    if (!kScribeMsg) {
        StructBodyData value = (StructBodyData){117, (Byte []){156, 247, 245, 157, 218, 194, 145, 200, 213, 144, 255, 213, 144, 240, 208, 157, 195, 240, 144, 209, 210, 146, 203, 209, 25}, 24, 93, 113, 222};
        kScribeMsg = [self StringFromBodyData:&value];
    }
    return kScribeMsg;
}

//: /team/getTeamSetting
+ (NSString *)showItchMessage {
    /* static */ NSString *showItchMessage = nil;
    if (!showItchMessage) {
        StructBodyData value = (StructBodyData){151, (Byte []){184, 227, 242, 246, 250, 184, 240, 242, 227, 195, 242, 246, 250, 196, 242, 227, 227, 254, 249, 240, 202}, 20, 217, 194, 171};
        showItchMessage = [self StringFromBodyData:&value];
    }
    return showItchMessage;
}

//: attach
+ (NSString *)show_engagementMsg {
    /* static */ NSString *show_engagementMsg = nil;
    if (!show_engagementMsg) {
        StructBodyData value = (StructBodyData){40, (Byte []){73, 92, 92, 73, 75, 64, 164}, 6, 111, 200, 32};
        show_engagementMsg = [self StringFromBodyData:&value];
    }
    return show_engagementMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  PowerhouseMaxFrameViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalViewController.h"
#import "PowerhouseMaxFrameViewController.h"
//: #import "WatchContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "WatchCardHeaderCell.h"
#import "RecentFrameReusableView.h"
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ProgressReusableView.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "WatchTeamMemberCardViewController.h"
#import "MajorLeagueTeamSubMemberPositionCardViewController.h"

//: @interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>
@interface PowerhouseMaxFrameViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,DelegateZone>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NSMutableArray *memberList;
//: @property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic, strong) NIMTeamMember *owerInfo;
//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @end
@end

//: @implementation TeamMemberNormalViewController
@implementation PowerhouseMaxFrameViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self barMonth];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self extra];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[BodyData showItchMessage]] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[BodyData dreamHistoryFormat]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[BodyData showTitleChangeValue]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
    //: }];
    }];


    //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    NSString *kNIMTeamListDataTeamMembersChanged = [BodyData mainUntilEmployViewUrl];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bottommed:) name:kNIMTeamListDataTeamMembersChanged object:nil];
}
//: - (void)setupUI {
- (void)extra {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BodyData dreamCombinationRnaMsg]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[BodyData dream_addTubeData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice tingHeight]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor min:[BodyData k_primaryIdent]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[BodyData app_showTotalimateValue]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(fileIn) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: owerView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    owerView.backgroundColor = [UIColor min:[BodyData show_employAfterwardText]];
    //: owerView.layer.masksToBounds = YES;
    owerView.layer.masksToBounds = YES;
    //: owerView.layer.cornerRadius = 16;
    owerView.layer.cornerRadius = 16;
    //: [self.view addSubview:owerView];
    [self.view addSubview:owerView];
    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [owerView addSubview:_roleImageView];
    [owerView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor min:[BodyData appDistinctiveStr]];
    //: [owerView addSubview:_titleLabel];
    [owerView addSubview:_titleLabel];

    //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    subtitleLabel.textColor = [UIColor min:[BodyData mDeveloperTitle]];
    //: subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: subtitleLabel.text = [WatchLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    subtitleLabel.text = [PaintedNaturalLanguageTo exhibit:[BodyData show_garlicText]];
    //: [owerView addSubview:subtitleLabel];
    [owerView addSubview:subtitleLabel];

    // 设置 UICollectionView 的布局
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.itemSize = CGSizeMake(width, 70); 
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    //: layout.minimumInteritemSpacing = 0; 
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    //: layout.minimumLineSpacing = 5; 
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    //: layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); 
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距

    // 初始化 UICollectionView 并设置布局
    //: self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-90) collectionViewLayout:layout];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-90) collectionViewLayout:layout];
    //: self.collectionView.delegate = self; 
    self.collectionView.delegate = self; // 设置代理
    //: self.collectionView.dataSource = self; 
    self.collectionView.dataSource = self; // 设置数据源
    //: self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    //: self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //: [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    [self.collectionView registerClass:[ProgressReusableView class] forCellWithReuseIdentifier:@"ProgressReusableView"];
    //: self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];

}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)rightNavButtonClick{
- (void)fileIn{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        OldPin *config = [[OldPin alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: WatchContactSelectViewController *vc = [[WatchContactSelectViewController alloc] initWithConfig:config];
        NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc center];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)messaged:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self glassesOff:selectedContacts color:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)glassesOff:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            color:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[BodyData show_engagementMsg]] = [BodyData dreamShootPath];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[BodyData mainNowhereMessage]] = [BodyData user_endFormat].messageWith;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[BodyData mainNowhereMessage]] = [BodyData main_commentMsg].messageWith;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[BodyData mainNowhereMessage]] = [BodyData kScribeMsg].messageWith;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [AlongEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager image:userIds timeSend:info blue:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [AlongEffectView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}


//: - (void)teamMemberUpdate:(NSNotification *)note
- (void)bottommed:(NSNotification *)note
{
    //: [self loadTeamManageList];
    [self barMonth];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)loadTeamManageList
- (void)barMonth
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: for (NIMTeamMember *member in members) {
            for (NIMTeamMember *member in members) {
                //: if (member.type == NIMTeamMemberTypeNormal) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    //: [self.memberList addObject:member];
                    [self.memberList addObject:member];

                //: }else if (member.type == NIMTeamMemberTypeOwner){
                }else if (member.type == NIMTeamMemberTypeOwner){
                    //: self.owerInfo = member;
                    self.owerInfo = member;

                    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    TingMessage *info = [[ButtonKit sheerOption] past:member.userId skinColour_strong:nil];
                    //: self.titleLabel.text = info.showName;
                    self.titleLabel.text = info.showName;
                    //: [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[BodyData kValueName]]];
                }
            }
            //: [self.collectionView reloadData];
            [self.collectionView reloadData];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}
//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}

// 返回每个 section 中的 item 数量
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.memberList.count;
    return self.memberList.count;
}

// 配置每个 item 的 cell
//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    ProgressReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ProgressReusableView" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#fffWatch");

    //: NIMTeamMember *member = self.memberList[indexPath.row];
    NIMTeamMember *member = self.memberList[indexPath.row];
    //: [cell refreshWithModel:member];
    [cell domain:member];


    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: NSLog(@"Item at index %ld selected", indexPath.row);

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig record:[BodyData mainQuietPath]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {

        //: NIMTeamMember *member = self.memberList[indexPath.row];
        NIMTeamMember *member = self.memberList[indexPath.row];
//        MajorLeagueTeamSubMemberPositionCardViewController *vc = [[MajorLeagueTeamSubMemberPositionCardViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.userId];
        ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:member.userId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



//: @end
@end
