
#import <Foundation/Foundation.h>

@interface ArtHistorianData : NSObject

@end

@implementation ArtHistorianData

+ (NSData *)ArtHistorianDataToData:(NSString *)value {
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

+ (Byte *)ArtHistorianDataToCache:(Byte *)data {
    int bullPork = data[0];
    Byte subjectMatter = data[1];
    int dataItem = data[2];
    for (int i = dataItem; i < dataItem + bullPork; i++) {
        int value = data[i] + subjectMatter;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[dataItem + bullPork] = 0;
    return data + dataItem;
}

+ (NSString *)StringFromArtHistorianData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ArtHistorianDataToCache:data]];
}

//: not supported notification type %zd
+ (NSString *)kTitlePitaValue {
    /* static */ NSString *kTitlePitaValue = nil;
    if (!kTitlePitaValue) {
		NSString *origin = @"235C09258AEA1B86BF121318C4171914141316180908C41213180D0A0D0705180D1312C4181D1409C4C91E088A";
		NSData *data = [ArtHistorianData ArtHistorianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePitaValue = [self StringFromArtHistorianData:value];
    }
    return kTitlePitaValue;
}

//: message should be notification
+ (NSString *)kTitle_overnightName {
    /* static */ NSString *kTitle_overnightName = nil;
    if (!kTitle_overnightName) {
		NSString *origin = @"1E51084219A0D9581C142222101614CF22171E241B13CF1114CF1D1E23181518121023181E1D64";
		NSData *data = [ArtHistorianData ArtHistorianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_overnightName = [self StringFromArtHistorianData:value];
    }
    return kTitle_overnightName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManDisplay.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayNotificationContentConfig.h"
#import "ManDisplay.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "DisplayUnsupportContentConfig.h"
#import "PersonMessage.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation DisplayNotificationContentConfig
@implementation ManDisplay
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [ArtHistorianData kTitle_overnightName]);

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
            //: label.text = [DisplayKitUtil messageTipContent:message];
            label.text = [AtPull view:message];
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Mortification text].config toWith:message].font;
            //: label.numberOfLines = 0;
            label.numberOfLines = 0;
            //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGFloat padding = [Mortification text].config.alongSelected;
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
            LabelNameScrollView *label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Mortification text].config toWith:message].font;
            //: NSString *text = [DisplayKitUtil messageTipContent:message];
            NSString *text = [AtPull view:message];
            //: [label nim_setText:text];
            [label deleteVoice:text];

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
            //: DisplayUnsupportContentConfig *config = [[DisplayUnsupportContentConfig alloc] init];
            PersonMessage *config = [[PersonMessage alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config step:cellWidth menu:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, [ArtHistorianData kTitlePitaValue],object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [ArtHistorianData kTitle_overnightName]);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"DisplaySessionNotificationContentView";
            return @"VanguardNameView";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"DisplaySessionNetChatNotifyContentView";
            return @"OnReplyView";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"DisplaySessionUnknowContentView";
            return @"ViewControl";
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)scaling:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [ArtHistorianData kTitle_overnightName]);

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
