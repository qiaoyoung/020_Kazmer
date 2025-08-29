
#import <Foundation/Foundation.h>

@interface OutdoorData : NSObject

+ (instancetype)sharedInstance;

//: menu_copy
@property (nonatomic, copy) NSString *kText_immigrantString;

//: friend_circle_adapter_like
@property (nonatomic, copy) NSString *kText_pullCurrentData;

//: onTapMenuItemDelete:
@property (nonatomic, copy) NSString *kContentFierceData;

//: menu_translation
@property (nonatomic, copy) NSString *kTitleToColorContent;

//: onTapMenuItemCopy:
@property (nonatomic, copy) NSString *kName_vitaminString;

//: menu_report
@property (nonatomic, copy) NSString *kTitle_denseValue;

//: onTapMenuItemForword:
@property (nonatomic, copy) NSString *kNameWheatData;

//: menu_forword
@property (nonatomic, copy) NSString *kContent_everName;

//: menu_del
@property (nonatomic, copy) NSString *kTextRecentValue;

//: menu_praise
@property (nonatomic, copy) NSString *kNameHideText;

//: menu_revoke
@property (nonatomic, copy) NSString *kContentCountactName;

//: onTapMenuItemPraise:
@property (nonatomic, copy) NSString *kTitleThoughString;

//: onTapMenuItemRevoke:
@property (nonatomic, copy) NSString *kTitleRecordTotalelligenceValue;

//: onTapMenuItemTranslation:
@property (nonatomic, copy) NSString *kContentHardwareValue;

//: onTapMenuItemReport:
@property (nonatomic, copy) NSString *kTitleLastValue;

//: report_Content
@property (nonatomic, copy) NSString *kTitleRangeData;

@end

@implementation OutdoorData

- (NSString *)StringFromOutdoorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OutdoorDataToCache:data]];
}

//: friend_circle_adapter_like
- (NSString *)kText_pullCurrentData {
    if (!_kText_pullCurrentData) {
		NSString *origin = @"1a5c055615c2cec5c1cac0bbbfc5cebfc8c1bbbdc0bdccd0c1cebbc8c5c7c1e1";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_pullCurrentData = [self StringFromOutdoorData:value];
    }
    return _kText_pullCurrentData;
}

//: onTapMenuItemForword:
- (NSString *)kNameWheatData {
    if (!_kNameWheatData) {
		NSString *origin = @"15190abb29f3ac13680b88876d7a89667e878e628d7e865f888b90888b7d530d";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameWheatData = [self StringFromOutdoorData:value];
    }
    return _kNameWheatData;
}

//: onTapMenuItemReport:
- (NSString *)kTitleLastValue {
    if (!_kTitleLastValue) {
		NSString *origin = @"141d038c8b717e8d6a828b926691828a6f828d8c8f915749";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleLastValue = [self StringFromOutdoorData:value];
    }
    return _kTitleLastValue;
}

//: menu_forword
- (NSString *)kContent_everName {
    if (!_kContent_everName) {
		NSString *origin = @"0c260ac31fcfa9438a9f938b949b858c95989d95988aac";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_everName = [self StringFromOutdoorData:value];
    }
    return _kContent_everName;
}

//: onTapMenuItemCopy:
- (NSString *)kName_vitaminString {
    if (!_kName_vitaminString) {
		NSString *origin = @"12280cb327427b0d7b4d98cd97967c8998758d969d719c8d956b9798a162e8";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_vitaminString = [self StringFromOutdoorData:value];
    }
    return _kName_vitaminString;
}

//: onTapMenuItemDelete:
- (NSString *)kContentFierceData {
    if (!_kContentFierceData) {
		NSString *origin = @"143e03adac929fae8ba3acb387b2a3ab82a3aaa3b2a378e5";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentFierceData = [self StringFromOutdoorData:value];
    }
    return _kContentFierceData;
}

//: menu_praise
- (NSString *)kNameHideText {
    if (!_kNameHideText) {
		NSString *origin = @"0b0f08f70ac9040b7c747d846e7f8170788274c6";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHideText = [self StringFromOutdoorData:value];
    }
    return _kNameHideText;
}

