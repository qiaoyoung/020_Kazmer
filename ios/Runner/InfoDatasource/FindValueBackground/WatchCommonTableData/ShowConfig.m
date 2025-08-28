
#import <Foundation/Foundation.h>

typedef struct {
    Byte averEstablishment;
    Byte *rad;
    unsigned int close;
	int passOn;
} StructTechData;

@interface TechData : NSObject

@end

@implementation TechData

+ (Byte *)TechDataToByte:(StructTechData *)data {
    for (int i = 0; i < data->close; i++) {
        data->rad[i] ^= data->averEstablishment;
    }
    data->rad[data->close] = 0;
	if (data->close >= 1) {
		data->passOn = data->rad[0];
	}
    return data->rad;
}

+ (NSString *)StringFromTechData:(StructTechData *)data {
    return [NSString stringWithUTF8String:(char *)[self TechDataToByte:data]];
}

//: icon_session_time_bg
+ (NSString *)k_suspectSurvivalValue {
    /* static */ NSString *k_suspectSurvivalValue = nil;
    if (!k_suspectSurvivalValue) {
        StructTechData value = (StructTechData){162, (Byte []){203, 193, 205, 204, 253, 209, 199, 209, 209, 203, 205, 204, 253, 214, 203, 207, 199, 253, 192, 197, 74}, 20, 129};
        k_suspectSurvivalValue = [self StringFromTechData:&value];
    }
    return k_suspectSurvivalValue;
}

//: onTapMenuItemCopy:
+ (NSString *)main_collectorMsg {
    /* static */ NSString *main_collectorMsg = nil;
    if (!main_collectorMsg) {
        StructTechData value = (StructTechData){130, (Byte []){237, 236, 214, 227, 242, 207, 231, 236, 247, 203, 246, 231, 239, 193, 237, 242, 251, 184, 89}, 18, 47};
        main_collectorMsg = [self StringFromTechData:&value];
    }
    return main_collectorMsg;
}

//: message_send_camera
+ (NSString *)kStateStyleIdent {
    /* static */ NSString *kStateStyleIdent = nil;
    if (!kStateStyleIdent) {
        StructTechData value = (StructTechData){222, (Byte []){179, 187, 173, 173, 191, 185, 187, 129, 173, 187, 176, 186, 129, 189, 191, 179, 187, 172, 191, 130}, 19, 107};
        kStateStyleIdent = [self StringFromTechData:&value];
    }
    return kStateStyleIdent;
}

//: {11,15,9,9}
+ (NSString *)app_helicopterStatusFormat {
    /* static */ NSString *app_helicopterStatusFormat = nil;
    if (!app_helicopterStatusFormat) {
        StructTechData value = (StructTechData){173, (Byte []){214, 156, 156, 129, 156, 152, 129, 148, 129, 148, 208, 230}, 11, 89};
        app_helicopterStatusFormat = [self StringFromTechData:&value];
    }
    return app_helicopterStatusFormat;
}

//: onTapMediaItemPicture:
+ (NSString *)m_minPath {
    /* static */ NSString *m_minPath = nil;
    if (!m_minPath) {
        StructTechData value = (StructTechData){207, (Byte []){160, 161, 155, 174, 191, 130, 170, 171, 166, 174, 134, 187, 170, 162, 159, 166, 172, 187, 186, 189, 170, 245, 80}, 22, 214};
        m_minPath = [self StringFromTechData:&value];
    }
    return m_minPath;
}

//: bk_media_position_normal
+ (NSString *)show_afterwardMsg {
    /* static */ NSString *show_afterwardMsg = nil;
    if (!show_afterwardMsg) {
        StructTechData value = (StructTechData){148, (Byte []){246, 255, 203, 249, 241, 240, 253, 245, 203, 228, 251, 231, 253, 224, 253, 251, 250, 203, 250, 251, 230, 249, 245, 248, 253}, 24, 104};
        show_afterwardMsg = [self StringFromTechData:&value];
    }
    return show_afterwardMsg;
}

