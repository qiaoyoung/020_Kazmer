
#import <Foundation/Foundation.h>

@interface OutfitData : NSObject

+ (instancetype)sharedInstance;

//: #FAF8FD
@property (nonatomic, copy) NSString *kName_tribeData;

//: UserAgreementProtocol
@property (nonatomic, copy) NSString *kNameSustainData;

//: chat_top_bg
@property (nonatomic, copy) NSString *kTitle_poetValue;

//: agree
@property (nonatomic, copy) NSString *kContent_dateData;

//: reject
@property (nonatomic, copy) NSString *kTextCommandFriendlyData;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *kNameGlanceString;

//: UserAgreement_PrivacyPolicy
@property (nonatomic, copy) NSString *kText_researchData;

//: is_swed_firnstall
@property (nonatomic, copy) NSString *kTitle_riveBroadcastName;

@end

@implementation OutfitData

+ (instancetype)sharedInstance {
    static OutfitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OutfitDataToCache:(Byte *)data {
    int torsoScrip = data[0];
    Byte nousText = data[1];
    int player = data[2];
    for (int i = player; i < player + torsoScrip; i++) {
        int value = data[i] + nousText;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[player + torsoScrip] = 0;
    return data + player;
}

- (NSString *)StringFromOutfitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OutfitDataToCache:data]];
}

//: #FAF8FD
- (NSString *)kName_tribeData {
    if (!_kName_tribeData) {
        Byte value[] = {7, 48, 7, 146, 97, 61, 50, 243, 22, 17, 22, 8, 22, 20, 235};
        _kName_tribeData = [self StringFromOutfitData:value];
    }
    return _kName_tribeData;
}

//: UserAgreement_PrivacyPolicy
- (NSString *)kText_researchData {
    if (!_kText_researchData) {
        Byte value[] = {27, 51, 7, 227, 77, 105, 20, 34, 64, 50, 63, 14, 52, 63, 50, 50, 58, 50, 59, 65, 44, 29, 63, 54, 67, 46, 48, 70, 29, 60, 57, 54, 48, 70, 82};
        _kText_researchData = [self StringFromOutfitData:value];
    }
    return _kText_researchData;
}

//: agree
- (NSString *)kContent_dateData {
    if (!_kContent_dateData) {
        Byte value[] = {5, 76, 3, 21, 27, 38, 25, 25, 13};
        _kContent_dateData = [self StringFromOutfitData:value];
    }
    return _kContent_dateData;
}

//: is_swed_firnstall
- (NSString *)kTitle_riveBroadcastName {
    if (!_kTitle_riveBroadcastName) {
        Byte value[] = {17, 72, 5, 4, 176, 33, 43, 23, 43, 47, 29, 28, 23, 30, 33, 42, 38, 43, 44, 25, 36, 36, 38};
        _kTitle_riveBroadcastName = [self StringFromOutfitData:value];
    }
    return _kTitle_riveBroadcastName;
}

//: activity_comment_setting_ys
- (NSString *)kNameGlanceString {
    if (!_kNameGlanceString) {
        Byte value[] = {27, 72, 11, 158, 117, 159, 241, 143, 214, 111, 142, 25, 27, 44, 33, 46, 33, 44, 49, 23, 27, 39, 37, 37, 29, 38, 44, 23, 43, 29, 44, 44, 33, 38, 31, 23, 49, 43, 202};
        _kNameGlanceString = [self StringFromOutfitData:value];
    }
    return _kNameGlanceString;
}

//: chat_top_bg
- (NSString *)kTitle_poetValue {
    if (!_kTitle_poetValue) {
        Byte value[] = {11, 53, 10, 188, 213, 167, 80, 180, 58, 201, 46, 51, 44, 63, 42, 63, 58, 59, 42, 45, 50, 104};
        _kTitle_poetValue = [self StringFromOutfitData:value];
    }
    return _kTitle_poetValue;
}

//: UserAgreementProtocol
- (NSString *)kNameSustainData {
    if (!_kNameSustainData) {
        Byte value[] = {21, 91, 9, 93, 145, 123, 222, 243, 154, 250, 24, 10, 23, 230, 12, 23, 10, 10, 18, 10, 19, 25, 245, 23, 20, 25, 20, 8, 20, 17, 109};
        _kNameSustainData = [self StringFromOutfitData:value];
    }
    return _kNameSustainData;
}

