
#import <Foundation/Foundation.h>

@interface PurseData : NSObject

+ (instancetype)sharedInstance;

//: black_list_activity_black
@property (nonatomic, copy) NSString *show_tableIdent;

//: black_list_activity_black_list_tip
@property (nonatomic, copy) NSString *dreamFormatOnUrl;

//: #999999
@property (nonatomic, copy) NSString *main_myRemoveValue;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *mEnableId;

//: #FFF6CF
@property (nonatomic, copy) NSString *noti_viewUrl;

//: back_arrow_bl
@property (nonatomic, copy) NSString *notiPowerStr;

//: ic_none_blockList
@property (nonatomic, copy) NSString *userCenterKey;

//: #F6F7FA
@property (nonatomic, copy) NSString *app_styleStr;

//: ic_tip_r
@property (nonatomic, copy) NSString *dream_valueKey;

//: group_info_activity_without
@property (nonatomic, copy) NSString *m_commentPath;

//: friend_delete_fail
@property (nonatomic, copy) NSString *dreamMyName;

//: #FF483D
@property (nonatomic, copy) NSString *main_myKeyText;

//: group_chat_avatar_activity_add_black_success
@property (nonatomic, copy) NSString *main_quickValue;

@end

@implementation PurseData

+ (instancetype)sharedInstance {
    static PurseData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PurseDataToCache:(Byte *)data {
    int pressed = data[0];
    Byte contentItem = data[1];
    int omit = data[2];
    for (int i = omit; i < omit + pressed; i++) {
        int value = data[i] - contentItem;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[omit + pressed] = 0;
    return data + omit;
}

- (NSString *)StringFromPurseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PurseDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)notiPowerStr {
    if (!_notiPowerStr) {
        Byte value[] = {13, 2, 3, 100, 99, 101, 109, 97, 99, 116, 116, 113, 121, 97, 100, 110, 229};
        _notiPowerStr = [self StringFromPurseData:value];
    }
    return _notiPowerStr;
}

//: ic_none_blockList
- (NSString *)userCenterKey {
    if (!_userCenterKey) {
        Byte value[] = {17, 63, 11, 18, 87, 151, 70, 38, 123, 142, 244, 168, 162, 158, 173, 174, 173, 164, 158, 161, 171, 174, 162, 170, 139, 168, 178, 179, 93};
        _userCenterKey = [self StringFromPurseData:value];
    }
    return _userCenterKey;
}

//: #FFF6CF
- (NSString *)noti_viewUrl {
    if (!_noti_viewUrl) {
        Byte value[] = {7, 53, 7, 152, 97, 236, 250, 88, 123, 123, 123, 107, 120, 123, 175};
        _noti_viewUrl = [self StringFromPurseData:value];
    }
    return _noti_viewUrl;
}

//: group_info_activity_without
- (NSString *)m_commentPath {
    if (!_m_commentPath) {
        Byte value[] = {27, 75, 13, 227, 126, 13, 111, 181, 29, 5, 160, 64, 156, 178, 189, 186, 192, 187, 170, 180, 185, 177, 186, 170, 172, 174, 191, 180, 193, 180, 191, 196, 170, 194, 180, 191, 179, 186, 192, 191, 229};
        _m_commentPath = [self StringFromPurseData:value];
    }
    return _m_commentPath;
}

//: #F6F7FA
- (NSString *)app_styleStr {
    if (!_app_styleStr) {
        Byte value[] = {7, 87, 8, 48, 211, 62, 162, 119, 122, 157, 141, 157, 142, 157, 152, 245};
        _app_styleStr = [self StringFromPurseData:value];
    }
    return _app_styleStr;
}

//: black_list_activity_black_list_tip
- (NSString *)dreamFormatOnUrl {
    if (!_dreamFormatOnUrl) {
        Byte value[] = {34, 74, 9, 207, 139, 200, 61, 137, 102, 172, 182, 171, 173, 181, 169, 182, 179, 189, 190, 169, 171, 173, 190, 179, 192, 179, 190, 195, 169, 172, 182, 171, 173, 181, 169, 182, 179, 189, 190, 169, 190, 179, 186, 78};
        _dreamFormatOnUrl = [self StringFromPurseData:value];
    }
    return _dreamFormatOnUrl;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)main_quickValue {
    if (!_main_quickValue) {
        Byte value[] = {44, 65, 13, 163, 147, 90, 62, 173, 124, 227, 245, 131, 195, 168, 179, 176, 182, 177, 160, 164, 169, 162, 181, 160, 162, 183, 162, 181, 162, 179, 160, 162, 164, 181, 170, 183, 170, 181, 186, 160, 162, 165, 165, 160, 163, 173, 162, 164, 172, 160, 180, 182, 164, 164, 166, 180, 180, 250};
        _main_quickValue = [self StringFromPurseData:value];
    }
    return _main_quickValue;
}

//: group_info_activity_op_failed
- (NSString *)mEnableId {
    if (!_mEnableId) {
        Byte value[] = {29, 23, 12, 122, 123, 136, 219, 237, 235, 10, 122, 156, 126, 137, 134, 140, 135, 118, 128, 133, 125, 134, 118, 120, 122, 139, 128, 141, 128, 139, 144, 118, 134, 135, 118, 125, 120, 128, 131, 124, 123, 60};
        _mEnableId = [self StringFromPurseData:value];
    }
    return _mEnableId;
}

//: ic_tip_r
- (NSString *)dream_valueKey {
    if (!_dream_valueKey) {
        Byte value[] = {8, 40, 12, 250, 33, 74, 79, 68, 5, 133, 52, 29, 145, 139, 135, 156, 145, 152, 135, 154, 175};
        _dream_valueKey = [self StringFromPurseData:value];
    }
    return _dream_valueKey;
}

//: #FF483D
- (NSString *)main_myKeyText {
    if (!_main_myKeyText) {
        Byte value[] = {7, 24, 7, 241, 66, 192, 163, 59, 94, 94, 76, 80, 75, 92, 235};
        _main_myKeyText = [self StringFromPurseData:value];
    }
    return _main_myKeyText;
}

//: black_list_activity_black
- (NSString *)show_tableIdent {
    if (!_show_tableIdent) {
        Byte value[] = {25, 80, 9, 127, 221, 136, 223, 152, 26, 178, 188, 177, 179, 187, 175, 188, 185, 195, 196, 175, 177, 179, 196, 185, 198, 185, 196, 201, 175, 178, 188, 177, 179, 187, 245};
        _show_tableIdent = [self StringFromPurseData:value];
    }
    return _show_tableIdent;
}

//: #999999
- (NSString *)main_myRemoveValue {
    if (!_main_myRemoveValue) {
        Byte value[] = {7, 51, 7, 179, 129, 50, 180, 86, 108, 108, 108, 108, 108, 108, 101};
        _main_myRemoveValue = [self StringFromPurseData:value];
    }
    return _main_myRemoveValue;
}

//: friend_delete_fail
- (NSString *)dreamMyName {
    if (!_dreamMyName) {
        Byte value[] = {18, 51, 5, 15, 217, 153, 165, 156, 152, 161, 151, 146, 151, 152, 159, 152, 167, 152, 146, 153, 148, 156, 159, 64};
        _dreamMyName = [self StringFromPurseData:value];
    }
    return _dreamMyName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "MessageModeView.h"
//#import "ReplacementValueView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "FindViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "FFFContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "CorrelationTableButtonViewCell.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESUserListCellDelegate>
@interface FindViewController ()<UITableViewDataSource,UITableViewDelegate,DelegateZone,MakeTime>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//@property (nonatomic,strong) ReplacementValueView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation FindViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:[PurseData sharedInstance].app_styleStr];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[PurseData sharedInstance].notiPowerStr] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].show_tableIdent];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTheView];
    [self to];
}

//: - (void)loadTheView
- (void)to
{
    //: self.data = self.myBlackListUser;
    self.data = self.catalogItem;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }else{
    }else{
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CorrelationTableButtonViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[CorrelationTableButtonViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.section];
    TimeMember *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell itemCan:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    TimeMember *member = self.data[indexPath.section];

    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)forks:(TimeMember *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].dreamMyName] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)count:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (TimeMember *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    OldPin *config = [[OldPin alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc center];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)messaged:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].main_quickValue] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.catalogItem;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].mEnableId] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)colorSubviews
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)catalogItem{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        TimeMember *member = [[TimeMember alloc] init];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        TingMessage *info = [[ButtonKit sheerOption] past:user.userId skinColour_strong:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor min:[PurseData sharedInstance].noti_viewUrl];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[PurseData sharedInstance].dream_valueKey];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor min:[PurseData sharedInstance].main_myKeyText];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].dreamFormatOnUrl];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[PurseData sharedInstance].userCenterKey];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:[PurseData sharedInstance].main_myRemoveValue];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[PurseData sharedInstance].m_commentPath];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end