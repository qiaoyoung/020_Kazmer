// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+NameAddContent.h
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^AlertBlock)(NSInteger);
typedef void (^AlertBlock)(NSInteger);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: @interface UIAlertView (USERBlock)
@interface UIAlertView (NameAddContent)
//: - (void)clearActionBlock;
- (void)optionItem;
//: - (void)showAlertWithCompletionHandler: (__nullable AlertBlock)block;
- (void)tipMessage: (__nullable AlertBlock)block;
//: @end
@end



//: @interface UIAlertController (USERBlock)
@interface UIAlertController (NameAddContent)
//: - (void)show;
- (void)before;


//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)action:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           lip:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler;
                         adhereChange:(void (^ __nullable)(UIAlertAction *action))handler;//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END