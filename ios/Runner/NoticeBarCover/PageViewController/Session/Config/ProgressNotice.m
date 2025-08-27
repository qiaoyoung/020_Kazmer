
#import <Foundation/Foundation.h>

@interface HostaDropData : NSObject

@end

@implementation HostaDropData

+ (Byte *)HostaDropDataToCache:(Byte *)data {
    int itemMy = data[0];
    Byte strangeEverything = data[1];
    int imageStrange = data[2];
    for (int i = imageStrange; i < imageStrange + itemMy; i++) {
        int value = data[i] + strangeEverything;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[imageStrange + itemMy] = 0;
    return data + imageStrange;
}

+ (NSString *)StringFromHostaDropData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HostaDropDataToCache:data]];
}

//: onTapMenuItemPraise:
+ (NSString *)dreamResortUrl {
    /* static */ NSString *dreamResortUrl = nil;
    if (!dreamResortUrl) {
        Byte value[] = {20, 26, 3, 85, 84, 58, 71, 86, 51, 75, 84, 91, 47, 90, 75, 83, 54, 88, 71, 79, 89, 75, 32, 46};
        dreamResortUrl = [self StringFromHostaDropData:value];
    }
    return dreamResortUrl;
}

//: menu_forword
+ (NSString *)app_fineKey {
    /* static */ NSString *app_fineKey = nil;
    if (!app_fineKey) {
        Byte value[] = {12, 30, 11, 172, 104, 145, 195, 150, 145, 35, 26, 79, 71, 80, 87, 65, 72, 81, 84, 89, 81, 84, 70, 214};
        app_fineKey = [self StringFromHostaDropData:value];
    }
    return app_fineKey;
}

//: menu_translation
+ (NSString *)user_viewShootValue {
    /* static */ NSString *user_viewShootValue = nil;
    if (!user_viewShootValue) {
        Byte value[] = {16, 63, 12, 159, 62, 199, 56, 217, 231, 4, 214, 224, 46, 38, 47, 54, 32, 53, 51, 34, 47, 52, 45, 34, 53, 42, 48, 47, 53};
        user_viewShootValue = [self StringFromHostaDropData:value];
    }
    return user_viewShootValue;
}

//: onTapMenuItemCopy:
+ (NSString *)mainExtraMessage {
    /* static */ NSString *mainExtraMessage = nil;
    if (!mainExtraMessage) {
        Byte value[] = {18, 21, 4, 43, 90, 89, 63, 76, 91, 56, 80, 89, 96, 52, 95, 80, 88, 46, 90, 91, 100, 37, 21};
        mainExtraMessage = [self StringFromHostaDropData:value];
    }
    return mainExtraMessage;
}

//: menu_report
+ (NSString *)appEngagementTextFormat {
    /* static */ NSString *appEngagementTextFormat = nil;
    if (!appEngagementTextFormat) {
        Byte value[] = {11, 3, 3, 106, 98, 107, 114, 92, 111, 98, 109, 108, 111, 113, 27};
        appEngagementTextFormat = [self StringFromHostaDropData:value];
    }
    return appEngagementTextFormat;
}

//: onTapMenuItemTranslation:
+ (NSString *)user_bidNumberValue {
    /* static */ NSString *user_bidNumberValue = nil;
    if (!user_bidNumberValue) {
        Byte value[] = {25, 62, 10, 149, 206, 229, 178, 134, 81, 102, 49, 48, 22, 35, 50, 15, 39, 48, 55, 11, 54, 39, 47, 22, 52, 35, 48, 53, 46, 35, 54, 43, 49, 48, 252, 48};
        user_bidNumberValue = [self StringFromHostaDropData:value];
    }
    return user_bidNumberValue;
}

//: onTapMenuItemRevoke:
+ (NSString *)userBubbleKey {
    /* static */ NSString *userBubbleKey = nil;
    if (!userBubbleKey) {
        Byte value[] = {20, 54, 4, 238, 57, 56, 30, 43, 58, 23, 47, 56, 63, 19, 62, 47, 55, 28, 47, 64, 57, 53, 47, 4, 196};
        userBubbleKey = [self StringFromHostaDropData:value];
    }
    return userBubbleKey;
}

//: menu_del
+ (NSString *)showEconomistValue {
    /* static */ NSString *showEconomistValue = nil;
    if (!showEconomistValue) {
        Byte value[] = {8, 75, 13, 122, 29, 107, 190, 24, 239, 52, 131, 64, 190, 34, 26, 35, 42, 20, 25, 26, 33, 110};
        showEconomistValue = [self StringFromHostaDropData:value];
    }
    return showEconomistValue;
}

//: menu_copy
+ (NSString *)dreamCurValue {
    /* static */ NSString *dreamCurValue = nil;
    if (!dreamCurValue) {
        Byte value[] = {9, 56, 8, 227, 64, 171, 129, 142, 53, 45, 54, 61, 39, 43, 55, 56, 65, 240};
        dreamCurValue = [self StringFromHostaDropData:value];
    }
    return dreamCurValue;
}

