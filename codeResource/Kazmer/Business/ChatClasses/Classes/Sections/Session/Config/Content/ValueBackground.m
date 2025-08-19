
#import <Foundation/Foundation.h>

NSString *StringFromAdditionalData(Byte *data);


//: not supported notification type %zd
Byte mainQuireTitle[] = {90, 35, 89, 4, 199, 200, 205, 121, 204, 206, 201, 201, 200, 203, 205, 190, 189, 121, 199, 200, 205, 194, 191, 194, 188, 186, 205, 194, 200, 199, 121, 205, 210, 201, 190, 121, 126, 211, 189, 94};

//: message should be notification
Byte showFatigueName[] = {84, 30, 63, 8, 252, 138, 103, 34, 172, 164, 178, 178, 160, 166, 164, 95, 178, 167, 174, 180, 171, 163, 95, 161, 164, 95, 173, 174, 179, 168, 165, 168, 162, 160, 179, 168, 174, 173, 104};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueBackground.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFNotificationContentConfig.h"
#import "ValueBackground.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "FFFUnsupportContentConfig.h"
#import "OldConfig.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation FFFNotificationContentConfig
@implementation ValueBackground
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromAdditionalData(showFatigueName));

    //: CGSize contentSize = CGSizeZero;
    CGSize contentSize = CGSizeZero;

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
        {
            //: CGFloat TeamNotificationMessageWidth = cellWidth;
            CGFloat TeamNotificationMessageWidth = cellWidth;
            //: UILabel *label = [[UILabel alloc] init];
            UILabel *label = [[UILabel alloc] init];
            //: label.text = [FFFKitUtil messageTipContent:message];
            label.text = [ObjectUtil complete:message];
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[ButtonKit sheerOption].config date:message].font;
            //: label.numberOfLines = 0;
            label.numberOfLines = 0;
            //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGFloat padding = [ButtonKit sheerOption].config.origin;
            //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            //: CGFloat cellPadding = 11.f;
            CGFloat cellPadding = 11.f;
            //: contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            //: break;
            break;
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            QuickNameView *label = [[QuickNameView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[ButtonKit sheerOption].config date:message].font;
            //: NSString *text = [FFFKitUtil messageTipContent:message];
            NSString *text = [ObjectUtil complete:message];
            //: [label nim_setText:text];
            [label stay:text];

            //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: FFFUnsupportContentConfig *config = [[FFFUnsupportContentConfig alloc] init];
            OldConfig *config = [[OldConfig alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config year:cellWidth table:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, StringFromAdditionalData(mainQuireTitle),object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromAdditionalData(showFatigueName));

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"FFFSessionNotificationContentView";
            return @"AssemblageControl";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"FFFSessionNetChatNotifyContentView";
            return @"RedControl";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"FFFSessionUnknowContentView";
            return @"MasterControl";
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)threadded:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromAdditionalData(showFatigueName));

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return NO;
            return NO;
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return YES;
            return YES;
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte * AdditionalDataToCache(Byte *data) {
    int hutOak = data[0];
    int poolHunter = data[1];
    Byte acid = data[2];
    int charterSystem = data[3];
    if (!hutOak) return data + charterSystem;
    for (int i = charterSystem; i < charterSystem + poolHunter; i++) {
        int value = data[i] - acid;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[charterSystem + poolHunter] = 0;
    return data + charterSystem;
}

NSString *StringFromAdditionalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AdditionalDataToCache(data)];
}
