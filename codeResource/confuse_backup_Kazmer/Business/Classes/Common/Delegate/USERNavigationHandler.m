//
//  USERNavigationHandler.m
//  NIM
//
//  Created by chris on 16/1/28.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "USERNavigationHandler.h"
#import "UIView+USER.h"
#import "USERMainTabController.h"
#import "UIResponder+USERFirstResponder.h"
#import "USERNavigationAnimator.h"

@interface USERNavigationHandler()<UIGestureRecognizerDelegate,USERNavigationAnimatorDelegate>

@property (nonatomic,strong) UIPercentDrivenInteractiveTransition* interaction;

@property (nonatomic,weak)   UINavigationController *navigationController;

@property (nonatomic,strong) USERNavigationAnimator *animator;

@property (nonatomic,assign) UINavigationControllerOperation currentOperation;

@property (nonatomic,strong) CAGradientLayer *uiPopShadow;

@property (nonatomic,assign) BOOL isAnimating;

@end

@implementation USERNavigationHandler

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
//        _recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
//        _recognizer.delegate = self;
//        _recognizer.delaysTouchesBegan = NO;
//        [navigationController.view addGestureRecognizer:_recognizer];
        _animator = [[USERNavigationAnimator alloc] initWithNavigationController:navigationController];
        _animator.delegate = self;
        _navigationController = navigationController;
        
    }
    return self;
}

- (void)pan:(UIPanGestureRecognizer*)recognizer
{
    UIView* view = recognizer.view;
    switch (recognizer.state) {
        case UIGestureRecognizerStateBegan:{
            CGPoint location = [recognizer locationInView:view];
            if (location.x <  CGRectGetMidX(view.bounds) && self.navigationController.viewControllers.count > 1) { // left half
                self.interaction = [UIPercentDrivenInteractiveTransition new];
                [self.navigationController popViewControllerAnimated:NO];
            }
        }
            break;
        case UIGestureRecognizerStateChanged:{
            CGPoint translation = [recognizer translationInView:view];
            CGFloat d = translation.x / view.width;
            [self.interaction updateInteractiveTransition:d];
        }
            break;
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled:{
            if ([recognizer locationInView:view].x > view.width * .5f) {
                [self.interaction finishInteractiveTransition];
            } else {
                [self.interaction cancelInteractiveTransition];
            }
            self.interaction = nil;
        }
            break;
        default:
            break;
    }
}

#pragma mark - UINavigationControllerDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{

}


- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}


- (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                                   interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController
{
    return self.interaction;
}


- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC
{
    self.currentOperation = operation;
    self.animator.currentOpearation = operation;
    BOOL cross = [self isUseClearBar:fromVC] || [self isUseClearBar:toVC];
    self.animator.animationType = cross ? USERNavigationAnimationTypeCross : USERNavigationAnimationTypeNormal;
    
    if (operation == UINavigationControllerOperationPop) {
        [fromVC.view.layer addSublayer:self.uiPopShadow];
    }
    return self.animator;
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    BOOL forbid = [self isForbidInteractivePop:self.navigationController.topViewController];
    if (forbid || self.isAnimating) {
        return NO;
    }
    UIView* view = gestureRecognizer.view;
    CGPoint location = [gestureRecognizer locationInView:view];
    return location.x < 44.f;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer
{
    return [otherGestureRecognizer.view.superview isKindOfClass:[UITableView class]];
}



#pragma mark - Get
- (CAGradientLayer *)uiPopShadow
{
    if (!_uiPopShadow) {
        _uiPopShadow = [CAGradientLayer layer];
        _uiPopShadow.frame = CGRectMake(-6, 0, 6, [USERMainTabController instance].view.frame.size.height);
        _uiPopShadow.startPoint = CGPointMake(1.0, 0.5);
        _uiPopShadow.endPoint = CGPointMake(0, 0.5);
        _uiPopShadow.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:0.0 alpha:0.2f] CGColor], (id)[[UIColor clearColor] CGColor], nil];
    }
    return _uiPopShadow;
}

#pragma mark - USERNavigationAnimatorDelegate
- (void)animationWillStart:(USERNavigationAnimator *)animator
{
    self.isAnimating = YES;
}

- (void)animationDidEnd:(USERNavigationAnimator *)animator
{
    self.isAnimating = NO;
}

#pragma mark - Private
- (BOOL)isUseClearBar:(UIViewController *)vc
{
    SEL  sel = NSSelectorFromString(@"useClearBar");
    BOOL use = NO;
    if ([vc respondsToSelector:sel]) {
        SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
    }
    return use;
}

- (BOOL)isForbidInteractivePop:(UIViewController *)vc{
    SEL  sel = NSSelectorFromString(@"forbidInteractivePop");
    BOOL use = NO;
    if ([vc respondsToSelector:sel]) {
        SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
    }
    return use;
}

@end


