// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchCellLayoutConfig.h"
#import "PinFrame.h"
//: #import "WatchSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "WatchSessionUnknowContentView.h"
#import "MasterControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "WatchBaseSessionContentConfig.h"
#import "WatchBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface WatchCellLayoutConfig()
@interface PinFrame()

//: @end
@end

//: @implementation WatchCellLayoutConfig
@implementation PinFrame

//: - (CGSize)contentSize:(WatchMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)event:(CentralProcessingUnitModel *)model size:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config year:cellWidth table:model.message];
}

//: - (NSString *)cellContent:(WatchMessageModel *)model{
- (NSString *)availableName:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config textDistance:model.message];
    //: return cellContent.length ? cellContent : @"WatchSessionUnknowContentView";
    return cellContent.length ? cellContent : @"MasterControl";
}


//: - (UIEdgeInsets)contentViewInsets:(WatchMessageModel *)model{
- (UIEdgeInsets)media:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: return [config contentViewInsets:model.message];
    return [config contentInsets:model.message];
}


//: - (UIEdgeInsets)cellInsets:(WatchMessageModel *)model
- (UIEdgeInsets)month:(CentralProcessingUnitModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"WatchSessionNotificationContentView"]) {
    if ([[self availableName:model] isEqualToString:@"AssemblageControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self presentActivity:model] ? [self magnitudeernalRepresentation:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self send:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(WatchMessageModel *)model{
- (UIEdgeInsets)viewInsets:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config contentInsets:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(WatchMessageModel *)model
- (UIEdgeInsets)icon:(CentralProcessingUnitModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"WatchSessionNotificationContentView"]) {
    if ([[self availableName:model] isEqualToString:@"AssemblageControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self presentActivity:model] ? [self magnitudeernalRepresentation:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self send:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(WatchMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)closeWidth:(CentralProcessingUnitModel *)model userManager:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config year:cellWidth table:model.repliedMessage];
}

//: - (NSString *)replyContent:(WatchMessageModel *)model {
- (NSString *)with:(CentralProcessingUnitModel *)model {
    //: id<CCCSessionContentConfig>config = [[WatchSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config textDistance:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"WatchSessionUnknowContentView";
    return cellContent.length ? cellContent : @"MasterControl";
}

//: - (BOOL)shouldShowAvatar:(WatchMessageModel *)model
- (BOOL)presentActivity:(CentralProcessingUnitModel *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[ButtonKit sheerOption].config date:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(WatchMessageModel *)model{
- (BOOL)send:(CentralProcessingUnitModel *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(WatchMessageModel *)model
- (BOOL)statusLeft:(CentralProcessingUnitModel *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(WatchMessageModel *)model
- (CGPoint)line:(CentralProcessingUnitModel *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(WatchMessageModel *)model
- (CGSize)magnitudeernalRepresentation:(CentralProcessingUnitModel *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(WatchMessageModel *)model
- (CGPoint)showTotal:(CentralProcessingUnitModel *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self presentActivity:model] ? CGPointMake([self magnitudeernalRepresentation:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(WatchMessageModel *)model
- (NSArray *)cellViews:(CentralProcessingUnitModel *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(WatchMessageModel *)model
- (BOOL)emptyPower:(CentralProcessingUnitModel *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<WatchCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig statusLeft:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<WatchCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig statusLeft:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(WatchMessageModel *)model
- (BOOL)clickBackground:(CentralProcessingUnitModel *)model
{
    //: id<CCCSessionContentConfig> config = [[WatchSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement> config = [[AccumulationFactory commonValue] feel:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(threadded:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config threadded:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
