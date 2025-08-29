// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellProtocol.h
// Mortification
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"

// __M_A_C_R_O__

//: @class FFFMessageModel;
@class CleanDoing;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFKitEvent;
@class ToiletKitSession;
//: @class FFFTextView;
@class TitleScrollView;

//: @protocol FFFMessageCellDelegate <NSObject>
@protocol CompartmentPath <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)duringMedia_strong:(UITableView *)tableView origin:(UITableViewCell *)cell can:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)pasts:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event;
- (BOOL)cutOptionExtend:(ToiletKitSession *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)file:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 search:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)ats:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)link:(NIMMessage *)message underDomain:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)changes:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)packetAvatar:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)maxShow:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)backRemote:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)global:(BOOL)selected notDomainPresentation:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)withing:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)infoSelected:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                device:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               viewQueryed:(BOOL)isSelected;

//: @end
@end