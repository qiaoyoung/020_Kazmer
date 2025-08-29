
#import <Foundation/Foundation.h>

typedef struct {
    Byte relieveMultiple;
    Byte *chapter;
    unsigned int masterKey;
	int fie;
} StructScaleOvernightData;

@interface ScaleOvernightData : NSObject

+ (instancetype)sharedInstance;

//: 你收到了一个白板请求
@property (nonatomic, copy) NSString *kTextTeachLessTitle;

//: message.wav
@property (nonatomic, copy) NSString *kTitleModelFlowerString;

//: 向你发起了一个白板请求
@property (nonatomic, copy) NSString *kNameDefineValue;

@end

@implementation ScaleOvernightData

+ (instancetype)sharedInstance {
    static ScaleOvernightData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ScaleOvernightDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ScaleOvernightDataToByte:(StructScaleOvernightData *)data {
    for (int i = 0; i < data->masterKey; i++) {
        data->chapter[i] ^= data->relieveMultiple;
    }
    data->chapter[data->masterKey] = 0;
	if (data->masterKey >= 1) {
		data->fie = data->chapter[0];
	}
    return data->chapter;
}

- (NSString *)StringFromScaleOvernightData:(StructScaleOvernightData *)data {
    return [NSString stringWithUTF8String:(char *)[self ScaleOvernightDataToByte:data]];
}

//: message.wav
- (NSString *)kTitleModelFlowerString {
    if (!_kTitleModelFlowerString) {
		NSArray<NSNumber *> *origin = @[@161, @169, @191, @191, @173, @171, @169, @226, @187, @173, @186, @197];
		NSData *data = [ScaleOvernightData ScaleOvernightDataToData:origin];
        StructScaleOvernightData value = (StructScaleOvernightData){204, (Byte *)data.bytes, 11, 216};
        _kTitleModelFlowerString = [self StringFromScaleOvernightData:&value];
    }
    return _kTitleModelFlowerString;
}

//: 你收到了一个白板请求
- (NSString *)kTextTeachLessTitle {
    if (!_kTextTeachLessTitle) {
		NSArray<NSNumber *> *origin = @[@239, @182, @171, @237, @159, @189, @238, @131, @187, @239, @177, @141, @239, @179, @139, @239, @179, @161, @236, @146, @182, @237, @150, @180, @227, @164, @188, @237, @186, @137, @126];
		NSData *data = [ScaleOvernightData ScaleOvernightDataToData:origin];
        StructScaleOvernightData value = (StructScaleOvernightData){11, (Byte *)data.bytes, 30, 180};
        _kTextTeachLessTitle = [self StringFromScaleOvernightData:&value];
    }
    return _kTextTeachLessTitle;
}

//: 向你发起了一个白板请求
- (NSString *)kNameDefineValue {
    if (!_kNameDefineValue) {
		NSArray<NSNumber *> *origin = @[@70, @51, @50, @71, @30, @3, @70, @44, @50, @75, @22, @20, @71, @25, @37, @71, @27, @35, @71, @27, @9, @68, @58, @30, @69, @62, @28, @75, @12, @20, @69, @18, @33, @124];
		NSData *data = [ScaleOvernightData ScaleOvernightDataToData:origin];
        StructScaleOvernightData value = (StructScaleOvernightData){163, (Byte *)data.bytes, 33, 176};
        _kNameDefineValue = [self StringFromScaleOvernightData:&value];
    }
    return _kNameDefineValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellCornerInside.m
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"
//: #import "USERCustomNotificationDB.h"
#import "ContentCell.h"
//: #import "USERCustomNotificationObject.h"
#import "CommentObject.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERCustomSysNotificationSender.h"
#import "CornerFlipFlush.h"
//: #import "USERGlobalMacro.h"
#import "USERGlobalMacro.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "USERAVNotifier.h"
#import "MaxCellContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: NSString *USERCustomNotificationCountChanged = @"USERCustomNotificationCountChanged";
NSString *showUserKey = @"USERCustomNotificationCountChanged";

//: @interface USERNotificationCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>
@interface CellCornerInside () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>

//: @property (nonatomic,strong) AVAudioPlayer *player; 
@property (nonatomic,strong) AVAudioPlayer *player;//播放提示音
//: @property (nonatomic,strong) USERAVNotifier *notifier;
@property (nonatomic,strong) MaxCellContext *notifier;

//: @end
@end

//: @implementation USERNotificationCenter
@implementation CellCornerInside

//: - (void)onRTSTerminate:(NSString *)sessionID
- (void)independent:(NSString *)sessionID
                    //: by:(NSString *)user
                    up:(NSString *)user
{
    //: [_notifier stop];
    [_notifier share];
}

//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {

    //: USERMainTabController *tabVC = [USERMainTabController instance];
    TranslateTabletBarController *tabVC = [TranslateTabletBarController with];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (USERSessionViewController *vc in nav.viewControllers) {
    for (WayOfLifeViewController *vc in nav.viewControllers) {
        //: for (NIMMessage *message in messages) {
        for (NIMMessage *message in messages) {
            //: if ([vc isKindOfClass:[USERSessionViewController class]]
            if ([vc isKindOfClass:[WayOfLifeViewController class]]
                //: && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                //: [vc uiDeleteMessage:message];
                [vc keep:message];
            }
        }
    }
}

//: #pragma mark - NIMConversationDelegate
#pragma mark - NIMConversationDelegate

//: - (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
- (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
    //: [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
    [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
}


//: - (void)playMessageAudioTip
- (void)underSelected
{
    //: UINavigationController *nav = [USERMainTabController instance].selectedViewController;
    UINavigationController *nav = [TranslateTabletBarController with].selectedViewController;
    //: BOOL needPlay = YES;
    BOOL needPlay = YES;
    //: for (UIViewController *vc in nav.viewControllers) {
    for (UIViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[ReplyViewController class]])
        {
            //: needPlay = NO;
            needPlay = NO;
            //: break;
            break;
        }
    }
    //: if (needPlay) {
    if (needPlay) {
        //: [self.player stop];
        [self.player stop];
        //: [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        //: [self.player play];
        [self.player play];
    }
}

//: - (NSArray *)filterMessages:(NSArray *)messages
- (NSArray *)infoMessages:(NSArray *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self checkRedPacketTip:message] && ![self canSaveMessageRedPacketTip:message])
        if ([self blue:message] && ![self show:message])
        {
            //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            //: [self.currentSessionViewController uiDeleteMessage:message];
            [self.array keep:message];
            //: continue;
            continue;
        }
        //: [array addObject:message];
        [array addObject:message];
    }
    //: return [NSArray arrayWithArray:array];
    return [NSArray arrayWithArray:array];
}