+ (instancetype)sharedInstance {
    static OutdoorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: menu_del
- (NSString *)kTextRecentValue {
    if (!_kTextRecentValue) {
		NSString *origin = @"08320889b0b1263a9f97a0a79196979eea";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextRecentValue = [self StringFromOutdoorData:value];
    }
    return _kTextRecentValue;
}

- (Byte *)OutdoorDataToCache:(Byte *)data {
    int bodilyFunction = data[0];
    Byte recordRetire = data[1];
    int endRecent = data[2];
    for (int i = endRecent; i < endRecent + bodilyFunction; i++) {
        int value = data[i] - recordRetire;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[endRecent + bodilyFunction] = 0;
    return data + endRecent;
}

//: onTapMenuItemPraise:
- (NSString *)kTitleThoughString {
    if (!_kTitleThoughString) {
		NSString *origin = @"1454048dc3c2a8b5c4a1b9c2c99dc8b9c1a4c6b5bdc7b98e78";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleThoughString = [self StringFromOutdoorData:value];
    }
    return _kTitleThoughString;
}

+ (NSData *)OutdoorDataToData:(NSString *)value {
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

//: onTapMenuItemTranslation:
- (NSString *)kContentHardwareValue {
    if (!_kContentHardwareValue) {
		NSString *origin = @"195c08ff2589f34fcbcab0bdcca9c1cad1a5d0c1c9b0cebdcacfc8bdd0c5cbca96e3";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentHardwareValue = [self StringFromOutdoorData:value];
    }
    return _kContentHardwareValue;
}

//: report_Content
- (NSString *)kTitleRangeData {
    if (!_kTitleRangeData) {
		NSString *origin = @"0e1303857883828587725682818778818782";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleRangeData = [self StringFromOutdoorData:value];
    }
    return _kTitleRangeData;
}

//: menu_copy
- (NSString *)kText_immigrantString {
    if (!_kText_immigrantString) {
		NSString *origin = @"0958061b0fa0c5bdc6cdb7bbc7c8d14e";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_immigrantString = [self StringFromOutdoorData:value];
    }
    return _kText_immigrantString;
}

//: onTapMenuItemRevoke:
- (NSString *)kTitleRecordTotalelligenceValue {
    if (!_kTitleRecordTotalelligenceValue) {
		NSString *origin = @"14600c40b8e4b585f5a50c6bcfceb4c1d0adc5ced5a9d4c5cdb2c5d6cfcbc59acc";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleRecordTotalelligenceValue = [self StringFromOutdoorData:value];
    }
    return _kTitleRecordTotalelligenceValue;
}

//: menu_report
- (NSString *)kTitle_denseValue {
    if (!_kTitle_denseValue) {
		NSString *origin = @"0b59093318718558c1c6bec7ceb8cbbec9c8cbcd95";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_denseValue = [self StringFromOutdoorData:value];
    }
    return _kTitle_denseValue;
}

//: menu_revoke
- (NSString *)kContentCountactName {
    if (!_kContentCountactName) {
		NSString *origin = @"0b1d08260a8e290c8a828b927c8f82938c8882a4";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentCountactName = [self StringFromOutdoorData:value];
    }
    return _kContentCountactName;
}

//: menu_translation
- (NSString *)kTitleToColorContent {
    if (!_kTitleToColorContent) {
		NSString *origin = @"105508c1ede3f57ac2bac3cab4c9c7b6c3c8c1b6c9bec4c390";
		NSData *data = [OutdoorData OutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleToColorContent = [self StringFromOutdoorData:value];
    }
    return _kTitleToColorContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CropConfig.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionConfig.h"
#import "CropConfig.h"
//: #import "FFFMediaItem.h"
#import "CommingleItem.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "NSString+USER.h"
#import "NSString+Turn.h"
//: #import "FFFSessionConfig.h"
#import "ColorConfig.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "FFFInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"

//: @interface USERSessionConfig()
@interface CropConfig()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation USERSessionConfig
@implementation CropConfig

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)notAction:(NIMMessage *)message
{
    //文字，语音，图片，视频，文件，地址位置和自定义消息都支持已读回执，其他的不支持
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: if (type == NIMMessageTypeCustom) {
    if (type == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        //: id attachment = object.attachment;
        id attachment = object.attachment;

        //: if ([attachment isKindOfClass:[USERWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[MessageAttachment class]]) {
            //: return NO;
            return NO;
        }
    }



    //: return type == NIMMessageTypeText ||
    return type == NIMMessageTypeText ||
    //: type == NIMMessageTypeAudio ||
    type == NIMMessageTypeAudio ||
    //: type == NIMMessageTypeImage ||
    type == NIMMessageTypeImage ||
    //: type == NIMMessageTypeVideo ||
    type == NIMMessageTypeVideo ||
    //: type == NIMMessageTypeFile ||
    type == NIMMessageTypeFile ||
    //: type == NIMMessageTypeLocation ||
    type == NIMMessageTypeLocation ||
    //: type == NIMMessageTypeCustom;
    type == NIMMessageTypeCustom;
}


//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)positionShow{
    //: return @[
    return @[
//        @(FFFInputBarItemTypeMore),
//        @(FFFInputBarItemTypeEmoticon),
//             @(FFFInputBarItemTypeVoice),
             //: @(FFFInputBarItemTypeTextAndRecord),
             @(FFFInputBarItemTypeTextAndRecord),
        //: @(FFFInputBarItemTypeSend),
        @(FFFInputBarItemTypeSend),
            //: ];
            ];
}

//: - (void)cleanThreadMessage
- (void)threadClose
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)showMonitor{
    //: return [[USERBundleSetting sharedConfig] disableProximityMonitor];
    return [[UserLabelMan user] showMonitor];
}

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<TitleDisplayCatalog *> *)deviceLeft
{
    //: return nil;
    return nil;
}

//: - (NIMAudioType)recordType
- (NIMAudioType)beSecond
{
    //: return [[USERBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[UserLabelMan user] recordAlbum] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)phaetonShadow {
    //: return [[USERBundleSetting sharedConfig] autoFetchAttachment];
    return [[UserLabelMan user] phaetonShadow];
}

//: - (BOOL)shouldHandleReceipt{
- (BOOL)messageSize{
    //: return YES;
    return YES;
}

//: - (NSArray<FFFMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<CommingleItem *> *)inputsed:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: FFFMediaItem *Praise = [FFFMediaItem item:@"onTapMenuItemPraise:"
    CommingleItem *Praise = [CommingleItem garrisonName:[OutdoorData sharedInstance].kTitleThoughString
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 heading:[UIImage imageNamed:[OutdoorData sharedInstance].kNameHideText]
                               //: selectedImage:nil
                               with:nil
                                       //: title:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       item:[MakeManager cell:[OutdoorData sharedInstance].kText_pullCurrentData]];

//    CommingleItem *reply = [CommingleItem item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    CommingleItem *copy = [CommingleItem garrisonName:[OutdoorData sharedInstance].kName_vitaminString
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                heading:[UIImage imageNamed:[OutdoorData sharedInstance].kText_immigrantString]
                              //: selectedImage:nil
                              with:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      item:[MakeManager cell:@"复制"]];

    //: FFFMediaItem *forword = [FFFMediaItem item:@"onTapMenuItemForword:"
    CommingleItem *forword = [CommingleItem garrisonName:[OutdoorData sharedInstance].kNameWheatData
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   heading:[UIImage imageNamed:[OutdoorData sharedInstance].kContent_everName]
                                 //: selectedImage:nil
                                 with:nil
                                         //: title:[FFFLanguageManager getTextWithKey:@"转发"]];
                                         item:[MakeManager cell:@"转发"]];

//    CommingleItem *mark = [CommingleItem item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    CommingleItem *pin = [CommingleItem item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: FFFMediaItem *report = [FFFMediaItem item:@"onTapMenuItemReport:"
    CommingleItem *report = [CommingleItem garrisonName:[OutdoorData sharedInstance].kTitleLastValue
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  heading:[UIImage imageNamed:[OutdoorData sharedInstance].kTitle_denseValue]
                                //: selectedImage:nil
                                with:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"report_Content"]];
                                        item:[MakeManager cell:[OutdoorData sharedInstance].kTitleRangeData]];

    //: FFFMediaItem *translation = [FFFMediaItem item:@"onTapMenuItemTranslation:"
    CommingleItem *translation = [CommingleItem garrisonName:[OutdoorData sharedInstance].kContentHardwareValue
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  heading:[UIImage imageNamed:[OutdoorData sharedInstance].kTitleToColorContent]
                                //: selectedImage:nil
                                with:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"翻译"]];
                                        item:[MakeManager cell:@"翻译"]];

    //: FFFMediaItem *revoke = [FFFMediaItem item:@"onTapMenuItemRevoke:"
    CommingleItem *revoke = [CommingleItem garrisonName:[OutdoorData sharedInstance].kTitleRecordTotalelligenceValue
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  heading:[UIImage imageNamed:[OutdoorData sharedInstance].kContentCountactName]
                                //: selectedImage:nil
                                with:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"撤回"]];
                                        item:[MakeManager cell:@"撤回"]];

    //: FFFMediaItem *delete = [FFFMediaItem item:@"onTapMenuItemDelete:"
    CommingleItem *delete = [CommingleItem garrisonName:[OutdoorData sharedInstance].kContentFierceData
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  heading:[UIImage imageNamed:[OutdoorData sharedInstance].kTextRecentValue]
                                //: selectedImage:nil
                                with:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"删除"]];
                                        item:[MakeManager cell:@"删除"]];

