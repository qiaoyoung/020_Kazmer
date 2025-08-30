// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionUserView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERDeactivateAccountDelegate <NSObject>
@protocol TopUserDelegateMake <NSObject>

//: - (void)didTouchNextButton;
- (void)magnitudeImage;
//: - (void)didTouchProtocolButton;
- (void)forwardImage;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface ActionUserView : UIView

//: @property (nonatomic,weak) id<USERDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<TopUserDelegateMake> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)user;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END