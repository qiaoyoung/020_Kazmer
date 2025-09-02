
#import <Foundation/Foundation.h>

@interface MoleFrameData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MoleFrameData

//: encrypted
- (NSString *)kTitleModelData {
    /* static */ NSString *kTitleModelData = nil;
    if (!kTitleModelData) {
		NSString *origin = @"0905F1B6D3646574707972636E659A";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleModelData = [self StringFromMoleFrameData:value];
    }
    return kTitleModelData;
}

- (Byte *)MoleFrameDataToCache:(Byte *)data {
    int endMonth = data[0];
    int messageTool = data[1];
    for (int i = 0; i < endMonth / 2; i++) {
        int begin = messageTool + i;
        int end = messageTool + endMonth - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[messageTool + endMonth] = 0;
    return data + messageTool;
}

//: fileName
- (NSString *)kTextItemString {
    /* static */ NSString *kTextItemString = nil;
    if (!kTextItemString) {
		NSString *origin = @"080A56D9DEB397474DC1656D614E656C6966E2";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextItemString = [self StringFromMoleFrameData:value];
    }
    return kTextItemString;
}

+ (instancetype)sharedInstance {
    static MoleFrameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}  

//: redPacketId
- (NSString *)kTitle_mainString {
    /* static */ NSString *kTitle_mainString = nil;
    if (!kTitle_mainString) {
		NSString *origin = @"0B079B646279D3644974656B63615064657271";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_mainString = [self StringFromMoleFrameData:value];
    }
    return kTitle_mainString;
}

//: redPacketSendID
- (NSString *)kName_fileText {
    /* static */ NSString *kName_fileText = nil;
    if (!kName_fileText) {
		NSString *origin = @"0F0615139A114449646E655374656B63615064657235";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fileText = [self StringFromMoleFrameData:value];
    }
    return kName_fileText;
}

//: sessionName
- (NSString *)kTitleInventString {
    /* static */ NSString *kTitleInventString = nil;
    if (!kTitleInventString) {
		NSString *origin = @"0B02656D614E6E6F69737365736B";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleInventString = [self StringFromMoleFrameData:value];
    }
    return kTitleInventString;
}

//: fired
- (NSString *)kNameWithData {
    /* static */ NSString *kNameWithData = nil;
    if (!kNameWithData) {
		NSString *origin = @"050B7D084B327A74C7805664657269666E";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameWithData = [self StringFromMoleFrameData:value];
    }
    return kNameWithData;
}

//: md5
- (NSString *)kTitleMoleDetailString {
    /* static */ NSString *kTitleMoleDetailString = nil;
    if (!kTitleMoleDetailString) {
		NSString *origin = @"03042C5D35646D9F";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMoleDetailString = [self StringFromMoleFrameData:value];
    }
    return kTitleMoleDetailString;
}

//: sendPacketId
- (NSString *)kText_stopContentData {
    /* static */ NSString *kText_stopContentData = nil;
    if (!kText_stopContentData) {
		NSString *origin = @"0C0371644974656B636150646E657322";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_stopContentData = [self StringFromMoleFrameData:value];
    }
    return kText_stopContentData;
}

+ (NSData *)MoleFrameDataToData:(NSString *)value {
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

//: sessionId
- (NSString *)kTextTapCommitName {
    /* static */ NSString *kTextTapCommitName = nil;
    if (!kTextTapCommitName) {
		NSString *origin = @"0908A904200AC5D464496E6F69737365732C";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTapCommitName = [self StringFromMoleFrameData:value];
    }
    return kTextTapCommitName;
}

//: compressed
- (NSString *)kText_violenceContent {
    /* static */ NSString *kText_violenceContent = nil;
    if (!kText_violenceContent) {
		NSString *origin = @"0A08DAA5F388B153646573736572706D6F6336";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_violenceContent = [self StringFromMoleFrameData:value];
    }
    return kText_violenceContent;
}

//: personCardId
- (NSString *)kTitle_progressData {
    /* static */ NSString *kTitle_progressData = nil;
    if (!kTitle_progressData) {
		NSString *origin = @"0C089CAE9DCB63CE6449647261436E6F737265704B";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_progressData = [self StringFromMoleFrameData:value];
    }
    return kTitle_progressData;
}

- (NSString *)StringFromMoleFrameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MoleFrameDataToCache:data]];
}

