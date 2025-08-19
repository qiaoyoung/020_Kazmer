// __DEBUG__
// __CLOSE_PRINT__
//
//  BoundsView.h
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

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol ChaseDelegate <NSObject>

//: - (void)didTouchNextButton;
- (void)readName;
//: - (void)didTouchProtocolButton;
- (void)canClock;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface BoundsView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<ChaseDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)animation;

/** 动画关闭 */
//: - (void)animationClose;
- (void)impendentImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END