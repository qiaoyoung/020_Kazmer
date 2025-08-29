
#import <Foundation/Foundation.h>

typedef struct {
    Byte technologicInk;
    Byte *brushAlso;
    unsigned int movie;
} StructGoodHoppingData;

@interface GoodHoppingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GoodHoppingData

+ (instancetype)sharedInstance {
    static GoodHoppingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GoodHoppingDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)GoodHoppingDataToByte:(StructGoodHoppingData *)data {
    for (int i = 0; i < data->movie; i++) {
        data->brushAlso[i] ^= data->technologicInk;
    }
    data->brushAlso[data->movie] = 0;
    return data->brushAlso;
}

- (NSString *)StringFromGoodHoppingData:(StructGoodHoppingData *)data {
    return [NSString stringWithUTF8String:(char *)[self GoodHoppingDataToByte:data]];
}

//: #612CF9
- (NSString *)kName_climateSuggestString {
    /* static */ NSString *kName_climateSuggestString = nil;
    if (!kName_climateSuggestString) {
		NSArray<NSString *> *origin = @[@"146", @"135", @"128", @"131", @"242", @"247", @"136", @"25"];
		NSData *data = [GoodHoppingData GoodHoppingDataToData:origin];
        StructGoodHoppingData value = (StructGoodHoppingData){177, (Byte *)data.bytes, 7};
        kName_climateSuggestString = [self StringFromGoodHoppingData:&value];
    }
    return kName_climateSuggestString;
}

//: #875FFA
- (NSString *)kTitle_validValue {
    /* static */ NSString *kTitle_validValue = nil;
    if (!kTitle_validValue) {
		NSArray<NSString *> *origin = @[@"156", @"135", @"136", @"138", @"249", @"249", @"254", @"216"];
		NSData *data = [GoodHoppingData GoodHoppingDataToData:origin];
        StructGoodHoppingData value = (StructGoodHoppingData){191, (Byte *)data.bytes, 7};
        kTitle_validValue = [self StringFromGoodHoppingData:&value];
    }
    return kTitle_validValue;
}

//: #222222
- (NSString *)kTitle_soulValue {
    /* static */ NSString *kTitle_soulValue = nil;
    if (!kTitle_soulValue) {
		NSArray<NSString *> *origin = @[@"248", @"233", @"233", @"233", @"233", @"233", @"233", @"85"];
		NSData *data = [GoodHoppingData GoodHoppingDataToData:origin];
        StructGoodHoppingData value = (StructGoodHoppingData){219, (Byte *)data.bytes, 7};
        kTitle_soulValue = [self StringFromGoodHoppingData:&value];
    }
    return kTitle_soulValue;
}

//: back_arrow_bl
- (NSString *)kTitle_arrestString {
    /* static */ NSString *kTitle_arrestString = nil;
    if (!kTitle_arrestString) {
		NSArray<NSString *> *origin = @[@"26", @"25", @"27", @"19", @"39", @"25", @"10", @"10", @"23", @"15", @"39", @"26", @"20", @"85"];
		NSData *data = [GoodHoppingData GoodHoppingDataToData:origin];
        StructGoodHoppingData value = (StructGoodHoppingData){120, (Byte *)data.bytes, 13};
        kTitle_arrestString = [self StringFromGoodHoppingData:&value];
    }
    return kTitle_arrestString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+KIViewController.m
//  Kitalker
//
//  Created by chen on 12-7-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
//#import "UIColor+KIAdditions.h"

// __M_A_C_R_O__
//: #import "UIViewController+KIAdditions.h"
#import "UIViewController+CommentSizeLabel.h"

//: @implementation UIViewController (KIAdditions)
@implementation UIViewController (CommentSizeLabel)


//: #pragma mark - nav bar 设置
#pragma mark - nav bar 设置

//: - (void)setTitle:(NSString *)title {
- (void)setTitle:(NSString *)title {
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:18]];
        [titleLabel setFont:[UIFont systemFontOfSize:18]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];

        //注意：防止rightBarButtonItem为nil，title被挤到右屏幕边缘显示
        //: if (!self.navigationItem.rightBarButtonItem) {
        if (!self.navigationItem.rightBarButtonItem) {
            //: UIView *fixedSpaceView = [[UIView alloc]init];
            UIView *fixedSpaceView = [[UIView alloc]init];
            //: fixedSpaceView.frame = CGRectMake(0, 7, 20, 50);
            fixedSpaceView.frame = CGRectMake(0, 7, 20, 50);
            //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:fixedSpaceView];
            UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:fixedSpaceView];
            //: self.navigationItem.rightBarButtonItem = backItem;
            self.navigationItem.rightBarButtonItem = backItem;
        }
    }
    //: [titleLabel setTextColor:[UIColor colorWithHexString:@"#222222"]];
    [titleLabel setTextColor:[UIColor cell:[[GoodHoppingData sharedInstance] kTitle_soulValue]]];
    //: [titleLabel setText:title];
    [titleLabel setText:title];
    //: [titleLabel sizeToFit];
    [titleLabel sizeToFit];


}

