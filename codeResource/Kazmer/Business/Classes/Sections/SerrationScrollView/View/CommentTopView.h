// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTopView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERReportHisNextDelegate <NSObject>
@protocol PathDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)buttonDomain;

//: @end
@end

//: @interface ZMONReportHisView : UIView
@interface CommentTopView : UIView

//: @property (nonatomic,weak) id<USERReportHisNextDelegate> delegate;
@property (nonatomic,weak) id<PathDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)back;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END