
#import <Foundation/Foundation.h>

NSString *StringFromApseData(Byte *data);


//: home_fragment_liao
Byte kName_movieValue[] = {86, 18, 8, 56, 61, 152, 242, 59, 111, 97, 105, 108, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 88};

//: home_fragment_yue
Byte kName_detailedText[] = {67, 17, 4, 225, 101, 117, 121, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 9};

//: message_red_packet
Byte kNameEquivalentValue[] = {72, 18, 13, 196, 49, 35, 229, 85, 248, 106, 247, 213, 187, 116, 101, 107, 99, 97, 112, 95, 100, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 87};

//: group_card
Byte kName_vitaminDetailString[] = {3, 10, 6, 108, 122, 132, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 188};

//: message_guess
Byte kNameSnapGentString[] = {45, 13, 5, 153, 201, 115, 115, 101, 117, 103, 95, 101, 103, 97, 115, 115, 101, 109, 209};

//: home_fragment_bai
Byte kContent_treasureData[] = {67, 17, 11, 197, 51, 10, 56, 181, 76, 192, 171, 105, 97, 98, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 32};

//: person_card
Byte kTitlePaleValue[] = {70, 11, 12, 80, 206, 60, 91, 165, 95, 118, 62, 136, 100, 114, 97, 99, 95, 110, 111, 115, 114, 101, 112, 61};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrimrosePathUtil.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMessageUtil.h"
#import "PrimrosePathUtil.h"
//: #import "FFFMessageUtil.h"
#import "AddPullSize.h"
//: #import "USERShareCardAttachment.h"
#import "ProfitsToAttachmentColor.h"

//: @implementation USERMessageUtil
@implementation PrimrosePathUtil

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)shouldDown:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[USERSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[DigitizerAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [MakeManager cell:StringFromApseData(kName_detailedText)];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[USERJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[GlossAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_guess"];
        text = [MakeManager cell:StringFromApseData(kNameSnapGentString)];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[USERWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[MessageAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [MakeManager cell:StringFromApseData(kContent_treasureData)];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[USERRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[LabelTagContext class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_red_packet"];
        text = [MakeManager cell:StringFromApseData(kNameEquivalentValue)];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[USERRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[ContentAttachment class]])
    {
        //: USERRedPacketTipAttachment *attach = (USERRedPacketTipAttachment *)object.attachment;
        ContentAttachment *attach = (ContentAttachment *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.viewStart;
    }
    //: else if ([object.attachment isKindOfClass:[USERMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[SessionWith class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [MakeManager cell:StringFromApseData(kName_movieValue)];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[USERShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[ProfitsToAttachmentColor class]])
    {
        //: USERShareCardAttachment *cardAtt = (USERShareCardAttachment *)object.attachment;
        ProfitsToAttachmentColor *cardAtt = (ProfitsToAttachmentColor *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [FFFLanguageManager getTextWithKey:@"group_card"];
            text = [MakeManager cell:StringFromApseData(kName_vitaminDetailString)];
        //: } else {
        } else {
            //: text = [FFFLanguageManager getTextWithKey:@"person_card"];
            text = [MakeManager cell:StringFromApseData(kTitlePaleValue)];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)status:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self shouldDown:message];
    //: } else {
    } else {
        //: text = [FFFMessageUtil messageContent:message];
        text = [AddPullSize nearExtra:message];
    }
    //: return text;
    return text;
}
//: @end
@end

Byte * ApseDataToCache(Byte *data) {
    int springMilk = data[0];
    int operaFarmer = data[1];
    int showTitle = data[2];
    if (!springMilk) return data + showTitle;
    for (int i = 0; i < operaFarmer / 2; i++) {
        int begin = showTitle + i;
        int end = showTitle + operaFarmer - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[showTitle + operaFarmer] = 0;
    return data + showTitle;
}

NSString *StringFromApseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ApseDataToCache(data)];
}  
