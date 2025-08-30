// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerTableView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERReportDelegate <NSObject>
@protocol ColorDelegate <NSObject>

//: - (void)didTouchSubmitButton:(NSString *)reason;
- (void)sessions:(NSString *)reason;

//: @end
@end

//: @interface ZMONReportUserView : UIView
@interface CornerTableView : UIView

//: @property (nonatomic,weak) id<USERReportDelegate> delegate;
@property (nonatomic,weak) id<ColorDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)shouldLast;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END