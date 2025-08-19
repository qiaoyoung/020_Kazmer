// __DEBUG__
// __CLOSE_PRINT__
//
//  AnalogDigitalConverterView.h
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

//: @protocol NTESDeleteAccountDelegate <NSObject>
@protocol PinTitleDelegate <NSObject>

//: - (void)didTouchDeleteNextButton;
- (void)toCurrent;
//: - (void)didTouchDeleteProtocolButton;
- (void)tingOf;

//: @end
@end

//: @interface ZMONDeleteAccountView : UIView
@interface AnalogDigitalConverterView : UIView

//: @property (nonatomic,weak) id<NTESDeleteAccountDelegate> delegate;
@property (nonatomic,weak) id<PinTitleDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)cellActivity;

/** 动画关闭 */
//: - (void)animationClose;
- (void)impendentImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END