
#import <Foundation/Foundation.h>
typedef struct {
    Byte medalTime;
    Byte *sumimate;
    unsigned int prayerbook;
    Byte genetOversee;
	int infoEngagement;
	int totalTable;
	int necessaryStreak;
} ShirtData;

NSString *StringFromShirtData(ShirtData *data);


//: NTESChatroomTextContentView
ShirtData m_contentTubeData = (ShirtData){158, (Byte []){208, 202, 219, 205, 221, 246, 255, 234, 236, 241, 241, 243, 202, 251, 230, 234, 221, 241, 240, 234, 251, 240, 234, 200, 247, 251, 233, 237}, 27, 192, 132, 185, 25};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeBarCover.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "NoticeBarCover.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface NoticeBarCover()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) QuickNameView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation NoticeBarCover

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
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label stay:text];
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
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return StringFromShirtData(&m_contentTubeData);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (QuickNameView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[QuickNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)threadded:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end

Byte *ShirtDataToByte(ShirtData *data) {
    if (data->genetOversee < 118) return data->sumimate;
    for (int i = 0; i < data->prayerbook; i++) {
        data->sumimate[i] ^= data->medalTime;
    }
    data->sumimate[data->prayerbook] = 0;
    data->genetOversee = 7;
	if (data->prayerbook >= 3) {
		data->infoEngagement = data->sumimate[0];
		data->totalTable = data->sumimate[1];
		data->necessaryStreak = data->sumimate[2];
	}
    return data->sumimate;
}

NSString *StringFromShirtData(ShirtData *data) {
    return [NSString stringWithUTF8String:(char *)ShirtDataToByte(data)];
}