//: reject
- (NSString *)kTextCommandFriendlyData {
    if (!_kTextCommandFriendlyData) {
        Byte value[] = {6, 96, 8, 67, 156, 106, 241, 4, 18, 5, 10, 5, 3, 20, 130};
        _kTextCommandFriendlyData = [self StringFromOutfitData:value];
    }
    return _kTextCommandFriendlyData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PullViewController.m
// Mortification
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionListViewController.h"
#import "PullViewController.h"
//: #import "DisplaySessionViewController.h"
#import "ReplyViewController.h"
//: #import "DisplaySessionListCell.h"
#import "RedViewCell.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "DisplayMessageUtil.h"
#import "AddPullSize.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "DisplayTextHighlight.h"
#import "SpectralColorTitleHighlight.h"
//: #import "DisplayInputEmoticonParser.h"
#import "MessageParser.h"
//: #import "DisplayInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "LEEAlert.h"
#import "ControlTag.h"

//: @interface DisplaySessionListViewController ()
@interface PullViewController ()

//@property (nonatomic,strong)  UIImageView *navBarHairlineImageView;

//: @end
@end

//: @implementation DisplaySessionListViewController
@implementation PullViewController

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)itemSession:(NIMRecentSession *)recentSession; {
    //: return NO;
    return NO;
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)quickses:(NSNotification *)notification{
    //: [self refresh];
    [self character];
}

//: - (void)setupSessions {
- (void)redOf {
    //: _recentSessions = [self getRecentSessions];
    _recentSessions = [self sessions];
    //: if (!self.recentSessions.count)
    if (!self.recentSessions.count)
    {
        //: _recentSessions = [NSMutableArray array];
        _recentSessions = [NSMutableArray array];
    }
    //: else
    else
    {
        //: _recentSessions = [self customSortRecents:_recentSessions];
        _recentSessions = [self colorContainer:_recentSessions];
    }
}


//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: return 10;
    return 10;

}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: for (NIMRecentSession *recent in self.recentSessions)
    for (NIMRecentSession *recent in self.recentSessions)
    {
        //: if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        {
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: break;
            break;
        }
    }
    //: NSInteger insert = [self findInsertPlace:recentSession];
    NSInteger insert = [self sashShow:recentSession];
    //: [self.recentSessions insertObject:recentSession atIndex:insert];
    [self.recentSessions insertObject:recentSession atIndex:insert];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}

//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent {
- (NSString *)languageUnitAndExecutiveSession:(NIMRecentSession *)recent {
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: return [DisplayKitUtil showNick:recent.session.sessionId inSession:recent.session];
        return [AtPull can:recent.session.sessionId changeSession:recent.session];
    //: } else if (recent.session.sessionType == NIMSessionTypeTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        //: return team.teamName;
        return team.teamName;
    //: } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        //: return superTeam.teamName;
        return superTeam.teamName;
    //: } else {
    } else {
        //: NSAssert(NO, @"");
        NSAssert(NO, @"");
        //: return nil;
        return nil;
    }
}

//: - (NSMutableArray *)getRecentSessions {
- (NSMutableArray *)sessions {
    //: return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
}


//: #pragma mark - Override
#pragma mark - Override
//: - (void)onSelectedAvatar:(NSString *)userId
- (void)element:(NSString *)userId
             //: atIndexPath:(NSIndexPath *)indexPath{};
             cut:(NSIndexPath *)indexPath{}

//: - (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
- (UIImageView *)action:(UIView *)view {
    //: if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        //: return (UIImageView *)view;
        return (UIImageView *)view;
    }
    //: for (UIView *subview in view.subviews) {
    for (UIView *subview in view.subviews) {
        //: UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        UIImageView *imageView = [self action:subview];
        //: if (imageView) {
        if (imageView) {
            //: return imageView;
            return imageView;
        }
    }
    //: return nil;
    return nil;
}

//: #pragma mark - Misc
#pragma mark - Misc

