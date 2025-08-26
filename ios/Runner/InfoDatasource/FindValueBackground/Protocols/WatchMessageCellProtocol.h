// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchMessageCellProtocol.h
// ButtonKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchCellConfig.h"
#import "WatchCellConfig.h"

// __M_A_C_R_O__

//: @class WatchMessageModel;
@class CentralProcessingUnitModel;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class WatchKitEvent;
@class CoverShowEvent;
//: @class WatchTextView;
@class ReplacementNameView;

//: @protocol WatchMessageCellDelegate <NSObject>
@protocol ModeQueryTime <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)pressPath:(UITableView *)tableView titleMessage:(UITableViewCell *)cell key:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)atBottom:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(WatchKitEvent *)event;
- (BOOL)hides:(CoverShowEvent *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)inwardView:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 leftHandedness:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)unders:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)headspringCell:(NIMMessage *)message smallness:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)centersed:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)showAvatar:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)timed:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)belowStandard:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)user:(BOOL)selected quantityernalRepresentation_strong:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)valueing:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)fileElect:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                alongPage:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               languageSection:(BOOL)isSelected;

//: @end
@end
