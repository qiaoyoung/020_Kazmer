// __DEBUG__
// __CLOSE_PRINT__
//
//  UIActionSheet+NameAddContent.h
//  eim_iphone
//
//  Created by amao on 12-11-23.
//  Copyright (c) 2012年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: typedef void (^ActionSheetBlock)(NSInteger);
typedef void (^ActionSheetBlock)(NSInteger);

//: @interface UIActionSheet (USERBlock)<UIActionSheetDelegate>
@interface UIActionSheet (NameAddContent)<UIActionSheetDelegate>
//: - (void)showInView: (UIView *)view completionHandler: (ActionSheetBlock)block;
- (void)showInView: (UIView *)view completionHandler: (ActionSheetBlock)block;
//: - (void)clearActionBlock;
- (void)clearActionBlock;
//: @end
@end