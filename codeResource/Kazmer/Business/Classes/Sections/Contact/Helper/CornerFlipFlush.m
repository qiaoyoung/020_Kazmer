
#import <Foundation/Foundation.h>

typedef struct {
    Byte viewProgress;
    Byte *month;
    unsigned int viewLoop;
	int frameStandard;
} StructDeviceData;

@interface DeviceData : NSObject

@end

@implementation DeviceData

//: room
+ (NSString *)kName_frameMessageString {
    /* static */ NSString *kName_frameMessageString = nil;
    if (!kName_frameMessageString) {
		NSString *origin = @"C5D8D8DA84";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){183, (Byte *)data.bytes, 4, 135};
        kName_frameMessageString = [self StringFromDeviceData:&value];
    }
    return kName_frameMessageString;
}

//: teamName
+ (NSString *)kTextRecordString {
    /* static */ NSString *kTextRecordString = nil;
    if (!kTextRecordString) {
		NSString *origin = @"79686C60436C606865";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){13, (Byte *)data.bytes, 8, 70};
        kTextRecordString = [self StringFromDeviceData:&value];
    }
    return kTextRecordString;
}

//: 正在呼叫您
+ (NSString *)kText_showRangeData {
    /* static */ NSString *kText_showRangeData = nil;
    if (!kText_showRangeData) {
		NSString *origin = @"C8838DCBB286CBBF92CBA185C8AC86E7";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){46, (Byte *)data.bytes, 15, 76};
        kText_showRangeData = [self StringFromDeviceData:&value];
    }
    return kText_showRangeData;
}

//: teamType
+ (NSString *)kNameMonthValue {
    /* static */ NSString *kNameMonthValue = nil;
    if (!kNameMonthValue) {
		NSString *origin = @"FFEEEAE6DFF2FBEE2C";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){139, (Byte *)data.bytes, 8, 111};
        kNameMonthValue = [self StringFromDeviceData:&value];
    }
    return kNameMonthValue;
}

+ (Byte *)DeviceDataToByte:(StructDeviceData *)data {
    for (int i = 0; i < data->viewLoop; i++) {
        data->month[i] ^= data->viewProgress;
    }
    data->month[data->viewLoop] = 0;
	if (data->viewLoop >= 1) {
		data->frameStandard = data->month[0];
	}
    return data->month;
}

+ (NSData *)DeviceDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: members
+ (NSString *)kText_cellString {
    /* static */ NSString *kText_cellString = nil;
    if (!kText_cellString) {
		NSString *origin = @"3C343C333423221F";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){81, (Byte *)data.bytes, 7, 61};
        kText_cellString = [self StringFromDeviceData:&value];
    }
    return kText_cellString;
}

//: Group
+ (NSString *)kTitleStopString {
    /* static */ NSString *kTitleStopString = nil;
    if (!kTitleStopString) {
		NSString *origin = @"497C617B7E99";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){14, (Byte *)data.bytes, 5, 157};
        kTitleStopString = [self StringFromDeviceData:&value];
    }
    return kTitleStopString;
}

//: teamId
+ (NSString *)kTitleKnowHideName {
    /* static */ NSString *kTitleKnowHideName = nil;
    if (!kTitleKnowHideName) {
		NSString *origin = @"9C8D8985A18C6F";
		NSData *data = [DeviceData DeviceDataToData:origin];
        StructDeviceData value = (StructDeviceData){232, (Byte *)data.bytes, 6, 149};
        kTitleKnowHideName = [self StringFromDeviceData:&value];
    }
    return kTitleKnowHideName;
}

+ (NSString *)StringFromDeviceData:(StructDeviceData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeviceDataToByte:data]];
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERCustomSysNotificationSender.h"
#import "CornerFlipFlush.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"

//: @interface USERCustomSysNotificationSender ()
@interface CornerFlipFlush ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation USERCustomSysNotificationSender
@implementation CornerFlipFlush

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)location:(NSString *)content assemblage:(NIMSession *)session{
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
                           @"content" : content,
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
    //: notification.env = [[USERBundleSetting sharedConfig] messageEnv];
    notification.env = [[UserLabelMan user] click];
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


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)center:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    style:(NSString *)roomName
                     //: members:(NSArray *)members
                     pictureOff:(NSArray *)members
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
                           [DeviceData kText_cellString] : members,
                           //: @"teamId" : teamId,
                           [DeviceData kTitleKnowHideName] : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [DeviceData kTextRecordString] : team.teamName? team.teamName : [DeviceData kTitleStopString],
                           //: @"room" : roomName,
                           [DeviceData kName_frameMessageString] : roomName,
                           //: @"teamType" : @(teamType)
                           [DeviceData kNameMonthValue] : @(teamType)
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
    //: notification.env = [[USERBundleSetting sharedConfig] messageEnv];
    notification.env = [[UserLabelMan user] click];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    CancelTeamCorner *me = [[Mortification text] tingVoice:[NIMSDK sharedSDK].loginManager.currentAccount keepingOption:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".user_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[DeviceData kText_showRangeData].nominate];
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


//: - (void)sendTypingState:(NIMSession *)session
- (void)forename:(NIMSession *)session
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
        //: notification.env = [[USERBundleSetting sharedConfig] messageEnv];
        notification.env = [[UserLabelMan user] click];
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




//: @end
@end
//: __SAVE__ ignore_string [763.7]