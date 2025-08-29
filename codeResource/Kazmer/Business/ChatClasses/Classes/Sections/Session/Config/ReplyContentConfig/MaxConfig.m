// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxConfig.m
// Mortification
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyedTextContentConfig.h"
#import "MaxConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface FFFReplyedTextContentConfig ()
@interface MaxConfig ()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) LabelNameScrollView *label;

//: @end
@end

//: @implementation FFFReplyedTextContentConfig
@implementation MaxConfig


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: NSString *text = [[MyUserKit sharedKit] replyedContentWithMessage:message];
    NSString *text = [[Mortification text] cells:message];
    //: self.label.font = [[MyUserKit sharedKit].config repliedSetting:message].replyedFont;
    self.label.font = [[Mortification text].config willRemote:message].replyedFont;

    //: [self.label nim_setText:text];
    [self.label deleteVoice:text];

//    CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
//    CGFloat bubbleLeftToContent  = 14;
//    CGFloat contentRightToBubble = 14;
//    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
//    
//    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
//    return CGSizeMake(ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);

    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGFloat nameMaxWidth = (msgContentMaxWidth - 50);
    CGFloat nameMaxWidth = (msgContentMaxWidth - 50);

    //: CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    //: return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);
    return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);



}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config repliedSetting:message].contentInsets;
    return [[Mortification text].config willRemote:message].contentInsets;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"FFFReplyedTextContentView";
    return @"ShouldTextView";
}

//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (LabelNameScrollView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}


//: @end
@end