//: - (UIImageView *)findHairlineImageViewUnder:(UIView *)view
- (UIImageView *)action:(UIView *)view
{
    //: if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0)
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0)
    {
        //: return (UIImageView *)view;
        return (UIImageView *)view;
    }
    //: for (UIView *subview in view.subviews) {
    for (UIView *subview in view.subviews) {
        //: UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        UIImageView *imageView = [self action:subview];
        //: if (imageView) {
        if (imageView) {
            //: return imageView;
            return imageView;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setTitle:(NSString *)title titleColor:(UIColor *)color{
- (void)image:(NSString *)title title:(UIColor *)color{
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:20]];
        [titleLabel setFont:[UIFont systemFontOfSize:20]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];
    }
    //: [titleLabel setTextColor:color];
    [titleLabel setTextColor:color];
    //: [titleLabel setText:title];
    [titleLabel setText:title];
}

//: -(void)setNavRightItem:(SEL)selector title:(NSString *)title color:(UIColor *)color
-(void)of:(SEL)selector with:(NSString *)title lineItem:(UIColor *)color
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitle:title forState:UIControlStateNormal];
    //: [backButton setTitle:title forState:UIControlStateHighlighted];
    [backButton setTitle:title forState:UIControlStateHighlighted];
    //: [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleColor:color forState:UIControlStateNormal];
    //: [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    //: backButton.titleLabel.font = [UIFont systemFontOfSize:15];
    backButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: backItem.tintColor = [UIColor whiteColor];
    backItem.tintColor = [UIColor whiteColor];

    //: self.navigationItem.rightBarButtonItem = backItem;
    self.navigationItem.rightBarButtonItem = backItem;
}
//: - (void)dismissModalController {
- (void)disable {
    //: if (self.navigationController != nil) {
    if (self.navigationController != nil) {
        //: if ([self.navigationController respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
        if ([self.navigationController respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
            //: [self.navigationController dismissViewControllerAnimated:YES completion:^{
            [self.navigationController dismissViewControllerAnimated:YES completion:^{

            //: }];
            }];
        }
    //: } else {
    } else {
        //: if ([self respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
        if ([self respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
            //: [self.navigationController dismissViewControllerAnimated:YES completion:^{
            [self.navigationController dismissViewControllerAnimated:YES completion:^{

            //: }];
            }];
        }
    }
}

//: - (void)showCustomBackButton:(SEL)selector {
- (void)latterDayAdd:(SEL)selector {
    //: [self setNavLeftItem:selector image:[UIImage imageNamed:@"back_arrow_bl"] imageH:nil];
    [self max:selector pinIn:[UIImage imageNamed:[[GoodHoppingData sharedInstance] kTitle_arrestString]] ting:nil];

}
//: #pragma mark - controller 控制
#pragma mark - controller 控制

//- (void)pushController:(UIViewController *)viewController {
//    [self pushController:viewController animated:YES];
//}

//- (void)pushController:(UIViewController *)viewController animated:(BOOL)animated {
//    if ([self isKindOfClass:[UINavigationController class]]) {
//        [(UINavigationController *)self pushViewController:viewController animated:animated];
//    } else if (self.navigationController != nil) {
//        [self.navigationController pushViewController:viewController animated:animated];
//    } else {
//        if (viewController == self) {
//            return ;
//        }
//
//        [viewController viewWillAppear:YES];
//        [self.view pushView:viewController.view completion:^(BOOL finished) {
//            [viewController viewDidAppear:YES];
//        }];
//    }
//}

//: - (void)popController {
- (void)indexShow {
    //: if ([self isKindOfClass:[UINavigationController class]]) {
    if ([self isKindOfClass:[UINavigationController class]]) {
        //: if ([self respondsToSelector:@selector(popViewControllerAnimated:)]) {
        if ([self respondsToSelector:@selector(popViewControllerAnimated:)]) {
            //: [(UINavigationController *)self popViewControllerAnimated:NO];
            [(UINavigationController *)self popViewControllerAnimated:NO];
        }
    }
    //: if (self.navigationController != nil) {
    if (self.navigationController != nil) {
        //: if ([self.navigationController respondsToSelector:@selector(popViewControllerAnimated:)]) {
        if ([self.navigationController respondsToSelector:@selector(popViewControllerAnimated:)]) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        }

    //: } else {
    } else {
        //: [self viewWillDisappear:YES];
        [self viewWillDisappear:YES];
        //: [self.view popCompletion:^(BOOL finished) {
        [self.view path:^(BOOL finished) {
            //: [self viewDidDisappear:YES];
            [self viewDidDisappear:YES];
        //: }];
        }];
    }
}

//: #pragma mark - navbar
#pragma mark - navbar

//: - (void)setNavBarBackGroundColor:(UIColor *)color{
- (void)setTranslate:(UIColor *)color{
    //: [self.navigationController.navigationBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[ColorHelper play:[UIColor cell:[[GoodHoppingData sharedInstance] kTitle_validValue]] stop:[UIColor cell:[[GoodHoppingData sharedInstance] kName_climateSuggestString]] progress:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    //: self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //: self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.translucent = YES;
}

//: - (void)setTitleColor:(UIColor *)color{
- (void)setShow:(UIColor *)color{
    //: UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    //: if (!titleLabel) {
    if (!titleLabel) {
        //: titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: [titleLabel setTextAlignment:NSTextAlignmentCenter];
        [titleLabel setTextAlignment:NSTextAlignmentCenter];
        //: [titleLabel setBackgroundColor:[UIColor clearColor]];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        //: [titleLabel setFont:[UIFont systemFontOfSize:20]];
        [titleLabel setFont:[UIFont systemFontOfSize:20]];
        //: [self.navigationItem setTitleView:titleLabel];
        [self.navigationItem setTitleView:titleLabel];
    }
    //: [titleLabel setTextColor:color];
    [titleLabel setTextColor:color];
}

//: - (void)showCustomBackButton {
- (void)imageButton {
    //: [self showCustomBackButton:@selector(close)];
    [self latterDayAdd:@selector(mediaRecent)];
}


//: - (void)setNavBarClearColor{
- (void)count{
    //: [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[self colouration:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
    //: self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //: self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.translucent = YES;

}


//找到navbar底部的黑色线条
//: - (BOOL)findNavbarBottomLineUnder:(UIView *)view hide:(BOOL)hide{
- (BOOL)action:(UIView *)view image:(BOOL)hide{
    //: UIView *line = [self findHairlineImageViewUnder:view];
    UIView *line = [self action:view];

    //: if (line) {
    if (line) {
        //: line.hidden = hide;
        line.hidden = hide;
        //: return YES;
        return YES;
    }

    //: return NO;
    return NO;
}


//: - (void)setNavBarWithAlpha:(CGFloat)alpha{
- (void)setMixIn:(CGFloat)alpha{

    //: self.navigationController.navigationBar.translucent = alpha<1.0;
    self.navigationController.navigationBar.translucent = alpha<1.0;
    //: [self.navigationController.navigationBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[ColorHelper play:[UIColor cell:[[GoodHoppingData sharedInstance] kTitle_validValue]] stop:[UIColor cell:[[GoodHoppingData sharedInstance] kName_climateSuggestString]] progress:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

}

//: - (void)setNavRightItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH {
- (void)incidental:(SEL)selector asPressed:(UIImage *)image language:(UIImage *)imageH {
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:image forState:UIControlStateNormal];
    //: if (imageH) {
    if (imageH) {
        //: [backButton setImage:imageH forState:UIControlStateHighlighted];
        [backButton setImage:imageH forState:UIControlStateHighlighted];
    }
    //: [backButton setFrame:CGRectMake(0, 7, 30, 50)];
    [backButton setFrame:CGRectMake(0, 7, 30, 50)];
    //: backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: backItem.tintColor = [UIColor whiteColor];
    backItem.tintColor = [UIColor whiteColor];

    //: self.navigationItem.rightBarButtonItem = backItem;
    self.navigationItem.rightBarButtonItem = backItem;
}