//: type
- (NSString *)kContent_withName {
    /* static */ NSString *kContent_withName = nil;
    if (!kContent_withName) {
		NSString *origin = @"040808E8BFB002946570797425";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_withName = [self StringFromMoleFrameData:value];
    }
    return kContent_withName;
}

//: messageAbstract
- (NSString *)kText_chickAtString {
    /* static */ NSString *kText_chickAtString = nil;
    if (!kText_chickAtString) {
		NSString *origin = @"0F0274636172747362416567617373656D2D";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_chickAtString = [self StringFromMoleFrameData:value];
    }
    return kText_chickAtString;
}

//: password
- (NSString *)kText_standardStableString {
    /* static */ NSString *kText_standardStableString = nil;
    if (!kText_standardStableString) {
		NSString *origin = @"0805B37D4664726F77737361705A";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_standardStableString = [self StringFromMoleFrameData:value];
    }
    return kText_standardStableString;
}

//: isGetDone
- (NSString *)kName_consumptionData {
    /* static */ NSString *kName_consumptionData = nil;
    if (!kName_consumptionData) {
		NSString *origin = @"0902656E6F44746547736944";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_consumptionData = [self StringFromMoleFrameData:value];
    }
    return kName_consumptionData;
}

//: openPacketId
- (NSString *)kNameCurrentContentData {
    /* static */ NSString *kNameCurrentContentData = nil;
    if (!kNameCurrentContentData) {
		NSString *origin = @"0C03E9644974656B6361506E65706F5D";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCurrentContentData = [self StringFromMoleFrameData:value];
    }
    return kNameCurrentContentData;
}

