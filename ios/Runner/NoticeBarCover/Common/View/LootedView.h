// __DEBUG__
// __CLOSE_PRINT__
//
//  LootedView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class LootedView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol ShowToSource <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)mImage: (LootedView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)colorPage: (LootedView *)pageView bubble: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol TextCell <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)clean: (LootedView *)pageView
             //: currentIndex: (NSInteger)index
             endWith: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               end: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)valueView: (LootedView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)videoTime;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface LootedView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ShowToSource> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<TextCell> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)countIn: (NSInteger)pages;
//: - (void)reloadData;
- (void)name;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)object: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)current;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)location:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                should:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)extra:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         toTimeCounterval:(NSTimeInterval)duration;
//: @end
@end