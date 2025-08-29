// __DEBUG__
// __CLOSE_PRINT__
//
//  AncientHistoryView.h
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERDeleteAccountDelegate <NSObject>
@protocol WithDelegate <NSObject>

//: - (void)didTouchDeleteNextButton;
- (void)completeHolder;
//: - (void)didTouchDeleteProtocolButton;
- (void)atPress;

//: @end
@end

//: @interface ZMONDeleteAccountView : UIView
@interface AncientHistoryView : UIView

//: @property (nonatomic,weak) id<USERDeleteAccountDelegate> delegate;
@property (nonatomic,weak) id<WithDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)text;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END