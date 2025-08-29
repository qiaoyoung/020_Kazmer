// __DEBUG__
// __CLOSE_PRINT__
//
//  RedInfo.h
// Mortification
//
//  Created by chris on 2017/11/3.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitKeyboardInfo : NSObject
@interface RedInfo : NSObject

//是否可见
//: @property (nonatomic,assign,readonly) CGFloat isVisiable;
@property (nonatomic,assign,readonly) CGFloat isVisiable;

//键盘高度
//: @property (nonatomic,assign,readonly) CGFloat keyboardHeight;
@property (nonatomic,assign,readonly) CGFloat keyboardHeight;

//: + (instancetype)instance;
+ (instancetype)parent;


//: extern __attribute__((visibility ("default"))) NSNotificationName const NIMKitKeyboardWillChangeFrameNotification;
extern __attribute__((visibility ("default"))) NSNotificationName const dreamPassData;
//: extern __attribute__((visibility ("default"))) NSNotificationName const NIMKitKeyboardWillHideNotification;
extern __attribute__((visibility ("default"))) NSNotificationName const mRootStr;


//: @end
@end