
#import <Foundation/Foundation.h>

@interface CuttingEdgeData : NSObject

+ (instancetype)sharedInstance;

//: 我发起了白板演示
@property (nonatomic, copy) NSString *kPactName;

//: 白板演示已结束
@property (nonatomic, copy) NSString *appCabinFormat;

//: data
@property (nonatomic, copy) NSString *m_barFormat;

//: icon_whiteboard_session_msg
@property (nonatomic, copy) NSString *kMarchMessage;

//: flag
@property (nonatomic, copy) NSString *k_rnaName;

//: type
@property (nonatomic, copy) NSString *dream_achieveTitle;

@end

@implementation CuttingEdgeData

+ (instancetype)sharedInstance {
    static CuttingEdgeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CuttingEdgeDataToCache:(Byte *)data {
    int mindTitle = data[0];
    Byte cartShow = data[1];
    int fatigue = data[2];
    for (int i = fatigue; i < fatigue + mindTitle; i++) {
        int value = data[i] + cartShow;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[fatigue + mindTitle] = 0;
    return data + fatigue;
}

- (NSString *)StringFromCuttingEdgeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CuttingEdgeDataToCache:data]];
}

//: 白板演示已结束
- (NSString *)appCabinFormat {
    if (!_appCabinFormat) {
        Byte value[] = {21, 58, 12, 212, 113, 135, 37, 3, 8, 20, 89, 192, 173, 95, 131, 172, 99, 133, 172, 130, 90, 173, 106, 128, 171, 125, 120, 173, 129, 89, 172, 99, 101, 67};
        _appCabinFormat = [self StringFromCuttingEdgeData:value];
    }
    return _appCabinFormat;
}

//: flag
- (NSString *)k_rnaName {
    if (!_k_rnaName) {
        Byte value[] = {4, 29, 12, 47, 30, 55, 224, 129, 63, 45, 222, 180, 73, 79, 68, 74, 164};
        _k_rnaName = [self StringFromCuttingEdgeData:value];
    }
    return _k_rnaName;
}

//: type
- (NSString *)dream_achieveTitle {
    if (!_dream_achieveTitle) {
        Byte value[] = {4, 31, 4, 69, 85, 90, 81, 70, 67};
        _dream_achieveTitle = [self StringFromCuttingEdgeData:value];
    }
    return _dream_achieveTitle;
}

//: 我发起了白板演示
- (NSString *)kPactName {
    if (!_kPactName) {
        Byte value[] = {24, 71, 12, 7, 228, 43, 168, 22, 74, 15, 62, 144, 159, 65, 74, 158, 72, 74, 161, 110, 112, 157, 115, 63, 160, 82, 118, 159, 86, 120, 159, 117, 77, 160, 93, 115, 104};
        _kPactName = [self StringFromCuttingEdgeData:value];
    }
    return _kPactName;
}

//: icon_whiteboard_session_msg
- (NSString *)kMarchMessage {
    if (!_kMarchMessage) {
        Byte value[] = {27, 60, 4, 176, 45, 39, 51, 50, 35, 59, 44, 45, 56, 41, 38, 51, 37, 54, 40, 35, 55, 41, 55, 55, 45, 51, 50, 35, 49, 55, 43, 134};
        _kMarchMessage = [self StringFromCuttingEdgeData:value];
    }
    return _kMarchMessage;
}

//: data
- (NSString *)m_barFormat {
    if (!_m_barFormat) {
        Byte value[] = {4, 11, 12, 244, 205, 81, 215, 125, 46, 181, 127, 38, 89, 86, 105, 86, 65};
        _m_barFormat = [self StringFromCuttingEdgeData:value];
    }
    return _m_barFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoAttachment.m
//  NIM
//
//  Created by 高峰 on 15/7/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @implementation NTESWhiteboardAttachment
@implementation InfoAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeWhiteboard),
    NSDictionary *dict = @{[CuttingEdgeData sharedInstance].dream_achieveTitle : @(CustomMessageTypeWhiteboard),
                           //: @"data" : @{@"flag":@(self.flag)}};
                           [CuttingEdgeData sharedInstance].m_barFormat : @{[CuttingEdgeData sharedInstance].k_rnaName:@(self.flag)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}

//: - (NSString *)formatedMessage{
- (NSString *)afterHolderMessage{
    //: NSString *msg = @"";
    NSString *msg = @"";
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: msg = @"我发起了白板演示".ntes_localized;
            msg = [CuttingEdgeData sharedInstance].kPactName.textIndex;
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: msg = @"白板演示已结束".ntes_localized;
            msg = [CuttingEdgeData sharedInstance].appCabinFormat.textIndex;
        //: default:
        default:
            //: break;
            break;
    }
    //: return msg;
    return msg;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)select:(NIMMessage *)message{
    //: NSString *content;
    NSString *content;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: content = @"NTESSessionWhiteBoardContentView";
            content = @"ImageReplacementView";
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: content = @"NTESSessionTipContentView";
            content = @"CuttingEdgeNameView";
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: return content;
    return content;
}