//    CommingleItem *mutiSelect = [CommingleItem item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([SessionStandard canMessageBeForwarded:message])
//    {
//        [items addObject:reply];
//    }

    //: BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: if (!isMe)
    if (!isMe)
    {
        //: [items addObject:report];
        [items addObject:report];
    }

    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [items addObject:copy];
        [items addObject:copy];
    }

    //: if ([USERSessionUtil canMessageBeForwarded:message]) {
    if ([SessionStandard of:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([SessionStandard canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([USERSessionUtil canMessageBeRevoked:message]) {
    if ([SessionStandard shoot:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([SessionStandard canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        CommingleItem *audio2text = [CommingleItem item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".user_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)mediaItems
- (NSArray *)cypherCell
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [Mortification text].config.buttonTing;

//    CommingleItem *janKenPon = [CommingleItem item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".user_localized

//    CommingleItem *fileTrans = [CommingleItem item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".user_localized

//    CommingleItem *tip       = [CommingleItem item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".user_localized];

//    CommingleItem *audioChat =  [CommingleItem item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".user_localized
//
//    CommingleItem *videoChat =  [CommingleItem item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".user_localized
//
//    CommingleItem *teamMeeting =  [CommingleItem item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".user_localized

//    CommingleItem *snapChat =   [CommingleItem item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".user_localized];

//    CommingleItem *whiteBoard = [CommingleItem item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".user_localized];
    //红包功能因合作终止，暂时关闭
//    CommingleItem *redPacket  = [CommingleItem item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    CommingleItem *teamReceipt  = [CommingleItem item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".user_localized];



//    BOOL isMe   = _session.sessionType == NIMSessionTypeP2P
//    && [_session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
//    NSArray *items = nil;

//    if (isMe)
//    {
//        items = @[janKenPon,tip];
//    }
//    else if(_session.sessionType == NIMSessionTypeTeam || _session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        items = @[janKenPon];
//    }
//    else
//    {
//        items = @[janKenPon];
//    }


//    return [defaultMediaItems arrayByAddingObjectsFromArray:items];
    //: return defaultMediaItems;
    return defaultMediaItems;
}

//: - (NSArray *)emotionItems
- (NSArray *)max
{
    //NSArray *indexs = @[@(1),@(145),@(12),@(15),@(10),@(18),@(19)];
    //: NSArray *indexs = @[];
    NSArray *indexs = @[];
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: for (NSNumber *index in indexs)
    for (NSNumber *index in indexs)
    {
        //: NSString * ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, [index integerValue]];
        NSString * ID = [NSString stringWithFormat:dream_framePathMessage, [index integerValue]];
        //: NIMInputEmoticon *item = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
        BubbleNameReload *item = [[IndexManager item] tyke:ID];
        //: if (item)
        if (item)
        {
            //: [items addObject:item];
            [items addObject:item];
        }
    }

    //: return [items copy];
    return [items copy];
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)untilMediaSent
{
    //: return YES;
    return YES;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)disabling:(NIMMessage *)message {
    //: return ![USERSessionUtil canMessageBeForwarded:message];
    return ![SessionStandard of:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: @end
@end