//: - (BOOL)canSaveMessageRedPacketTip:(NIMMessage *)message
- (BOOL)show:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: USERRedPacketTipAttachment *attach = (USERRedPacketTipAttachment *)object.attachment;
    ContentAttachment *attach = (ContentAttachment *)object.attachment;
    //: NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
    return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{

    //: NSString *content = notification.content;
    NSString *content = notification.content;
    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data)
    if (data)
    {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: switch ([dict jsonInteger:@"id"]) {
            switch ([dict immobilise:@"id"]) {
                //: case (2):{
                case (2):{
                    //SDK并不会存储自定义的系统通知，需要上层结合业务逻辑考虑是否做存储。这里给出一个存储的例子。
                    //: USERCustomNotificationObject *object = [[USERCustomNotificationObject alloc] initWithNotification:notification];
                    CommentObject *object = [[CommentObject alloc] initWithMeasure:notification];
                    //这里只负责存储可离线的自定义通知，推荐上层应用也这么处理，需要持久化的通知都走可离线通知
                    //: if (!notification.sendToOnlineUsersOnly) {
                    if (!notification.sendToOnlineUsersOnly) {
                        //: [[USERCustomNotificationDB sharedInstance] saveNotification:object];
                        [[ContentCell session] subNotification:object];
                    }
                    //: if (notification.setting.shouldBeCounted) {
                    if (notification.setting.shouldBeCounted) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:USERCustomNotificationCountChanged object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:showUserKey object:nil];
                    }
                    //: NSString *content = [dict jsonString:@"content"];
                    NSString *content = [dict changeRange:@"content"];
                    //: [self makeToast:content];
                    [self refer:content];
                }
                    //: break;
                    break;
                //: case (3):{
                case (3):{

                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
}


//: - (void)onRTSRequest:(NSString *)sessionID
- (void)alongOpen:(NSString *)sessionID
                //: from:(NSString *)caller
                of:(NSString *)caller
            //: services:(NSUInteger)types
            range:(NSUInteger)types
             //: message:(NSString *)info
             harvestMessage:(NSString *)info
{


}


//: - (void)start
- (void)teamCover
{
}

//: - (void)presentModelViewController:(UIViewController *)vc
- (void)dataFor:(UIViewController *)vc
{
    //: USERMainTabController *tab = [USERMainTabController instance];
    TranslateTabletBarController *tab = [TranslateTabletBarController with];
    //: [tab.view endEditing:YES];
    [tab.view endEditing:YES];
    //: if (tab.presentedViewController) {
    if (tab.presentedViewController) {
        //: __weak USERMainTabController *wtabVC = tab;
        __weak TranslateTabletBarController *wtabVC = tab;
        //: [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
        [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
            //: [wtabVC presentViewController:vc animated:NO completion:nil];
            [wtabVC presentViewController:vc animated:NO completion:nil];
        //: }];
        }];
    //: }else{
    }else{
        //: [tab presentViewController:vc animated:NO completion:nil];
        [tab presentViewController:vc animated:NO completion:nil];
    }
}

