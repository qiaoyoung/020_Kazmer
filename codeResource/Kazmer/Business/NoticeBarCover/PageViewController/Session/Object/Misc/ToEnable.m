
#import <Foundation/Foundation.h>

@interface CharterData : NSObject

+ (instancetype)sharedInstance;

//: fired
@property (nonatomic, copy) NSString *appNuclearStr;

//: fileName
@property (nonatomic, copy) NSString *showShouldMsg;

//: title
@property (nonatomic, copy) NSString *app_everythingId;

//: compressed
@property (nonatomic, copy) NSString *notiQuietPath;

//: sendPacketId
@property (nonatomic, copy) NSString *show_salmonSexyId;

//: content
@property (nonatomic, copy) NSString *appFineTitle;

//: md5
@property (nonatomic, copy) NSString *appCompanyMsg;

//: redPacketSendID
@property (nonatomic, copy) NSString *noti_optPremiseContainerUrl;

//: encrypted
@property (nonatomic, copy) NSString *kKillerGenetData;

//: url
@property (nonatomic, copy) NSString *userPictureContent;

//: data
@property (nonatomic, copy) NSString *app_shootCommentStr;

//: messageAbstract
@property (nonatomic, copy) NSString *mScaleFormat;

//: isGetDone
@property (nonatomic, copy) NSString *m_contentText;

//: value
@property (nonatomic, copy) NSString *noti_powerStr;

//: flag
@property (nonatomic, copy) NSString *user_fiftyMsg;

//: openPacketId
@property (nonatomic, copy) NSString *noti_silverName;

//: password
@property (nonatomic, copy) NSString *mStrangeViewPath;

//: type
@property (nonatomic, copy) NSString *k_messageContent;

//: sessionId
@property (nonatomic, copy) NSString *m_isolationMsg;

//: redPacketId
@property (nonatomic, copy) NSString *mAddKey;

//: personCardId
@property (nonatomic, copy) NSString *mSilverStr;

//: sessionName
@property (nonatomic, copy) NSString *notiThanksRiotValue;

@end

@implementation CharterData

+ (instancetype)sharedInstance {
    static CharterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CharterDataToCache:(Byte *)data {
    int weepUndergo = data[0];
    Byte shoot = data[1];
    int just = data[2];
    for (int i = just; i < just + weepUndergo; i++) {
        int value = data[i] - shoot;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[just + weepUndergo] = 0;
    return data + just;
}

- (NSString *)StringFromCharterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CharterDataToCache:data]];
}

//: value
- (NSString *)noti_powerStr {
    if (!_noti_powerStr) {
        Byte value[] = {5, 25, 13, 175, 16, 167, 134, 10, 224, 63, 234, 248, 132, 143, 122, 133, 142, 126, 62};
        _noti_powerStr = [self StringFromCharterData:value];
    }
    return _noti_powerStr;
}

//: redPacketSendID
- (NSString *)noti_optPremiseContainerUrl {
    if (!_noti_optPremiseContainerUrl) {
        Byte value[] = {15, 83, 10, 166, 86, 89, 239, 213, 115, 211, 197, 184, 183, 163, 180, 182, 190, 184, 199, 166, 184, 193, 183, 156, 151, 223};
        _noti_optPremiseContainerUrl = [self StringFromCharterData:value];
    }
    return _noti_optPremiseContainerUrl;
}

//: personCardId
- (NSString *)mSilverStr {
    if (!_mSilverStr) {
        Byte value[] = {12, 48, 9, 186, 51, 155, 53, 247, 131, 160, 149, 162, 163, 159, 158, 115, 145, 162, 148, 121, 148, 214};
        _mSilverStr = [self StringFromCharterData:value];
    }
    return _mSilverStr;
}

//: data
- (NSString *)app_shootCommentStr {
    if (!_app_shootCommentStr) {
        Byte value[] = {4, 15, 8, 22, 170, 218, 56, 156, 115, 112, 131, 112, 185};
        _app_shootCommentStr = [self StringFromCharterData:value];
    }
    return _app_shootCommentStr;
}

//: password
- (NSString *)mStrangeViewPath {
    if (!_mStrangeViewPath) {
        Byte value[] = {8, 34, 5, 154, 70, 146, 131, 149, 149, 153, 145, 148, 134, 239};
        _mStrangeViewPath = [self StringFromCharterData:value];
    }
    return _mStrangeViewPath;
}

//: encrypted
- (NSString *)kKillerGenetData {
    if (!_kKillerGenetData) {
        Byte value[] = {9, 29, 3, 130, 139, 128, 143, 150, 141, 145, 130, 129, 29};
        _kKillerGenetData = [self StringFromCharterData:value];
    }
    return _kKillerGenetData;
}

