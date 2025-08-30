// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeLabel.h
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, USERNavigationAnimationType) {
typedef NS_ENUM(NSInteger, USERNavigationAnimationType) {
    //: USERNavigationAnimationTypeNormal,
    USERNavigationAnimationTypeNormal,
    //: USERNavigationAnimationTypeCross,
    USERNavigationAnimationTypeCross,
//: };
};

//: @class USERNavigationAnimator;
@class SizeLabel;

//: @protocol USERNavigationAnimatorDelegate <NSObject>
@protocol EnableRefreshCancel <NSObject>

//: - (void)animationWillStart:(USERNavigationAnimator *)animator;
- (void)willMessage:(SizeLabel *)animator;

//: - (void)animationDidEnd:(USERNavigationAnimator *)animator;
- (void)fielded:(SizeLabel *)animator;

//: @end
@end


//: @interface USERNavigationAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@interface SizeLabel : NSObject <UIViewControllerAnimatedTransitioning>

//: @property (nonatomic,weak) UINavigationController *navigationController;
@property (nonatomic,weak) UINavigationController *navigationController;

//: @property (nonatomic,assign) UINavigationControllerOperation currentOpearation;
@property (nonatomic,assign) UINavigationControllerOperation currentOpearation;

//: @property (nonatomic,assign) USERNavigationAnimationType animationType;
@property (nonatomic,assign) USERNavigationAnimationType animationType;

//: @property (nonatomic,weak) id<USERNavigationAnimatorDelegate> delegate;
@property (nonatomic,weak) id<EnableRefreshCancel> delegate;

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (instancetype)initWithProvider:(UINavigationController *)navigationController;

//: @end
@end