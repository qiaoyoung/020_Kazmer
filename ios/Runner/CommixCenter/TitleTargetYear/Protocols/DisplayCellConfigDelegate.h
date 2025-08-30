// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayCellConfigDelegate.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class DisplaySessionMessageContentView;
@class WithTopView;
//: @class DisplayMessageModel;
@class CleanDoing;

//: @protocol DisplayCellLayoutConfig <NSObject>
@protocol CellManWith <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(DisplayMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)viewBar:(CleanDoing *)model tinkle:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(DisplayMessageModel *)model;
- (NSString *)compartment:(CleanDoing *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(DisplayMessageModel *)model;
- (UIEdgeInsets)concealed:(CleanDoing *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(DisplayMessageModel *)model;
- (UIEdgeInsets)old:(CleanDoing *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(DisplayMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)nameWidth:(CleanDoing *)model aggregationFloat:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(DisplayMessageModel *)model;
- (NSString *)searchedAcross:(CleanDoing *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(DisplayMessageModel *)model;
- (UIEdgeInsets)title:(CleanDoing *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(DisplayMessageModel *)model;
- (UIEdgeInsets)notLine:(CleanDoing *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(DisplayMessageModel *)model;
- (BOOL)back:(CleanDoing *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(DisplayMessageModel *)model;
- (CGPoint)sizeSend:(CleanDoing *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(DisplayMessageModel *)model;
- (CGSize)message:(CleanDoing *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(DisplayMessageModel *)model;
- (BOOL)bar:(CleanDoing *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(DisplayMessageModel *)model;
- (CGPoint)perimeter:(CleanDoing *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(DisplayMessageModel *)model;
- (BOOL)corner:(CleanDoing *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(DisplayMessageModel *)model;
- (NSArray *)margin:(CleanDoing *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(DisplayMessageModel *)model;
- (BOOL)names:(CleanDoing *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(DisplayMessageModel *)model;
- (BOOL)airBubble:(CleanDoing *)model;


//: @end
@end
