// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayBaseSessionContentConfig.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayBaseSessionContentConfig.h"
#import "DisplayBaseSessionContentConfig.h"
//: #import "DisplayTextContentConfig.h"
#import "ConfigCustom.h"
//: #import "DisplayImageContentConfig.h"
#import "SizePullConfig.h"
//: #import "DisplayAudioContentConfig.h"
#import "PageConfig.h"
//: #import "DisplayVideoContentConfig.h"
#import "GrowingCancel.h"
//: #import "DisplayFileContentConfig.h"
#import "LengthAt.h"
//: #import "DisplayNotificationContentConfig.h"
#import "ManDisplay.h"
//: #import "DisplayLocationContentConfig.h"
#import "BubbleConfig.h"
//: #import "DisplayUnsupportContentConfig.h"
#import "PersonMessage.h"
//: #import "DisplayTipContentConfig.h"
#import "BlendConfig.h"
//: #import "DisplayReplyedTextContentConfig.h"
#import "MaxConfig.h"
//: #import "DisplayRtcCallRecordContentConfig.h"
#import "EnableName.h"

//: @interface DisplaySessionContentConfigFactory ()
@interface SumryCrop ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) DisplayUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) PersonMessage *unsupportConfig;
//: @end
@end

//: @implementation DisplaySessionContentConfigFactory
@implementation SumryCrop

//: + (instancetype)sharedFacotry
+ (instancetype)transferFacotry
{
    //: static DisplaySessionContentConfigFactory *instance = nil;
    static SumryCrop *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[DisplaySessionContentConfigFactory alloc] init];
        instance = [[SumryCrop alloc] init];
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
        //: _dict = @{@(NIMMessageTypeText) : [DisplayTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [ConfigCustom new],
                  //: @(NIMMessageTypeImage) : [DisplayImageContentConfig new],
                  @(NIMMessageTypeImage) : [SizePullConfig new],
                  //: @(NIMMessageTypeAudio) : [DisplayAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [PageConfig new],
                  //: @(NIMMessageTypeVideo) : [DisplayVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [GrowingCancel new],
                  //: @(NIMMessageTypeFile) : [DisplayFileContentConfig new],
                  @(NIMMessageTypeFile) : [LengthAt new],
                  //: @(NIMMessageTypeLocation) : [DisplayLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [BubbleConfig new],
                  //: @(NIMMessageTypeNotification) : [DisplayNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [ManDisplay new],
                  //: @(NIMMessageTypeTip) : [DisplayTipContentConfig new],
                  @(NIMMessageTypeTip) : [BlendConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [DisplayRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [EnableName new],
        //: };
        };

        //: DisplayReplyedTextContentConfig *replyedTextConfig = [DisplayReplyedTextContentConfig new];
        MaxConfig *replyedTextConfig = [MaxConfig new];
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
        //: _unsupportConfig = [[DisplayUnsupportContentConfig alloc] init];
        _unsupportConfig = [[PersonMessage alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<OnTopConfig>)readTeam:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<OnTopConfig>config = [_replyDict objectForKey:@(type)];
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
- (id<OnTopConfig>)standard:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<OnTopConfig>config = [_dict objectForKey:@(type)];
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
