// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchBaseSessionContentConfig.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchBaseSessionContentConfig.h"
#import "WatchBaseSessionContentConfig.h"
//: #import "WatchTextContentConfig.h"
#import "InfoOld.h"
//: #import "WatchImageContentConfig.h"
#import "MessageOpen.h"
//: #import "WatchAudioContentConfig.h"
#import "ResponseRed.h"
//: #import "WatchVideoContentConfig.h"
#import "BarConfig.h"
//: #import "WatchFileContentConfig.h"
#import "ObjectConfig.h"
//: #import "WatchNotificationContentConfig.h"
#import "ValueBackground.h"
//: #import "WatchLocationContentConfig.h"
#import "ValueTingConfig.h"
//: #import "WatchUnsupportContentConfig.h"
#import "OldConfig.h"
//: #import "WatchTipContentConfig.h"
#import "CoverConfig.h"
//: #import "WatchReplyedTextContentConfig.h"
#import "FoldoutConfig.h"
//: #import "WatchRtcCallRecordContentConfig.h"
#import "DraftName.h"

//: @interface WatchSessionContentConfigFactory ()
@interface AccumulationFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) WatchUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) OldConfig *unsupportConfig;
//: @end
@end

//: @implementation WatchSessionContentConfigFactory
@implementation AccumulationFactory

//: + (instancetype)sharedFacotry
+ (instancetype)commonValue
{
    //: static WatchSessionContentConfigFactory *instance = nil;
    static AccumulationFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[WatchSessionContentConfigFactory alloc] init];
        instance = [[AccumulationFactory alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _dict = @{@(NIMMessageTypeText) : [WatchTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [InfoOld new],
                  //: @(NIMMessageTypeImage) : [WatchImageContentConfig new],
                  @(NIMMessageTypeImage) : [MessageOpen new],
                  //: @(NIMMessageTypeAudio) : [WatchAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [ResponseRed new],
                  //: @(NIMMessageTypeVideo) : [WatchVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [BarConfig new],
                  //: @(NIMMessageTypeFile) : [WatchFileContentConfig new],
                  @(NIMMessageTypeFile) : [ObjectConfig new],
                  //: @(NIMMessageTypeLocation) : [WatchLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [ValueTingConfig new],
                  //: @(NIMMessageTypeNotification) : [WatchNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [ValueBackground new],
                  //: @(NIMMessageTypeTip) : [WatchTipContentConfig new],
                  @(NIMMessageTypeTip) : [CoverConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [WatchRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [DraftName new],
        //: };
        };

        //: WatchReplyedTextContentConfig *replyedTextConfig = [WatchReplyedTextContentConfig new];
        FoldoutConfig *replyedTextConfig = [FoldoutConfig new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[WatchUnsupportContentConfig alloc] init];
        _unsupportConfig = [[OldConfig alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<TableAccumulationReplacement>)title:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<TableAccumulationReplacement>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<TableAccumulationReplacement>)feel:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<TableAccumulationReplacement>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
