// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+Turn.h
//  NIMDemo
//
//  Created by ght on 15-1-31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIView (USER)
@interface UIView (Turn)

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
//: @property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerX;

/**
 * Shortcut for frame.size
 */
//: @property (nonatomic) CGSize size;
@property (nonatomic) CGSize size;

//: @property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat left;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
//: @property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat width;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
//: @property (nonatomic) CGFloat centerY;
@property (nonatomic) CGFloat centerY;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
//: @property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat right;

/**
 * Shortcut for frame.origin
 */
//: @property (nonatomic) CGPoint origin;
@property (nonatomic) CGPoint origin;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
//: @property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat bottom;
/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
//: @property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat height;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
//: @property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat top;

//找到自己的vc
//: - (UIViewController *)viewController;
- (UIViewController *)view;


//: @end
@end


//: @interface UIView (USERPresent)
@interface UIView (CancelCenter)

//弹出一个类似present效果的窗口
//这个是被present的窗口本身的方法
//如果自己是被present出来的，消失掉
//: - (void)hideSelf:(BOOL)animated complete:(void(^)(void)) complete;
- (void)language:(BOOL)animated parentComplete:(void(^)(void)) complete;

//获取一个view上正在被present的view
//: - (UIView *)presentedView;
- (UIView *)styleBy;

//: - (void)dismissPresentedView:(BOOL)animated complete:(void(^)(void)) complete;
- (void)at:(BOOL)animated valueComplete:(void(^)(void)) complete;

//: - (void)presentView:(UIView*)view animated:(BOOL)animated complete:(void(^)(void)) complete;
- (void)file:(UIView*)view withNumber:(BOOL)animated tap:(void(^)(void)) complete;

//: @end
@end