//: - (NSInteger)findInsertPlace:(NIMRecentSession *)recentSession{
- (NSInteger)sashShow:(NIMRecentSession *)recentSession{
    //: __block NSUInteger matchIdx = 0;
    __block NSUInteger matchIdx = 0;
    //: __block BOOL find = NO;
    __block BOOL find = NO;
    //: [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NIMRecentSession *item = obj;
        NIMRecentSession *item = obj;
        //: if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
        if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
            //: *stop = YES;
            *stop = YES;
            //: find = YES;
            find = YES;
            //: matchIdx = idx;
            matchIdx = idx;
        }
    //: }];
    }];
    //: if (find) {
    if (find) {
        //: return matchIdx;
        return matchIdx;
    //: }else{
    }else{
        //: return self.recentSessions.count;
        return self.recentSessions.count;
    }
}

//: - (void)tapGestureRecognizer:(id)sender {
- (void)gestures:(id)sender {
    //: HMWebViewController *vc = [[HMWebViewController alloc] init];
    DominoEffectViewController *vc = [[DominoEffectViewController alloc] init];
    //: vc.webTitle = [DisplayLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [MakeManager cell:[OutfitData sharedInstance].kNameGlanceString];
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [TableContext name].yshref;
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

    //: [[LEEAlert getAlertWindow].rootViewController presentViewController:nav animated:YES completion:nil];
    [[ControlTag alert].rootViewController presentViewController:nav animated:YES completion:nil];
}

//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (NSString *)timestampDescriptionForRecentSession:(NIMRecentSession *)recent{
- (NSString *)afterShow:(NIMRecentSession *)recent{
    //: if (recent.lastMessage) {
    if (recent.lastMessage) {
        //: return [DisplayKitUtil showTime:recent.lastMessage.timestamp showDetail:NO];
        return [AtPull account:recent.lastMessage.timestamp notice:NO];
    }
    // 服务端时间戳以毫秒为单位,需要转化
    //: NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    //: return [DisplayKitUtil showTime:timeSecond showDetail:NO];
    return [AtPull account:timeSecond notice:NO];
}



//: - (NIMMessage *)lastMessageWithNoNotificationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)sinceColor:(NIMMessage *)recentMsg {

    //: if (recentMsg.messageType != NIMMessageTypeNotification){
    if (recentMsg.messageType != NIMMessageTypeNotification){
        //: return recentMsg;
        return recentMsg;
    }

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeNotification){
        if (msg.messageType == NIMMessageTypeNotification){
            //: NIMNotificationObject *object = msg.messageObject;
            NIMNotificationObject *object = msg.messageObject;
             //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             {
                 //: return [self lastMessageWithNoNotificationMessage:msg];
                 return [self sinceColor:msg];
             }
        }
    }
    //: return msg;
    return msg;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 70.f;
    return 70.f;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[OutfitData sharedInstance].kTitle_poetValue];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.tableFooterView = [[UIView alloc] init];
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: extern NSString *const k_labelMsg;
    extern NSString *const k_labelMsg;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:k_labelMsg object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nimTag:) name:k_labelMsg object:nil];

    //: extern NSString *const kUserStr;
    extern NSString *const kUserStr;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:kUserStr object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pictures:) name:kUserStr object:nil];

    //: extern NSString *const noti_cellUrl;
    extern NSString *const noti_cellUrl;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:noti_cellUrl object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(quickses:) name:noti_cellUrl object:nil];

    //: [self setupSessions];
    [self redOf];

//    TableContext *userDefaults = [TableContext standardUserDefaults];
//    if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
//        BOOL un_first_install = [[NSUserDefaults standardUserDefaults] boolForKey:@"is_swed_firnstall"];
//        if (!un_first_install){
//            [self showalert];
//        }
//    }
}
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.recentSessions.count;
    return self.recentSessions.count;
}


//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount
              totalUnreadCount:(NSInteger)totalUnreadCount
{
    //清理本地数据
    //: [self.recentSessions removeObject:recentSession];
    [self.recentSessions removeObject:recentSession];

    //如果删除本地会话后就不允许漫游当前会话，则需要进行一次删除服务器会话的操作
    //: if (self.autoRemoveRemoteSession)
    if (self.autoRemoveRemoteSession)
    {
        //: [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
        [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
                           //: completion:nil];
                           completion:nil];
    }
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}


