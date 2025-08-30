// __DEBUG__
// __CLOSE_PRINT__
//
//  AtNextView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERReportNextDelegate <NSObject>
@protocol EnableTitle <NSObject>

//: - (void)didTouchBlackButton;
- (void)buttonDomain;
//: - (void)didTouchDeleteButton;
- (void)quantityervalRemote;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface AtNextView : UIView

//: @property (nonatomic,weak) id<USERReportNextDelegate> delegate;
@property (nonatomic,weak) id<EnableTitle> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)will;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END