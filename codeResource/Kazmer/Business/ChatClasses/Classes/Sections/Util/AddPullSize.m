
#import <Foundation/Foundation.h>

@interface TruthData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TruthData

+ (instancetype)sharedInstance {
    static TruthData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TruthDataToCache:(Byte *)data {
    int huhValid = data[0];
    Byte except = data[1];
    int countd = data[2];
    for (int i = countd; i < countd + huhValid; i++) {
        int value = data[i] - except;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[countd + huhValid] = 0;
    return data + countd;
}

- (NSString *)StringFromTruthData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TruthDataToCache:data]];
}

//: teamgonggao_content_
- (NSString *)kContent_exceptCurrentString {
    /* static */ NSString *kContent_exceptCurrentString = nil;
    if (!kContent_exceptCurrentString) {
        Byte value[] = {20, 16, 13, 187, 242, 39, 108, 216, 10, 246, 79, 27, 15, 132, 117, 113, 125, 119, 127, 126, 119, 119, 113, 127, 111, 115, 127, 126, 132, 117, 126, 132, 111, 224};
        kContent_exceptCurrentString = [self StringFromTruthData:value];
    }
    return kContent_exceptCurrentString;
}

//: Group_information_update
- (NSString *)kTitle_monthString {
    /* static */ NSString *kTitle_monthString = nil;
    if (!kTitle_monthString) {
        Byte value[] = {24, 39, 7, 243, 69, 144, 162, 110, 153, 150, 156, 151, 134, 144, 149, 141, 150, 153, 148, 136, 155, 144, 150, 149, 134, 156, 151, 139, 136, 155, 140, 250};
        kTitle_monthString = [self StringFromTruthData:value];
    }
    return kTitle_monthString;
}

//: Internet_call
- (NSString *)kContentFileString {
    /* static */ NSString *kContentFileString = nil;
    if (!kContentFileString) {
        Byte value[] = {13, 62, 11, 33, 124, 235, 236, 185, 28, 241, 176, 135, 172, 178, 163, 176, 172, 163, 178, 157, 161, 159, 170, 170, 19};
        kContentFileString = [self StringFromTruthData:value];
    }
    return kContentFileString;
}

//: teamgonggao_record_
- (NSString *)kContent_retiredSendString {
    /* static */ NSString *kContent_retiredSendString = nil;
    if (!kContent_retiredSendString) {
        Byte value[] = {19, 16, 10, 42, 199, 124, 41, 135, 167, 75, 132, 117, 113, 125, 119, 127, 126, 119, 119, 113, 127, 111, 130, 117, 115, 127, 130, 116, 111, 245};
        kContent_retiredSendString = [self StringFromTruthData:value];
    }
    return kContent_retiredSendString;
}

//: Group_chat_information_update
- (NSString *)kText_posterData {
    /* static */ NSString *kText_posterData = nil;
    if (!kText_posterData) {
        Byte value[] = {29, 96, 3, 167, 210, 207, 213, 208, 191, 195, 200, 193, 212, 191, 201, 206, 198, 207, 210, 205, 193, 212, 201, 207, 206, 191, 213, 208, 196, 193, 212, 197, 104};
        kText_posterData = [self StringFromTruthData:value];
    }
    return kText_posterData;
}

//: Audio
- (NSString *)kNameDemonstrationDiaryString {
    /* static */ NSString *kNameDemonstrationDiaryString = nil;
    if (!kNameDemonstrationDiaryString) {
        Byte value[] = {5, 47, 9, 89, 13, 189, 128, 1, 225, 112, 164, 147, 152, 158, 76};
        kNameDemonstrationDiaryString = [self StringFromTruthData:value];
    }
    return kNameDemonstrationDiaryString;
}

//: teamgonggao_
- (NSString *)kTextDayString {
    /* static */ NSString *kTextDayString = nil;
    if (!kTextDayString) {
        Byte value[] = {12, 27, 4, 141, 143, 128, 124, 136, 130, 138, 137, 130, 130, 124, 138, 122, 207};
        kTextDayString = [self StringFromTruthData:value];
    }
    return kTextDayString;
}

//: teamgonggao_title_
- (NSString *)kTitleViolationColorValue {
    /* static */ NSString *kTitleViolationColorValue = nil;
    if (!kTitleViolationColorValue) {
        Byte value[] = {18, 5, 8, 22, 245, 20, 166, 237, 121, 106, 102, 114, 108, 116, 115, 108, 108, 102, 116, 100, 121, 110, 121, 113, 106, 100, 147};
        kTitleViolationColorValue = [self StringFromTruthData:value];
    }
    return kTitleViolationColorValue;
}

//: File
- (NSString *)kTextPigString {
    /* static */ NSString *kTextPigString = nil;
    if (!kTextPigString) {
        Byte value[] = {4, 51, 13, 250, 95, 29, 24, 152, 103, 78, 11, 14, 116, 121, 156, 159, 152, 253};
        kTextPigString = [self StringFromTruthData:value];
    }
    return kTextPigString;
}