//: {3,8,3,3}
+ (NSString *)main_freedTitle {
    /* static */ NSString *main_freedTitle = nil;
    if (!main_freedTitle) {
        StructTechData value = (StructTechData){146, (Byte []){233, 161, 190, 170, 190, 161, 190, 161, 239, 93}, 9, 110};
        main_freedTitle = [self StringFromTechData:&value];
    }
    return main_freedTitle;
}

//: bk_media_shoot_normal
+ (NSString *)notiShowPointFormat {
    /* static */ NSString *notiShowPointFormat = nil;
    if (!notiShowPointFormat) {
        StructTechData value = (StructTechData){26, (Byte []){120, 113, 69, 119, 127, 126, 115, 123, 69, 105, 114, 117, 117, 110, 69, 116, 117, 104, 119, 123, 118, 9}, 21, 178};
        notiShowPointFormat = [self StringFromTechData:&value];
    }
    return notiShowPointFormat;
}

//: {9,11,9,15}
+ (NSString *)noti_stateMessage {
    /* static */ NSString *noti_stateMessage = nil;
    if (!noti_stateMessage) {
        StructTechData value = (StructTechData){52, (Byte []){79, 13, 24, 5, 5, 24, 13, 24, 5, 1, 73, 137}, 11, 115};
        noti_stateMessage = [self StringFromTechData:&value];
    }
    return noti_stateMessage;
}

//: bk_media_picture_pressed
+ (NSString *)showBronzeAccordName {
    /* static */ NSString *showBronzeAccordName = nil;
    if (!showBronzeAccordName) {
        StructTechData value = (StructTechData){241, (Byte []){147, 154, 174, 156, 148, 149, 152, 144, 174, 129, 152, 146, 133, 132, 131, 148, 174, 129, 131, 148, 130, 130, 148, 149, 32}, 24, 103};
        showBronzeAccordName = [self StringFromTechData:&value];
    }
    return showBronzeAccordName;
}

//: bk_media_picture_normal
+ (NSString *)dreamRacialValue {
    /* static */ NSString *dreamRacialValue = nil;
    if (!dreamRacialValue) {
        StructTechData value = (StructTechData){95, (Byte []){61, 52, 0, 50, 58, 59, 54, 62, 0, 47, 54, 60, 43, 42, 45, 58, 0, 49, 48, 45, 50, 62, 51, 160}, 23, 110};
        dreamRacialValue = [self StringFromTechData:&value];
    }
    return dreamRacialValue;
}

//: {9,15,9,9}
+ (NSString *)userNineValue {
    /* static */ NSString *userNineValue = nil;
    if (!userNineValue) {
        StructTechData value = (StructTechData){46, (Byte []){85, 23, 2, 31, 27, 2, 23, 2, 23, 83, 99}, 10, 9};
        userNineValue = [self StringFromTechData:&value];
    }
    return userNineValue;
}

//: {8,20,8,20}
+ (NSString *)noti_extraHugeIdent {
    /* static */ NSString *noti_extraHugeIdent = nil;
    if (!noti_extraHugeIdent) {
        StructTechData value = (StructTechData){153, (Byte []){226, 161, 181, 171, 169, 181, 161, 181, 171, 169, 228, 6}, 11, 29};
        noti_extraHugeIdent = [self StringFromTechData:&value];
    }
    return noti_extraHugeIdent;
}

//: {10,10,10,10}
+ (NSString *)mainWorkerMsg {
    /* static */ NSString *mainWorkerMsg = nil;
    if (!mainWorkerMsg) {
        StructTechData value = (StructTechData){166, (Byte []){221, 151, 150, 138, 151, 150, 138, 151, 150, 138, 151, 150, 219, 132}, 13, 151};
        mainWorkerMsg = [self StringFromTechData:&value];
    }
    return mainWorkerMsg;
}

//: Audios
+ (NSString *)kCoveQuickMessage {
    /* static */ NSString *kCoveQuickMessage = nil;
    if (!kCoveQuickMessage) {
        StructTechData value = (StructTechData){36, (Byte []){101, 81, 64, 77, 75, 87, 13}, 6, 29};
        kCoveQuickMessage = [self StringFromTechData:&value];
    }
    return kCoveQuickMessage;
}

