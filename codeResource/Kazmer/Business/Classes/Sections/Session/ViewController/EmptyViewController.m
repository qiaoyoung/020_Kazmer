
#import <Foundation/Foundation.h>

@interface PatienceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PatienceData

+ (instancetype)sharedInstance {
    static PatienceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PatienceDataToCache:(Byte *)data {
    int achieveImage = data[0];
    int thanksImage = data[1];
    for (int i = 0; i < achieveImage / 2; i++) {
        int begin = thanksImage + i;
        int end = thanksImage + achieveImage - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[thanksImage + achieveImage] = 0;
    return data + thanksImage;
}

- (NSString *)StringFromPatienceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PatienceDataToCache:data]];
}  

//: #F6F6F6
- (NSString *)kTunnelStr {
    /* static */ NSString *kTunnelStr = nil;
    if (!kTunnelStr) {
        Byte value[] = {7, 7, 99, 126, 87, 188, 131, 54, 70, 54, 70, 54, 70, 35, 25};
        kTunnelStr = [self StringFromPatienceData:value];
    }
    return kTunnelStr;
}

//: activity_wallet_zhuan
- (NSString *)show_repairName {
    /* static */ NSString *show_repairName = nil;
    if (!show_repairName) {
        Byte value[] = {21, 10, 222, 119, 222, 83, 238, 125, 38, 34, 110, 97, 117, 104, 122, 95, 116, 101, 108, 108, 97, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 189};
        show_repairName = [self StringFromPatienceData:value];
    }
    return show_repairName;
}

//: contact_fragment_group
- (NSString *)user_transformationId {
    /* static */ NSString *user_transformationId = nil;
    if (!user_transformationId) {
        Byte value[] = {22, 12, 215, 145, 31, 115, 133, 94, 189, 237, 164, 93, 112, 117, 111, 114, 103, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 62};
        user_transformationId = [self StringFromPatienceData:value];
    }
    return user_transformationId;
}

//: 已发送
- (NSString *)mainClusterId {
    /* static */ NSString *mainClusterId = nil;
    if (!mainClusterId) {
        Byte value[] = {9, 6, 61, 46, 154, 201, 129, 128, 233, 145, 143, 229, 178, 183, 229, 152};
        mainClusterId = [self StringFromPatienceData:value];
    }
    return mainClusterId;
}

//: #EEEEEE
- (NSString *)noti_showerUrl {
    /* static */ NSString *noti_showerUrl = nil;
    if (!noti_showerUrl) {
        Byte value[] = {7, 10, 135, 9, 178, 231, 226, 70, 166, 225, 69, 69, 69, 69, 69, 69, 35, 50};
        noti_showerUrl = [self StringFromPatienceData:value];
    }
    return noti_showerUrl;
}

//: back_arrow_bl
- (NSString *)userSeizeGarlicIdent {
    /* static */ NSString *userSeizeGarlicIdent = nil;
    if (!userSeizeGarlicIdent) {
        Byte value[] = {13, 6, 124, 205, 137, 121, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 31};
        userSeizeGarlicIdent = [self StringFromPatienceData:value];
    }
    return userSeizeGarlicIdent;
}

//: #5D5F66
- (NSString *)userFreedFormat {
    /* static */ NSString *userFreedFormat = nil;
    if (!userFreedFormat) {
        Byte value[] = {7, 10, 233, 253, 117, 78, 96, 41, 179, 218, 54, 54, 70, 53, 68, 53, 35, 93};
        userFreedFormat = [self StringFromPatienceData:value];
    }
    return userFreedFormat;
}

//: contact_fragment_friend
- (NSString *)dream_bookValue {
    /* static */ NSString *dream_bookValue = nil;
    if (!dream_bookValue) {
        Byte value[] = {23, 10, 10, 83, 227, 132, 166, 193, 175, 46, 100, 110, 101, 105, 114, 102, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 164};
        dream_bookValue = [self StringFromPatienceData:value];
    }
    return dream_bookValue;
}

