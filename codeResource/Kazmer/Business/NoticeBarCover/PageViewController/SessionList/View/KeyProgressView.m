
#import <Foundation/Foundation.h>

NSString *StringFromPowerCartData(Byte *data);


//: group_info_activity_team_not_exist
Byte showBubblePath[] = {83, 34, 11, 91, 243, 222, 77, 27, 208, 165, 85, 116, 115, 105, 120, 101, 95, 116, 111, 110, 95, 109, 97, 101, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 78};

//: message_helper_already_ok
Byte dreamUpKey[] = {29, 25, 5, 108, 120, 107, 111, 95, 121, 100, 97, 101, 114, 108, 97, 95, 114, 101, 112, 108, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 241};

//: fail_authentication
Byte dreamFreedNameForUrl[] = {71, 19, 3, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 95, 108, 105, 97, 102, 229};

//: successful_authentication
Byte showValueIdent[] = {11, 25, 6, 127, 37, 176, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 95, 108, 117, 102, 115, 115, 101, 99, 99, 117, 115, 248};

//: friend_verify_avtivity_net_error
Byte userCornerAllNameMessage[] = {29, 32, 12, 209, 88, 92, 26, 78, 98, 38, 154, 142, 114, 111, 114, 114, 101, 95, 116, 101, 110, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 121, 102, 105, 114, 101, 118, 95, 100, 110, 101, 105, 114, 102, 28};

//: message_helper_already_no
Byte k_centerTitle[] = {96, 25, 4, 45, 111, 110, 95, 121, 100, 97, 101, 114, 108, 97, 95, 114, 101, 112, 108, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 63};

//: 拒绝失败,请重试
Byte showBarreNameStr[] = {7, 22, 9, 14, 227, 180, 20, 194, 170, 149, 175, 232, 141, 135, 233, 183, 175, 232, 44, 165, 180, 232, 177, 164, 229, 157, 187, 231, 146, 139, 230, 210};

//: 接受成功
Byte appSalmonIdent[] = {67, 12, 8, 56, 190, 205, 51, 246, 159, 138, 229, 144, 136, 230, 151, 143, 229, 165, 142, 230, 148};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyProgressView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationView.h"
#import "KeyProgressView.h"
//: #import "NTESSystemNotificationCell.h"
#import "CheckRecentView.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESNotificationView ()<NIMSystemNotificationManagerDelegate,NIMSystemNotificationCellDelegate,UITableViewDelegate,UITableViewDataSource>
@interface KeyProgressView ()<NIMSystemNotificationManagerDelegate,ProgressDelegate,UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,assign) BOOL shouldMarkAsRead;
@property (nonatomic,assign) BOOL shouldMarkAsRead;

//: @end
@end

//: @implementation NTESNotificationView
@implementation KeyProgressView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
        self.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];

        //: self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        //: [self addSubview:self.tableView];
        [self addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.backgroundColor = [UIColor clearColor];
        self.tableView.backgroundColor = [UIColor clearColor];
        //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

        //: _notifications = [NSMutableArray array];
        _notifications = [NSMutableArray array];

        //: id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
        id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
        //: [systemNotificationManager addDelegate:self];
        [systemNotificationManager addDelegate:self];

        //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
        NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];

        //: NSArray *notification = [systemNotificationManager fetchSystemNotifications:nil
        NSArray *notification = [systemNotificationManager fetchSystemNotifications:nil
                                                             //: limit:20 filter:filter];
                                                             limit:20 filter:filter];

        //: if ([notification count])
        if ([notification count])
        {
            //: [_notifications addObjectsFromArray:notification];
            [_notifications addObjectsFromArray:notification];
//                    if (![[notification firstObject] read])
//                    {
//                        _shouldMarkAsRead = YES;
//
//                    }
        }

        //: [self.tableView reloadData];
        [self.tableView reloadData];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initFileUi{

//        if (_shouldMarkAsRead)
//        {
//            [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
//        }
}