//: type
- (NSString *)k_messageContent {
    if (!_k_messageContent) {
        Byte value[] = {4, 59, 12, 114, 210, 149, 200, 56, 136, 33, 218, 79, 175, 180, 171, 160, 155};
        _k_messageContent = [self StringFromCharterData:value];
    }
    return _k_messageContent;
}

//: sessionName
- (NSString *)notiThanksRiotValue {
    if (!_notiThanksRiotValue) {
        Byte value[] = {11, 40, 4, 40, 155, 141, 155, 155, 145, 151, 150, 118, 137, 149, 141, 133};
        _notiThanksRiotValue = [self StringFromCharterData:value];
    }
    return _notiThanksRiotValue;
}

//: redPacketId
- (NSString *)mAddKey {
    if (!_mAddKey) {
        Byte value[] = {11, 80, 6, 79, 227, 174, 194, 181, 180, 160, 177, 179, 187, 181, 196, 153, 180, 240};
        _mAddKey = [self StringFromCharterData:value];
    }
    return _mAddKey;
}

//: fileName
- (NSString *)showShouldMsg {
    if (!_showShouldMsg) {
        Byte value[] = {8, 24, 13, 165, 88, 231, 84, 189, 4, 122, 86, 145, 224, 126, 129, 132, 125, 102, 121, 133, 125, 70};
        _showShouldMsg = [self StringFromCharterData:value];
    }
    return _showShouldMsg;
}

//: messageAbstract
- (NSString *)mScaleFormat {
    if (!_mScaleFormat) {
        Byte value[] = {15, 22, 3, 131, 123, 137, 137, 119, 125, 123, 87, 120, 137, 138, 136, 119, 121, 138, 207};
        _mScaleFormat = [self StringFromCharterData:value];
    }
    return _mScaleFormat;
}

//: title
- (NSString *)app_everythingId {
    if (!_app_everythingId) {
        Byte value[] = {5, 8, 10, 138, 2, 227, 71, 103, 64, 133, 124, 113, 124, 116, 109, 111};
        _app_everythingId = [self StringFromCharterData:value];
    }
    return _app_everythingId;
}

//: flag
- (NSString *)user_fiftyMsg {
    if (!_user_fiftyMsg) {
        Byte value[] = {4, 45, 5, 115, 220, 147, 153, 142, 148, 216};
        _user_fiftyMsg = [self StringFromCharterData:value];
    }
    return _user_fiftyMsg;
}

//: sessionId
- (NSString *)m_isolationMsg {
    if (!_m_isolationMsg) {
        Byte value[] = {9, 68, 10, 200, 191, 122, 69, 94, 171, 208, 183, 169, 183, 183, 173, 179, 178, 141, 168, 220};
        _m_isolationMsg = [self StringFromCharterData:value];
    }
    return _m_isolationMsg;
}

//: fired
- (NSString *)appNuclearStr {
    if (!_appNuclearStr) {
        Byte value[] = {5, 52, 7, 120, 123, 55, 246, 154, 157, 166, 153, 152, 82};
        _appNuclearStr = [self StringFromCharterData:value];
    }
    return _appNuclearStr;
}

//: url
- (NSString *)userPictureContent {
    if (!_userPictureContent) {
        Byte value[] = {3, 31, 11, 190, 120, 7, 192, 13, 63, 239, 46, 148, 145, 139, 201};
        _userPictureContent = [self StringFromCharterData:value];
    }
    return _userPictureContent;
}

//: isGetDone
- (NSString *)m_contentText {
    if (!_m_contentText) {
        Byte value[] = {9, 45, 8, 107, 29, 59, 44, 175, 150, 160, 116, 146, 161, 113, 156, 155, 146, 6};
        _m_contentText = [self StringFromCharterData:value];
    }
    return _m_contentText;
}

//: compressed
- (NSString *)notiQuietPath {
    if (!_notiQuietPath) {
        Byte value[] = {10, 42, 10, 52, 35, 49, 180, 69, 63, 122, 141, 153, 151, 154, 156, 143, 157, 157, 143, 142, 237};
        _notiQuietPath = [self StringFromCharterData:value];
    }
    return _notiQuietPath;
}

//: content
- (NSString *)appFineTitle {
    if (!_appFineTitle) {
        Byte value[] = {7, 18, 9, 190, 60, 195, 232, 72, 254, 117, 129, 128, 134, 119, 128, 134, 187};
        _appFineTitle = [self StringFromCharterData:value];
    }
    return _appFineTitle;
}

//: sendPacketId
- (NSString *)show_salmonSexyId {
    if (!_show_salmonSexyId) {
        Byte value[] = {12, 64, 12, 89, 140, 31, 225, 158, 68, 164, 223, 176, 179, 165, 174, 164, 144, 161, 163, 171, 165, 180, 137, 164, 107};
        _show_salmonSexyId = [self StringFromCharterData:value];
    }
    return _show_salmonSexyId;
}