//: onTapMenuItemReport:
+ (NSString *)notiUpValue {
    /* static */ NSString *notiUpValue = nil;
    if (!notiUpValue) {
        Byte value[] = {20, 93, 12, 17, 215, 188, 19, 141, 244, 21, 48, 161, 18, 17, 247, 4, 19, 240, 8, 17, 24, 236, 23, 8, 16, 245, 8, 19, 18, 21, 23, 221, 16};
        notiUpValue = [self StringFromHostaDropData:value];
    }
    return notiUpValue;
}

//: menu_praise
+ (NSString *)app_minStr {
    /* static */ NSString *app_minStr = nil;
    if (!app_minStr) {
        Byte value[] = {11, 20, 6, 232, 143, 222, 89, 81, 90, 97, 75, 92, 94, 77, 85, 95, 81, 97};
        app_minStr = [self StringFromHostaDropData:value];
    }
    return app_minStr;
}

//: onTapMenuItemForword:
+ (NSString *)mScramRegulationTitle {
    /* static */ NSString *mScramRegulationTitle = nil;
    if (!mScramRegulationTitle) {
        Byte value[] = {21, 11, 3, 100, 99, 73, 86, 101, 66, 90, 99, 106, 62, 105, 90, 98, 59, 100, 103, 108, 100, 103, 89, 47, 247};
        mScramRegulationTitle = [self StringFromHostaDropData:value];
    }
    return mScramRegulationTitle;
}

//: report_Content
+ (NSString *)kEverythingToStr {
    /* static */ NSString *kEverythingToStr = nil;
    if (!kEverythingToStr) {
        Byte value[] = {14, 59, 6, 236, 67, 60, 55, 42, 53, 52, 55, 57, 36, 8, 52, 51, 57, 42, 51, 57, 120};
        kEverythingToStr = [self StringFromHostaDropData:value];
    }
    return kEverythingToStr;
}

//: friend_circle_adapter_like
+ (NSString *)user_showBorrowKey {
    /* static */ NSString *user_showBorrowKey = nil;
    if (!user_showBorrowKey) {
        Byte value[] = {26, 60, 11, 196, 219, 103, 126, 172, 47, 228, 62, 42, 54, 45, 41, 50, 40, 35, 39, 45, 54, 39, 48, 41, 35, 37, 40, 37, 52, 56, 41, 54, 35, 48, 45, 47, 41, 181};
        user_showBorrowKey = [self StringFromHostaDropData:value];
    }
    return user_showBorrowKey;
}

//: onTapMenuItemDelete:
+ (NSString *)app_insistFormat {
    /* static */ NSString *app_insistFormat = nil;
    if (!app_insistFormat) {
        Byte value[] = {20, 84, 9, 255, 130, 16, 247, 250, 121, 27, 26, 0, 13, 28, 249, 17, 26, 33, 245, 32, 17, 25, 240, 17, 24, 17, 32, 17, 230, 123};
        app_insistFormat = [self StringFromHostaDropData:value];
    }
    return app_insistFormat;
}