//: #pragma mark - Private
#pragma mark - Private
//: - (NSString *)messageContent:(NIMMessage*)lastMessage{
- (NSString *)statusCounteract:(NIMMessage*)lastMessage{
    //: NSString *text = [DisplayMessageUtil messageContent:lastMessage];
    NSString *text = [AddPullSize nearExtra:lastMessage];
    //: if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    {
        //: return text;
        return text;
    }
    //: else
    else
    {

        //: NIMMessage *msg = [self lastMessageWithNoNotificationMessage:lastMessage];
        NIMMessage *msg = [self sinceColor:lastMessage];
        //: text = [DisplayMessageUtil messageContent:msg];
        text = [AddPullSize nearExtra:msg];

        //: NSString *from = msg.from;
        NSString *from = msg.from;
        //: NSString *nickName = [DisplayKitUtil showNick:from inSession:msg.session];
        NSString *nickName = [AtPull can:from changeSession:msg.session];
        //: return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
    }
}



//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    _navBarHairlineImageView.hidden = YES;
}

//: - (void)sort{
- (void)small{
    //: [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
    [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        //: NIMRecentSession *item1 = obj1;
        NIMRecentSession *item1 = obj1;
        //: NIMRecentSession *item2 = obj2;
        NIMRecentSession *item2 = obj2;
        //: if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
        //: if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        }
        //: return NSOrderedSame;
        return NSOrderedSame;
    //: }];
    }];
}

//: - (void)showalert {
- (void)stepShowalert {

    //: [LEEAlert alert].config
    [ControlTag corner].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = [DisplayLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"];
            label.text = [MakeManager cell:[OutfitData sharedInstance].kText_researchData];
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
    //: .LeeAddContent(^(UILabel *label) {
    .LeeAddContent(^(UILabel *label) {

        //: NSString *markString = [DisplayLanguageManager getTextWithKey:@"UserAgreementProtocol"];
        NSString *markString = [MakeManager cell:[OutfitData sharedInstance].kNameSustainData];

        //: NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        //: paragraphStyle.lineSpacing = 3;
        paragraphStyle.lineSpacing = 3;
        //: NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        //: [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        //: [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        //: [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];
        [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];

        //: NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        //: [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];
        [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];


        //: [attrsString setAttributes:@{
        [attrsString setAttributes:@{
            //: NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            //: NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
            NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
        //: } range:[attrsString.string rangeOfString:[DisplayLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"]]];
        } range:[attrsString.string rangeOfString:[MakeManager cell:[OutfitData sharedInstance].kText_researchData]]];

        //: label.attributedText = attrsString;
        label.attributedText = attrsString;
        //: label.textAlignment = NSTextAlignmentLeft;
        label.textAlignment = NSTextAlignmentLeft;

        //: label.userInteractionEnabled = YES;
        label.userInteractionEnabled = YES;

        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognizer:)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestures:)];
        //: [label addGestureRecognizer:tap];
        [label addGestureRecognizer:tap];
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(WithAction *action) {

        //: action.title = [DisplayLanguageManager getTextWithKey:@"reject"];
        action.title = [MakeManager cell:[OutfitData sharedInstance].kTextCommandFriendlyData];

        //: action.titleColor = [UIColor darkGrayColor];
        action.titleColor = [UIColor darkGrayColor];

        //: action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: exit(0);
            exit(0);
        //: };
        };
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(WithAction *action) {

        //: action.type = LEEActionTypeCancel;
        action.type = LEEActionTypeCancel;

        //: action.title = [DisplayLanguageManager getTextWithKey:@"agree"];
        action.title = [MakeManager cell:[OutfitData sharedInstance].kContent_dateData];

        //: action.titleColor = [UIColor whiteColor];
        action.titleColor = [UIColor whiteColor];

        //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"is_swed_firnstall"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[OutfitData sharedInstance].kTitle_riveBroadcastName];
            //: [[NSUserDefaults standardUserDefaults] synchronize];
            [[NSUserDefaults standardUserDefaults] synchronize];
        //: };
        };

    //: })
    })
    //: .LeeCornerRadius(15.0f)
    .LeeCornerRadius(15.0f)

    //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
    .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)

    //: .LeeShow();
    .LeeShow();


}