//: - (FFFSessionViewController *)currentSessionViewController
- (ReplyViewController *)array
{
    //: UINavigationController *nav = [USERMainTabController instance].selectedViewController;
    UINavigationController *nav = [TranslateTabletBarController with].selectedViewController;
    //: for (UIViewController *vc in nav.viewControllers)
    for (UIViewController *vc in nav.viewControllers)
    {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[ReplyViewController class]])
        {
            //: return (FFFSessionViewController *)vc;
            return (ReplyViewController *)vc;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)checkMessageAt:(NSArray<NIMMessage *> *)messages
- (void)upwardly:(NSArray<NIMMessage *> *)messages
{
    //一定是同个 session 的消息
    //: NIMSession *session = [messages.firstObject session];
    NIMSession *session = [messages.firstObject session];
    //: if ([self.currentSessionViewController.session isEqual:session])
    if ([self.array.session isEqual:session])
    {
        //只有在@所属会话页外面才需要标记有人@你
        //: return;
        return;
    }

    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if ([message.apnsMemberOption.userIds containsObject:me]) {
        if ([message.apnsMemberOption.userIds containsObject:me]) {
            //: [USERSessionUtil addRecentSessionMark:session type:USERRecentSessionMarkTypeAt];
            [SessionStandard sessionRed:session last:USERRecentSessionMarkTypeAt];
            //: return;
            return;
        }
    }
}


//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: NSString *voicePath = [[[SSZipArchiveManager sharedManager] getVoicePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"message.wav"]];
        NSString *voicePath = [[[PersonShould commonKey] disable] stringByAppendingPathComponent:[NSString stringWithFormat:[ScaleOvernightData sharedInstance].kTitleModelFlowerString]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
            //: NSURL *url = [NSURL fileURLWithPath:voicePath];
            NSURL *url = [NSURL fileURLWithPath:voicePath];
            //: _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        }
        //: _notifier = [[USERAVNotifier alloc] init];
        _notifier = [[MaxCellContext alloc] init];

        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
        [[NIMSDK sharedSDK].chatManager addDelegate:self];
        //: [[NIMSDK sharedSDK].broadcastManager addDelegate:self];
        [[NIMSDK sharedSDK].broadcastManager addDelegate:self];

        //: [[NIMSDK sharedSDK].signalManager addDelegate:self];
        [[NIMSDK sharedSDK].signalManager addDelegate:self];
        //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
        [[NIMSDK sharedSDK].conversationManager addDelegate:self];

//        [[NERtcCallKit sharedInstance] addDelegate:self];
    }
    //: return self;
    return self;
}

//: #pragma mark - NIMBroadcastManagerDelegate
#pragma mark - NIMBroadcastManagerDelegate
//: - (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
- (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
{
    //: [self makeToast:broadcastMessage.content];
    [self refer:broadcastMessage.content];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//: - (void)onRecvMessages:(NSArray *)recvMessages
- (void)onRecvMessages:(NSArray *)recvMessages
{
    //: NSArray *messages = [self filterMessages:recvMessages];
    NSArray *messages = [self infoMessages:recvMessages];
    //: if (messages.count)
    if (messages.count)
    {
        //: static BOOL isPlaying = NO;
        static BOOL isPlaying = NO;
        //: if (isPlaying) {
        if (isPlaying) {
            //: return;
            return;
        }
        //: isPlaying = YES;
        isPlaying = YES;
        //: [self playMessageAudioTip];
        [self underSelected];
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: isPlaying = NO;
            isPlaying = NO;
        //: });
        });
        //: [self checkMessageAt:messages];
        [self upwardly:messages];
    }
}


