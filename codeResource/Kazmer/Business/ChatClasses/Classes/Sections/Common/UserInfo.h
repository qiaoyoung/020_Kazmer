// __DEBUG__
// __CLOSE_PRINT__
//
//  UserInfo.h
// ButtonKit
//
//  Created by chris on 2017/11/3.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitKeyboardInfo : NSObject
@interface UserInfo : NSObject

//是否可见
//: @property (nonatomic,assign,readonly) CGFloat isVisiable;
@property (nonatomic,assign,readonly) CGFloat isVisiable;

//键盘高度
//: @property (nonatomic,assign,readonly) CGFloat keyboardHeight;
@property (nonatomic,assign,readonly) CGFloat keyboardHeight;

//: + (instancetype)instance;
+ (instancetype)label;


//: extern __attribute__((visibility ("default"))) NSNotificationName const NIMKitKeyboardWillChangeFrameNotification;
extern __attribute__((visibility ("default"))) NSNotificationName const app_controlData;
//: extern __attribute__((visibility ("default"))) NSNotificationName const NIMKitKeyboardWillHideNotification;
extern __attribute__((visibility ("default"))) NSNotificationName const app_contentData;


//: @end
@end