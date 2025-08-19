
#import <Foundation/Foundation.h>

NSString *StringFromSilverData(Byte *data);


//: home_fragment_yue
Byte dream_towardsMessageValue[] = {47, 17, 73, 6, 153, 97, 177, 184, 182, 174, 168, 175, 187, 170, 176, 182, 174, 183, 189, 168, 194, 190, 174, 189};

//: message_guess
Byte kCompanyUrl[] = {96, 13, 68, 10, 2, 209, 72, 34, 51, 151, 177, 169, 183, 183, 165, 171, 169, 163, 171, 185, 169, 183, 183, 165};

//: person_card
Byte user_bookTitle[] = {55, 11, 40, 6, 98, 252, 152, 141, 154, 155, 151, 150, 135, 139, 137, 154, 140, 6};

//: group_card
Byte m_hunterCenterData[] = {49, 10, 28, 14, 196, 33, 198, 60, 87, 24, 156, 143, 58, 61, 131, 142, 139, 145, 140, 123, 127, 125, 142, 128, 143};

//: home_fragment_bai
Byte noti_cedeData[] = {66, 17, 57, 9, 78, 59, 32, 37, 214, 161, 168, 166, 158, 152, 159, 171, 154, 160, 166, 158, 167, 173, 152, 155, 154, 162, 206};

//: message_red_packet
Byte showColorMessage[] = {6, 18, 45, 5, 168, 154, 146, 160, 160, 142, 148, 146, 140, 159, 146, 145, 140, 157, 142, 144, 152, 146, 161, 203};

//: home_fragment_liao
Byte app_capitalUrl[] = {20, 18, 77, 14, 3, 179, 48, 170, 12, 118, 49, 102, 198, 231, 181, 188, 186, 178, 172, 179, 191, 174, 180, 186, 178, 187, 193, 172, 185, 182, 174, 188, 7};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NonsolidColorView.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "NonsolidColorView.h"
//: #import "FFFMessageUtil.h"
#import "UtilPage.h"
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"

//: @implementation NTESMessageUtil
@implementation NonsolidColorView

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)randomDown:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self send:message];
    //: } else {
    } else {
        //: text = [FFFMessageUtil messageContent:message];
        text = [UtilPage text:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)send:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[WeltanschauungAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(dream_towardsMessageValue)];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[ObjectAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_guess"];
        text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(kCompanyUrl)];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[InfoAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(noti_cedeData)];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[InfoMessageBackground class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_red_packet"];
        text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(showColorMessage)];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[ReplacementAttachment class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        ReplacementAttachment *attach = (ReplacementAttachment *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.afterHolderMessage;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[ShowImageEvent class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(app_capitalUrl)];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[KeyAttachment class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        KeyAttachment *cardAtt = (KeyAttachment *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [FFFLanguageManager getTextWithKey:@"group_card"];
            text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(m_hunterCenterData)];
        //: } else {
        } else {
            //: text = [FFFLanguageManager getTextWithKey:@"person_card"];
            text = [PaintedNaturalLanguageTo exhibit:StringFromSilverData(user_bookTitle)];
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
//: @end
@end

Byte * SilverDataToCache(Byte *data) {
    int everything = data[0];
    int tying = data[1];
    Byte championNowhere = data[2];
    int canister = data[3];
    if (!everything) return data + canister;
    for (int i = canister; i < canister + tying; i++) {
        int value = data[i] - championNowhere;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[canister + tying] = 0;
    return data + canister;
}

NSString *StringFromSilverData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SilverDataToCache(data)];
}
