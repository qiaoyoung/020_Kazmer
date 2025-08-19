// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleNextView.h
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

//: @protocol NTESReportNextDelegate <NSObject>
@protocol SoapBubbleKey <NSObject>

//: - (void)didTouchBlackButton;
- (void)changeButton;
//: - (void)didTouchDeleteButton;
- (void)touchCell;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface TitleNextView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<SoapBubbleKey> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)bringHomeShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)impendentImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END