//: - (BOOL)shouldShowAvatar
- (BOOL)dataStorageMedium
{
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: return YES;
            return YES;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return NO;
    return NO;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width{
    //: CGSize contentSize;
    CGSize contentSize;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:{
        case CustomWhiteboardFlagInvite:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            QuickNameView *label = [[QuickNameView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [UIFont systemFontOfSize:14];
            label.font = [UIFont systemFontOfSize:14];
            //: [label setText:self.formatedMessage];
            [label setText:self.afterHolderMessage];
            //: UIImage *image = [UIImage imageNamed:@"icon_whiteboard_session_msg"];
            UIImage *image = [UIImage imageNamed:[CuttingEdgeData sharedInstance].kMarchMessage];
            //: CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            //: CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            //: break;
            break;
        }
        //: case CustomWhiteboardFlagClose:{
        case CustomWhiteboardFlagClose:{
            //: CGFloat messageWidth = width;
            CGFloat messageWidth = width;
            //: CGFloat messageHeight = 40;
            CGFloat messageHeight = 40;
            //: contentSize = CGSizeMake(messageWidth, messageHeight);
            contentSize = CGSizeMake(messageWidth, messageHeight);
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)fingertip:(NIMMessage *)message
{
    //: if (self.flag == CustomWhiteboardFlagClose) {
    if (self.flag == CustomWhiteboardFlagClose) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    //: } else {
    } else {
        //: CGFloat selfBubbleTopToContentForBoard = 11.f;
        CGFloat selfBubbleTopToContentForBoard = 11.f;
        //: CGFloat selfBubbleLeftToContentForBoard = 11.f;
        CGFloat selfBubbleLeftToContentForBoard = 11.f;
        //: CGFloat selfContentButtomToBubbleForBoard = 9.f;
        CGFloat selfContentButtomToBubbleForBoard = 9.f;
        //: CGFloat selfBubbleRightToContentForBoard = 15.f;
        CGFloat selfBubbleRightToContentForBoard = 15.f;

        //: CGFloat otherBubbleTopToContentForBoard = 11.f;
        CGFloat otherBubbleTopToContentForBoard = 11.f;
        //: CGFloat otherBubbleLeftToContentForBoard = 15.f;
        CGFloat otherBubbleLeftToContentForBoard = 15.f;
        //: CGFloat otherContentButtomToBubbleForBoard = 9.f;
        CGFloat otherContentButtomToBubbleForBoard = 9.f;
        //: CGFloat otherContentRightToBubbleForBoard = 9.f;
        CGFloat otherContentRightToBubbleForBoard = 9.f;


        //: return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
        return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
                                                        //: selfBubbleLeftToContentForBoard,
                                                        selfBubbleLeftToContentForBoard,
                                                        //: selfContentButtomToBubbleForBoard,
                                                        selfContentButtomToBubbleForBoard,
                                                        //: selfBubbleRightToContentForBoard):
                                                        selfBubbleRightToContentForBoard):
        //: UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
        UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
                         //: otherBubbleLeftToContentForBoard,
                         otherBubbleLeftToContentForBoard,
                         //: otherContentButtomToBubbleForBoard,
                         otherContentButtomToBubbleForBoard,
                         //: otherContentRightToBubbleForBoard);
                         otherContentRightToBubbleForBoard);
    }
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)names:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeForwarded
- (BOOL)preserve
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)behindInfo
{
    //: return NO;
    return NO;
}



//: @end
@end