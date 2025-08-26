
#import <Foundation/Foundation.h>

NSString *StringFromCedeGoryData(Byte *data);        


//: iPhone
Byte main_infoClubSpeculationContent[] = {65, 6, 33, 9, 178, 151, 212, 165, 188, 72, 47, 71, 78, 77, 68, 8};

//: WIFI
Byte mContainerName[] = {57, 4, 56, 11, 157, 232, 237, 86, 185, 5, 254, 31, 17, 14, 17, 209};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueTimeHeightDevice.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDevice.h"
#import "ValueTimeHeightDevice.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>

//: @interface NTESDevice ()
@interface ValueTimeHeightDevice ()

//: @property (nonatomic,copy) NSDictionary *networkTypes;
@property (nonatomic,copy) NSDictionary *networkTypes;

//: @end
@end

//: @implementation NTESDevice
@implementation ValueTimeHeightDevice

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self buildDeviceInfo];
        [self belowInput];
    }
    //: return self;
    return self;
}


//: + (NTESDevice *)currentDevice{
+ (ValueTimeHeightDevice *)language{
    //: static NTESDevice *instance = nil;
    static ValueTimeHeightDevice *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESDevice alloc] init];
        instance = [[ValueTimeHeightDevice alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)buildDeviceInfo
- (void)belowInput
{
    //: _networkTypes = @{
    _networkTypes = @{
                          //: CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                          CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                     //: };
                     };

}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)bubble{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)change{
    //: return 0.5;
    return 0.5;
}


//App状态
//: - (BOOL)isUsingWifi{
- (BOOL)imagePage{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: return status == ReachableViaWiFi;
    return status == ReachableViaWiFi;
}

//: - (BOOL)isInBackground{
- (BOOL)icon{
    //: return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
    return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
}

//: - (NTESNetworkType)currentNetworkType{
- (NTESNetworkType)title{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: switch (status) {
    switch (status) {
        //: case ReachableViaWiFi:
        case ReachableViaWiFi:
            //: return NTESNetworkTypeWifi;
            return NTESNetworkTypeWifi;
        //: case ReachableViaWWAN:
        case ReachableViaWWAN:
        {
            //: CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            //: NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            //: return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
            return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
        }
        //: default:
        default:
            //: return NTESNetworkTypeUnknown;
            return NTESNetworkTypeUnknown;
    }
}


//: - (NSString *)networkStatus:(NTESNetworkType)networkType
- (NSString *)itemFor:(NTESNetworkType)networkType
{
    //: switch (networkType) {
    switch (networkType) {
        //: case NTESNetworkType2G:
        case NTESNetworkType2G:
            //: return @"2G";
            return @"2G";
        //: case NTESNetworkType3G:
        case NTESNetworkType3G:
            //: return @"3G";
            return @"3G";
        //: case NTESNetworkType4G:
        case NTESNetworkType4G:
            //: return @"4G";
            return @"4G";
        //: default:
        default:
            //: return @"WIFI";
            return StringFromCedeGoryData(mContainerName);
    }
}

//: - (NSInteger)cpuCount{
- (NSInteger)bar{
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
- (BOOL)last{



    //: return [[NSProcessInfo processInfo] processorCount] <= 1;
    return [[NSProcessInfo processInfo] processorCount] <= 1;

}

//: - (BOOL)isIphone{
- (BOOL)sound{
    //: NSString *deviceModel = [UIDevice currentDevice].model;
    NSString *deviceModel = [UIDevice currentDevice].model;
    //: if ([deviceModel isEqualToString:@"iPhone"]) {
    if ([deviceModel isEqualToString:StringFromCedeGoryData(main_infoClubSpeculationContent)]) {
        //: return YES;
        return YES;
    //: }else {
    }else {
        //: return NO;
        return NO;
    }
}

//: - (NSString *)machineName{
- (NSString *)userView{
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)rangeHeight{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice tingHeight];
}


//: @end
@end

Byte * CedeGoryDataToCache(Byte *data) {
    int overhead = data[0];
    int barPeople = data[1];
    Byte fade = data[2];
    int pieDog = data[3];
    if (!overhead) return data + pieDog;
    for (int i = pieDog; i < pieDog + barPeople; i++) {
        int value = data[i] + fade;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pieDog + barPeople] = 0;
    return data + pieDog;
}

NSString *StringFromCedeGoryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CedeGoryDataToCache(data)];
}