//: menu_revoke
+ (NSString *)userResortThanksId {
    /* static */ NSString *userResortThanksId = nil;
    if (!userResortThanksId) {
        Byte value[] = {11, 98, 12, 235, 191, 8, 225, 17, 251, 124, 252, 23, 11, 3, 12, 19, 253, 16, 3, 20, 13, 9, 3, 82};
        userResortThanksId = [self StringFromHostaDropData:value];
    }
    return userResortThanksId;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgressNotice.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "ProgressNotice.h"
//: #import "WatchMediaItem.h"
#import "InfoMakeBar.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import "WatchSessionConfig.h"
#import "MessagePinImage.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "WatchInputEmoticonManager.h"
#import "TitleToManager.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"

//: @interface NTESSessionConfig()
@interface ProgressNotice()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation NTESSessionConfig
@implementation ProgressNotice

//: - (NSArray *)mediaItems
- (NSArray *)compartmentState
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [ButtonKit sheerOption].config.emptyItems;

//    InfoMakeBar *janKenPon = [InfoMakeBar item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    InfoMakeBar *fileTrans = [InfoMakeBar item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    InfoMakeBar *tip       = [InfoMakeBar item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    InfoMakeBar *audioChat =  [InfoMakeBar item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    InfoMakeBar *videoChat =  [InfoMakeBar item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    InfoMakeBar *teamMeeting =  [InfoMakeBar item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    InfoMakeBar *snapChat =   [InfoMakeBar item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    InfoMakeBar *whiteBoard = [InfoMakeBar item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    InfoMakeBar *redPacket  = [InfoMakeBar item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    InfoMakeBar *teamReceipt  = [InfoMakeBar item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".ntes_localized];



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


//: - (NSArray<WatchMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<InfoMakeBar *> *)tableOfTextsToInscription:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: WatchMediaItem *Praise = [WatchMediaItem item:@"onTapMenuItemPraise:"
    InfoMakeBar *Praise = [InfoMakeBar icon:[HostaDropData dreamResortUrl]
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 message:[UIImage imageNamed:[HostaDropData app_minStr]]
                               //: selectedImage:nil
                               name:nil
                                       //: title:[WatchLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       sub:[PaintedNaturalLanguageTo exhibit:[HostaDropData user_showBorrowKey]]];

//    InfoMakeBar *reply = [InfoMakeBar item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: WatchMediaItem *copy = [WatchMediaItem item:@"onTapMenuItemCopy:"
    InfoMakeBar *copy = [InfoMakeBar icon:[HostaDropData mainExtraMessage]
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                message:[UIImage imageNamed:[HostaDropData dreamCurValue]]
                              //: selectedImage:nil
                              name:nil
                                      //: title:[WatchLanguageManager getTextWithKey:@"复制"]];
                                      sub:[PaintedNaturalLanguageTo exhibit:@"复制"]];

    //: WatchMediaItem *forword = [WatchMediaItem item:@"onTapMenuItemForword:"
    InfoMakeBar *forword = [InfoMakeBar icon:[HostaDropData mScramRegulationTitle]
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   message:[UIImage imageNamed:[HostaDropData app_fineKey]]
                                 //: selectedImage:nil
                                 name:nil
                                         //: title:[WatchLanguageManager getTextWithKey:@"转发"]];
                                         sub:[PaintedNaturalLanguageTo exhibit:@"转发"]];

//    InfoMakeBar *mark = [InfoMakeBar item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    InfoMakeBar *pin = [InfoMakeBar item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: WatchMediaItem *report = [WatchMediaItem item:@"onTapMenuItemReport:"
    InfoMakeBar *report = [InfoMakeBar icon:[HostaDropData notiUpValue]
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  message:[UIImage imageNamed:[HostaDropData appEngagementTextFormat]]
                                //: selectedImage:nil
                                name:nil
                                        //: title:[WatchLanguageManager getTextWithKey:@"report_Content"]];
                                        sub:[PaintedNaturalLanguageTo exhibit:[HostaDropData kEverythingToStr]]];

    //: WatchMediaItem *translation = [WatchMediaItem item:@"onTapMenuItemTranslation:"
    InfoMakeBar *translation = [InfoMakeBar icon:[HostaDropData user_bidNumberValue]
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  message:[UIImage imageNamed:[HostaDropData user_viewShootValue]]
                                //: selectedImage:nil
                                name:nil
                                        //: title:[WatchLanguageManager getTextWithKey:@"翻译"]];
                                        sub:[PaintedNaturalLanguageTo exhibit:@"翻译"]];

    //: WatchMediaItem *revoke = [WatchMediaItem item:@"onTapMenuItemRevoke:"
    InfoMakeBar *revoke = [InfoMakeBar icon:[HostaDropData userBubbleKey]
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  message:[UIImage imageNamed:[HostaDropData userResortThanksId]]
                                //: selectedImage:nil
                                name:nil
                                        //: title:[WatchLanguageManager getTextWithKey:@"撤回"]];
                                        sub:[PaintedNaturalLanguageTo exhibit:@"撤回"]];

    //: WatchMediaItem *delete = [WatchMediaItem item:@"onTapMenuItemDelete:"
    InfoMakeBar *delete = [InfoMakeBar icon:[HostaDropData app_insistFormat]
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  message:[UIImage imageNamed:[HostaDropData showEconomistValue]]
                                //: selectedImage:nil
                                name:nil
                                        //: title:[WatchLanguageManager getTextWithKey:@"删除"]];
                                        sub:[PaintedNaturalLanguageTo exhibit:@"删除"]];

//    InfoMakeBar *mutiSelect = [InfoMakeBar item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([OldUtil canMessageBeForwarded:message])
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

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([OldUtil nameTempState:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([OldUtil canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([OldUtil shadeRevoked:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([OldUtil canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        InfoMakeBar *audio2text = [InfoMakeBar item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".ntes_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)emotionItems
- (NSArray *)anagram
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
        NSString * ID = [NSString stringWithFormat:userValueKey, [index integerValue]];
        //: NIMInputEmoticon *item = [[WatchInputEmoticonManager sharedManager] emoticonByID:ID];
        ButtonTableEmoticon *item = [[TitleToManager draw] limit:ID];
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

//: - (BOOL)shouldHandleReceipt{
- (BOOL)shouldOrReceipt{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)typesAppear{
    //: return @[
    return @[
//        @(WatchInputBarItemTypeMore),
//        @(WatchInputBarItemTypeEmoticon),
//             @(WatchInputBarItemTypeVoice),
             //: @(WatchInputBarItemTypeTextAndRecord),
             @(WatchInputBarItemTypeTextAndRecord),
        //: @(WatchInputBarItemTypeSend),
        @(WatchInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)tabling:(NIMMessage *)message
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

        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[InfoAttachment class]]) {
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

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<BottomCatalog *> *)labelCharlets
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)atShow{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[NameTing pin] atShow];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)valueAttachment {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[NameTing pin] valueAttachment];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)tableFrom
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[NameTing pin] name] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)barMessage:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![OldUtil nameTempState:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)messageCell
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)mySent
{
    //: return YES;
    return YES;
}

//: @end
@end
