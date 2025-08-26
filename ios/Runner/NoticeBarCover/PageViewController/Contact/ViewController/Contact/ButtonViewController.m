
#import <Foundation/Foundation.h>

@interface ManValueData : NSObject

+ (instancetype)sharedInstance;

//: 智能机器人
@property (nonatomic, copy) NSString *mainMinStr;

@end

@implementation ManValueData

+ (instancetype)sharedInstance {
    static ManValueData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ManValueDataToCache:(Byte *)data {
    int to = data[0];
    int fast = data[1];
    for (int i = 0; i < to / 2; i++) {
        int begin = fast + i;
        int end = fast + to - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[fast + to] = 0;
    return data + fast;
}

- (NSString *)StringFromManValueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ManValueDataToCache:data]];
}  

//: 智能机器人
- (NSString *)mainMinStr {
    if (!_mainMinStr) {
        Byte value[] = {15, 6, 161, 21, 181, 3, 186, 186, 228, 168, 153, 229, 186, 156, 230, 189, 131, 232, 186, 153, 230, 185};
        _mainMinStr = [self StringFromManValueData:value];
    }
    return _mainMinStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonViewController.m
//  NIM
//
//  Created by chris on 2017/6/23.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESRobotListViewController.h"
#import "ButtonViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESUserListCell.h"
#import "MessageModeView.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRobotCardViewController.h"
#import "SubRecentViewController.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"

// __M_A_C_R_O__

//: @interface NTESRobotListViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,NTESUserListCellDelegate>
@interface ButtonViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,MakeTime>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) UIRefreshControl *refreshControl;
@property (nonatomic,strong) UIRefreshControl *refreshControl;

//: @end
@end

//: @implementation NTESRobotListViewController
@implementation ButtonViewController


//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListenr];
    [self action];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpNavItem];
    [self canItem];
    //: [self addListener];
    [self can];
    //: self.data = self.robots;
    self.data = self.pinRobots;
    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
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
    //: [self.tableView addSubview:self.refreshControl];
    [self.tableView addSubview:self.refreshControl];
}


//: - (void)setUpNavItem{
- (void)canItem{
    //: self.navigationItem.title = @"智能机器人";
    self.navigationItem.title = [ManValueData sharedInstance].mainMinStr;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)image:(UITableView *)tableView heightScale:(NSIndexPath *)indexPath{
    //: return 60.f;
    return 60.f;
}


//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)change:(UITableView *)tableView bottomBoldContent:(NSInteger)section{
    //: return self.data.count;
    return self.data.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)independent:(UITableView *)tableView itemChange:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESUserListCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    MessageModeView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESUserListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[MessageModeView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.row];
    TimeMember *member = self.data[indexPath.row];
    //: [cell refreshWithMember:member];
    [cell refreshWithMember:member];
    //: return cell;
    return cell;
}


//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)clean:(UITableView *)tableView layer:(NSIndexPath *)indexPath
{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: NTESContactDataMember *member = self.data[indexPath.row];
    TimeMember *member = self.data[indexPath.row];

    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:member.info.infoId];
    SubRecentViewController *vc = [[SubRecentViewController alloc] initWithUserId:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: #pragma mark - NTESUserListCellDelegate
#pragma mark - MakeTime
//: - (void)didTouchUserListAvatar:(NSString *)userId{
- (void)progressAvatar:(NSString *)userId{
    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:userId];
    SubRecentViewController *vc = [[SubRecentViewController alloc] initWithUserId:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoChanged:(NSNotification *)notification
- (void)frame:(NSNotification *)notification
{
    //: self.data = self.robots;
    self.data = self.pinRobots;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onPull2Refresh:(id)sender
- (void)low:(id)sender
{
    //: [self.refreshControl beginRefreshing];
    [self.refreshControl beginRefreshing];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].robotManager fetchAllRobotsFromServer:^(NSError * _Nullable error, NSArray<NIMRobot *> * _Nullable robots) {
    [[NIMSDK sharedSDK].robotManager fetchAllRobotsFromServer:^(NSError * _Nullable error, NSArray<NIMRobot *> * _Nullable robots) {
        //: [weakSelf.refreshControl endRefreshing];
        [weakSelf.refreshControl endRefreshing];
        //: if (!error)
        if (!error)
        {
            //: NSMutableArray *list = [[NSMutableArray alloc] init];
            NSMutableArray *list = [[NSMutableArray alloc] init];
            //: for (NIMRobot *robot in robots) {
            for (NIMRobot *robot in robots) {
                //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
                TimeMember *member = [[TimeMember alloc] init];
                //: NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
                NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
                //: member.info = info;
                member.info = info;
                //: [list addObject:member];
                [list addObject:member];
            }
            //: weakSelf.data = list;
            weakSelf.data = list;
            //: [weakSelf.tableView reloadData];
            [weakSelf.tableView reloadData];
        }
    //: }];
    }];

}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)can
{
    //: extern NSString *NIMKitUserInfoHasUpdatedNotification;
    extern NSString *NIMKitUserInfoHasUpdatedNotification;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
}

//: - (void)removeListenr
- (void)action
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)robots{
- (NSMutableArray *)pinRobots{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
    for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        TimeMember *member = [[TimeMember alloc] init];
        //: NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
        NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}

//: - (UIRefreshControl *)refreshControl
- (UIRefreshControl *)refreshControl
{
    //: if (!_refreshControl) {
    if (!_refreshControl) {
        //: _refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectZero];
        _refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectZero];
        //: [_refreshControl addTarget:self action:@selector(onPull2Refresh:) forControlEvents:UIControlEventValueChanged];
        [_refreshControl addTarget:self action:@selector(onPull2Refresh:) forControlEvents:UIControlEventValueChanged];
    }
    //: return _refreshControl;
    return _refreshControl;
}


//: @end
@end