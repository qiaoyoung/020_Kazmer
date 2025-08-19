
#import <Foundation/Foundation.h>

@interface ScaleValueData : NSObject

@end

@implementation ScaleValueData

+ (Byte *)ScaleValueDataToCache:(Byte *)data {
    int displace = data[0];
    int showErase = data[1];
    for (int i = 0; i < displace / 2; i++) {
        int begin = showErase + i;
        int end = showErase + displace - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[showErase + displace] = 0;
    return data + showErase;
}

+ (NSString *)StringFromScaleValueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScaleValueDataToCache:data]];
}  

//: teamName
+ (NSString *)noti_atContent {
    /* static */ NSString *noti_atContent = nil;
    if (!noti_atContent) {
        Byte value[] = {8, 4, 154, 23, 101, 109, 97, 78, 109, 97, 101, 116, 73};
        noti_atContent = [self StringFromScaleValueData:value];
    }
    return noti_atContent;
}

//: teamType
+ (NSString *)notiChangeUrl {
    /* static */ NSString *notiChangeUrl = nil;
    if (!notiChangeUrl) {
        Byte value[] = {8, 11, 112, 124, 123, 215, 66, 234, 91, 40, 14, 101, 112, 121, 84, 109, 97, 101, 116, 111};
        notiChangeUrl = [self StringFromScaleValueData:value];
    }
    return notiChangeUrl;
}

//: Group
+ (NSString *)dreamTapIdent {
    /* static */ NSString *dreamTapIdent = nil;
    if (!dreamTapIdent) {
        Byte value[] = {5, 10, 205, 232, 218, 93, 210, 38, 180, 15, 112, 117, 111, 114, 71, 29};
        dreamTapIdent = [self StringFromScaleValueData:value];
    }
    return dreamTapIdent;
}

//: 正在呼叫您
+ (NSString *)main_onMessage {
    /* static */ NSString *main_onMessage = nil;
    if (!main_onMessage) {
        Byte value[] = {15, 2, 168, 130, 230, 171, 143, 229, 188, 145, 229, 168, 156, 229, 163, 173, 230, 41};
        main_onMessage = [self StringFromScaleValueData:value];
    }
    return main_onMessage;
}

//: content
+ (NSString *)showViewShouldPath {
    /* static */ NSString *showViewShouldPath = nil;
    if (!showViewShouldPath) {
        Byte value[] = {7, 7, 172, 235, 87, 217, 211, 116, 110, 101, 116, 110, 111, 99, 36};
        showViewShouldPath = [self StringFromScaleValueData:value];
    }
    return showViewShouldPath;
}

//: teamId
+ (NSString *)kItemId {
    /* static */ NSString *kItemId = nil;
    if (!kItemId) {
        Byte value[] = {6, 9, 45, 39, 8, 241, 101, 126, 218, 100, 73, 109, 97, 101, 116, 64};
        kItemId = [self StringFromScaleValueData:value];
    }
    return kItemId;
}

//: members
+ (NSString *)showMyStateKey {
    /* static */ NSString *showMyStateKey = nil;
    if (!showMyStateKey) {
        Byte value[] = {7, 4, 190, 233, 115, 114, 101, 98, 109, 101, 109, 23};
        showMyStateKey = [self StringFromScaleValueData:value];
    }
    return showMyStateKey;
}

//: room
+ (NSString *)dream_messageAllName {
    /* static */ NSString *dream_messageAllName = nil;
    if (!dream_messageAllName) {
        Byte value[] = {4, 2, 109, 111, 111, 114, 106};
        dream_messageAllName = [self StringFromScaleValueData:value];
    }
    return dream_messageAllName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomSysNotificationSender.h"
#import "BarEmptyView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"

//: @interface NTESCustomSysNotificationSender ()
@interface BarEmptyView ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation BarEmptyView

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)make:(NSString *)content name:(NIMSession *)session{
    //: if (!content) {
    if (!content) {
        //: return;
        return;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((2)),
                           @"id" : @((2)),
                           //: @"content" : content,
                           [ScaleValueData showViewShouldPath] : content,
                           //: };
                           };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *json = [[NSString alloc] initWithData:data
    NSString *json = [[NSString alloc] initWithData:data
                                              //: encoding:NSUTF8StringEncoding];
                                              encoding:NSUTF8StringEncoding];

    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    //: notification.apnsContent = content;
    notification.apnsContent = content;
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[NameTing pin] from];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;
    //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
    [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                 //: toSession:session
                                                                 toSession:session
                                                                //: completion:nil];
                                                                completion:nil];
}


