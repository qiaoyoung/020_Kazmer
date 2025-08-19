
#import <Foundation/Foundation.h>

NSString *StringFromUglyRiotData(Byte *data);


//: #999999
Byte notiEquallyValue[] = {44, 7, 3, 8, 173, 66, 51, 42, 38, 60, 60, 60, 60, 60, 60, 182};

//: group_chat_avatar_activity_remove_black_success
Byte mainCommentIdent[] = {34, 47, 6, 4, 109, 120, 117, 123, 118, 101, 105, 110, 103, 122, 101, 103, 124, 103, 122, 103, 120, 101, 103, 105, 122, 111, 124, 111, 122, 127, 101, 120, 107, 115, 117, 124, 107, 101, 104, 114, 103, 105, 113, 101, 121, 123, 105, 105, 107, 121, 121, 127};

//: back_arrow_bl
Byte app_deadlineId[] = {81, 13, 98, 7, 108, 41, 88, 196, 195, 197, 205, 193, 195, 212, 212, 209, 217, 193, 196, 206, 168};

//: black_list_activity_black_list_tip
Byte show_imageRehabIdent[] = {7, 34, 22, 8, 18, 38, 235, 170, 120, 130, 119, 121, 129, 117, 130, 127, 137, 138, 117, 119, 121, 138, 127, 140, 127, 138, 143, 117, 120, 130, 119, 121, 129, 117, 130, 127, 137, 138, 117, 138, 127, 134, 233};

//: black_list_activity_black
Byte show_shipIdent[] = {95, 25, 57, 12, 92, 189, 74, 239, 31, 23, 141, 12, 155, 165, 154, 156, 164, 152, 165, 162, 172, 173, 152, 154, 156, 173, 162, 175, 162, 173, 178, 152, 155, 165, 154, 156, 164, 162};

//: ic_tip_r
Byte k_keyPath[] = {86, 8, 15, 6, 103, 79, 120, 114, 110, 131, 120, 127, 110, 129, 117};

//: ic_none_blockList
Byte showOfMessage[] = {96, 17, 22, 7, 146, 226, 32, 127, 121, 117, 132, 133, 132, 123, 117, 120, 130, 133, 121, 129, 98, 127, 137, 138, 17};

//: #Watch6CF
Byte app_fiftyKey[] = {1, 7, 86, 5, 192, 121, 156, 156, 156, 140, 153, 156, 47};

//: #F6F7FA
Byte dreamVidStrangeUrl[] = {3, 7, 3, 7, 7, 188, 214, 38, 73, 57, 73, 58, 73, 68, 85};

//: group_info_activity_without
Byte user_bubbleData[] = {97, 27, 95, 5, 75, 198, 209, 206, 212, 207, 190, 200, 205, 197, 206, 190, 192, 194, 211, 200, 213, 200, 211, 216, 190, 214, 200, 211, 199, 206, 212, 211, 128};

//: #FF483D
Byte dreamShowEconomicallyMsg[] = {4, 7, 27, 13, 40, 104, 69, 19, 160, 2, 222, 82, 237, 62, 97, 97, 79, 83, 78, 95, 79};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketViewController.m
// ButtonKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamMuteMemberListViewController.h"
#import "PacketViewController.h"
//: #import "WatchTeamMemberCardViewController.h"
#import "MajorLeagueTeamSubMemberPositionCardViewController.h"
//: #import "WatchCardHeaderCell.h"
#import "RecentFrameReusableView.h"
//: #import "WatchTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "WatchKitDependency.h"
#import "WatchKitDependency.h"
//: #import "WatchKitProgressHUD.h"
#import "AlongEffectView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "CorrelationTableButtonViewCell.h"

//: @interface WatchTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>
@interface PacketViewController ()<UITableViewDataSource,UITableViewDelegate,MakeTime>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation WatchTeamMuteMemberListViewController
@implementation PacketViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self ironed];
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
    self.view.backgroundColor = [UIColor min:StringFromUglyRiotData(dreamVidStrangeUrl)];
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
    [backButton setImage:[UIImage imageNamed:StringFromUglyRiotData(app_deadlineId)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:StringFromUglyRiotData(show_shipIdent)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

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

    //: [self loadTeamManageList];
    [self ironed];
}


//: - (void)loadTeamManageList
- (void)ironed
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
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
    //: }];
    }];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
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
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell addFlush:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: WatchTeamMemberCardViewController *vc = [[WatchTeamMemberCardViewController alloc] init];
    MajorLeagueTeamSubMemberPositionCardViewController *vc = [[MajorLeagueTeamSubMemberPositionCardViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)paths:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[PaintedNaturalLanguageTo exhibit:StringFromUglyRiotData(mainCommentIdent)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
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
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#Watch6CF"];
        _box.backgroundColor = [UIColor min:StringFromUglyRiotData(app_fiftyKey)];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:StringFromUglyRiotData(k_keyPath)];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor min:StringFromUglyRiotData(dreamShowEconomicallyMsg)];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [WatchLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromUglyRiotData(show_imageRehabIdent)];
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
        defImg.image = [UIImage imageNamed:StringFromUglyRiotData(showOfMessage)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:StringFromUglyRiotData(notiEquallyValue)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WatchLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromUglyRiotData(user_bubbleData)];


    }
    //: return _defView;
    return _defView;
}




//: @end
@end

Byte * UglyRiotDataToCache(Byte *data) {
    int railroadTunnel = data[0];
    int sika = data[1];
    Byte refreshTube = data[2];
    int attracter = data[3];
    if (!railroadTunnel) return data + attracter;
    for (int i = attracter; i < attracter + sika; i++) {
        int value = data[i] - refreshTube;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[attracter + sika] = 0;
    return data + attracter;
}

NSString *StringFromUglyRiotData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UglyRiotDataToCache(data)];
}
