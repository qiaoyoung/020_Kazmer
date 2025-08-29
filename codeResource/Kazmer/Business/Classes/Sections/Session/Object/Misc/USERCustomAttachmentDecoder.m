//
//  USERCustomAttachmentDecoder.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "USERCustomAttachmentDecoder.h"
#import "USERCustomAttachmentDefines.h"
#import "USERJanKenPonAttachment.h"
#import "USERSnapchatAttachment.h"
#import "USERWhiteboardAttachment.h"
#import "USERRedPacketAttachment.h"
#import "USERRedPacketTipAttachment.h"
#import "USERMultiRetweetAttachment.h"
#import "NSDictionary+USERJson.h"
#import "USERSessionUtil.h"
#import "USERShareCardAttachment.h"

@implementation USERCustomAttachmentDecoder
- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
{
    id<NIMCustomAttachment> attachment = nil;

    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    if (data) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             options:0
                                                               error:nil];
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            NSInteger type     = [dict jsonInteger:CMType];
            NSDictionary *data = [dict jsonDict:CMData];
            switch (type) {
                case CustomMessageTypeJanKenPon:
                {
                    attachment = [[USERJanKenPonAttachment alloc] init];
                    ((USERJanKenPonAttachment *)attachment).value = [data jsonInteger:CMValue];
                }
                    break;
                case CustomMessageTypeSnapchat:
                {
                    attachment = [[USERSnapchatAttachment alloc] init];
                    ((USERSnapchatAttachment *)attachment).md5 = [data jsonString:CMMD5];
                    ((USERSnapchatAttachment *)attachment).url = [data jsonString:CMURL];
                    ((USERSnapchatAttachment *)attachment).isFired = [data jsonBool:CMFIRE];
                }
                    break;
                case CustomMessageTypeWhiteboard:
                {
                    attachment = [[USERWhiteboardAttachment alloc] init];
                    ((USERWhiteboardAttachment *)attachment).flag = [data jsonInteger:CMFlag];
                }
                    break;
                case CustomMessageTypeRedPacket:
                {
                    attachment = [[USERRedPacketAttachment alloc] init];
                    ((USERRedPacketAttachment *)attachment).title = [data jsonString:CMRedPacketTitle];
                    ((USERRedPacketAttachment *)attachment).content = [data jsonString:CMRedPacketContent];
                    ((USERRedPacketAttachment *)attachment).redPacketId = [data jsonString:CMRedPacketId];
                    ((USERRedPacketAttachment *)attachment).sendID = [data jsonString:CMRedPacketSendID];

                }
                    break;
                case CustomMessageTypeRedPacketTip:
                {
                    attachment = [[USERRedPacketTipAttachment alloc] init];
                    ((USERRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:CMRedPacketSendId];
                    ((USERRedPacketTipAttachment *)attachment).packetId  = [data jsonString:CMRedPacketId];
                    ((USERRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:CMRedPacketDone];
                    ((USERRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:CMRedPacketOpenId];
                }
                    break;
                case CustomMessageTypeMultiRetweet:
                {
                    attachment = [[USERMultiRetweetAttachment alloc] init];
                    ((USERMultiRetweetAttachment *)attachment).url = [data jsonString:CMURL];
                    ((USERMultiRetweetAttachment *)attachment).md5 = [data jsonString:CMMD5];
                    ((USERMultiRetweetAttachment *)attachment).fileName = [data jsonString:CMFileName];
                    ((USERMultiRetweetAttachment *)attachment).compressed = [data jsonBool:CMCompressed];
                    ((USERMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:CMEncrypted];
                    ((USERMultiRetweetAttachment *)attachment).password = [data jsonString:CMPassword];
                    ((USERMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:CMMessageAbstract];
                    ((USERMultiRetweetAttachment *)attachment).sessionName = [data jsonString:CMSessionName];
                    ((USERMultiRetweetAttachment *)attachment).sessionId = [data jsonString:CMSessionId];
                }
                    break;
                    
                case CustomMessageTypeCard:
                {
                    attachment = [[USERShareCardAttachment alloc] init];
                    ((USERShareCardAttachment *)attachment).title = [data jsonString:CMRedPacketTitle];
                    ((USERShareCardAttachment *)attachment).type = [data jsonString:CMPersonCardtype];
                    ((USERShareCardAttachment *)attachment).content = [data jsonString:CMRedPacketContent];
                    ((USERShareCardAttachment *)attachment).personCardId = [data jsonString:CMPersonCardId];
                }
                    break;
                default:
                    break;
            }
            attachment = [self checkAttachment:attachment] ? attachment : nil;
        }
    }
    return attachment;
}


- (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
    BOOL check = NO;
    if ([attachment isKindOfClass:[USERJanKenPonAttachment class]])
    {
        NSInteger value = [((USERJanKenPonAttachment *)attachment) value];
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    else if ([attachment isKindOfClass:[USERSnapchatAttachment class]])
    {
        check = YES;
    }
    else if ([attachment isKindOfClass:[USERShareCardAttachment class]])
    {
        check = YES;
    }
    else if ([attachment isKindOfClass:[USERWhiteboardAttachment class]])
    {
        NSInteger flag = [((USERWhiteboardAttachment *)attachment) flag];
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    else if([attachment isKindOfClass:[USERRedPacketAttachment class]] || [attachment isKindOfClass:[USERRedPacketTipAttachment class]])
    {
        check = YES;
    }
    else if ([attachment isKindOfClass:[USERMultiRetweetAttachment class]])
    {
        USERMultiRetweetAttachment *target = (USERMultiRetweetAttachment *)attachment;
        if (target.messageAbstract.count == 0) {
            check = NO;
        } else if (target.encrypted && target.password.length == 0) {
            check = NO;
        } else {
            check = YES;
        }
    }
    return check;
}
@end
