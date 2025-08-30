// __DEBUG__
// __CLOSE_PRINT__
//
//  StoryViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol TranslateImage;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface StoryViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<TranslateImage> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<TranslateImage> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)bearDown:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol TranslateImage <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)size:(StoryViewController *)viewController tinkle:(NSString *)key session:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)my;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)monthView:(NSString *)message glint:(UIView *)inView;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)lengthView:(NSString *)imageName vanguardState:(UIView *)inView;
//: - (void)hideEmptyView;
- (void)extra;
/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)phoneMessageView;
//: - (void)refrushWithNotNet;
- (void)resolutionTing;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)find:(NSString *)message targetText:(UIView *)inView managerPanoramicView:(NSString *)imageName;


//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)totalUp:(UIView *)view;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)point:(NSString *)message;



//: @end
@end