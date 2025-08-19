
#import <Foundation/Foundation.h>

typedef struct {
    Byte starChamber;
    Byte *them;
    unsigned int patrolCove;
	int becomeCloud;
	int atPure;
} StructLetData;

@interface LetData : NSObject

@end

@implementation LetData

+ (Byte *)LetDataToByte:(StructLetData *)data {
    for (int i = 0; i < data->patrolCove; i++) {
        data->them[i] ^= data->starChamber;
    }
    data->them[data->patrolCove] = 0;
	if (data->patrolCove >= 2) {
		data->becomeCloud = data->them[0];
		data->atPure = data->them[1];
	}
    return data->them;
}

+ (NSString *)StringFromLetData:(StructLetData *)data {
    return [NSString stringWithUTF8String:(char *)[self LetDataToByte:data]];
}

//: \"未知消息\"
+ (NSString *)showRacyMessage {
    /* static */ NSString *showRacyMessage = nil;
    if (!showRacyMessage) {
        StructLetData value = (StructLetData){42, (Byte []){8, 204, 182, 128, 205, 181, 143, 204, 156, 162, 204, 171, 133, 8, 13}, 14, 244, 146};
        showRacyMessage = [self StringFromLetData:&value];
    }
    return showRacyMessage;
}

//: class should be subclass of NIMLayoutConfig
+ (NSString *)appOakStr {
    /* static */ NSString *appOakStr = nil;
    if (!appOakStr) {
        StructLetData value = (StructLetData){17, (Byte []){114, 125, 112, 98, 98, 49, 98, 121, 126, 100, 125, 117, 49, 115, 116, 49, 98, 100, 115, 114, 125, 112, 98, 98, 49, 126, 119, 49, 95, 88, 92, 93, 112, 104, 126, 100, 101, 82, 126, 127, 119, 120, 118, 253}, 43, 166, 33};
        appOakStr = [self StringFromLetData:&value];
    }
    return appOakStr;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
// ButtonKit.m
// ButtonKit
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFKitTimerHolder.h"
#import "UserCell.h"
//: #import "FFFKitNotificationFirer.h"
#import "MessageObject.h"
//: #import "FFFKitDataProviderImpl.h"
#import "InputImpl.h"
//: #import "FFFCellLayoutConfig.h"
#import "PinFrame.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "FFFChatUIManager.h"
#import "ZoneUimanager.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const showSubmitId;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const appHostTitle;


//: @interface MyUserKit(){
@interface ButtonKit(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) MessageObject *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<PinFrame> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation ButtonKit
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[MessageObject alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[InputImpl alloc] init]; //默认使用 ButtonKit 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[PinFrame alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self count];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)sheerOption
{
    //: static MyUserKit *instance = nil;
    static ButtonKit *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[ButtonKit alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)secretMargin:(PinFrame *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[PinFrame class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, [LetData appOakStr]);
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle overUserMonth];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle value];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<ZoneUimanager>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return ZoneUimanager.abstract;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<PinFrame>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (ShowConfig *)config
{
    //不要放在 ButtonKit 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[ShowConfig alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)manager:(NSArray *)userIds{
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
        TimeInfo *info = [[TimeInfo alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = showSubmitId;
        //: [self.firer addFireInfo:info];
        [self.firer gildTheLily:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)reply:(NSString *)teamId device:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    TimeInfo *info = [[TimeInfo alloc] init];
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
    info.notificationName = appHostTitle;
    //: [self.firer addFireInfo:info];
    [self.firer gildTheLily:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)withType:(NSString *)teamId mainTeamType:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    TimeInfo *info = [[TimeInfo alloc] init];
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
    [self.firer gildTheLily:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (TingMessage *)past:(NSString *)userId skinColour_strong:(CoverTingContent *)option
{
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(past:skinColour_strong:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider past:userId skinColour_strong:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (TingMessage *)pressMedia:(NSString *)teamId sizeOption:(CoverTingContent *)option
{
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(pressMedia:sizeOption:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider pressMedia:teamId sizeOption:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (TingMessage *)tiddler:(NSString *)teamId ting:(CoverTingContent *)option
{
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(tiddler:ting:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider tiddler:teamId ting:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)count {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[TitleToManager draw] messageStart];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)buttons:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return [LetData showRacyMessage].messageWith;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(buttons:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider buttons:message];
    }
    //: return info;
    return info;
}

//: @end
@end