//: url
- (NSString *)kContentPinShowValue {
    /* static */ NSString *kContentPinShowValue = nil;
    if (!kContentPinShowValue) {
		NSString *origin = @"030CA452DFCC5DBC8AB35F696C727586";
		NSData *data = [MoleFrameData MoleFrameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPinShowValue = [self StringFromMoleFrameData:value];
    }
    return kContentPinShowValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelMessage.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERCustomAttachmentDecoder.h"
#import "LabelMessage.h"
//: #import "USERCustomAttachmentDefines.h"
#import "USERCustomAttachmentDefines.h"
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERMultiRetweetAttachment.h"
#import "SessionWith.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "USERShareCardAttachment.h"
#import "ProfitsToAttachmentColor.h"

//: @implementation USERCustomAttachmentDecoder
@implementation LabelMessage
//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)user:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[USERJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[GlossAttachment class]])
    {
        //: NSInteger value = [((USERJanKenPonAttachment *)attachment) value];
        NSInteger value = [((GlossAttachment *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[USERSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[DigitizerAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[USERShareCardAttachment class]])
    else if ([attachment isKindOfClass:[ProfitsToAttachmentColor class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[USERWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[MessageAttachment class]])
    {
        //: NSInteger flag = [((USERWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((MessageAttachment *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[USERRedPacketAttachment class]] || [attachment isKindOfClass:[USERRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[LabelTagContext class]] || [attachment isKindOfClass:[ContentAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[USERMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[SessionWith class]])
    {
        //: USERMultiRetweetAttachment *target = (USERMultiRetweetAttachment *)attachment;
        SessionWith *target = (SessionWith *)attachment;
        //: if (target.messageAbstract.count == 0) {
        if (target.messageAbstract.count == 0) {
            //: check = NO;
            check = NO;
        //: } else if (target.encrypted && target.password.length == 0) {
        } else if (target.encrypted && target.password.length == 0) {
            //: check = NO;
            check = NO;
        //: } else {
        } else {
            //: check = YES;
            check = YES;
        }
    }
    //: return check;
    return check;
}


//: - (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
{
    //: id<NIMCustomAttachment> attachment = nil;
    id<NIMCustomAttachment> attachment = nil;

    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [dict jsonInteger:@"type"];
            NSInteger type = [dict immobilise:[[MoleFrameData sharedInstance] kContent_withName]];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict dict:@"data"];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[USERJanKenPonAttachment alloc] init];
                    attachment = [[GlossAttachment alloc] init];
                    //: ((USERJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((GlossAttachment *)attachment).value = [data immobilise:@"value"];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[USERSnapchatAttachment alloc] init];
                    attachment = [[DigitizerAttachment alloc] init];
                    //: ((USERSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((DigitizerAttachment *)attachment).md5 = [data changeRange:[[MoleFrameData sharedInstance] kTitleMoleDetailString]];
                    //: ((USERSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((DigitizerAttachment *)attachment).url = [data changeRange:[[MoleFrameData sharedInstance] kContentPinShowValue]];
                    //: ((USERSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((DigitizerAttachment *)attachment).isFired = [data last:[[MoleFrameData sharedInstance] kNameWithData]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[USERWhiteboardAttachment alloc] init];
                    attachment = [[MessageAttachment alloc] init];
                    //: ((USERWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((MessageAttachment *)attachment).flag = [data immobilise:@"flag"];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[USERRedPacketAttachment alloc] init];
                    attachment = [[LabelTagContext alloc] init];
                    //: ((USERRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((LabelTagContext *)attachment).title = [data changeRange:@"title"];
                    //: ((USERRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((LabelTagContext *)attachment).content = [data changeRange:@"content"];
                    //: ((USERRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((LabelTagContext *)attachment).redPacketId = [data changeRange:[[MoleFrameData sharedInstance] kTitle_mainString]];
                    //: ((USERRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((LabelTagContext *)attachment).sendID = [data changeRange:[[MoleFrameData sharedInstance] kName_fileText]];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[USERRedPacketTipAttachment alloc] init];
                    attachment = [[ContentAttachment alloc] init];
                    //: ((USERRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((ContentAttachment *)attachment).sendPacketId = [data changeRange:[[MoleFrameData sharedInstance] kText_stopContentData]];
                    //: ((USERRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((ContentAttachment *)attachment).packetId = [data changeRange:[[MoleFrameData sharedInstance] kTitle_mainString]];
                    //: ((USERRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((ContentAttachment *)attachment).isGetDone = [data changeRange:[[MoleFrameData sharedInstance] kName_consumptionData]];
                    //: ((USERRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((ContentAttachment *)attachment).openPacketId = [data changeRange:[[MoleFrameData sharedInstance] kNameCurrentContentData]];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[USERMultiRetweetAttachment alloc] init];
                    attachment = [[SessionWith alloc] init];
                    //: ((USERMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((SessionWith *)attachment).url = [data changeRange:[[MoleFrameData sharedInstance] kContentPinShowValue]];
                    //: ((USERMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((SessionWith *)attachment).md5 = [data changeRange:[[MoleFrameData sharedInstance] kTitleMoleDetailString]];
                    //: ((USERMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((SessionWith *)attachment).fileName = [data changeRange:[[MoleFrameData sharedInstance] kTextItemString]];
                    //: ((USERMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((SessionWith *)attachment).compressed = [data last:[[MoleFrameData sharedInstance] kText_violenceContent]];
                    //: ((USERMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((SessionWith *)attachment).encrypted = [data last:[[MoleFrameData sharedInstance] kTitleModelData]];
                    //: ((USERMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((SessionWith *)attachment).password = [data changeRange:[[MoleFrameData sharedInstance] kText_standardStableString]];
                    //: ((USERMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((SessionWith *)attachment).messageAbstract = [data step:[[MoleFrameData sharedInstance] kText_chickAtString]];
                    //: ((USERMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((SessionWith *)attachment).sessionName = [data changeRange:[[MoleFrameData sharedInstance] kTitleInventString]];
                    //: ((USERMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((SessionWith *)attachment).sessionId = [data changeRange:[[MoleFrameData sharedInstance] kTextTapCommitName]];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[USERShareCardAttachment alloc] init];
                    attachment = [[ProfitsToAttachmentColor alloc] init];
                    //: ((USERShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((ProfitsToAttachmentColor *)attachment).title = [data changeRange:@"title"];
                    //: ((USERShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((ProfitsToAttachmentColor *)attachment).type = [data changeRange:[[MoleFrameData sharedInstance] kContent_withName]];
                    //: ((USERShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((ProfitsToAttachmentColor *)attachment).content = [data changeRange:@"content"];
                    //: ((USERShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((ProfitsToAttachmentColor *)attachment).personCardId = [data changeRange:[[MoleFrameData sharedInstance] kTitle_progressData]];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self user:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}
//: @end
@end
//: __SAVE__ ignore_string [541.5,763.7,546.5,410.4]