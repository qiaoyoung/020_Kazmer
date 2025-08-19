// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameRecent.h
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
    //: NTESNavigationAnimationTypeNormal,
    NTESNavigationAnimationTypeNormal,
    //: NTESNavigationAnimationTypeCross,
    NTESNavigationAnimationTypeCross,
//: };
};

//: @class NTESNavigationAnimator;
@class FrameRecent;

//: @protocol NTESNavigationAnimatorDelegate <NSObject>
@protocol ContentDelegate <NSObject>

//: - (void)animationWillStart:(NTESNavigationAnimator *)animator;
- (void)dismissed:(FrameRecent *)animator;

//: - (void)animationDidEnd:(NTESNavigationAnimator *)animator;
- (void)blueGray:(FrameRecent *)animator;

//: @end
@end


//: @interface NTESNavigationAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@interface FrameRecent : NSObject <UIViewControllerAnimatedTransitioning>

//: @property (nonatomic,weak) UINavigationController *navigationController;
@property (nonatomic,weak) UINavigationController *navigationController;

//: @property (nonatomic,assign) UINavigationControllerOperation currentOpearation;
@property (nonatomic,assign) UINavigationControllerOperation currentOpearation;

//: @property (nonatomic,assign) NTESNavigationAnimationType animationType;
@property (nonatomic,assign) NTESNavigationAnimationType animationType;

//: @property (nonatomic,weak) id<NTESNavigationAnimatorDelegate> delegate;
@property (nonatomic,weak) id<ContentDelegate> delegate;

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (instancetype)initWithDirection:(UINavigationController *)navigationController;

//: @end
@end