//: #4B43DE
- (NSString *)main_nineName {
    /* static */ NSString *main_nineName = nil;
    if (!main_nineName) {
        Byte value[] = {7, 10, 23, 128, 105, 182, 88, 204, 7, 112, 69, 68, 51, 52, 66, 52, 35, 79};
        main_nineName = [self StringFromPatienceData:value];
    }
    return main_nineName;
}

//: group_info_activity_op_failed
- (NSString *)m_cropIdent {
    /* static */ NSString *m_cropIdent = nil;
    if (!m_cropIdent) {
        Byte value[] = {29, 7, 68, 67, 124, 42, 3, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 167};
        m_cropIdent = [self StringFromPatienceData:value];
    }
    return m_cropIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZOMNForwardViewController.h"
#import "EmptyViewController.h"
//: #import "NTESFriendListTableViewCell.h"
#import "UtilizerView.h"
//: #import "NTESContactDataCell.h"
#import "PlacementToCompartmentView.h"

//: @interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>
@interface EmptyViewController ()<UITableViewDataSource,UITableViewDelegate>


//: @property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UITableView *tableView;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;

//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic ,strong) NSArray *friendArray;
@property (nonatomic ,strong) NSArray *friendArray;


//: @end
@end

//: @implementation ZOMNForwardViewController
@implementation EmptyViewController

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
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight])+64)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight])+64)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[PatienceData sharedInstance] userSeizeGarlicIdent]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [navView addSubview:backButton];
    [navView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_wallet_zhuan"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[[PatienceData sharedInstance] show_repairName]];
    //: [navView addSubview:labtitle];
    [navView addSubview:labtitle];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor min:[[PatienceData sharedInstance] kTunnelStr]];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _btnfriend.backgroundColor = [UIColor min:[[PatienceData sharedInstance] main_nineName]];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[PaintedNaturalLanguageTo exhibit:[[PatienceData sharedInstance] dream_bookValue]] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor min:[[PatienceData sharedInstance] userFreedFormat]] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[PaintedNaturalLanguageTo exhibit:[[PatienceData sharedInstance] user_transformationId]] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor min:[[PatienceData sharedInstance] noti_showerUrl]];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: _sliderIndex = 0;
    _sliderIndex = 0;
    //: [self prepareData];
    [self tableEnableProvider];
}

//: -(void)sliderButtonClick:(UIButton *)sender
-(void)mentalPicture:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnfriend.backgroundColor = [UIColor min:[[PatienceData sharedInstance] main_nineName]];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor min:[[PatienceData sharedInstance] userFreedFormat]] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btngroup.backgroundColor = [UIColor min:[[PatienceData sharedInstance] main_nineName]];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor min:[[PatienceData sharedInstance] userFreedFormat]] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }

    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
    //: [_tableView reloadData];
    [_tableView reloadData];

}

//: - (void)prepareData
- (void)tableEnableProvider
{
    //: self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    //: self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(_sliderIndex <= 0){
    if(_sliderIndex <= 0){
        //: NIMUser *friend = self.friendArray[indexPath.section];
        NIMUser *friend = self.friendArray[indexPath.section];
        //: self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }

    //: NSError *err;
    NSError *err;
    //: if (self.isCard) {
    if (self.isCard) {
        //: [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
    }


    //: if(!err){
    if(!err){
        //: [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:[[PatienceData sharedInstance] mainClusterId].messageWith duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[PatienceData sharedInstance] m_cropIdent]] duration:2.0 position:CSToastPositionCenter];
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)appTeam:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return self.friendArray.count;
        return self.friendArray.count;
    //: }else{
    }else{
        //: return self.groupArray.count;
        return self.groupArray.count;
    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return 1;
    return 1;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        UtilizerView *cell = [UtilizerView cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        PlacementToCompartmentView * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[PlacementToCompartmentView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }

    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    UtilizerView *cell = [UtilizerView ting:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: NIMUser *user = self.friendArray[indexPath.section];
        NIMUser *user = self.friendArray[indexPath.section];
        //: [cell reloadUserItem:user];
        [cell dayStandard:user];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell visualization:team];
    }
    //: return cell;
    return cell;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-64) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: @end
@end