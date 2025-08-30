// __DEBUG__
// __CLOSE_PRINT__
//
//  SizePage.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,USERNetworkType) {
typedef NS_ENUM(NSUInteger,USERNetworkType) {
    //: USERNetworkTypeUnknown,
    USERNetworkTypeUnknown,
    //: USERNetworkTypeWifi,
    USERNetworkTypeWifi,
    //: USERNetworkTypeWwan,
    USERNetworkTypeWwan,
    //: USERNetworkType2G,
    USERNetworkType2G,
    //: USERNetworkType3G,
    USERNetworkType3G,
    //: USERNetworkType4G,
    USERNetworkType4G,
//: };
};

//: @interface USERDevice : NSObject
@interface SizePage : NSObject

//: - (BOOL)isInBackground;
- (BOOL)scale;

//: - (USERNetworkType)currentNetworkType;
- (USERNetworkType)need;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)pin;

//: - (NSString *)networkStatus:(USERNetworkType)networkType;
- (NSString *)past:(USERNetworkType)networkType;
//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)house;

//: - (CGFloat)statusBarHeight;
- (CGFloat)item;
//: - (BOOL)isIphone;
- (BOOL)find;

//: - (NSString *)machineName;
- (NSString *)candidCamera;

//: - (NSInteger)cpuCount;
- (NSInteger)text;
//: - (CGFloat)compressQuality;
- (CGFloat)happeningQuality;
//: + (USERDevice *)currentDevice;
+ (SizePage *)lastDevice;


//: - (BOOL)isLowDevice;
- (BOOL)towardText;

//: @end
@end