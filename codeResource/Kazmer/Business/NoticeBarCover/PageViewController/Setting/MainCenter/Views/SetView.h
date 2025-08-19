// __DEBUG__
// __CLOSE_PRINT__
//
//  SetView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESCustomUIAlertDelegate <NSObject>
@protocol ModeDelegate <NSObject>

//: - (void)didTouchTheBtnWith:(NSInteger )tag;
- (void)toolTouch:(NSInteger )tag;

//: @end
@end

//: @interface NSSetAvater : UIView
@interface SetView : UIView

//: @property (nonatomic,weak) id<NTESCustomUIAlertDelegate> delegate;
@property (nonatomic,weak) id<ModeDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)table;

/** 动画关闭 */
//: - (void)animationClose;
- (void)impendentImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END