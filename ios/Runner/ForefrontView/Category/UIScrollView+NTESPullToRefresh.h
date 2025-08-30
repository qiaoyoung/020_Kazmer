// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+TitleBubble.h
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class USERPullToRefreshView;
@class StandardView;

//: @interface UIScrollView (USERPullToRefresh)
@interface UIScrollView (TitleBubble)

//: typedef NS_ENUM(NSUInteger, USERPullToRefreshPosition) {
typedef NS_ENUM(NSUInteger, USERPullToRefreshPosition) {
    //: USERPullToRefreshPositionTop = 0,
    USERPullToRefreshPositionTop = 0,
    //: USERPullToRefreshPositionBottom,
    USERPullToRefreshPositionBottom,
//: };
};

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
- (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(USERPullToRefreshPosition)position;
- (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(USERPullToRefreshPosition)position;
//: - (void)triggerPullToRefresh;
- (void)triggerPullToRefresh;

//: @property (nonatomic, strong, readonly) USERPullToRefreshView *pullToRefreshView;
@property (nonatomic, strong, readonly) StandardView *pullToRefreshView;
//: @property (nonatomic, assign) BOOL showsPullToRefresh;
@property (nonatomic, assign) BOOL showsPullToRefresh;

//: @end
@end


//: typedef NS_ENUM(NSUInteger, USERPullToRefreshState) {
typedef NS_ENUM(NSUInteger, USERPullToRefreshState) {
    //: USERPullToRefreshStateStopped = 0,
    USERPullToRefreshStateStopped = 0,
    //: USERPullToRefreshStateTriggered,
    USERPullToRefreshStateTriggered,
    //: USERPullToRefreshStateLoading,
    USERPullToRefreshStateLoading,
    //: USERPullToRefreshStateAll = 10
    USERPullToRefreshStateAll = 10
//: };
};

//: @interface USERPullToRefreshView : UIView
@interface StandardView : UIView

//: @property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *arrowColor;
//: @property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *textColor;
//: @property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *titleLabel;
//: @property (nonatomic, strong, readonly) UILabel *subtitleLabel;
@property (nonatomic, strong, readonly) UILabel *subtitleLabel;
//: @property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
@property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
//: @property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;
@property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

//: @property (nonatomic, readonly) USERPullToRefreshState state;
@property (nonatomic, readonly) USERPullToRefreshState state;
//: @property (nonatomic, readonly) USERPullToRefreshPosition position;
@property (nonatomic, readonly) USERPullToRefreshPosition position;

//: - (void)setTitle:(NSString *)title forState:(USERPullToRefreshState)state;
- (void)setTitle:(NSString *)title forState:(USERPullToRefreshState)state;
//: - (void)setSubtitle:(NSString *)subtitle forState:(USERPullToRefreshState)state;
- (void)setSubtitle:(NSString *)subtitle forState:(USERPullToRefreshState)state;
//: - (void)setCustomView:(UIView *)view forState:(USERPullToRefreshState)state;
- (void)setCustomView:(UIView *)view forState:(USERPullToRefreshState)state;

//: - (void)startAnimating;
- (void)startAnimating;
//: - (void)stopAnimating;
- (void)stopAnimating;


//: @end
@end