//: Location
- (NSString *)kName_topText {
    /* static */ NSString *kName_topText = nil;
    if (!kName_topText) {
        Byte value[] = {8, 13, 3, 89, 124, 112, 110, 129, 118, 124, 123, 230};
        kName_topText = [self StringFromTruthData:value];
    }
    return kName_topText;
}

//: Super_Group_Information_Update
- (NSString *)kName_legationValue {
    /* static */ NSString *kName_legationValue = nil;
    if (!kName_legationValue) {
        Byte value[] = {30, 99, 6, 52, 241, 153, 182, 216, 211, 200, 213, 194, 170, 213, 210, 216, 211, 194, 172, 209, 201, 210, 213, 208, 196, 215, 204, 210, 209, 194, 184, 211, 199, 196, 215, 200, 112};
        kName_legationValue = [self StringFromTruthData:value];
    }
    return kName_legationValue;
}

//: Video
- (NSString *)kTitleSenString {
    /* static */ NSString *kTitleSenString = nil;
    if (!kTitleSenString) {
        Byte value[] = {5, 19, 9, 34, 188, 194, 228, 190, 44, 105, 124, 119, 120, 130, 71};
        kTitleSenString = [self StringFromTruthData:value];
    }
    return kTitleSenString;
}

//: Image
- (NSString *)kTitle_shooName {
    /* static */ NSString *kTitle_shooName = nil;
    if (!kTitle_shooName) {
        Byte value[] = {5, 11, 7, 96, 64, 210, 139, 84, 120, 108, 114, 112, 56};
        kTitle_shooName = [self StringFromTruthData:value];
    }
    return kTitle_shooName;
}

//: Video_chat
- (NSString *)kTextCookingData {
    /* static */ NSString *kTextCookingData = nil;
    if (!kTextCookingData) {
        Byte value[] = {10, 94, 11, 21, 56, 55, 4, 43, 176, 48, 51, 180, 199, 194, 195, 205, 189, 193, 198, 191, 210, 242};
        kTextCookingData = [self StringFromTruthData:value];
    }
    return kTextCookingData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddPullSize.m
// Mortification
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageUtil.h"
#import "AddPullSize.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Mortification.h"

//: @implementation FFFMessageUtil
@implementation AddPullSize

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)nearExtra:(NIMMessage*)message {
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
            //: text = [FFFLanguageManager getTextWithKey:@"Audio"]; 
            text = [MakeManager cell:[[TruthData sharedInstance] kNameDemonstrationDiaryString]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [FFFLanguageManager getTextWithKey:@"Image"];
            text = [MakeManager cell:[[TruthData sharedInstance] kTitle_shooName]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [FFFLanguageManager getTextWithKey:@"Video"];
            text = [MakeManager cell:[[TruthData sharedInstance] kTitleSenString]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [FFFLanguageManager getTextWithKey:@"Location"];
            text = [MakeManager cell:[[TruthData sharedInstance] kName_topText]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self leave:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [FFFLanguageManager getTextWithKey:@"File"];
            text = [MakeManager cell:[[TruthData sharedInstance] kTextPigString]];//@"[文件]".;
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
            //: return (record.callType == NIMRtcCallTypeAudio ? [FFFLanguageManager getTextWithKey:@"Internet_call"] : [FFFLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [MakeManager cell:[[TruthData sharedInstance] kContentFileString]] : [MakeManager cell:[[TruthData sharedInstance] kTextCookingData]]);
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
+ (NSString *)leave:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [FFFLanguageManager getTextWithKey:@"Internet_call"];
            return [MakeManager cell:[[TruthData sharedInstance] kContentFileString]];//@"[网络通话]".;
        }
        //: return [FFFLanguageManager getTextWithKey:@"Video_chat"];
        return [MakeManager cell:[[TruthData sharedInstance] kTextCookingData]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [FFFLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [MakeManager cell:[[TruthData sharedInstance] kText_posterData]];//@"[讨论组信息更新]".;
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
                                        title=[datas lastObject][@"title"];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][@"content"];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[TruthData sharedInstance] kContent_retiredSendString],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[TruthData sharedInstance] kContent_retiredSendString],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[TruthData sharedInstance] kTextDayString],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[[TruthData sharedInstance] kTitleViolationColorValue],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[[TruthData sharedInstance] kContent_exceptCurrentString],message.session.sessionId]];
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

            //: return [FFFLanguageManager getTextWithKey:@"Group_information_update"];
            return [MakeManager cell:[[TruthData sharedInstance] kTitle_monthString]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [FFFLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [MakeManager cell:[[TruthData sharedInstance] kName_legationValue]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end
//: __SAVE__ ignore_string [763.7,546.5]