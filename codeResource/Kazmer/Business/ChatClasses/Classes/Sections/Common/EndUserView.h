// __DEBUG__
// __CLOSE_PRINT__
//
//  EndUserView.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WatchPageView;
@class EndUserView;

//: @protocol WatchPageViewDataSource <NSObject>
@protocol ObjectCell <NSObject>
//: - (NSInteger)numberOfPages: (WatchPageView *)pageView;
- (NSInteger)mImage: (EndUserView *)pageView;
//: - (UIView *)pageView: (WatchPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)colorPage: (EndUserView *)pageView bubble: (NSInteger)index;
//: @end
@end

//: @protocol WatchPageViewDelegate <NSObject>
@protocol MaxDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (WatchPageView *)pageView
- (void)clean: (EndUserView *)pageView
             //: currentIndex: (NSInteger)index
             endWith: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               end: (NSInteger)pages;

//: - (void)pageViewDidScroll: (WatchPageView *)pageView;
- (void)valueView: (EndUserView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)videoTime;
//: @end
@end


//: @interface WatchPageView : UIView<UIScrollViewDelegate>
@interface EndUserView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<WatchPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ObjectCell> dataSource;
//: @property (nonatomic,weak) id<WatchPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<MaxDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)user: (NSInteger)pages;
//: - (void)reloadData;
- (void)noDomainData;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)session: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)viewIn;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)globule:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                immobilize:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)sinceRed:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         windowDuration:(NSTimeInterval)duration;
//: @end
@end