//: {3,3,3,8}
+ (NSString *)dream_admitName {
    /* static */ NSString *dream_admitName = nil;
    if (!dream_admitName) {
        StructTechData value = (StructTechData){104, (Byte []){19, 91, 68, 91, 68, 91, 68, 80, 21, 255}, 9, 60};
        dream_admitName = [self StringFromTechData:&value];
    }
    return dream_admitName;
}

//: onTapMediaItemLocation:
+ (NSString *)dreamCoachValue {
    /* static */ NSString *dreamCoachValue = nil;
    if (!dreamCoachValue) {
        StructTechData value = (StructTechData){226, (Byte []){141, 140, 182, 131, 146, 175, 135, 134, 139, 131, 171, 150, 135, 143, 174, 141, 129, 131, 150, 139, 141, 140, 216, 245}, 23, 24};
        dreamCoachValue = [self StringFromTechData:&value];
    }
    return dreamCoachValue;
}

//: onTapMediaItemShoot:
+ (NSString *)userTitleLanceId {
    /* static */ NSString *userTitleLanceId = nil;
    if (!userTitleLanceId) {
        StructTechData value = (StructTechData){72, (Byte []){39, 38, 28, 41, 56, 5, 45, 44, 33, 41, 1, 60, 45, 37, 27, 32, 39, 39, 60, 114, 51}, 20, 145};
        userTitleLanceId = [self StringFromTechData:&value];
    }
    return userTitleLanceId;
}

//: {8,12,8,12}
+ (NSString *)noti_originStr {
    /* static */ NSString *noti_originStr = nil;
    if (!noti_originStr) {
        StructTechData value = (StructTechData){141, (Byte []){246, 181, 161, 188, 191, 161, 181, 161, 188, 191, 240, 115}, 11, 199};
        noti_originStr = [self StringFromTechData:&value];
    }
    return noti_originStr;
}

//: {11,11,9,15}
+ (NSString *)m_hateIdent {
    /* static */ NSString *m_hateIdent = nil;
    if (!m_hateIdent) {
        StructTechData value = (StructTechData){217, (Byte []){162, 232, 232, 245, 232, 232, 245, 224, 245, 232, 236, 164, 7}, 12, 111};
        m_hateIdent = [self StringFromTechData:&value];
    }
    return m_hateIdent;
}

//: message_send_album
+ (NSString *)appExceptMessage {
    /* static */ NSString *appExceptMessage = nil;
    if (!appExceptMessage) {
        StructTechData value = (StructTechData){42, (Byte []){71, 79, 89, 89, 75, 77, 79, 117, 89, 79, 68, 78, 117, 75, 70, 72, 95, 71, 194}, 18, 23};
        appExceptMessage = [self StringFromTechData:&value];
    }
    return appExceptMessage;
}

//: message_please_enter_content
+ (NSString *)dreamPlaceHeroData {
    /* static */ NSString *dreamPlaceHeroData = nil;
    if (!dreamPlaceHeroData) {
        StructTechData value = (StructTechData){173, (Byte []){192, 200, 222, 222, 204, 202, 200, 242, 221, 193, 200, 204, 222, 200, 242, 200, 195, 217, 200, 223, 242, 206, 194, 195, 217, 200, 195, 217, 129}, 28, 4};
        dreamPlaceHeroData = [self StringFromTechData:&value];
    }
    return dreamPlaceHeroData;
}

//: #333333
+ (NSString *)app_clothDeathMsg {
    /* static */ NSString *app_clothDeathMsg = nil;
    if (!app_clothDeathMsg) {
        StructTechData value = (StructTechData){101, (Byte []){70, 86, 86, 86, 86, 86, 86, 18}, 7, 114};
        app_clothDeathMsg = [self StringFromTechData:&value];
    }
    return app_clothDeathMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowConfig.m
// ButtonKit
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchKitConfig.h"
#import "ShowConfig.h"
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"
//: #import "WatchMediaItem.h"
#import "InfoMakeBar.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface WatchKitSettings()
@interface ZoneSettings()
{
    //: BOOL _isRight;
    BOOL _isRight;
}

//: - (instancetype)init:(BOOL)isRight;
- (instancetype)initShared:(BOOL)isRight;

//: @end
@end


//: @implementation WatchKitConfig
@implementation ShowConfig

//: - (instancetype) init
- (instancetype) init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: [self applyDefaultSettings];
        [self with];
    }
    //: return self;
    return self;
}

