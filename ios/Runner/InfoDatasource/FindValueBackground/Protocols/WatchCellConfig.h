// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchCellConfig.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class WatchSessionMessageContentView;
@class ThoughtImageControl;
//: @class WatchMessageModel;
@class CentralProcessingUnitModel;

//: @protocol WatchCellLayoutConfig <NSObject>
@protocol PinFrame <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(WatchMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)event:(CentralProcessingUnitModel *)model size:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(WatchMessageModel *)model;
- (NSString *)availableName:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(WatchMessageModel *)model;
- (UIEdgeInsets)month:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(WatchMessageModel *)model;
- (UIEdgeInsets)media:(CentralProcessingUnitModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(WatchMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)closeWidth:(CentralProcessingUnitModel *)model userManager:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(WatchMessageModel *)model;
- (NSString *)with:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(WatchMessageModel *)model;
- (UIEdgeInsets)icon:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(WatchMessageModel *)model;
- (UIEdgeInsets)viewInsets:(CentralProcessingUnitModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(WatchMessageModel *)model;
- (BOOL)presentActivity:(CentralProcessingUnitModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(WatchMessageModel *)model;
- (CGPoint)line:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(WatchMessageModel *)model;
- (CGSize)magnitudeernalRepresentation:(CentralProcessingUnitModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(WatchMessageModel *)model;
- (BOOL)send:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(WatchMessageModel *)model;
- (CGPoint)showTotal:(CentralProcessingUnitModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(WatchMessageModel *)model;
- (BOOL)statusLeft:(CentralProcessingUnitModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(WatchMessageModel *)model;
- (NSArray *)cellViews:(CentralProcessingUnitModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(WatchMessageModel *)model;
- (BOOL)emptyPower:(CentralProcessingUnitModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(WatchMessageModel *)model;
- (BOOL)clickBackground:(CentralProcessingUnitModel *)model;


//: @end
@end
