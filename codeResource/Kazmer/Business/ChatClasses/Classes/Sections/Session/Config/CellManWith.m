// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCellLayoutConfig.h"
#import "CellManWith.h"
//: #import "FFFSessionMessageContentView.h"
#import "WithTopView.h"
//: #import "FFFSessionUnknowContentView.h"
#import "ViewControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFBaseSessionContentConfig.h"
#import "FFFBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface FFFCellLayoutConfig()
@interface CellManWith()

//: @end
@end

//: @implementation FFFCellLayoutConfig
@implementation CellManWith

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)airBubble:(CleanDoing *)model
{
    //: id<CCCSessionContentConfig> config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<OnTopConfig> config = [[SumryCrop transferFacotry] standard:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(scaling:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config scaling:model.message];
    }
    //: return YES;
    return YES;
}

//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)title:(CleanDoing *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self compartment:model] isEqualToString:@"VanguardNameView"]) {
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
    CGFloat otherBubbleOriginX = [self back:model] ? [self message:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self bar:model])
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


//: - (CGPoint)avatarMargin:(FFFMessageModel *)model
- (CGPoint)sizeSend:(CleanDoing *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}


//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)viewBar:(CleanDoing *)model tinkle:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] standard:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config step:cellWidth menu:model.message];
}

//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)old:(CleanDoing *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] standard:model.message];
    //: return [config contentViewInsets:model.message];
    return [config nameSearched:model.message];
}


//: - (CGSize)avatarSize:(FFFMessageModel *)model
- (CGSize)message:(CleanDoing *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (NSString *)replyContent:(FFFMessageModel *)model {
- (NSString *)searchedAcross:(CleanDoing *)model {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] readTeam:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config viewTing:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"ViewControl";
}

//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model
- (BOOL)corner:(CleanDoing *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)bar:(CleanDoing *)model{
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


//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)nameWidth:(CleanDoing *)model aggregationFloat:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] readTeam:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config step:cellWidth menu:model.repliedMessage];
}


//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)names:(CleanDoing *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig corner:model];
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
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig corner:model];
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

//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)back:(CleanDoing *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[Mortification text].config toWith:model.message].showAvatar;
}

//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)concealed:(CleanDoing *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self compartment:model] isEqualToString:@"VanguardNameView"]) {
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
    CGFloat otherBubbleOriginX = [self back:model] ? [self message:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self bar:model])
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
- (UIEdgeInsets)notLine:(CleanDoing *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] readTeam:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config nameSearched:model.repliedMessage];
}


//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model
- (CGPoint)perimeter:(CleanDoing *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self back:model] ? CGPointMake([self message:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}

//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)margin:(CleanDoing *)model
{
    //: return nil;
    return nil;
}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)compartment:(CleanDoing *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<OnTopConfig>config = [[SumryCrop transferFacotry] standard:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config viewTing:model.message];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"ViewControl";
}

//: @end
@end