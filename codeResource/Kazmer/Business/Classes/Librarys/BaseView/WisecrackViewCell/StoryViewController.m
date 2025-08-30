
#import <Foundation/Foundation.h>

NSString *StringFromHardwareData(Byte *data);


//: #F9F9F9
Byte kNameNightmareValue[] = {90, 7, 30, 4, 65, 100, 87, 100, 87, 100, 87, 97};

//: _isTransitioning
Byte kNameLoreValidViewContent[] = {56, 16, 32, 12, 248, 18, 166, 173, 34, 109, 82, 251, 127, 137, 147, 116, 146, 129, 142, 147, 137, 148, 137, 143, 142, 137, 142, 135, 222};

//: icon_empty_data
Byte kName_survivorData[] = {24, 15, 84, 6, 160, 128, 189, 183, 195, 194, 179, 185, 193, 196, 200, 205, 179, 184, 181, 200, 181, 115};

//: No related content, try another word
Byte kTitle_peanutString[] = {99, 36, 2, 5, 32, 80, 113, 34, 116, 103, 110, 99, 118, 103, 102, 34, 101, 113, 112, 118, 103, 112, 118, 46, 34, 118, 116, 123, 34, 99, 112, 113, 118, 106, 103, 116, 34, 121, 113, 116, 102, 228};

//: #875FFA
Byte kTitleSemenStrictAircraftValue[] = {30, 7, 46, 5, 162, 81, 102, 101, 99, 116, 116, 111, 27};

//: #612CF9
Byte kText_learnString[] = {56, 7, 18, 5, 104, 53, 72, 67, 68, 85, 88, 75, 241};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StoryViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "StoryViewController.h"

//: @implementation HMViewController
@implementation StoryViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)bearDown:(BOOL)enable {
    /************************/
//    //注意：暂时取消侧拉pop手势
//    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
//        
//        gesture.enabled = NO;
//        return;
//    }

    //如果只有系统返回手势，添加自定义手势
    //: if (self.navigationController.view.gestureRecognizers.count == 1) {
    if (self.navigationController.view.gestureRecognizers.count == 1) {
        //: [self addFullScreenPopGesture];
        [self underView];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
}

//: - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}


//: - (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
    //: if (self.navigationController.viewControllers.count <= 1) {
    if (self.navigationController.viewControllers.count <= 1) {
        //: return NO;
        return NO;
    }

    // Ignore pan gesture when the navigation controller is currently in transition.
    //: if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
    if ([[self.navigationController valueForKey:StringFromHardwareData(kNameLoreValidViewContent)] boolValue]) {
        //: return NO;
        return NO;
    }

    // Prevent calling the handler when the gesture begins in an opposite direction.
    //: CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    //: if (translation.x <= 0) {
    if (translation.x <= 0) {
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor cell:StringFromHardwareData(kNameNightmareValue)];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[ColorHelper play:[UIColor cell:StringFromHardwareData(kTitleSemenStrictAircraftValue)] stop:[UIColor cell:StringFromHardwareData(kText_learnString)] progress:SNLinearGradientDirectionLevel]];
    //: [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
}

//: #pragma - 系统返回手势改装
#pragma - 系统返回手势改装

/**
 注意：这个手势是添加在了self.navigationController.view上
 最好在：navigationController->RootViewController实现这个方法
 
 使用的时候一定要配置方法：注意！注意！注意！
 - (void)viewWillAppear:(BOOL)animated{
 [super viewWillAppear:animated];
 [self.navigationController setNavigationBarHidden:YES animated:animated];
 
 }
 */
//: - (void)addFullScreenPopGesture{
- (void)underView{
//    // 获取系统自带滑动手势的target对象
//    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
//    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
//    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
//    pan.delegate = self;
//    pan.maximumNumberOfTouches = 1;
//    // 给导航控制器的view添加全屏滑动手势
//    [self.navigationController.view addGestureRecognizer:pan];
}


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)my{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self point:StringFromHardwareData(kTitle_peanutString)];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)monthView:(NSString *)message glint:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self find:message targetText:inView managerPanoramicView:StringFromHardwareData(kName_survivorData)];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)lengthView:(NSString *)imageName vanguardState:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self find:@"" targetText:inView managerPanoramicView:imageName];
}

//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)totalUp:(UIView *)view{

    //: UIView *emptyView= (UIView *)[view viewWithTag:53333];
    UIView *emptyView= (UIView *)[view viewWithTag:53333];

    //: emptyView.hidden = YES;
    emptyView.hidden = YES;
    //: [emptyView removeFromSuperview];
    [emptyView removeFromSuperview];
}

//: #pragma mark - 网络异常时调用此方法
#pragma mark - 网络异常时调用此方法

//: - (BOOL)canShowNotNetView{
- (BOOL)phoneMessageView{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)resolutionTing{


}
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)find:(NSString *)message targetText:(UIView *)inView managerPanoramicView:(NSString *)imageName{
    //: UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    //: if (!emptyView) {
    if (!emptyView) {
        //: emptyView = [[UIView alloc]init];
        emptyView = [[UIView alloc]init];
        //: emptyView.backgroundColor = [UIColor clearColor];
        emptyView.backgroundColor = [UIColor clearColor];
        //: emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        //: emptyView.tag = 53333;
        emptyView.tag = 53333;

        //: UIImageView *emptyImage = [[UIImageView alloc]init];
        UIImageView *emptyImage = [[UIImageView alloc]init];
        //: emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        //: emptyImage.image = [UIImage imageNamed:imageName];
        emptyImage.image = [UIImage imageNamed:imageName];
        //: [emptyView addSubview:emptyImage];
        [emptyView addSubview:emptyImage];

        //: UILabel *emptyLabel = [[UILabel alloc] init];
        UILabel *emptyLabel = [[UILabel alloc] init];
        //: emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        //: emptyLabel.backgroundColor = [UIColor clearColor];
        emptyLabel.backgroundColor = [UIColor clearColor];
        //: emptyLabel.textColor = [UIColor lightGrayColor];
        emptyLabel.textColor = [UIColor lightGrayColor];
        //: emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        //: emptyLabel.font = [UIFont systemFontOfSize:13];
        emptyLabel.font = [UIFont systemFontOfSize:13];
        //: emptyLabel.text = message;
        emptyLabel.text = message;
        //: [emptyView addSubview:emptyLabel];
        [emptyView addSubview:emptyLabel];
//        [emptyLabel underView:emptyImage padding:8];
//        [emptyLabel verticalAllignment:emptyImage];

    }


    //emptyView.center = CGPointMake(inView.width/2.0, inView.height/2.0);
    //: [inView addSubview:emptyView];
    [inView addSubview:emptyView];
    //: [inView bringSubviewToFront:emptyView];
    [inView bringSubviewToFront:emptyView];
}


//: - (void)hideEmptyView{
- (void)extra{
    //: [self hideEmptyViewInView:self.view];
    [self totalUp:self.view];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)point:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self monthView:message glint:self.view];
}





//: @end
@end

Byte * HardwareDataToCache(Byte *data) {
    int suggestCream = data[0];
    int taproom = data[1];
    Byte mTheory = data[2];
    int serveCast = data[3];
    if (!suggestCream) return data + serveCast;
    for (int i = serveCast; i < serveCast + taproom; i++) {
        int value = data[i] - mTheory;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[serveCast + taproom] = 0;
    return data + serveCast;
}

NSString *StringFromHardwareData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HardwareDataToCache(data)];
}
