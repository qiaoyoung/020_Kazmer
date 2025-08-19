// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueTimeHeightDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface ValueTimeHeightDevice : NSObject

//: + (NTESDevice *)currentDevice;
+ (ValueTimeHeightDevice *)language;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)bubble;

//: - (CGFloat)compressQuality;
- (CGFloat)change;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)imagePage;
//: - (BOOL)isInBackground;
- (BOOL)icon;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)title;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)itemFor:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)bar;

//: - (BOOL)isLowDevice;
- (BOOL)last;
//: - (BOOL)isIphone;
- (BOOL)sound;
//: - (NSString *)machineName;
- (NSString *)userView;


//: - (CGFloat)statusBarHeight;
- (CGFloat)rangeHeight;

//: @end
@end