// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface DisplayKitDevice : NSObject
@interface MaxDevice : NSObject

//: + (DisplayKitDevice *)currentDevice;
+ (MaxDevice *)green;

/// 语言
//: + (NSString *)language;
+ (NSString *)past;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)declare;

//: - (CGFloat)compressQuality;
- (CGFloat)withHandle;

//: - (CGFloat)statusBarHeight;
- (CGFloat)grayTing;

//: @end
@end
