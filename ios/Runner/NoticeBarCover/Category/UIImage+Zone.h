// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Zone.h
//  NIM
//
//  Created by chris on 15/7/13.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (NTES)
@interface UIImage (Zone)

//: + (UIImage *)fetchImage:(NSString *)imageNameOrPath;
+ (UIImage *)bubble:(NSString *)imageNameOrPath;

//: - (UIImage *)imageForAvatarUpload;
- (UIImage *)quick;

//: @end
@end