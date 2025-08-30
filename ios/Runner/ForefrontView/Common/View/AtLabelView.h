// __DEBUG__
// __CLOSE_PRINT__
//
//  AtLabelView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class USERPageView;
@class AtLabelView;

//: @protocol USERPageViewDataSource <NSObject>
@protocol ViewSource <NSObject>
//: - (NSInteger)numberOfPages: (USERPageView *)pageView;
- (NSInteger)directionned: (AtLabelView *)pageView;
//: - (UIView *)pageView: (USERPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)sight: (AtLabelView *)pageView modelBlueBackground: (NSInteger)index;
//: @end
@end

//: @protocol USERPageViewDelegate <NSObject>
@protocol ManColorCell <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (USERPageView *)pageView
- (void)icon: (AtLabelView *)pageView
             //: currentIndex: (NSInteger)index
             pagination: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               recent: (NSInteger)pages;

//: - (void)pageViewDidScroll: (USERPageView *)pageView;
- (void)quantityeracted: (AtLabelView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)toScroll;
//: @end
@end


//: @interface USERPageView : UIView<UIScrollViewDelegate>
@interface AtLabelView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<USERPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ViewSource> dataSource;
//: @property (nonatomic,weak) id<USERPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<ManColorCell> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)clear: (NSInteger)pages;
//: - (void)reloadData;
- (void)reload;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)necessary: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)blue;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)velleityUponCell:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                view:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)quantityry:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         count:(NSTimeInterval)duration;
//: @end
@end