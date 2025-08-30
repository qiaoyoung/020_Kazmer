// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class DisplayPageView;
@class MarginView;

//: @protocol DisplayPageViewDataSource <NSObject>
@protocol CellMessageTag <NSObject>
//: - (NSInteger)numberOfPages: (DisplayPageView *)pageView;
- (NSInteger)directionned: (MarginView *)pageView;
//: - (UIView *)pageView: (DisplayPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)sight: (MarginView *)pageView modelBlueBackground: (NSInteger)index;
//: @end
@end

//: @protocol DisplayPageViewDelegate <NSObject>
@protocol SecondNameDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (DisplayPageView *)pageView
- (void)icon: (MarginView *)pageView
             //: currentIndex: (NSInteger)index
             pagination: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               recent: (NSInteger)pages;

//: - (void)pageViewDidScroll: (DisplayPageView *)pageView;
- (void)quantityeracted: (MarginView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)toScroll;
//: @end
@end


//: @interface DisplayPageView : UIView<UIScrollViewDelegate>
@interface MarginView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<DisplayPageViewDataSource> dataSource;
@property (nonatomic,weak) id<CellMessageTag> dataSource;
//: @property (nonatomic,weak) id<DisplayPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<SecondNameDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)exhibitView: (NSInteger)pages;
//: - (void)reloadData;
- (void)behindComment;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)content: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)empty;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)container:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                red:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)past:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         tableOfContents:(NSTimeInterval)duration;
//: @end
@end
