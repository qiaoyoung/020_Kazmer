
#import <Foundation/Foundation.h>

@interface SeldomData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SeldomData

+ (instancetype)sharedInstance {
    static SeldomData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SeldomDataToData:(NSString *)value {
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

- (Byte *)SeldomDataToCache:(Byte *)data {
    int aspiration = data[0];
    Byte chemicalElement = data[1];
    int troubled = data[2];
    for (int i = troubled; i < troubled + aspiration; i++) {
        int value = data[i] - chemicalElement;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[troubled + aspiration] = 0;
    return data + troubled;
}

- (NSString *)StringFromSeldomData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SeldomDataToCache:data]];
}

//: USERChatroomTextContentView
- (NSString *)kName_labData {
    /* static */ NSString *kName_labData = nil;
    if (!kName_labData) {
		NSString *origin = @"1b5404aaa9a799a697bcb5c8c6c3c3c1a8b9ccc897c3c2c8b9c2c8aabdb9cbf9";
		NSData *data = [SeldomData SeldomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_labData = [self StringFromSeldomData:value];
    }
    return kName_labData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextRecord.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERChatroomTextContentConfig.h"
#import "TextRecord.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface USERChatroomTextContentConfig()
@interface TextRecord()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) LabelNameScrollView *label;

//: @end
@end

//: @implementation USERChatroomTextContentConfig
@implementation TextRecord

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label deleteVoice:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"USERChatroomTextContentView";
    return [[SeldomData sharedInstance] kName_labData];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (LabelNameScrollView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)scaling:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end