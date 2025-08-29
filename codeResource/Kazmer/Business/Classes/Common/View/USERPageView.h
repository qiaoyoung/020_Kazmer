//
//  USERPageView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class USERPageView;

@protocol USERPageViewDataSource <NSObject>
- (NSInteger)numberOfPages: (USERPageView *)pageView;
- (UIView *)pageView: (USERPageView *)pageView viewInPage: (NSInteger)index;
@end

@protocol USERPageViewDelegate <NSObject>
@optional
- (void)pageViewScrollEnd: (USERPageView *)pageView
             currentIndex: (NSInteger)index
               totolPages: (NSInteger)pages;

- (void)pageViewDidScroll: (USERPageView *)pageView;
- (BOOL)needScrollAnimation;
@end


@interface USERPageView : UIView<UIScrollViewDelegate>
@property (nonatomic,strong)    UIScrollView   *scrollView;
@property (nonatomic,weak)    id<USERPageViewDataSource>  dataSource;
@property (nonatomic,weak)    id<USERPageViewDelegate>    pageViewDelegate;
- (void)scrollToPage: (NSInteger)pages;
- (void)reloadData;
- (UIView *)viewAtIndex: (NSInteger)index;
- (NSInteger)currentPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                duration:(NSTimeInterval)duration;

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration;
@end
