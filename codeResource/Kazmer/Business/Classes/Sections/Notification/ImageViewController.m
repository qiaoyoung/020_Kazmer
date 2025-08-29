
#import <Foundation/Foundation.h>

@interface HideData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HideData

//: 接受成功
- (NSString *)kName_titleString {
    /* static */ NSString *kName_titleString = nil;
    if (!kName_titleString) {
		NSArray<NSString *> *origin = @[@"12", @"47", @"11", @"189", @"70", @"237", @"244", @"20", @"230", @"81", @"198", @"183", @"95", @"118", @"182", @"96", @"104", @"183", @"89", @"97", @"182", @"91", @"112", @"110"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_titleString = [self StringFromHideData:value];
    }
    return kName_titleString;
}

//: 载入更多
- (NSString *)kNameModelCloseContentValue {
    /* static */ NSString *kNameModelCloseContentValue = nil;
    if (!kNameModelCloseContentValue) {
		NSArray<NSString *> *origin = @[@"12", @"89", @"8", @"85", @"28", @"122", @"1", @"39", @"143", @"100", @"100", @"140", @"44", @"76", @"141", @"66", @"91", @"140", @"75", @"65", @"87"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameModelCloseContentValue = [self StringFromHideData:value];
    }
    return kNameModelCloseContentValue;
}

//: message_helper_already_ok
- (NSString *)kName_recentData {
    /* static */ NSString *kName_recentData = nil;
    if (!kName_recentData) {
		NSArray<NSString *> *origin = @[@"25", @"25", @"13", @"103", @"228", @"227", @"34", @"43", @"106", @"30", @"6", @"196", @"121", @"84", @"76", @"90", @"90", @"72", @"78", @"76", @"70", @"79", @"76", @"83", @"87", @"76", @"89", @"70", @"72", @"83", @"89", @"76", @"72", @"75", @"96", @"70", @"86", @"82", @"100"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_recentData = [self StringFromHideData:value];
    }
    return kName_recentData;
}

//: fail_authentication
- (NSString *)kTitle_textData {
    /* static */ NSString *kTitle_textData = nil;
    if (!kTitle_textData) {
		NSArray<NSString *> *origin = @[@"19", @"62", @"8", @"135", @"182", @"112", @"67", @"84", @"40", @"35", @"43", @"46", @"33", @"35", @"55", @"54", @"42", @"39", @"48", @"54", @"43", @"37", @"35", @"54", @"43", @"49", @"48", @"198"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_textData = [self StringFromHideData:value];
    }
    return kTitle_textData;
}

//: message_helper_already_no
- (NSString *)kName_cropData {
    /* static */ NSString *kName_cropData = nil;
    if (!kName_cropData) {
		NSArray<NSString *> *origin = @[@"25", @"14", @"10", @"41", @"16", @"128", @"130", @"19", @"224", @"135", @"95", @"87", @"101", @"101", @"83", @"89", @"87", @"81", @"90", @"87", @"94", @"98", @"87", @"100", @"81", @"83", @"94", @"100", @"87", @"83", @"86", @"107", @"81", @"96", @"97", @"194"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_cropData = [self StringFromHideData:value];
    }
    return kName_cropData;
}

- (NSString *)StringFromHideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HideDataToCache:data]];
}

+ (NSData *)HideDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)kTitleRefreshData {
    /* static */ NSString *kTitleRefreshData = nil;
    if (!kTitleRefreshData) {
		NSArray<NSString *> *origin = @[@"45", @"76", @"12", @"115", @"34", @"30", @"233", @"102", @"166", @"240", @"193", @"29", @"41", @"39", @"25", @"38", @"19", @"36", @"38", @"35", @"26", @"29", @"32", @"25", @"19", @"21", @"42", @"40", @"29", @"42", @"29", @"40", @"45", @"19", @"41", @"39", @"25", @"38", @"19", @"29", @"34", @"26", @"35", @"19", @"41", @"36", @"24", @"21", @"40", @"25", @"19", @"26", @"21", @"29", @"32", @"25", @"24", @"191"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRefreshData = [self StringFromHideData:value];
    }
    return kTitleRefreshData;
}

//: friend_verify_avtivity_net_error
- (NSString *)kTextSendData {
    /* static */ NSString *kTextSendData = nil;
    if (!kTextSendData) {
		NSArray<NSString *> *origin = @[@"32", @"65", @"12", @"220", @"255", @"183", @"71", @"79", @"115", @"132", @"99", @"186", @"37", @"49", @"40", @"36", @"45", @"35", @"30", @"53", @"36", @"49", @"40", @"37", @"56", @"30", @"32", @"53", @"51", @"40", @"53", @"40", @"51", @"56", @"30", @"45", @"36", @"51", @"30", @"36", @"49", @"49", @"46", @"49", @"218"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSendData = [self StringFromHideData:value];
    }
    return kTextSendData;
}

+ (instancetype)sharedInstance {
    static HideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: successful_authentication
- (NSString *)kTitle_teamColorValue {
    /* static */ NSString *kTitle_teamColorValue = nil;
    if (!kTitle_teamColorValue) {
		NSArray<NSString *> *origin = @[@"25", @"59", @"5", @"39", @"164", @"56", @"58", @"40", @"40", @"42", @"56", @"56", @"43", @"58", @"49", @"36", @"38", @"58", @"57", @"45", @"42", @"51", @"57", @"46", @"40", @"38", @"57", @"46", @"52", @"51", @"113"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_teamColorValue = [self StringFromHideData:value];
    }
    return kTitle_teamColorValue;
}

//: /user/addFriend
- (NSString *)kText_errorValue {
    /* static */ NSString *kText_errorValue = nil;
    if (!kText_errorValue) {
		NSArray<NSString *> *origin = @[@"15", @"6", @"3", @"41", @"111", @"109", @"95", @"108", @"41", @"91", @"94", @"94", @"64", @"108", @"99", @"95", @"104", @"94", @"80"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_errorValue = [self StringFromHideData:value];
    }
    return kText_errorValue;
}

//: notification
- (NSString *)kTitle_itemValue {
    /* static */ NSString *kTitle_itemValue = nil;
    if (!kTitle_itemValue) {
		NSArray<NSString *> *origin = @[@"12", @"71", @"5", @"83", @"11", @"39", @"40", @"45", @"34", @"31", @"34", @"28", @"26", @"45", @"34", @"40", @"39", @"239"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_itemValue = [self StringFromHideData:value];
    }
    return kTitle_itemValue;
}

//: group_info_activity_team_not_exist
- (NSString *)kContent_loopString {
    /* static */ NSString *kContent_loopString = nil;
    if (!kContent_loopString) {
		NSArray<NSString *> *origin = @[@"34", @"60", @"8", @"87", @"9", @"61", @"210", @"205", @"43", @"54", @"51", @"57", @"52", @"35", @"45", @"50", @"42", @"51", @"35", @"37", @"39", @"56", @"45", @"58", @"45", @"56", @"61", @"35", @"56", @"41", @"37", @"49", @"35", @"50", @"51", @"56", @"35", @"41", @"60", @"45", @"55", @"56", @"91"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_loopString = [self StringFromHideData:value];
    }
    return kContent_loopString;
}

- (Byte *)HideDataToCache:(Byte *)data {
    int mainRecord = data[0];
    Byte key = data[1];
    int modelFrame = data[2];
    for (int i = modelFrame; i < modelFrame + mainRecord; i++) {
        int value = data[i] + key;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[modelFrame + mainRecord] = 0;
    return data + modelFrame;
}

//: fuid
- (NSString *)kTitle_keyData {
    /* static */ NSString *kTitle_keyData = nil;
    if (!kTitle_keyData) {
		NSArray<NSString *> *origin = @[@"4", @"77", @"4", @"33", @"25", @"40", @"28", @"23", @"201"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_keyData = [self StringFromHideData:value];
    }
    return kTitle_keyData;
}

//: back_arrow_bl
- (NSString *)kTitle_placeColorToolData {
    /* static */ NSString *kTitle_placeColorToolData = nil;
    if (!kTitle_placeColorToolData) {
		NSArray<NSString *> *origin = @[@"13", @"47", @"4", @"65", @"51", @"50", @"52", @"60", @"48", @"50", @"67", @"67", @"64", @"72", @"48", @"51", @"61", @"206"];
		NSData *data = [HideData HideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_placeColorToolData = [self StringFromHideData:value];
    }
    return kTitle_placeColorToolData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SystemNotificationViewController.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSystemNotificationViewController.h"
#import "ImageViewController.h"
//: #import "USERSystemNotificationCell.h"
#import "ManNameViewCell.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"

//: static const NSInteger MaxNotificationCount = 20;

static const NSInteger m_stylePath (NSString *value) {
    if (value) {
        return  20;
    }
    return  20;
};
//: static NSString *reuseIdentifier = @"reuseIdentifier";
static NSString *appRecentPath = @"reuseIdentifier";

//: @interface USERSystemNotificationViewController ()<NIMSystemNotificationManagerDelegate,NIMSystemNotificationCellDelegate,NIMTeamManagerDelegate,UITableViewDelegate,UITableViewDataSource>
@interface ImageViewController ()<NIMSystemNotificationManagerDelegate,ResultPathAt,NIMTeamManagerDelegate,UITableViewDelegate,UITableViewDataSource>
//: @property (nonatomic,strong) NSMutableArray *notifications;
@property (nonatomic,strong) NSMutableArray *notifications;
//: @property (nonatomic,assign) BOOL shouldMarkAsRead;
@property (nonatomic,assign) BOOL shouldMarkAsRead;
//: @end
@end

//: @implementation USERSystemNotificationViewController
@implementation ImageViewController

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
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

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {
        //: self.edgesForExtendedLayout = UIRectEdgeAll;
        self.edgesForExtendedLayout = UIRectEdgeAll;
    }
    //: return self;
    return self;
}




//: #pragma mark - SystemNotificationCell
#pragma mark - SystemNotificationCell
//: - (void)onAccept:(NIMSystemNotification *)notification
- (void)showwed:(NIMSystemNotification *)notification
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_recentData]]
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
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_recentData]]
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
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
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
                    //: [wself.navigationController.view makeToast:@"接受成功".user_localized
                    [wself.navigationController.view makeToast:[[HideData sharedInstance] kName_titleString].nominate
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
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kContent_loopString]]
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
                    //: [wself.navigationController.view makeToast:@"接受成功".user_localized
                    [wself.navigationController.view makeToast:[[HideData sharedInstance] kName_titleString].nominate
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
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kContent_loopString]]
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
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"successful_authentication"]//@"验证成功".user_localized
                                                         [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTitle_teamColorValue]]//@"验证成功".user_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeOk;
                                                         notification.handleStatus = NotificationHandleTypeOk;


                                                         //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/addFriend"] params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
                                                         [BlendView descriptionDemonstrate:[NSString stringWithFormat:[[HideData sharedInstance] kText_errorValue]] outsideAccount:@{[[HideData sharedInstance] kTitle_keyData]:notification.sourceID?:@""} sprechgesangEnable:NO media:^(id responseObject) {

                                                         //: } failed:^(id responseObject, NSError *error) {
                                                         } show:^(id responseObject, NSError *error) {
                                                         //: }];
                                                         }];


//                                                         //拿到对方用户信息
//                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
//                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
//
//                                                         // 构造出具体会话：P2P单聊，对方账号为user
//                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
//                                                         // 构造出具体消息
////                                                         NIMMessage *message = [TopConverter msgWithTip:[NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")]];
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
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"fail_authentication"]//@"验证失败,请重试".user_localized
                                                         [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTitle_textData]]//@"验证失败,请重试".user_localized
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

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
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


//: - (void)dealloc
- (void)dealloc
{
    //: if (_shouldMarkAsRead)
    if (_shouldMarkAsRead)
    {
        //: [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
        [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
    }
}
//: - (void)onRefuse:(NIMSystemNotification *)notification
- (void)queryedRefuse:(NIMSystemNotification *)notification
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_cropData]]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_cropData]]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_cropData]]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kContent_loopString]]
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
                    //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_cropData]]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTextSendData]]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kContent_loopString]]
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
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                                                         [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kName_cropData]]
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeNo;
                                                         notification.handleStatus = NotificationHandleTypeNo;
                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself.navigationController.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
                                                         [wself.navigationController.view makeToast:[MakeManager cell:[[HideData sharedInstance] kTitleRefreshData]]
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

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

//: - (void)clearAll:(id)sender
- (void)cover:(id)sender
{
    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteAllNotifications];
    [[[NIMSDK sharedSDK] systemNotificationManager] deleteAllNotifications];
    //: [_notifications removeAllObjects];
    [_notifications removeAllObjects];
    //: [self.tableView reloadData];
    [self.tableView reloadData];

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[HideData sharedInstance] kTitle_placeColorToolData]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"notification"];
    labtitle.text = [MakeManager cell:[[HideData sharedInstance] kTitle_itemValue]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"ic_del"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(clearAll:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];

    //: _notifications = [NSMutableArray array];
    _notifications = [NSMutableArray array];

    //: id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
    id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
    //: [systemNotificationManager addDelegate:self];
    [systemNotificationManager addDelegate:self];

    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: if ([self.filterType isEqualToString:@"1"]) {
    if ([self.filterType isEqualToString:@"1"]) {
        //: filter.notificationTypes = @[@(5)];
        filter.notificationTypes = @[@(5)];
    //: }else if ([self.filterType isEqualToString:@"2"]){
    }else if ([self.filterType isEqualToString:@"2"]){
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    //: }else{
    }else{
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
    }

    //: NSArray *notifications = [systemNotificationManager fetchSystemNotifications:nil
    NSArray *notifications = [systemNotificationManager fetchSystemNotifications:nil
                                                         //: limit:MaxNotificationCount filter:filter];
                                                         limit:m_stylePath(nil) filter:filter];

    //: if ([notifications count])
    if ([notifications count])
    {
        //: [_notifications addObjectsFromArray:notifications];
        [_notifications addObjectsFromArray:notifications];
        //: if (![[notifications firstObject] read])
        if (![[notifications firstObject] read])
        {
            //: _shouldMarkAsRead = YES;
            _shouldMarkAsRead = YES;

        }
    }
    //: if (notifications.count >= MaxNotificationCount) {
    if (notifications.count >= m_stylePath(nil)) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        //: [button setFrame:CGRectMake(0, 0, 320, 40)];
        [button setFrame:CGRectMake(0, 0, 320, 40)];
        //: [button addTarget:self
        [button addTarget:self
                   //: action:@selector(loadMore:)
                   action:@selector(nameMore:)
         //: forControlEvents:UIControlEventTouchUpInside];
         forControlEvents:UIControlEventTouchUpInside];
        //: [button setTitle:@"载入更多".user_localized forState:UIControlStateNormal];
        [button setTitle:[[HideData sharedInstance] kNameModelCloseContentValue].nominate forState:UIControlStateNormal];
        //: self.tableView.tableFooterView = button;
        self.tableView.tableFooterView = button;
    //: }else{
    }else{
        //: self.tableView.tableFooterView = [[UIView alloc] init];
        self.tableView.tableFooterView = [[UIView alloc] init];
    }

//    UIBarButtonItem *cleanItem = [[UIBarButtonItem alloc] initWithTitle:LangKey(@"empty_message")//@"清空".user_localized
//                                                                              style:UIBarButtonItemStylePlain
//                                                                             target:self
//                                                                             action:@selector(clearAll:)];
//    cleanItem.tintColor = [UIColor whiteColor];
//    self.navigationItem.rightBarButtonItem = cleanItem;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    ManNameViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
//    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
//    [cell update:notification];
//    cell.actionDelegate = self;
//    return cell;
    //: USERSystemNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"USERSystemNotificationCell"];
    ManNameViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ManNameViewCell"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[USERSystemNotificationCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"USERSystemNotificationCell"];
        cell = [[ManNameViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ManNameViewCell"];
    }
    //: cell.actionDelegate = self;
    cell.actionDelegate = self;

    //: NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath section]];
    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath section]];
    //: [cell update:notification];
    [cell openWith:notification];

    //: return cell;
    return cell;
}

//: - (void)loadMore:(id)sender
- (void)nameMore:(id)sender
{
    //: NSArray *notifications = [[[NIMSDK sharedSDK] systemNotificationManager] fetchSystemNotifications:[_notifications lastObject]
    NSArray *notifications = [[[NIMSDK sharedSDK] systemNotificationManager] fetchSystemNotifications:[_notifications lastObject]
                                                                                                //: limit:MaxNotificationCount];
                                                                                                limit:m_stylePath(nil)];
    //: if ([notifications count])
    if ([notifications count])
    {
        //: [_notifications addObjectsFromArray:notifications];
        [_notifications addObjectsFromArray:notifications];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;

}


//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 86;
    return 86;
}

//: - (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
- (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
{
    //: [_notifications insertObject:notification atIndex:0];
    [_notifications insertObject:notification atIndex:0];
    //: _shouldMarkAsRead = YES;
    _shouldMarkAsRead = YES;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: return [_notifications count];
    return [_notifications count];
}


//: @end
@end