//: + (instancetype)sharedCenter
+ (instancetype)mediaNet
{
    //: static USERNotificationCenter *instance = nil;
    static CellCornerInside *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[USERNotificationCenter alloc] init];
        instance = [[CellCornerInside alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: #pragma mark - format
#pragma mark - format

//: - (NSString *)textByCaller:(NSString *)caller
- (NSString *)max:(NSString *)caller
{
    //: NSString *text = @"你收到了一个白板请求".user_localized;
    NSString *text = [ScaleOvernightData sharedInstance].kTextTeachLessTitle.nominate;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:caller option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:caller keepingOption:nil];
    //: if ([info.showName length])
    if ([info.showName length])
    {
        //: text = [NSString stringWithFormat:@"%@%@",
        text = [NSString stringWithFormat:@"%@%@",
                //: info.showName,
                info.showName,
                //: @"向你发起了一个白板请求".user_localized];
                [ScaleOvernightData sharedInstance].kNameDefineValue.nominate];
    }
    //: return text;
    return text;
}



//: - (void)makeToast:(NSString *)content
- (void)refer:(NSString *)content
{
    //: [[USERMainTabController instance].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
    [[TranslateTabletBarController with].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
}

//: - (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
- (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
{
    //撤回消息中收到的attach和callbackExt字段需要获取出来存放到message中去
    //: NIMMessage *tipMessage = [USERSessionMsgConverter msgWithTip:[USERSessionUtil tipOnMessageRevoked:notification]
    NIMMessage *tipMessage = [TopConverter messageFor:[SessionStandard noneTitle:notification]
                                                    //: revokeAttach:notification.attach
                                                    tipRead:notification.attach
                                               //: revokeCallbackExt:notification.callbackExt];
                                               sure:notification.callbackExt];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: tipMessage.setting = setting;
    tipMessage.setting = setting;
    //: tipMessage.timestamp = notification.timestamp;
    tipMessage.timestamp = notification.timestamp;

    //: USERMainTabController *tabVC = [USERMainTabController instance];
    TranslateTabletBarController *tabVC = [TranslateTabletBarController with];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (USERSessionViewController *vc in nav.viewControllers) {
    for (WayOfLifeViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[USERSessionViewController class]]
        if ([vc isKindOfClass:[WayOfLifeViewController class]]
            //: && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            //: FFFMessageModel *model = [vc uiDeleteMessage:notification.message];
            CleanDoing *model = [vc keep:notification.message];
            //: if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
            if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
                //: notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
                notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
            {
                //: break;
                break;
            }

            //: if (model) {
            if (model) {
                //[vc uiInsertMessages:@[tipMessage]];//撤回消息不显示
            }
            //: break;
            break;
        }
    }

    // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
    //: if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
    if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
        //: notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
        notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
    {
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
        [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
                                                 //: forSession:notification.session
                                                 forSession:notification.session
                                                 //: completion:nil];
                                                 completion:nil];
    }

}

//: #pragma mark - NIMNetCallManagerDelegate
#pragma mark - NIMNetCallManagerDelegate

//: - (void)onHangup:(UInt64)callID
- (void)session:(UInt64)callID
              //: by:(NSString *)user
              with:(NSString *)user
{
    //: [_notifier stop];
    [_notifier share];
}

//: - (BOOL)shouldFireNotification:(NSString *)callerId
- (BOOL)nameRead:(NSString *)callerId
{
    //退后台后 APP 存活，然后收到通知
    //: BOOL should = YES;
    BOOL should = YES;

    //消息不提醒
    //: id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    //: if (![userManager notifyForNewMsg:callerId])
    if (![userManager notifyForNewMsg:callerId])
    {
        //: should = NO;
        should = NO;
    }

    //当前在正处于免打扰
    //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    //: if (setting.noDisturbing)
    if (setting.noDisturbing)
    {
        //: NSDate *date = [NSDate date];
        NSDate *date = [NSDate date];
        //: NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        //: NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        //: NSInteger now = components.hour * 60 + components.minute;
        NSInteger now = components.hour * 60 + components.minute;
        //: NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        //: NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;
        NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;

        //当天区间
        //: if (end > start && end >= now && now >= start)
        if (end > start && end >= now && now >= start)
        {
            //: should = NO;
            should = NO;
        }
        //隔天区间
        //: else if(end < start && (now <= end || now >= start))
        else if(end < start && (now <= end || now >= start))
        {
            //: should = NO;
            should = NO;
        }
    }

    //: return should;
    return should;
}

//: - (BOOL)checkRedPacketTip:(NIMMessage *)message
- (BOOL)blue:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[USERRedPacketTipAttachment class]])
    if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[ContentAttachment class]])
    {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}


//: @end
@end
//: __SAVE__ ignore_string [763.7]