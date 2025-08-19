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
//: #import "FFFCellLayoutConfig.h"
#import "PinFrame.h"
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "FFFSessionUnknowContentView.h"
#import "MasterControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFBaseSessionContentConfig.h"
#import "FFFBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface FFFCellLayoutConfig()
@interface PinFrame()

//: @end
@end

//: @implementation FFFCellLayoutConfig
@implementation PinFrame

//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)event:(CentralProcessingUnitModel *)model size:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config year:cellWidth table:model.message];
}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)availableName:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config textDistance:model.message];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"MasterControl";
}


//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)media:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] feel:model.message];
    //: return [config contentViewInsets:model.message];
    return [config contentInsets:model.message];
}


//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)month:(CentralProcessingUnitModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
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

//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)viewInsets:(CentralProcessingUnitModel *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config contentInsets:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)icon:(CentralProcessingUnitModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
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

//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)closeWidth:(CentralProcessingUnitModel *)model userManager:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config year:cellWidth table:model.repliedMessage];
}

//: - (NSString *)replyContent:(FFFMessageModel *)model {
- (NSString *)with:(CentralProcessingUnitModel *)model {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<TableAccumulationReplacement>config = [[AccumulationFactory commonValue] title:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config textDistance:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"MasterControl";
}

//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)presentActivity:(CentralProcessingUnitModel *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[ButtonKit sheerOption].config date:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
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


//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model
- (BOOL)statusLeft:(CentralProcessingUnitModel *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(FFFMessageModel *)model
- (CGPoint)line:(CentralProcessingUnitModel *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(FFFMessageModel *)model
- (CGSize)magnitudeernalRepresentation:(CentralProcessingUnitModel *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model
- (CGPoint)showTotal:(CentralProcessingUnitModel *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self presentActivity:model] ? CGPointMake([self magnitudeernalRepresentation:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)cellViews:(CentralProcessingUnitModel *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)emptyPower:(CentralProcessingUnitModel *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
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
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
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

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)clickBackground:(CentralProcessingUnitModel *)model
{
    //: id<CCCSessionContentConfig> config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
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