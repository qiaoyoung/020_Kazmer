// __DEBUG__
// __CLOSE_PRINT__
//
//  PathViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol SpeedyDelegate;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface PathViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<SpeedyDelegate> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<SpeedyDelegate> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)content:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol SpeedyDelegate <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)frameRemote:(PathViewController *)viewController bubble:(NSString *)key alongAppInfomation:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)emptyHandedHolder;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)messageThread:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)show:(NSString *)imageName with:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)image:(NSString *)message data:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)languageBy:(NSString *)message styleTap:(UIView *)inView readRandom:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)hideAndFuturismView:(UIView *)view;
//: - (void)hideEmptyView;
- (void)with;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)ting;
//: - (void)refrushWithNotNet;
- (void)translate;



//: @end
@end