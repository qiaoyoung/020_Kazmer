//
//  UIScrollView+USERPullToRefresh.h
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//

#import <UIKit/UIKit.h>

@class USERPullToRefreshView;

@interface UIScrollView (USERPullToRefresh)

typedef NS_ENUM(NSUInteger, USERPullToRefreshPosition) {
    USERPullToRefreshPositionTop = 0,
    USERPullToRefreshPositionBottom,
};

- (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
- (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(USERPullToRefreshPosition)position;
- (void)triggerPullToRefresh;

@property (nonatomic, strong, readonly) USERPullToRefreshView *pullToRefreshView;
@property (nonatomic, assign) BOOL showsPullToRefresh;

@end


typedef NS_ENUM(NSUInteger, USERPullToRefreshState) {
    USERPullToRefreshStateStopped = 0,
    USERPullToRefreshStateTriggered,
    USERPullToRefreshStateLoading,
    USERPullToRefreshStateAll = 10
};

@interface USERPullToRefreshView : UIView

@property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *subtitleLabel;
@property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
@property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

@property (nonatomic, readonly) USERPullToRefreshState state;
@property (nonatomic, readonly) USERPullToRefreshPosition position;

- (void)setTitle:(NSString *)title forState:(USERPullToRefreshState)state;
- (void)setSubtitle:(NSString *)subtitle forState:(USERPullToRefreshState)state;
- (void)setCustomView:(UIView *)view forState:(USERPullToRefreshState)state;

- (void)startAnimating;
- (void)stopAnimating;


@end