//: openPacketId
- (NSString *)noti_silverName {
    if (!_noti_silverName) {
        Byte value[] = {12, 61, 9, 159, 98, 147, 115, 100, 106, 172, 173, 162, 171, 141, 158, 160, 168, 162, 177, 134, 161, 78};
        _noti_silverName = [self StringFromCharterData:value];
    }
    return _noti_silverName;
}

//: md5
- (NSString *)appCompanyMsg {
    if (!_appCompanyMsg) {
        Byte value[] = {3, 12, 9, 179, 213, 183, 96, 141, 30, 121, 112, 65, 180};
        _appCompanyMsg = [self StringFromCharterData:value];
    }
    return _appCompanyMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToEnable.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "ToEnable.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ObjectAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "InfoMessageBackground.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ValueJson.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation ToEnable
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
            NSInteger type = [dict recordInput:[CharterData sharedInstance].k_messageContent];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict menu:[CharterData sharedInstance].app_shootCommentStr];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[ObjectAttachment alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((ObjectAttachment *)attachment).value = [data recordInput:[CharterData sharedInstance].noti_powerStr];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[WeltanschauungAttachment alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((WeltanschauungAttachment *)attachment).md5 = [data keyJson:[CharterData sharedInstance].appCompanyMsg];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((WeltanschauungAttachment *)attachment).url = [data keyJson:[CharterData sharedInstance].userPictureContent];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((WeltanschauungAttachment *)attachment).isFired = [data viewHigh:[CharterData sharedInstance].appNuclearStr];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[InfoAttachment alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((InfoAttachment *)attachment).flag = [data recordInput:[CharterData sharedInstance].user_fiftyMsg];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[InfoMessageBackground alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((InfoMessageBackground *)attachment).title = [data keyJson:[CharterData sharedInstance].app_everythingId];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((InfoMessageBackground *)attachment).content = [data keyJson:[CharterData sharedInstance].appFineTitle];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((InfoMessageBackground *)attachment).redPacketId = [data keyJson:[CharterData sharedInstance].mAddKey];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((InfoMessageBackground *)attachment).sendID = [data keyJson:[CharterData sharedInstance].noti_optPremiseContainerUrl];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[ReplacementAttachment alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((ReplacementAttachment *)attachment).sendPacketId = [data keyJson:[CharterData sharedInstance].show_salmonSexyId];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((ReplacementAttachment *)attachment).packetId = [data keyJson:[CharterData sharedInstance].mAddKey];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((ReplacementAttachment *)attachment).isGetDone = [data keyJson:[CharterData sharedInstance].m_contentText];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((ReplacementAttachment *)attachment).openPacketId = [data keyJson:[CharterData sharedInstance].noti_silverName];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[ShowImageEvent alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((ShowImageEvent *)attachment).url = [data keyJson:[CharterData sharedInstance].userPictureContent];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((ShowImageEvent *)attachment).md5 = [data keyJson:[CharterData sharedInstance].appCompanyMsg];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((ShowImageEvent *)attachment).fileName = [data keyJson:[CharterData sharedInstance].showShouldMsg];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((ShowImageEvent *)attachment).compressed = [data viewHigh:[CharterData sharedInstance].notiQuietPath];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((ShowImageEvent *)attachment).encrypted = [data viewHigh:[CharterData sharedInstance].kKillerGenetData];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((ShowImageEvent *)attachment).password = [data keyJson:[CharterData sharedInstance].mStrangeViewPath];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((ShowImageEvent *)attachment).messageAbstract = [data should:[CharterData sharedInstance].mScaleFormat];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((ShowImageEvent *)attachment).sessionName = [data keyJson:[CharterData sharedInstance].notiThanksRiotValue];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((ShowImageEvent *)attachment).sessionId = [data keyJson:[CharterData sharedInstance].m_isolationMsg];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[KeyAttachment alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((KeyAttachment *)attachment).title = [data keyJson:[CharterData sharedInstance].app_everythingId];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((KeyAttachment *)attachment).type = [data keyJson:[CharterData sharedInstance].k_messageContent];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((KeyAttachment *)attachment).content = [data keyJson:[CharterData sharedInstance].appFineTitle];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((KeyAttachment *)attachment).personCardId = [data keyJson:[CharterData sharedInstance].mSilverStr];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self keyBubble:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)keyBubble:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[ObjectAttachment class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((ObjectAttachment *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[WeltanschauungAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[KeyAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[InfoAttachment class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((InfoAttachment *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[InfoMessageBackground class]] || [attachment isKindOfClass:[ReplacementAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[ShowImageEvent class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        ShowImageEvent *target = (ShowImageEvent *)attachment;
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
//: @end
@end