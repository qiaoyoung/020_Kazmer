
#import <Foundation/Foundation.h>

typedef struct {
    Byte memoryRegard;
    Byte *threshPetition;
    unsigned int changeView;
} StructVictimData;

@interface VictimData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation VictimData

+ (instancetype)sharedInstance {
    static VictimData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VictimDataToByte:(StructVictimData *)data {
    for (int i = 0; i < data->changeView; i++) {
        data->threshPetition[i] ^= data->memoryRegard;
    }
    data->threshPetition[data->changeView] = 0;
    return data->threshPetition;
}

- (NSString *)StringFromVictimData:(StructVictimData *)data {
    return [NSString stringWithUTF8String:(char *)[self VictimDataToByte:data]];
}

//: Super_Group_Information_Update
- (NSString *)k_duringKey {
    /* static */ NSString *k_duringKey = nil;
    if (!k_duringKey) {
        StructVictimData value = (StructVictimData){93, (Byte []){14, 40, 45, 56, 47, 2, 26, 47, 50, 40, 45, 2, 20, 51, 59, 50, 47, 48, 60, 41, 52, 50, 51, 2, 8, 45, 57, 60, 41, 56, 32}, 30};
        k_duringKey = [self StringFromVictimData:&value];
    }
    return k_duringKey;
}

//: Group_chat_information_update
- (NSString *)mainDeliverUrl {
    /* static */ NSString *mainDeliverUrl = nil;
    if (!mainDeliverUrl) {
        StructVictimData value = (StructVictimData){97, (Byte []){38, 19, 14, 20, 17, 62, 2, 9, 0, 21, 62, 8, 15, 7, 14, 19, 12, 0, 21, 8, 14, 15, 62, 20, 17, 5, 0, 21, 4, 47}, 29};
        mainDeliverUrl = [self StringFromVictimData:&value];
    }
    return mainDeliverUrl;
}

//: title
- (NSString *)mainFreedKey {
    /* static */ NSString *mainFreedKey = nil;
    if (!mainFreedKey) {
        StructVictimData value = (StructVictimData){73, (Byte []){61, 32, 61, 37, 44, 87}, 5};
        mainFreedKey = [self StringFromVictimData:&value];
    }
    return mainFreedKey;
}

//: Video_chat
- (NSString *)kParishUrl {
    /* static */ NSString *kParishUrl = nil;
    if (!kParishUrl) {
        StructVictimData value = (StructVictimData){154, (Byte []){204, 243, 254, 255, 245, 197, 249, 242, 251, 238, 85}, 10};
        kParishUrl = [self StringFromVictimData:&value];
    }
    return kParishUrl;
}

//: teamgonggao_
- (NSString *)m_educationalData {
    /* static */ NSString *m_educationalData = nil;
    if (!m_educationalData) {
        StructVictimData value = (StructVictimData){126, (Byte []){10, 27, 31, 19, 25, 17, 16, 25, 25, 31, 17, 33, 226}, 12};
        m_educationalData = [self StringFromVictimData:&value];
    }
    return m_educationalData;
}

//: teamgonggao_title_
- (NSString *)userIqStr {
    /* static */ NSString *userIqStr = nil;
    if (!userIqStr) {
        StructVictimData value = (StructVictimData){192, (Byte []){180, 165, 161, 173, 167, 175, 174, 167, 167, 161, 175, 159, 180, 169, 180, 172, 165, 159, 190}, 18};
        userIqStr = [self StringFromVictimData:&value];
    }
    return userIqStr;
}

//: teamgonggao_content_
- (NSString *)app_oakStr {
    /* static */ NSString *app_oakStr = nil;
    if (!app_oakStr) {
        StructVictimData value = (StructVictimData){106, (Byte []){30, 15, 11, 7, 13, 5, 4, 13, 13, 11, 5, 53, 9, 5, 4, 30, 15, 4, 30, 53, 187}, 20};
        app_oakStr = [self StringFromVictimData:&value];
    }
    return app_oakStr;
}

//: Image
- (NSString *)k_fearData {
    /* static */ NSString *k_fearData = nil;
    if (!k_fearData) {
        StructVictimData value = (StructVictimData){144, (Byte []){217, 253, 241, 247, 245, 113}, 5};
        k_fearData = [self StringFromVictimData:&value];
    }
    return k_fearData;
}

//: Internet_call
- (NSString *)user_isolateMessage {
    /* static */ NSString *user_isolateMessage = nil;
    if (!user_isolateMessage) {
        StructVictimData value = (StructVictimData){12, (Byte []){69, 98, 120, 105, 126, 98, 105, 120, 83, 111, 109, 96, 96, 84}, 13};
        user_isolateMessage = [self StringFromVictimData:&value];
    }
    return user_isolateMessage;
}

//: Video
- (NSString *)mainConventTitle {
    /* static */ NSString *mainConventTitle = nil;
    if (!mainConventTitle) {
        StructVictimData value = (StructVictimData){151, (Byte []){193, 254, 243, 242, 248, 98}, 5};
        mainConventTitle = [self StringFromVictimData:&value];
    }
    return mainConventTitle;
}

//: Audio
- (NSString *)kValidityAirFormat {
    /* static */ NSString *kValidityAirFormat = nil;
    if (!kValidityAirFormat) {
        StructVictimData value = (StructVictimData){180, (Byte []){245, 193, 208, 221, 219, 228}, 5};
        kValidityAirFormat = [self StringFromVictimData:&value];
    }
    return kValidityAirFormat;
}

//: File
- (NSString *)kInstructionalIdent {
    /* static */ NSString *kInstructionalIdent = nil;
    if (!kInstructionalIdent) {
        StructVictimData value = (StructVictimData){70, (Byte []){0, 47, 42, 35, 238}, 4};
        kInstructionalIdent = [self StringFromVictimData:&value];
    }
    return kInstructionalIdent;
}

//: Location
- (NSString *)showUglyName {
    /* static */ NSString *showUglyName = nil;
    if (!showUglyName) {
        StructVictimData value = (StructVictimData){112, (Byte []){60, 31, 19, 17, 4, 25, 31, 30, 157}, 8};
        showUglyName = [self StringFromVictimData:&value];
    }
    return showUglyName;
}

//: Group_information_update
- (NSString *)showBoostId {
    /* static */ NSString *showBoostId = nil;
    if (!showBoostId) {
        StructVictimData value = (StructVictimData){166, (Byte []){225, 212, 201, 211, 214, 249, 207, 200, 192, 201, 212, 203, 199, 210, 207, 201, 200, 249, 211, 214, 194, 199, 210, 195, 140}, 24};
        showBoostId = [self StringFromVictimData:&value];
    }
    return showBoostId;
}

//: teamgonggao_record_
- (NSString *)userCropContent {
    /* static */ NSString *userCropContent = nil;
    if (!userCropContent) {
        StructVictimData value = (StructVictimData){236, (Byte []){152, 137, 141, 129, 139, 131, 130, 139, 139, 141, 131, 179, 158, 137, 143, 131, 158, 136, 179, 175}, 19};
        userCropContent = [self StringFromVictimData:&value];
    }
    return userCropContent;
}

//: content
- (NSString *)showHormoneStr {
    /* static */ NSString *showHormoneStr = nil;
    if (!showHormoneStr) {
        StructVictimData value = (StructVictimData){55, (Byte []){84, 88, 89, 67, 82, 89, 67, 110}, 7};
        showHormoneStr = [self StringFromVictimData:&value];
    }
    return showHormoneStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilPage.m
// ButtonKit
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchMessageUtil.h"
#import "UtilPage.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+ButtonKit.h"

//: @implementation WatchMessageUtil
@implementation UtilPage

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)text:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [WatchLanguageManager getTextWithKey:@"Audio"]; 
            text = [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] kValidityAirFormat]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [WatchLanguageManager getTextWithKey:@"Image"];
            text = [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] k_fearData]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [WatchLanguageManager getTextWithKey:@"Video"];
            text = [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] mainConventTitle]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [WatchLanguageManager getTextWithKey:@"Location"];
            text = [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] showUglyName]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self conference:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [WatchLanguageManager getTextWithKey:@"File"];
            text = [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] kInstructionalIdent]];//@"[文件]".;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [WatchLanguageManager getTextWithKey:@"Internet_call"] : [WatchLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] user_isolateMessage]] : [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] kParishUrl]]);
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)conference:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [WatchLanguageManager getTextWithKey:@"Internet_call"];
            return [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] user_isolateMessage]];//@"[网络通话]".;
        }
        //: return [WatchLanguageManager getTextWithKey:@"Video_chat"];
        return [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] kParishUrl]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [WatchLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] mainDeliverUrl]];//@"[讨论组信息更新]".;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][[[VictimData sharedInstance] mainFreedKey]];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][[[VictimData sharedInstance] showHormoneStr]];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[VictimData sharedInstance] userCropContent],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[VictimData sharedInstance] userCropContent],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[VictimData sharedInstance] m_educationalData],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[[VictimData sharedInstance] userIqStr],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[[VictimData sharedInstance] app_oakStr],message.session.sessionId]];
                                        }

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

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [WatchLanguageManager getTextWithKey:@"Group_information_update"];
            return [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] showBoostId]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [WatchLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [PaintedNaturalLanguageTo exhibit:[[VictimData sharedInstance] k_duringKey]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end
