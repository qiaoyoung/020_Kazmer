// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoOld.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTextContentConfig.h"
#import "InfoOld.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface FFFTextContentConfig()
@interface InfoOld()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) QuickNameView *label;

//: @end
@end


//: @implementation FFFTextContentConfig
@implementation InfoOld

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
//    NSString *text = message.text;
//    if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
//    {
//        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
//    }

    //: self.label.font = [[MyUserKit sharedKit].config setting:message].font;
    self.label.font = [[ButtonKit sheerOption].config date:message].font;

    //: [self.label nim_setText:text];
    [self.label stay:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"FFFSessionTextContentView";
    return @"InfoControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}



//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (QuickNameView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[QuickNameView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}

//: @end
@end