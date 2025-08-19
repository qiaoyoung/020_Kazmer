
#import <Foundation/Foundation.h>

@interface MeatData : NSObject

@end

@implementation MeatData

+ (Byte *)MeatDataToCache:(Byte *)data {
    int attractive = data[0];
    int peace = data[1];
    for (int i = 0; i < attractive / 2; i++) {
        int begin = peace + i;
        int end = peace + attractive - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[peace + attractive] = 0;
    return data + peace;
}

+ (NSString *)StringFromMeatData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MeatDataToCache:data]];
}  

//: No related content, try another word
+ (NSString *)m_pointValue {
    /* static */ NSString *m_pointValue = nil;
    if (!m_pointValue) {
        Byte value[] = {36, 11, 142, 180, 90, 202, 132, 147, 234, 78, 30, 100, 114, 111, 119, 32, 114, 101, 104, 116, 111, 110, 97, 32, 121, 114, 116, 32, 44, 116, 110, 101, 116, 110, 111, 99, 32, 100, 101, 116, 97, 108, 101, 114, 32, 111, 78, 180};
        m_pointValue = [self StringFromMeatData:value];
    }
    return m_pointValue;
}

//: #875FFA
+ (NSString *)m_nowherePath {
    /* static */ NSString *m_nowherePath = nil;
    if (!m_nowherePath) {
        Byte value[] = {7, 11, 23, 6, 51, 39, 109, 146, 243, 196, 223, 65, 70, 70, 53, 55, 56, 35, 186};
        m_nowherePath = [self StringFromMeatData:value];
    }
    return m_nowherePath;
}

//: icon_empty_data
+ (NSString *)noti_establishmentData {
    /* static */ NSString *noti_establishmentData = nil;
    if (!noti_establishmentData) {
        Byte value[] = {15, 9, 116, 124, 92, 28, 205, 13, 238, 97, 116, 97, 100, 95, 121, 116, 112, 109, 101, 95, 110, 111, 99, 105, 206};
        noti_establishmentData = [self StringFromMeatData:value];
    }
    return noti_establishmentData;
}

//: #612CF9
+ (NSString *)noti_trainAttendanceStr {
    /* static */ NSString *noti_trainAttendanceStr = nil;
    if (!noti_trainAttendanceStr) {
        Byte value[] = {7, 9, 167, 202, 78, 231, 121, 179, 148, 57, 70, 67, 50, 49, 54, 35, 187};
        noti_trainAttendanceStr = [self StringFromMeatData:value];
    }
    return noti_trainAttendanceStr;
}

//: #F9F9F9
+ (NSString *)kCartFormat {
    /* static */ NSString *kCartFormat = nil;
    if (!kCartFormat) {
        Byte value[] = {7, 9, 54, 68, 220, 149, 174, 209, 78, 57, 70, 57, 70, 57, 70, 35, 138};
        kCartFormat = [self StringFromMeatData:value];
    }
    return kCartFormat;
}

//: _isTransitioning
+ (NSString *)appMuscleId {
    /* static */ NSString *appMuscleId = nil;
    if (!appMuscleId) {
        Byte value[] = {16, 9, 14, 254, 76, 40, 70, 216, 65, 103, 110, 105, 110, 111, 105, 116, 105, 115, 110, 97, 114, 84, 115, 105, 95, 155};
        appMuscleId = [self StringFromMeatData:value];
    }
    return appMuscleId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "PathViewController.h"

//: @implementation HMViewController
@implementation PathViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor min:[MeatData kCartFormat]];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[NoticeHelper occurrence:[UIColor min:[MeatData m_nowherePath]] session:[UIColor min:[MeatData noti_trainAttendanceStr]] gradientType:SNLinearGradientDirectionLevel]];
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
- (void)name{
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

/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)content:(BOOL)enable {
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
        [self name];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
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
    if ([[self.navigationController valueForKey:[MeatData appMuscleId]] boolValue]) {
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


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)emptyHandedHolder{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self messageThread:[MeatData m_pointValue]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)messageThread:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self image:message data:self.view];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)show:(NSString *)imageName with:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self languageBy:@"" styleTap:inView readRandom:imageName];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)image:(NSString *)message data:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self languageBy:message styleTap:inView readRandom:[MeatData noti_establishmentData]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)languageBy:(NSString *)message styleTap:(UIView *)inView readRandom:(NSString *)imageName{
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
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
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
- (void)with{
    //: [self hideEmptyViewInView:self.view];
    [self hideAndFuturismView:self.view];
}
//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)hideAndFuturismView:(UIView *)view{

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
- (BOOL)ting{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)translate{


}





//: @end
@end