//: - (NSArray *)defaultMediaItems
- (NSArray *)emptyItems
{
    //: return @[[WatchMediaItem item:@"onTapMediaItemPicture:"
    return @[[InfoMakeBar icon:[TechData m_minPath]
           //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
           message:[UIImage imageNamed:[TechData dreamRacialValue]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_picture_normal"]
         name:[UIImage imageNamed:[TechData dreamRacialValue]]
                 //: title:[WatchLanguageManager getTextWithKey:@"message_send_album"]],//@"相册".
                 sub:[PaintedNaturalLanguageTo exhibit:[TechData appExceptMessage]]],//@"相册".

    //: [WatchMediaItem item:@"onTapMediaItemShoot:"
    [InfoMakeBar icon:[TechData userTitleLanceId]
           //: normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
           message:[UIImage imageNamed:[TechData notiShowPointFormat]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
         name:[UIImage imageNamed:[TechData notiShowPointFormat]]
                 //: title:[WatchLanguageManager getTextWithKey:@"message_send_camera"]],//@"拍摄".
                 sub:[PaintedNaturalLanguageTo exhibit:[TechData kStateStyleIdent]]],//@"拍摄".

    //: [WatchMediaItem item:@"onTapMediaItemLocation:"
    [InfoMakeBar icon:[TechData dreamCoachValue]
           //: normalImage:[UIImage imageNamed:@"bk_media_position_normal"]
           message:[UIImage imageNamed:[TechData show_afterwardMsg]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_position_normal"]
         name:[UIImage imageNamed:[TechData show_afterwardMsg]]
                 //: title:[WatchLanguageManager getTextWithKey:@"Audios"]],//@"位置".
                 sub:[PaintedNaturalLanguageTo exhibit:[TechData kCoveQuickMessage]]],//@"位置".

    //: ];
    ];
}

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message
- (NSArray *)name:(NIMMessage *)message
{
    //: NSMutableArray *menuItems = [NSMutableArray array];
    NSMutableArray *menuItems = [NSMutableArray array];
    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [menuItems addObject:[WatchMediaItem item:@"onTapMenuItemCopy:"
        [menuItems addObject:[InfoMakeBar icon:[TechData main_collectorMsg]
                                    //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
                                    message:[UIImage imageNamed:[TechData dreamRacialValue]]
                                  //: selectedImage:[UIImage imageNamed:@"bk_media_picture_pressed"]
                                  name:[UIImage imageNamed:[TechData showBronzeAccordName]]
                                          //: title:[WatchLanguageManager getTextWithKey:@"复制"]]];
                                          sub:[PaintedNaturalLanguageTo exhibit:@"复制"]]];
    }

//    InfoMakeBar *delItem = [InfoMakeBar item:@"onTapMenuItemDelete:"
//                                normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
//                              selectedImage:[UIImage imageNamed:@"bk_media_shoot_pressed"]
//                                      title:@"删除".nim_localized];
//        
//    [menuItems addObject:delItem];
    //: return menuItems;
    return menuItems;
}

//: - (CGFloat)maxNotificationTipPadding{
- (CGFloat)origin{
    //: return 20.f;
    return 20.f;
}


//: - (void)applyDefaultSettings
- (void)with
{
    //: _messageInterval = 300;
    _messageInterval = 300;
    //: _messageLimit = 20;
    _messageLimit = 20;
    //: _recordMaxDuration = 60.f;
    _recordMaxDuration = 60.f;
    //: _placeholder = [WatchLanguageManager getTextWithKey:@"message_please_enter_content"];
    _placeholder = [PaintedNaturalLanguageTo exhibit:[TechData dreamPlaceHeroData]];//@"请输入消息".;
    //: _inputMaxLength = 1000;
    _inputMaxLength = 1000;
    //: _nickFont = [UIFont boldSystemFontOfSize:15];
    _nickFont = [UIFont boldSystemFontOfSize:15];
    //: _nickColor = [UIColor colorWithHexString:@"#333333"];
    _nickColor = [UIColor min:[TechData app_clothDeathMsg]];
    //: _receiptFont = [UIFont systemFontOfSize:13.0];
    _receiptFont = [UIFont systemFontOfSize:13.0];
    //: _receiptColor = [UIColor darkGrayColor];
    _receiptColor = [UIColor darkGrayColor];
    //: _avatarType = NIMKitAvatarTypeRounded;
    _avatarType = NIMKitAvatarTypeRounded;
    //: _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    //: _leftBubbleSettings = [[WatchKitSettings alloc] init:NO];
    _leftBubbleSettings = [[ZoneSettings alloc] initShared:NO];
    //: _rightBubbleSettings = [[WatchKitSettings alloc] init:YES];
    _rightBubbleSettings = [[ZoneSettings alloc] initShared:YES];
}

//: - (WatchKitSetting *)setting:(NIMMessage *)message
- (SubObject *)date:(NIMMessage *)message
{
    //: WatchKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ZoneSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: return settings.textSetting;
            return settings.textSetting;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: return settings.imageSetting;
            return settings.imageSetting;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: return settings.locationSetting;
            return settings.locationSetting;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: return settings.audioSetting;
            return settings.audioSetting;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: return settings.videoSetting;
            return settings.videoSetting;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: return settings.fileSetting;
            return settings.fileSetting;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: return settings.tipSetting;
            return settings.tipSetting;
        //: case NIMMessageTypeRtcCallRecord:
        case NIMMessageTypeRtcCallRecord:
            //: return settings.rtcCallRecordSetting;
            return settings.rtcCallRecordSetting;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
        {
            //: NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            //: switch (object.notificationType)
            switch (object.notificationType)
            {
                //: case NIMNotificationTypeTeam:
                case NIMNotificationTypeTeam:
                    //: return settings.teamNotificationSetting;
                    return settings.teamNotificationSetting;
                //: case NIMNotificationTypeSuperTeam:
                case NIMNotificationTypeSuperTeam:
                    //: return settings.superTeamNotificationSetting;
                    return settings.superTeamNotificationSetting;
                //: case NIMNotificationTypeChatroom:
                case NIMNotificationTypeChatroom:
                    //: return settings.chatroomNotificationSetting;
                    return settings.chatroomNotificationSetting;
                //: case NIMNotificationTypeNetCall:
                case NIMNotificationTypeNetCall:
                    //: return settings.netcallNotificationSetting;
                    return settings.netcallNotificationSetting;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return settings.unsupportSetting;
    return settings.unsupportSetting;
}

//: - (WatchKitSetting *)repliedSetting:(NIMMessage *)message
- (SubObject *)empty:(NIMMessage *)message
{
    //: WatchKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ZoneSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: return settings.repliedSetting;
    return settings.repliedSetting;
}

//: @end
@end


//: @implementation WatchKitSettings
@implementation ZoneSettings

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initShared:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _isRight = isRight;
        _isRight = isRight;
        //: [self applyDefaultSettings];
        [self offgoing];
    }
    //: return self;
    return self;
}

//: - (void)applyDefaultSettings
- (void)offgoing
{
    //: [self applyDefaultTextSettings];
    [self draftCopy];
    //: [self applyDefaultAudioSettings];
    [self extend];
    //: [self applyDefaultVideoSettings];
    [self team];
    //: [self applyDefaultFileSettings];
    [self name];
    //: [self applyDefaultImageSettings];
    [self betwixt];
    //: [self applyDefaultLocationSettings];
    [self quick];
    //: [self applyDefaultTipSettings];
    [self endUser];
    //: [self applyDefaultUnsupportSettings];
    [self by];
    //: [self applyDefaultTeamNotificationSettings];
    [self pull];
    //: [self applyDefaultSuperTeamNotificationSettings];
    [self language];
    //: [self applyDefaultChatroomNotificationSettings];
    [self isMax];
    //: [self applyDefaultNetcallNotificationSettings];
    [self tapSettings];
    //: [self applyDefaultRepliedSettings];
    [self cellEnable];
    //: [self applyDefaultRtcCallRecordSettings];
    [self voice];
}

//: - (void)applyDefaultRepliedSettings
- (void)cellEnable
{
    //: _repliedSetting = [[WatchKitSetting alloc] init];
    _repliedSetting = [[SubObject alloc] init];
    //: _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData noti_originStr]) : UIEdgeInsetsFromString([TechData noti_originStr]);
    //: _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    //: _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    //: _repliedSetting.showAvatar = YES;
    _repliedSetting.showAvatar = YES;
}

//: - (void)applyDefaultTextSettings
- (void)draftCopy
{
    //: _textSetting = [[WatchKitSetting alloc] init:_isRight];
    _textSetting = [[SubObject alloc] initShared:_isRight];
    //: _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData noti_originStr]) : UIEdgeInsetsFromString([TechData noti_originStr]);
    //: _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _textSetting.font = [UIFont systemFontOfSize:16];
    _textSetting.font = [UIFont systemFontOfSize:16];
    //: _textSetting.showAvatar = YES;
    _textSetting.showAvatar = YES;
}

//: - (void)applyDefaultAudioSettings
- (void)extend
{
    //: _audioSetting = [[WatchKitSetting alloc] init:_isRight];
    _audioSetting = [[SubObject alloc] initShared:_isRight];
    //: _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData noti_originStr]) : UIEdgeInsetsFromString([TechData noti_originStr]);
    //: _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _audioSetting.font = [UIFont systemFontOfSize:16];
    _audioSetting.font = [UIFont systemFontOfSize:16];
    //: _audioSetting.showAvatar = YES;
    _audioSetting.showAvatar = YES;
}

//: - (void)applyDefaultVideoSettings
- (void)team
{
    //: _videoSetting = [[WatchKitSetting alloc] init:_isRight];
    _videoSetting = [[SubObject alloc] initShared:_isRight];
    //: _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData dream_admitName]) : UIEdgeInsetsFromString([TechData main_freedTitle]);
    //: _videoSetting.font = [UIFont systemFontOfSize:16];
    _videoSetting.font = [UIFont systemFontOfSize:16];
    //: _videoSetting.showAvatar = YES;
    _videoSetting.showAvatar = YES;
}

//: - (void)applyDefaultFileSettings
- (void)name
{
    //: _fileSetting = [[WatchKitSetting alloc] init:_isRight];
    _fileSetting = [[SubObject alloc] initShared:_isRight];
    //: _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData dream_admitName]) : UIEdgeInsetsFromString([TechData main_freedTitle]);
    //: _fileSetting.font = [UIFont systemFontOfSize:16];
    _fileSetting.font = [UIFont systemFontOfSize:16];
    //: _fileSetting.showAvatar = YES;
    _fileSetting.showAvatar = YES;
}

//: - (void)applyDefaultImageSettings
- (void)betwixt
{
    //: _imageSetting = [[WatchKitSetting alloc] init:_isRight];
    _imageSetting = [[SubObject alloc] initShared:_isRight];
    //: _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData dream_admitName]) : UIEdgeInsetsFromString([TechData main_freedTitle]);
    //: _imageSetting.showAvatar = YES;
    _imageSetting.showAvatar = YES;
}

//: - (void)applyDefaultLocationSettings
- (void)quick
{
    //: _locationSetting = [[WatchKitSetting alloc] init:_isRight];
    _locationSetting = [[SubObject alloc] initShared:_isRight];
    //: _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData dream_admitName]) : UIEdgeInsetsFromString([TechData main_freedTitle]);
    //: _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _locationSetting.font = [UIFont systemFontOfSize:12];
    _locationSetting.font = [UIFont systemFontOfSize:12];
    //: _locationSetting.showAvatar = YES;
    _locationSetting.showAvatar = YES;
}

//: - (void)applyDefaultTipSettings
- (void)endUser
{
    //: _tipSetting = [[WatchKitSetting alloc] init:_isRight];
    _tipSetting = [[SubObject alloc] initShared:_isRight];
    //: _tipSetting.contentInsets = UIEdgeInsetsZero;
    _tipSetting.contentInsets = UIEdgeInsetsZero;
    //: _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _tipSetting.font = [UIFont systemFontOfSize:12.f];
    _tipSetting.font = [UIFont systemFontOfSize:12.f];
    //: _tipSetting.showAvatar = NO;
    _tipSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];;
    UIImage *backgroundImage = [[UIImage imageNamed:[TechData k_suspectSurvivalValue]] resizableImageWithCapInsets:UIEdgeInsetsFromString([TechData noti_extraHugeIdent]) resizingMode:UIImageResizingModeStretch];;
    //: _tipSetting.normalBackgroundImage = backgroundImage;
    _tipSetting.normalBackgroundImage = backgroundImage;
    //: _tipSetting.highLightBackgroundImage = backgroundImage;
    _tipSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultRtcCallRecordSettings
- (void)voice
{
    //: _rtcCallRecordSetting = [[WatchKitSetting alloc] init:_isRight];
    _rtcCallRecordSetting = [[SubObject alloc] initShared:_isRight];
    //: _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{9,11,9,15}") : UIEdgeInsetsFromString(@"{9,15,9,9}");
    _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData noti_stateMessage]) : UIEdgeInsetsFromString([TechData userNineValue]);
    //: _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    //: _rtcCallRecordSetting.showAvatar = YES;
    _rtcCallRecordSetting.showAvatar = YES;
}


//: - (void)applyDefaultUnsupportSettings
- (void)by
{
    //: _unsupportSetting = [[WatchKitSetting alloc] init:_isRight];
    _unsupportSetting = [[SubObject alloc] initShared:_isRight];
    //: _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{10,10,10,10}") : UIEdgeInsetsFromString(@"{10,10,10,10}");
    _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData mainWorkerMsg]) : UIEdgeInsetsFromString([TechData mainWorkerMsg]);
    //: _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _unsupportSetting.font = [UIFont systemFontOfSize:16];
    _unsupportSetting.font = [UIFont systemFontOfSize:16];
    //: _unsupportSetting.showAvatar = YES;
    _unsupportSetting.showAvatar = YES;
}


