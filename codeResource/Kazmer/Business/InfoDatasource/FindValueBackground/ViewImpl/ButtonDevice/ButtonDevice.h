// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface WatchKitDevice : NSObject
@interface ButtonDevice : NSObject

//: + (WatchKitDevice *)currentDevice;
+ (ButtonDevice *)magnitudeBy;

/// 语言
//: + (NSString *)language;
+ (NSString *)value;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)pin;

//: - (CGFloat)compressQuality;
- (CGFloat)user;

//: - (CGFloat)statusBarHeight;
- (CGFloat)item;

//: @end
@end