//: - (UIImage *)imageWithColor:(UIColor *)color{
- (UIImage *)colouration:(UIColor *)color{
    //: CGRect rect = CGRectMake(0, 0, 1, 1);
    CGRect rect = CGRectMake(0, 0, 1, 1);
    //: UIGraphicsBeginImageContext(rect.size);
    UIGraphicsBeginImageContext(rect.size);
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    //: [color setFill];
    [color setFill];
    //: CGContextFillRect(context, rect);
    CGContextFillRect(context, rect);
    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return image;
    return image;

}

//: -(void)setNavLeftItem:(SEL)selector title:(NSString *)title color:(UIColor *)color
-(void)with:(SEL)selector drop:(NSString *)title chorus:(UIColor *)color
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitle:title forState:UIControlStateNormal];
    //: [backButton setTitle:title forState:UIControlStateHighlighted];
    [backButton setTitle:title forState:UIControlStateHighlighted];
    //: [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleColor:color forState:UIControlStateNormal];
    //: [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    [backButton setFrame:CGRectMake(0, 7, 70, 30)];
    //: backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [backButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: self.navigationItem.leftBarButtonItem = backItem;
    self.navigationItem.leftBarButtonItem = backItem;
}

//: - (void)close {
- (void)mediaRecent {
    //: [self dismissModalController];
    [self disable];
    //: [self popController];
    [self indexShow];
}

//: - (void)setNavLeftItem:(SEL)selector image:(UIImage *)image imageH:(UIImage *)imageH {
- (void)max:(SEL)selector pinIn:(UIImage *)image ting:(UIImage *)imageH {

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:image forState:UIControlStateNormal];
    //: if (imageH) {
    if (imageH) {
        //: [backButton setImage:imageH forState:UIControlStateHighlighted];
        [backButton setImage:imageH forState:UIControlStateHighlighted];
    }
    //: [backButton setFrame:CGRectMake(0, 0, 50, 44)];
    [backButton setFrame:CGRectMake(0, 0, 50, 44)];
    //: backButton.backgroundColor = [UIColor clearColor];
    backButton.backgroundColor = [UIColor clearColor];
    //: backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //: [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    //: self.navigationItem.leftBarButtonItem = backItem;
    self.navigationItem.leftBarButtonItem = backItem;

}

//: - (void)setShadowClearColor{
- (void)green{
}



//: @end
@end