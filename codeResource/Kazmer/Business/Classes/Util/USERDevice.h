//
//  USERDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,USERNetworkType) {
    USERNetworkTypeUnknown,
    USERNetworkTypeWifi,
    USERNetworkTypeWwan,
    USERNetworkType2G,
    USERNetworkType3G,
    USERNetworkType4G,
};

@interface USERDevice : NSObject

+ (USERDevice *)currentDevice;

//图片/音频推荐参数
- (CGFloat)suggestImagePixels;

- (CGFloat)compressQuality;

//App状态
- (BOOL)isUsingWifi;
- (BOOL)isInBackground;

- (USERNetworkType)currentNetworkType;
- (NSString *)networkStatus:(USERNetworkType)networkType;

- (NSInteger)cpuCount;

- (BOOL)isLowDevice;
- (BOOL)isIphone;
- (NSString *)machineName;


- (CGFloat)statusBarHeight;

@end
