// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.h
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "NSObject+KIAdditions.h"
//#import "UIView+CommentSizeLabel.h"

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIViewController (KIAdditions)
@interface UIViewController (CommentSizeLabel)

//: - (void)setTitle:(NSString *)title;
- (void)setTitle:(NSString *)title;

//: - (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)colouration:(UIColor *)color;

//: - (void)setNavBarWithAlpha:(CGFloat)alpha;
- (void)setMixIn:(CGFloat)alpha;
//: - (void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
- (void)of:(SEL)selector with:(NSString *)title lineItem:(UIColor *)color;

//: - (void)close;
- (void)mediaRecent;
//: - (void)showCustomBackButton:(SEL)selector;
- (void)latterDayAdd:(SEL)selector;
//- (void)pushController:(UIViewController *)viewController;

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated;

//- (void)popController;

//: - (void)dismissModalController;
- (void)disable;

//: - (void)setNavBarBackGroundColor:(UIColor *)color;
- (void)setTranslate:(UIColor *)color;

//: - (void)setTitleColor:(UIColor *)color;
- (void)setShow:(UIColor *)color;

//: - (void)showCustomBackButton;
- (void)imageButton;

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)incidental:(SEL)selector asPressed:(UIImage *)image language:(UIImage *)imageH;


//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color;
-(void)with:(SEL)selector drop:(NSString *)title chorus:(UIColor *)color;



//: - (void)setNavBarClearColor;
- (void)setNavBarClearColor;
//: - (void)setShadowClearColor;
- (void)green;
//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color;
- (void)image:(NSString *)title title:(UIColor *)color;
//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide;
- (BOOL)action:(UIView *)view image:(BOOL)hide;

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH;
- (void)max:(SEL)selector pinIn:(UIImage *)image ting:(UIImage *)imageH;



//: @end
@end
