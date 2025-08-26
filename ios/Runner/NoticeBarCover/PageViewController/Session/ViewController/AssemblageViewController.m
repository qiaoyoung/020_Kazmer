
#import <Foundation/Foundation.h>

typedef struct {
    Byte valueResort;
    Byte *gregorianCalendar;
    unsigned int master;
} StructEnvelopeData;

@interface EnvelopeData : NSObject

@end

@implementation EnvelopeData

+ (Byte *)EnvelopeDataToByte:(StructEnvelopeData *)data {
    for (int i = 0; i < data->master; i++) {
        data->gregorianCalendar[i] ^= data->valueResort;
    }
    data->gregorianCalendar[data->master] = 0;
    return data->gregorianCalendar;
}

+ (NSString *)StringFromEnvelopeData:(StructEnvelopeData *)data {
    return [NSString stringWithUTF8String:(char *)[self EnvelopeDataToByte:data]];
}

//: 回复详情
+ (NSString *)main_placeMsg {
    /* static */ NSString *main_placeMsg = nil;
    if (!main_placeMsg) {
        StructEnvelopeData value = (StructEnvelopeData){179, (Byte []){86, 40, 45, 86, 23, 62, 91, 28, 21, 85, 48, 54, 89}, 12};
        main_placeMsg = [self StringFromEnvelopeData:&value];
    }
    return main_placeMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  AssemblageViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "AssemblageViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "NoticeSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface AssemblageViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) NoticeSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation AssemblageViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithSpeedy:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithUnder:message.session];
    //: if (self)
    if (self)
    {
        //: _threadMesssage = message;
        _threadMesssage = message;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)setupNormalNav
- (void)find
{
}

//: - (NSString *)sessionTitle
- (NSString *)file
{
    //: return @"回复详情".ntes_localized;
    return [EnvelopeData main_placeMsg].textIndex;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self ting:message])
    {
        //: return;
        return;
    }
    //: [super willSendMessage:message];
    [super willSendMessage:message];
}

//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self ting:message])
    {
       //: return;
       return;
    }

    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
     //: if (![self shouldReceive:message])
     if (![self ting:message])
     {
         //: return;
         return;
     }

    //: [super sendMessage:message progress:progress];
    [super sendMessage:message progress:progress];
}

//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: NSMutableArray *subMessages = [NSMutableArray array];
    NSMutableArray *subMessages = [NSMutableArray array];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self shouldReceive:message])
        if ([self ting:message])
        {
            //: [subMessages addObject:message];
            [subMessages addObject:message];
        }
    }
    //: if (subMessages.count == 0)
    if (subMessages.count == 0)
    {
        //: return;
        return;
    }
    //: [super onRecvMessages:messages];
    [super onRecvMessages:messages];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if (![self shouldReceive:message])
    if (![self ting:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message progress:progress];
    [super fetchMessageAttachment:message progress:progress];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self ting:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message didCompleteWithError:error];
    [super fetchMessageAttachment:message didCompleteWithError:error];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
}


//: - (BOOL)shouldReceive:(NIMMessage *)message
- (BOOL)ting:(NIMMessage *)message
{
    //: BOOL should = [message.session isEqual:self.session] &&
    BOOL should = [message.session isEqual:self.session] &&
    //: [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    //: should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];
    should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];

    //: return should;
    return should;
}

//: - (id<WatchSessionConfig>)sessionConfig
- (id<MessagePinImage>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[NoticeSessionConfig alloc] initWithMember:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)valueing:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)inwardView:(NIMMessage *)message
                 //: inView:(UIView *)view
                 leftHandedness:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end
