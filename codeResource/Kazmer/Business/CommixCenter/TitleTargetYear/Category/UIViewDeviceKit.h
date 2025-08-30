// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewDeviceKit.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIView (MyUserKit)
@interface UIView (Mortification)

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
//: @property (nonatomic) CGFloat device_centerX;
@property (nonatomic) CGFloat device_centerX;

/**
 * Shortcut for frame.size
 */
//: @property (nonatomic) CGSize device_size;
@property (nonatomic) CGSize device_size;

//: @property (nonatomic) CGFloat device_left;
@property (nonatomic) CGFloat device_left;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
//: @property (nonatomic) CGFloat device_width;
@property (nonatomic) CGFloat device_width;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
//: @property (nonatomic) CGFloat device_centerY;
@property (nonatomic) CGFloat device_centerY;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
//: @property (nonatomic) CGFloat device_right;
@property (nonatomic) CGFloat device_right;

/**
 * Shortcut for frame.origin
 */
//: @property (nonatomic) CGPoint device_origin;
@property (nonatomic) CGPoint device_origin;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
//: @property (nonatomic) CGFloat device_bottom;
@property (nonatomic) CGFloat device_bottom;
/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
//: @property (nonatomic) CGFloat device_height;
@property (nonatomic) CGFloat device_height;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
//: @property (nonatomic) CGFloat device_top;
@property (nonatomic) CGFloat device_top;

//找到自己的vc
//: - (UIViewController *)device_viewController;
- (UIViewController *)red;



//: @end
@end
