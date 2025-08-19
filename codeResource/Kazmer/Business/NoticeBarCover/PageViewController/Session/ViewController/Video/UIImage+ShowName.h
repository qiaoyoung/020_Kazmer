// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+ShowName.h
//  LYPlayerDemo
//
//  Created by liyang on 16/11/6.
//  Copyright © 2016年 com.liyang.player. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (ComPress)
@interface UIImage (ShowName)

/** 缩放到指定大小 */
//: - (UIImage*)imageCompressWithSimple:(UIImage*)image scaledToSize:(CGSize)size;
- (UIImage*)equip:(UIImage*)image encounter:(CGSize)size;

/** 根据颜色和圆的半径来创建一个 Image */
//: + (UIImage *)createImageWithColor:(UIColor *)color radius:(CGFloat)radius;
+ (UIImage *)add:(UIColor *)color quantityFloat:(CGFloat)radius;

/** 根据一个view来创建一个 Image */
//: + (UIImage*)creatImageWithView:(UIView *)theView;
+ (UIImage*)earlier:(UIView *)theView;
//: @end
@end