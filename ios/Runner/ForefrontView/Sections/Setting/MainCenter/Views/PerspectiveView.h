// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveView.h
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

//: @interface ZMONDeactivateAccountSuccessView : UIView
@interface PerspectiveView : UIView

/** 动画显示 */
//: - (void)animationShow;
- (void)smart;

//: - (void)reloadWithNickname:(NSString *)nickname;
- (void)imageLanguage:(NSString *)nickname;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END