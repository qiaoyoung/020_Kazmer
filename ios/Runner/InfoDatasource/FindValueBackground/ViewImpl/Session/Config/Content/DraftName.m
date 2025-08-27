// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMRtcCallRecordCntentConfig.m
// ButtonKit
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchRtcCallRecordContentConfig.h"
#import "DraftName.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"

//: @implementation WatchRtcCallRecordContentConfig
@implementation DraftName

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NSString *text = [WatchKitUtil messageTipContent:message];
    NSString *text = [ObjectUtil complete:message];
    //: UIFont *font = [[MyUserKit sharedKit].config setting:message].font;;
    UIFont *font = [[ButtonKit sheerOption].config date:message].font;;
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    //: contentSize.width +=25;
    contentSize.width +=25;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"WatchSessionRtcCallRecordContentView";
    return @"FindValueControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}

//: @end
@end
