
#import <Foundation/Foundation.h>

@interface BurningData : NSObject

@end

@implementation BurningData

+ (NSData *)BurningDataToData:(NSString *)value {
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

+ (Byte *)BurningDataToCache:(Byte *)data {
    int rake = data[0];
    Byte house = data[1];
    int reparation = data[2];
    for (int i = reparation; i < reparation + rake; i++) {
        int value = data[i] + house;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[reparation + rake] = 0;
    return data + reparation;
}

+ (NSString *)StringFromBurningData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BurningDataToCache:data]];
}

//: 回复详情
+ (NSString *)kTitle_impossibleContent {
    /* static */ NSString *kTitle_impossibleContent = nil;
    if (!kTitle_impossibleContent) {
		NSString *origin = @"0c380477ad6366ad6c55b0776eae4b4d67";
		NSData *data = [BurningData BurningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_impossibleContent = [self StringFromBurningData:value];
    }
    return kTitle_impossibleContent;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  LastexViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERThreadTalkSessionViewController.h"
#import "LastexViewController.h"
//: #import "USERThreadSessionConfig.h"
#import "DentalFlossSessionConfig.h"

//: @interface USERThreadTalkSessionViewController ()
@interface LastexViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) USERThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) DentalFlossSessionConfig *sessionConfig;
//: @end
@end

//: @implementation USERThreadTalkSessionViewController
@implementation LastexViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithWoodpile:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithTitleSession:message.session];
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
- (void)resolution
{
}

//: - (NSString *)sessionTitle
- (NSString *)doingdSessionContent
{
    //: return @"回复详情".user_localized;
    return [BurningData kTitle_impossibleContent].nominate;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self by:message])
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
    if (![self by:message])
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
     if (![self by:message])
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
        if ([self by:message])
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
    if (![self by:message])
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
    if (![self by:message])
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
- (BOOL)by:(NIMMessage *)message
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

//: - (id<DisplaySessionConfig>)sessionConfig
- (id<ColorConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[USERThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[DentalFlossSessionConfig alloc] initWithTeam:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)withing:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)file:(NIMMessage *)message
                 //: inView:(UIView *)view
                 search:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end