//: - (void)applyDefaultTeamNotificationSettings
- (void)pull
{
    //: _teamNotificationSetting = [[WatchKitSetting alloc] init:_isRight];
    _teamNotificationSetting = [[SubObject alloc] initShared:_isRight];
    //: _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _teamNotificationSetting.showAvatar = NO;
    _teamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[TechData k_suspectSurvivalValue]] resizableImageWithCapInsets:UIEdgeInsetsFromString([TechData noti_extraHugeIdent]) resizingMode:UIImageResizingModeStretch];
    //: _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultSuperTeamNotificationSettings
- (void)language
{
    //: _superTeamNotificationSetting = [[WatchKitSetting alloc] init:_isRight];
    _superTeamNotificationSetting = [[SubObject alloc] initShared:_isRight];
    //: _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _superTeamNotificationSetting.showAvatar = NO;
    _superTeamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[TechData k_suspectSurvivalValue]] resizableImageWithCapInsets:UIEdgeInsetsFromString([TechData noti_extraHugeIdent]) resizingMode:UIImageResizingModeStretch];
    //: _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultChatroomNotificationSettings
- (void)isMax
{
    //: _chatroomNotificationSetting = [[WatchKitSetting alloc] init:_isRight];
    _chatroomNotificationSetting = [[SubObject alloc] initShared:_isRight];
    //: _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _chatroomNotificationSetting.showAvatar = NO;
    _chatroomNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[TechData k_suspectSurvivalValue]] resizableImageWithCapInsets:UIEdgeInsetsFromString([TechData noti_extraHugeIdent]) resizingMode:UIImageResizingModeStretch];
    //: _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultNetcallNotificationSettings
- (void)tapSettings
{
    //: _netcallNotificationSetting = [[WatchKitSetting alloc] init:_isRight];
    _netcallNotificationSetting = [[SubObject alloc] initShared:_isRight];
    //: _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{11,11,9,15}") : UIEdgeInsetsFromString(@"{11,15,9,9}");
    _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([TechData m_hateIdent]) : UIEdgeInsetsFromString([TechData app_helicopterStatusFormat]);
    //: _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    //: _netcallNotificationSetting.showAvatar = YES;
    _netcallNotificationSetting.showAvatar = YES;
}


//: @end
@end
