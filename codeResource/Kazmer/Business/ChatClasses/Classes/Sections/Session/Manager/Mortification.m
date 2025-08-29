
#import <Foundation/Foundation.h>

NSString *StringFromEditorData(Byte *data);        


//: class should be subclass of NIMLayoutConfig
Byte kText_gentScripContent[] = {5, 43, 66, 5, 20, 33, 42, 31, 49, 49, 222, 49, 38, 45, 51, 42, 34, 222, 32, 35, 222, 49, 51, 32, 33, 42, 31, 49, 49, 222, 45, 36, 222, 12, 7, 11, 10, 31, 55, 45, 51, 50, 1, 45, 44, 36, 39, 37, 249};

//: \"未知消息\"
Byte kTitleDoorData[] = {60, 14, 22, 6, 172, 218, 12, 208, 134, 148, 209, 137, 143, 208, 160, 114, 208, 107, 153, 12, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
// Mortification.m
// Mortification
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFKitTimerHolder.h"
#import "LargenessHolder.h"
//: #import "FFFKitNotificationFirer.h"
#import "NotificationAdd.h"
//: #import "FFFKitDataProviderImpl.h"
#import "CommentTopIndex.h"
//: #import "FFFCellLayoutConfig.h"
#import "CellManWith.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "FFFChatUIManager.h"
#import "TextAt.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const noti_cellUrl;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const k_labelMsg;


//: @interface MyUserKit(){
@interface Mortification(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) NotificationAdd *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<CellManWith> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation Mortification
//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle disappearEnd];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<CellManWith>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[NotificationAdd alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[CommentTopIndex alloc] init]; //默认使用 Mortification 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[CellManWith alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self tip];
    }
    //: return self;
    return self;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (CancelTeamCorner *)ability:(NSString *)teamId naturalEvent_strong:(CellClean *)option
{
    //: FFFKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(ability:naturalEvent_strong:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider ability:teamId naturalEvent_strong:option];
    }
    //: return info;
    return info;

}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle sleepingCapsule];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)big:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        KitInfo *info = [[KitInfo alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = noti_cellUrl;
        //: [self.firer addFireInfo:info];
        [self.firer child:info];
    }
}

//: - (void)preloadNIMKitBundleResource {
- (void)tip {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[IndexManager item] path];
    //: });
    });
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)pressBlueConfig:(CellManWith *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[CellManWith class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, StringFromEditorData(kText_gentScripContent));
    }
}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (CancelTeamCorner *)cellList:(NSString *)teamId view:(CellClean *)option
{
    //: FFFKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(cellList:view:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider cellList:teamId view:option];
    }
    //: return info;
    return info;

}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)withContent:(NSString *)teamId nail:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    KitInfo *info = [[KitInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = k_labelMsg;
    //: [self.firer addFireInfo:info];
    [self.firer child:info];
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)cells:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return StringFromEditorData(kTitleDoorData).disable;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(cells:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider cells:message];
    }
    //: return info;
    return info;
}

//: + (instancetype)sharedKit
+ (instancetype)text
{
    //: static MyUserKit *instance = nil;
    static Mortification *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[Mortification alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<TextAt>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return TextAt.member;
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)notifyObjectType:(NSString *)teamId sessionBeforeTeamType:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    KitInfo *info = [[KitInfo alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer child:info];
}

//: - (FFFKitConfig *)config
- (MessageAtAdd *)config
{
    //不要放在 Mortification 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[MessageAtAdd alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (CancelTeamCorner *)tingVoice:(NSString *)userId keepingOption:(CellClean *)option
{
    //: FFFKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(tingVoice:keepingOption:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider tingVoice:userId keepingOption:option];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * EditorDataToCache(Byte *data) {
    int sauce = data[0];
    int knowSeat = data[1];
    Byte illustration = data[2];
    int sexually = data[3];
    if (!sauce) return data + sexually;
    for (int i = sexually; i < sexually + knowSeat; i++) {
        int value = data[i] + illustration;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sexually + knowSeat] = 0;
    return data + sexually;
}

NSString *StringFromEditorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EditorDataToCache(data)];
}