//: - (void)onSelectedRecent:(NIMRecentSession *)recentSession atIndexPath:(NSIndexPath *)indexPath{
- (void)graduatedTable:(NIMRecentSession *)recentSession caterer:(NSIndexPath *)indexPath{
    //: DisplaySessionViewController *vc = [[DisplaySessionViewController alloc] initWithSession:recentSession.session];
    ReplyViewController *vc = [[ReplyViewController alloc] initWithTitleSession:recentSession.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification{
- (void)pictures:(NSNotification *)notification{
    //: [self refresh];
    [self character];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}

//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: [self onSelectedRecent:recentSession atIndexPath:indexPath];
    [self graduatedTable:recentSession caterer:indexPath];
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}

//: - (void)refresh{
- (void)character{
    //: if (!self.recentSessions.count) {
    if (!self.recentSessions.count) {
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self customSortRecents:self.recentSessions];
        [self colorContainer:self.recentSessions];
    }
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *cellId = @"cellId";
    static NSString *cellId = @"cellId";
    //: DisplaySessionListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    RedViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: if (!cell) {
    if (!cell) {
        //: cell = [[DisplaySessionListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell = [[RedViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        //: [cell.avatarImageView addTarget:self action:@selector(onTouchAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [cell.avatarImageView addTarget:self action:@selector(doSumTool:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: cell.nameLabel.text = [self nameForRecentSession:recent];
    cell.nameLabel.text = [self languageUnitAndExecutiveSession:recent];
    //: [cell.avatarImageView setAvatarBySession:recent.session];
    [cell.avatarImageView setSessionShoot:recent.session];
    //: [cell.nameLabel sizeToFit];
    [cell.nameLabel sizeToFit];

    //: cell.messageLabel.attributedText = [self contentForRecentSession:recent];
    cell.messageLabel.attributedText = [self coloration:recent];
    //: [cell.messageLabel sizeToFit];
    [cell.messageLabel sizeToFit];
    //: cell.timeLabel.text = [self timestampDescriptionForRecentSession:recent];
    cell.timeLabel.text = [self afterShow:recent];
    //: [cell.timeLabel sizeToFit];
    [cell.timeLabel sizeToFit];

    //: BOOL isTop = [self isTopWithNIMRecentSession:recent];
    BOOL isTop = [self itemSession:recent];
    //: if (isTop){
    if (isTop){
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        cell.backgroundColor = [UIColor cell:[OutfitData sharedInstance].kName_tribeData];
    //: } else {
    } else {
        //: cell.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
    }

    //: [cell refresh:recent];
    [cell afterOrigin:recent];
    //: return cell;
    return cell;
};

//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: [self.recentSessions addObject:recentSession];
    [self.recentSessions addObject:recentSession];
    //: [self sort];
    [self small];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self colorContainer:_recentSessions];
    //: [self refresh];
    [self character];
}



//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)nimTag:(NSNotification *)notification{
    //: [self refresh];
    [self character];
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didLoadAllRecentSessionCompletion {
- (void)didLoadAllRecentSessionCompletion {
    //: [self setupSessions];
    [self redOf];
    //: [self refresh];
    [self character];
}

//: - (void)onTouchAvatar:(id)sender{
- (void)doSumTool:(id)sender{
    //: UIView *view = [sender superview];
    UIView *view = [sender superview];
    //: while (![view isKindOfClass:[UITableViewCell class]]) {
    while (![view isKindOfClass:[UITableViewCell class]]) {
        //: view = view.superview;
        view = view.superview;
    }
    //: UITableViewCell *cell = (UITableViewCell *)view;
    UITableViewCell *cell = (UITableViewCell *)view;
    //: NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: [self onSelectedAvatar:recent atIndexPath:indexPath];
    [self element:recent cut:indexPath];
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [self refresh];
        [self character];
    }
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
//    _navBarHairlineImageView.hidden = NO;
}



//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)colorContainer:(NSMutableArray *)recentSessions
{
    //: return self.recentSessions;
    return self.recentSessions;
}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)coloration:(NIMRecentSession *)recent{
    //: NSString *content = [self messageContent:recent.lastMessage];
    NSString *content = [self statusCounteract:recent.lastMessage];
    //: return [[NSAttributedString alloc] initWithString:content ?: @""];
    return [[NSAttributedString alloc] initWithString:content ?: @""];
}



//: @end
@end
