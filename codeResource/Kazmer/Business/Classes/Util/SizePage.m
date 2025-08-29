
#import <Foundation/Foundation.h>

NSString *StringFromSpringtimeData(Byte *data);        


//: iPhone
Byte kNameFrameData[] = {91, 6, 75, 14, 200, 173, 66, 54, 9, 107, 203, 210, 54, 164, 30, 5, 29, 36, 35, 26, 93};

//: WIFI
Byte kNameEasilyInspectionValue[] = {76, 4, 82, 5, 102, 5, 247, 244, 247, 71};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizePage.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERDevice.h"
#import "SizePage.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>

//: @interface USERDevice ()
@interface SizePage ()

//: @property (nonatomic,copy) NSDictionary *networkTypes;
@property (nonatomic,copy) NSDictionary *networkTypes;

//: @end
@end

//: @implementation USERDevice
@implementation SizePage

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)house{
    //: return (1280 * 960);
    return (1280 * 960);
}


//: - (BOOL)isInBackground{
- (BOOL)scale{
    //: return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
    return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
}

//: - (CGFloat)compressQuality{
- (CGFloat)happeningQuality{
    //: return 0.5;
    return 0.5;
}


//: - (NSInteger)cpuCount{
- (NSInteger)text{
    //: size_t size = sizeof(int);
    size_t size = sizeof(int);
    //: int results;
    int results;

    //: int mib[2] = {6, 3};
    int mib[2] = {6, 3};
    //: sysctl(mib, 2, &results, &size, NULL, 0);
    sysctl(mib, 2, &results, &size, NULL, 0);
    //: return (NSUInteger) results;
    return (NSUInteger) results;
}

//: - (BOOL)isLowDevice{
- (BOOL)towardText{



    //: return [[NSProcessInfo processInfo] processorCount] <= 1;
    return [[NSProcessInfo processInfo] processorCount] <= 1;

}


//: + (USERDevice *)currentDevice{
+ (SizePage *)lastDevice{
    //: static USERDevice *instance = nil;
    static SizePage *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[USERDevice alloc] init];
        instance = [[SizePage alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (CGFloat)statusBarHeight{
- (CGFloat)item{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice comeDownSuperphylum];
}

//App状态
//: - (BOOL)isUsingWifi{
- (BOOL)pin{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: return status == ReachableViaWiFi;
    return status == ReachableViaWiFi;
}


//: - (NSString *)machineName{
- (NSString *)candidCamera{
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

//: - (USERNetworkType)currentNetworkType{
- (USERNetworkType)need{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: switch (status) {
    switch (status) {
        //: case ReachableViaWiFi:
        case ReachableViaWiFi:
            //: return USERNetworkTypeWifi;
            return USERNetworkTypeWifi;
        //: case ReachableViaWWAN:
        case ReachableViaWWAN:
        {
            //: CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            //: NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            //: return number ? (USERNetworkType)[number integerValue] : USERNetworkTypeWwan;
            return number ? (USERNetworkType)[number integerValue] : USERNetworkTypeWwan;
        }
        //: default:
        default:
            //: return USERNetworkTypeUnknown;
            return USERNetworkTypeUnknown;
    }
}

//: - (void)buildDeviceInfo
- (void)manager
{
    //: _networkTypes = @{
    _networkTypes = @{
                          //: CTRadioAccessTechnologyGPRS:@(USERNetworkType2G),
                          CTRadioAccessTechnologyGPRS:@(USERNetworkType2G),
                          //: CTRadioAccessTechnologyEdge:@(USERNetworkType2G),
                          CTRadioAccessTechnologyEdge:@(USERNetworkType2G),
                          //: CTRadioAccessTechnologyWCDMA:@(USERNetworkType3G),
                          CTRadioAccessTechnologyWCDMA:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyHSDPA:@(USERNetworkType3G),
                          CTRadioAccessTechnologyHSDPA:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyHSUPA:@(USERNetworkType3G),
                          CTRadioAccessTechnologyHSUPA:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyCDMA1x:@(USERNetworkType3G),
                          CTRadioAccessTechnologyCDMA1x:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORev0:@(USERNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORev0:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevA:@(USERNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevA:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevB:@(USERNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevB:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyeHRPD:@(USERNetworkType3G),
                          CTRadioAccessTechnologyeHRPD:@(USERNetworkType3G),
                          //: CTRadioAccessTechnologyLTE:@(USERNetworkType4G),
                          CTRadioAccessTechnologyLTE:@(USERNetworkType4G),
                     //: };
                     };

}

//: - (BOOL)isIphone{
- (BOOL)find{
    //: NSString *deviceModel = [UIDevice currentDevice].model;
    NSString *deviceModel = [UIDevice currentDevice].model;
    //: if ([deviceModel isEqualToString:@"iPhone"]) {
    if ([deviceModel isEqualToString:StringFromSpringtimeData(kNameFrameData)]) {
        //: return YES;
        return YES;
    //: }else {
    }else {
        //: return NO;
        return NO;
    }
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self buildDeviceInfo];
        [self manager];
    }
    //: return self;
    return self;
}


//: - (NSString *)networkStatus:(USERNetworkType)networkType
- (NSString *)past:(USERNetworkType)networkType
{
    //: switch (networkType) {
    switch (networkType) {
        //: case USERNetworkType2G:
        case USERNetworkType2G:
            //: return @"2G";
            return @"2G";
        //: case USERNetworkType3G:
        case USERNetworkType3G:
            //: return @"3G";
            return @"3G";
        //: case USERNetworkType4G:
        case USERNetworkType4G:
            //: return @"4G";
            return @"4G";
        //: default:
        default:
            //: return @"WIFI";
            return StringFromSpringtimeData(kNameEasilyInspectionValue);
    }
}


//: @end
@end

Byte * SpringtimeDataToCache(Byte *data) {
    int reception = data[0];
    int beginGravity = data[1];
    Byte skirt = data[2];
    int distributionSharedDemonstration = data[3];
    if (!reception) return data + distributionSharedDemonstration;
    for (int i = distributionSharedDemonstration; i < distributionSharedDemonstration + beginGravity; i++) {
        int value = data[i] + skirt;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[distributionSharedDemonstration + beginGravity] = 0;
    return data + distributionSharedDemonstration;
}

NSString *StringFromSpringtimeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SpringtimeDataToCache(data)];
}