//: - (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
- (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
{
    //: [_notifications insertObject:notification atIndex:0];
    [_notifications insertObject:notification atIndex:0];
//    _shouldMarkAsRead = YES;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return [_notifications count];
    return [_notifications count];
}


//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSystemNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NTESSystemNotificationCell"];
    CheckRecentView *cell = [tableView dequeueReusableCellWithIdentifier:@"CheckRecentView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESSystemNotificationCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"NTESSystemNotificationCell"];
        cell = [[CheckRecentView alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"CheckRecentView"];
    }
    //: cell.actionDelegate = self;
    cell.actionDelegate = self;

    //: NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
    //: [cell update:notification];
    [cell crop:notification];

    //: return cell;
    return cell;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 70;
    return 70;
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}

//: - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //: if (editingStyle == UITableViewCellEditingStyleDelete) {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //: NSInteger index = [indexPath row];
        NSInteger index = [indexPath row];
        //: NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        //: [_notifications removeObjectAtIndex:index];
        [_notifications removeObjectAtIndex:index];
        //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        //: [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


//: #pragma mark - SystemNotificationCell
#pragma mark - SystemNotificationCell
//: - (void)onAccept:(NIMSystemNotification *)notification
- (void)lyricced:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(dreamUpKey)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(dreamUpKey)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:@"接受成功".ntes_localized
                    [wself makeToast:StringFromPowerCartData(appSalmonIdent).textIndex
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(showBubblePath)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:@"接受成功".ntes_localized
                    [wself makeToast:StringFromPowerCartData(appSalmonIdent).textIndex
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(showBubblePath)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationVerify;
            request.operation = NIMUserOperationVerify;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"successful_authentication"]//@"验证成功".ntes_localized
                                                         [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(showValueIdent)]//@"验证成功".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeOk;
                                                         notification.handleStatus = NotificationHandleTypeOk;

                                                         //: [_notifications removeObject:notification];
                                                         [_notifications removeObject:notification];
                                                         //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                                                         [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];


                                                         //拿到对方用户信息
//                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
//                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
//
//                                                         // 构造出具体会话：P2P单聊，对方账号为user
//                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
//                                                         // 构造出具体消息
//                                                         NIMMessage *message = [[NIMMessage alloc] init];
//                                                         message.text        = [NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")];
//                                                         // 错误反馈对象
//                                                         NSError *error = nil;
//                                                         // 发送消息
//                                                         [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"fail_authentication"]//@"验证失败,请重试".ntes_localized
                                                         [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(dreamFreedNameForUrl)]//@"验证失败,请重试".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];


//            [CoverPageMode postWithUrl:Server_user_addFriend params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
//
//            } failed:^(id responseObject, NSError *error) {
//            }];


        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (void)onRefuse:(NIMSystemNotification *)notification
- (void)refuses:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(k_centerTitle)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
           //: break;
           break;
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(k_centerTitle)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(k_centerTitle)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(showBubblePath)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:{
        case NIMSystemNotificationTypeSuperTeamInvite:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(k_centerTitle)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(userCornerAllNameMessage)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(showBubblePath)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationReject;
            request.operation = NIMUserOperationReject;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"message_helper_already_no"]
                                                         [wself makeToast:[PaintedNaturalLanguageTo exhibit:StringFromPowerCartData(k_centerTitle)]
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeNo;
                                                         notification.handleStatus = NotificationHandleTypeNo;

                                                         //: [_notifications removeObject:notification];
                                                         [_notifications removeObject:notification];
                                                         //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                                                         [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];

                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself makeToast:@"拒绝失败,请重试".ntes_localized
                                                         [wself makeToast:StringFromPowerCartData(showBarreNameStr).textIndex
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//#pragma mark - SystemNotificationCell
//- (void)onAccept:(NIMSystemNotification *)notification
//{
//    __weak typeof(self) wself = self;
//    switch (notification.type) {
//
//
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NIMUserRequest *request = [[NIMUserRequest alloc] init];
//            request.userId = notification.sourceID;
//            request.operation = NIMUserOperationVerify;
//
//            [[[NIMSDK sharedSDK] userManager] requestFriend:request
//                                                 completion:^(NSError *error) {
//
//                NSLog(@"NIMUserOperationVerify-%@",error);
//                if (!error) {
//                    [wself makeToast:LangKey(@"successful_authentication")//@"验证成功".ntes_localized
//                                                      duration:2
//                                                      position:CSToastPositionCenter];
//                    notification.handleStatus = NotificationHandleTypeOk;
//                    //拿到对方用户信息
////                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
////                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
////
////                                                         // 构造出具体会话：P2P单聊，对方账号为user
////                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
////                                                         // 构造出具体消息
////                                                         NIMMessage *message = [[NIMMessage alloc] init];
////                                                         message.text        = [NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")];
////                                                         // 错误反馈对象
////                                                         NSError *error = nil;
////                                                         // 发送消息
////                                                         [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
//                }
//                else
//                {
//                    [wself makeToast:LangKey(@"fail_authentication")//@"验证失败,请重试".ntes_localized
//                                                      duration:2
//                                                      position:CSToastPositionCenter];
//                }
//
//                                                     [wself.tableView reloadData];
//                                                 }];
//
//
//            [CoverPageMode postWithUrl:Server_user_addFriend params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
//
//            } failed:^(id responseObject, NSError *error) {
//            }];
//
//
//        }
//            break;
//        default:
//            break;
//    }
//}
//
//- (void)onRefuse:(NIMSystemNotification *)notification
//{
//    __weak typeof(self) wself = self;
//    switch (notification.type) {
//
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NIMUserRequest *request = [[NIMUserRequest alloc] init];
//            request.userId = notification.sourceID;
//            request.operation = NIMUserOperationReject;
//
//            [[[NIMSDK sharedSDK] userManager] requestFriend:request
//                                                 completion:^(NSError *error) {
//                NSLog(@"NIMUserOperationReject-%@",error);
//                                                     if (!error) {
//                                                         [wself makeToast:@"拒绝成功".ntes_localized
//                                                                                           duration:2
//                                                                                           position:CSToastPositionCenter];
//                                                         notification.handleStatus = NotificationHandleTypeNo;
//                                                     }
//                                                     else
//                                                     {
//                                                         [wself makeToast:@"拒绝失败,请重试".ntes_localized
//                                                                                           duration:2
//                                                                                           position:CSToastPositionCenter];
//                                                     }
//                                                     [wself.tableView reloadData];
//                                                 }];
//
//        }
//            break;
//        default:
//            break;
//    }
//}

//: @end
@end

Byte * PowerCartDataToCache(Byte *data) {
    int accent = data[0];
    int weep = data[1];
    int shank = data[2];
    if (!accent) return data + shank;
    for (int i = 0; i < weep / 2; i++) {
        int begin = shank + i;
        int end = shank + weep - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[shank + weep] = 0;
    return data + shank;
}

NSString *StringFromPowerCartData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PowerCartDataToCache(data)];
}  
