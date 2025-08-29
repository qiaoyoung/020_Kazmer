
#import <Foundation/Foundation.h>

@interface ToolData : NSObject

+ (instancetype)sharedInstance;

//: 智能机器人
@property (nonatomic, copy) NSString *kTextToolName;

@end

@implementation ToolData

+ (NSData *)ToolDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (instancetype)sharedInstance {
    static ToolData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: 智能机器人
- (NSString *)kTextToolName {
    if (!_kTextToolName) {
		NSArray<NSString *> *origin = @[@"15", @"75", @"5", @"162", @"39", @"155", @"78", @"111", @"157", @"56", @"114", @"155", @"81", @"111", @"154", @"78", @"93", @"153", @"111", @"111", @"22"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextToolName = [self StringFromToolData:value];
    }
    return _kTextToolName;
}

- (Byte *)ToolDataToCache:(Byte *)data {
    int withFrame = data[0];
    Byte lastNamePlay = data[1];
    int with = data[2];
    for (int i = with; i < with + withFrame; i++) {
        int value = data[i] + lastNamePlay;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[with + withFrame] = 0;
    return data + with;
}

- (NSString *)StringFromToolData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ToolDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManViewController.m
//  NIM
//
//  Created by chris on 2017/6/23.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESRobotListViewController.h"
#import "ManViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+NTES.h"
//: #import "NTESUserListCell.h"
#import "NTESUserListCell.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactDataMember.h"
#import "NTESContactDataMember.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRobotCardViewController.h"
#import "UserViewController.h"
//: #import "NTESSessionViewController.h"
#import "NTESSessionViewController.h"

// __M_A_C_R_O__

//: @interface NTESRobotListViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,NTESUserListCellDelegate>
@interface ManViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,NTESUserListCellDelegate>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) UIRefreshControl *refreshControl;
@property (nonatomic,strong) UIRefreshControl *refreshControl;

//: @end
@end

//: @implementation NTESRobotListViewController
@implementation ManViewController


//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)centerFor
{
    //: extern NSString *NIMKitUserInfoHasUpdatedNotification;
    extern NSString *NIMKitUserInfoHasUpdatedNotification;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
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


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoChanged:(NSNotification *)notification
- (void)misinformation:(NSNotification *)notification
{
    //: self.data = self.robots;
    self.data = self.nameBySave;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListenr];
    [self changeImage];
}


//: - (void)setUpNavItem{
- (void)team{
    //: self.navigationItem.title = @"智能机器人";
    self.navigationItem.title = [ToolData sharedInstance].kTextToolName;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)replyId:(UITableView *)tableView bit:(NSIndexPath *)indexPath{
    //: return 60.f;
    return 60.f;
}


//: - (NSMutableArray *)robots{
- (NSMutableArray *)nameBySave{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
    for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
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



//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)aboveSelected:(UITableView *)tableView by:(NSIndexPath *)indexPath
{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: NTESContactDataMember *member = self.data[indexPath.row];
    NTESContactDataMember *member = self.data[indexPath.row];

    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:member.info.infoId];
    UserViewController *vc = [[UserViewController alloc] initWithUserId:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESUserListCellDelegate
#pragma mark - NTESUserListCellDelegate
//: - (void)didTouchUserListAvatar:(NSString *)userId{
- (void)jostleDownwardsLoadUp:(NSString *)userId{
    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:userId];
    UserViewController *vc = [[UserViewController alloc] initWithUserId:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onPull2Refresh:(id)sender
- (void)outsideData:(id)sender
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
                NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
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

//: - (void)removeListenr
- (void)changeImage
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpNavItem];
    [self team];
    //: [self addListener];
    [self centerFor];
    //: self.data = self.robots;
    self.data = self.nameBySave;
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

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)temp:(UITableView *)tableView orientationName:(NSInteger)section{
    //: return self.data.count;
    return self.data.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)at:(UITableView *)tableView last:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESUserListCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    NTESUserListCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESUserListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[NTESUserListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.row];
    NTESContactDataMember *member = self.data[indexPath.row];
    //: [cell refreshWithMember:member];
    [cell refreshWithMember:member];
    //: return cell;
    return cell;
}


//: @end
@end
//: __SAVE__ ignore_string [416.4]