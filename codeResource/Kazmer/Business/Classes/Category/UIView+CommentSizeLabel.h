// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+KIView.h
//  Kitalker
//
//  Created by chen on 12-7-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <QuartzCore/QuartzCore.h>
#import <QuartzCore/QuartzCore.h>

//: @interface UIView (KIAdditions)
@interface UIView (CommentSizeLabel)

//: @property (nonatomic, assign) id userInfo;
@property (nonatomic, assign) id userInfo;

/*x*/
//: - (CGFloat)x;
- (CGFloat)time;

//: - (void)setCenterY:(CGFloat)y;
- (void)setCenterY:(CGFloat)y;


//位于view下面，间距为padding
//: - (void)underView:(UIView *)view padding:(CGFloat)padding;
- (void)restoreCell:(UIView *)view custom:(CGFloat)padding;
//: - (void)popCompletion:(void (^)(BOOL finished))completion;
- (void)path:(void (^)(BOOL finished))completion;

/*y*/
//: - (CGFloat)y;
- (CGFloat)demineralise;
//位于view右边，间距为padding (y值一样)
//: - (void)rightView:(UIView *)view padding:(CGFloat)padding;
- (void)ting:(UIView *)view holder:(CGFloat)padding;

//垂直居中对齐 view：相对view padding：间距
//: - (void)verticalAllignment:(UIView *)view;
- (void)doImage:(UIView *)view;
//: - (void)setHeight:(CGFloat)height;
- (void)setHeight:(CGFloat)height;

//: - (void)pushView:(UIView *)view completion:(void (^)(BOOL finished))completion;
- (void)addTogetherTeam:(UIView *)view lineItem:(void (^)(BOOL finished))completion;
//: - (void)setUserInfo:(id)userInfo ;
- (void)setUserInfo:(id)userInfo ;

/*返回view的viewController*/
//: - (UIViewController *)findViewControllerByView:(UIView *)view;
- (UIViewController *)titleView:(UIView *)view;
//: - (void)setOriginX:(CGFloat)x;
- (void)setScarletSave:(CGFloat)x;

//: - (void)removeActivityView;
- (void)input;
//: - (void)setCenterX:(CGFloat)x;
- (void)setCenterX:(CGFloat)x;



//: - (id)userInfo;
- (id)userInfo;
//水平居中对齐 view：相对view padding：间距
//: - (void)horizontAllignment:(UIView *)view;
- (void)circle:(UIView *)view;
/*size*/
//: - (CGSize)size;
- (CGSize)size;
//: - (UIActivityIndicatorView *)activityIndicatorView;
- (UIActivityIndicatorView *)format;



/*height*/
//: - (CGFloat)height;
- (CGFloat)height;

/*width*/
//: - (CGFloat)width;
- (CGFloat)width;

//: - (void)setOriginY:(CGFloat)y;
- (void)setComplete:(CGFloat)y;

/*快照*/
//: - (UIImage *)snapshot;
- (UIImage *)date;
//: - (UIImage*)convertViewToImage;
- (UIImage*)extra;

//: - (void)setWidth:(CGFloat)width;
- (void)setWidth:(CGFloat)width;

//: - (void)registEndEditing;
- (void)reply;
//: - (UIViewController *)viewController;
- (UIViewController *)view;


//: - (void)setSize:(CGSize)size;
- (void)setSize:(CGSize)size;

//: - (UIView *)findForSuperViewClass:(Class)superViewClass;
- (UIView *)textInfo:(Class)superViewClass;


//: @end
@end