//: - (void)sendTypingState:(NIMSession *)session
- (void)background:(NIMSession *)session
{
    //: NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    //: if (session.sessionType != NIMSessionTypeP2P ||
    if (session.sessionType != NIMSessionTypeP2P ||
        //: [session.sessionId isEqualToString:currentAccount])
        [session.sessionId isEqualToString:currentAccount])
    {
        //: return;
        return;
    }

    //: NSDate *now = [NSDate date];
    NSDate *now = [NSDate date];
    //: if (_lastTime == nil ||
    if (_lastTime == nil ||
        //: [now timeIntervalSinceDate:_lastTime] > 3)
        [now timeIntervalSinceDate:_lastTime] > 3)
    {
        //: _lastTime = now;
        _lastTime = now;

        //: NSDictionary *dict = @{@"id" : @((1))};
        NSDictionary *dict = @{@"id" : @((1))};
        //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
        NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
        //: NSString *content = [[NSString alloc] initWithData:data
        NSString *content = [[NSString alloc] initWithData:data
                                                  //: encoding:NSUTF8StringEncoding];
                                                  encoding:NSUTF8StringEncoding];

        //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        //: notification.sendToOnlineUsersOnly = YES;
        notification.sendToOnlineUsersOnly = YES;
        //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
        notification.env = [[NameTing pin] from];
        //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        //: setting.apnsEnabled = NO;
        setting.apnsEnabled = NO;
        //: notification.setting = setting;
        notification.setting = setting;
        //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
        [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                     //: toSession:session
                                                                     toSession:session
                                                                    //: completion:nil];
                                                                    completion:nil];
    }

}


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)info:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    ignore:(NSString *)roomName
                     //: members:(NSArray *)members
                     flushGlobal_strong:(NSArray *)members
{
    //: if (!team || !team.teamId || !members) {
    if (!team || !team.teamId || !members) {
        //: return;
        return;
    }

    //: NSString *teamId = team.teamId;
    NSString *teamId = team.teamId;
    //: NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    //: if (team.type == NIMTeamTypeSuper) {
    if (team.type == NIMTeamTypeSuper) {
        //: teamType = NIMKitTeamTypeSuper;
        teamType = NIMKitTeamTypeSuper;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((3)),
                           @"id" : @((3)),
                           //: @"members" : members,
                           [ScaleValueData showMyStateKey] : members,
                           //: @"teamId" : teamId,
                           [ScaleValueData kItemId] : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [ScaleValueData noti_atContent] : team.teamName? team.teamName : [ScaleValueData dreamTapIdent],
                           //: @"room" : roomName,
                           [ScaleValueData dream_messageAllName] : roomName,
                           //: @"teamType" : @(teamType)
                           [ScaleValueData notiChangeUrl] : @(teamType)
                          //: };
                          };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = [[NSString alloc] initWithData:data
    NSString *content = [[NSString alloc] initWithData:data
                                           //: encoding:NSUTF8StringEncoding];
                                           encoding:NSUTF8StringEncoding];
    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[NameTing pin] from];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    TingMessage *me = [[ButtonKit sheerOption] past:[NIMSDK sharedSDK].loginManager.currentAccount skinColour_strong:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[ScaleValueData main_onMessage].textIndex];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;


    //: for (NSString *userId in members) {
    for (NSString *userId in members) {
        //: if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        {
            //: continue;
            continue;
        }
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
        [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
    }

}




//: @end
@end