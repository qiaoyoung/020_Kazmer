// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCellConfig.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class FFFSessionMessageContentView;
@class ThoughtImageControl;
//: @class FFFMessageModel;
@class CentralProcessingUnitModel;

//: @protocol FFFCellLayoutConfig <NSObject>
@protocol PinFrame <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)event:(CentralProcessingUnitModel *)model size:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(FFFMessageModel *)model;
- (NSString *)availableName:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)month:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)media:(CentralProcessingUnitModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)closeWidth:(CentralProcessingUnitModel *)model userManager:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(FFFMessageModel *)model;
- (NSString *)with:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)icon:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)viewInsets:(CentralProcessingUnitModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model;
- (BOOL)presentActivity:(CentralProcessingUnitModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(FFFMessageModel *)model;
- (CGPoint)line:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(FFFMessageModel *)model;
- (CGSize)magnitudeernalRepresentation:(CentralProcessingUnitModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model;
- (BOOL)send:(CentralProcessingUnitModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model;
- (CGPoint)showTotal:(CentralProcessingUnitModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model;
- (BOOL)statusLeft:(CentralProcessingUnitModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(FFFMessageModel *)model;
- (NSArray *)cellViews:(CentralProcessingUnitModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(FFFMessageModel *)model;
- (BOOL)emptyPower:(CentralProcessingUnitModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model;
- (BOOL)clickBackground:(CentralProcessingUnitModel *)model;


//: @end
@end