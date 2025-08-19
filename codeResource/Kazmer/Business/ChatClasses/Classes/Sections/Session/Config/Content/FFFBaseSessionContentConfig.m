// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFBaseSessionContentConfig.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFBaseSessionContentConfig.h"
#import "FFFBaseSessionContentConfig.h"
//: #import "FFFTextContentConfig.h"
#import "InfoOld.h"
//: #import "FFFImageContentConfig.h"
#import "MessageOpen.h"
//: #import "FFFAudioContentConfig.h"
#import "ResponseRed.h"
//: #import "FFFVideoContentConfig.h"
#import "BarConfig.h"
//: #import "FFFFileContentConfig.h"
#import "ObjectConfig.h"
//: #import "FFFNotificationContentConfig.h"
#import "ValueBackground.h"
//: #import "FFFLocationContentConfig.h"
#import "ValueTingConfig.h"
//: #import "FFFUnsupportContentConfig.h"
#import "OldConfig.h"
//: #import "FFFTipContentConfig.h"
#import "CoverConfig.h"
//: #import "FFFReplyedTextContentConfig.h"
#import "FoldoutConfig.h"
//: #import "FFFRtcCallRecordContentConfig.h"
#import "DraftName.h"

//: @interface FFFSessionContentConfigFactory ()
@interface AccumulationFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) FFFUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) OldConfig *unsupportConfig;
//: @end
@end

//: @implementation FFFSessionContentConfigFactory
@implementation AccumulationFactory

//: + (instancetype)sharedFacotry
+ (instancetype)commonValue
{
    //: static FFFSessionContentConfigFactory *instance = nil;
    static AccumulationFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSessionContentConfigFactory alloc] init];
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
        //: _dict = @{@(NIMMessageTypeText) : [FFFTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [InfoOld new],
                  //: @(NIMMessageTypeImage) : [FFFImageContentConfig new],
                  @(NIMMessageTypeImage) : [MessageOpen new],
                  //: @(NIMMessageTypeAudio) : [FFFAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [ResponseRed new],
                  //: @(NIMMessageTypeVideo) : [FFFVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [BarConfig new],
                  //: @(NIMMessageTypeFile) : [FFFFileContentConfig new],
                  @(NIMMessageTypeFile) : [ObjectConfig new],
                  //: @(NIMMessageTypeLocation) : [FFFLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [ValueTingConfig new],
                  //: @(NIMMessageTypeNotification) : [FFFNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [ValueBackground new],
                  //: @(NIMMessageTypeTip) : [FFFTipContentConfig new],
                  @(NIMMessageTypeTip) : [CoverConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [FFFRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [DraftName new],
        //: };
        };

        //: FFFReplyedTextContentConfig *replyedTextConfig = [FFFReplyedTextContentConfig new];
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
        //: _unsupportConfig = [[FFFUnsupportContentConfig alloc] init];
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