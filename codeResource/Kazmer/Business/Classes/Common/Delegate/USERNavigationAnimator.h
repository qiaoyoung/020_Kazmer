//
//  USERNavigationAnimator.h
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, USERNavigationAnimationType) {
    USERNavigationAnimationTypeNormal,
    USERNavigationAnimationTypeCross,
};

@class USERNavigationAnimator;

@protocol USERNavigationAnimatorDelegate <NSObject>

- (void)animationWillStart:(USERNavigationAnimator *)animator;

- (void)animationDidEnd:(USERNavigationAnimator *)animator;

@end


@interface USERNavigationAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic,weak)   UINavigationController *navigationController;

@property (nonatomic,assign) UINavigationControllerOperation currentOpearation;

@property (nonatomic,assign) USERNavigationAnimationType animationType;

@property (nonatomic,weak) id<USERNavigationAnimatorDelegate> delegate;

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;

@end
