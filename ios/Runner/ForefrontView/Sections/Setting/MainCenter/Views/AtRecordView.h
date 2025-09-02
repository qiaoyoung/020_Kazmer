// __DEBUG__
// __CLOSE_PRINT__
//
//  AtRecordView.h
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


//: @protocol USERCustomUIAlertDelegate <NSObject>
@protocol MessageBubble <NSObject>

//: - (void)didTouchTheBtnWith:(NSInteger )tag;
- (void)bubbleWith:(NSInteger )tag;

//: @end
@end

//: @interface NSSetAvater : UIView
@interface AtRecordView : UIView

//: @property (nonatomic,weak) id<USERCustomUIAlertDelegate> delegate;
@property (nonatomic,weak) id<MessageBubble> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)animationTitleShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)ingatheringBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END