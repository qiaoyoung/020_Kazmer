
#import <Foundation/Foundation.h>

@interface TapViaData : NSObject

+ (instancetype)sharedInstance;

//: CFBundleShortVersionString
@property (nonatomic, copy) NSString *k_contentStr;

@end

@implementation TapViaData

+ (instancetype)sharedInstance {
    static TapViaData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TapViaDataToCache:(Byte *)data {
    int hostaCollector = data[0];
    Byte containerSimply = data[1];
    int cede = data[2];
    for (int i = cede; i < cede + hostaCollector; i++) {
        int value = data[i] - containerSimply;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[cede + hostaCollector] = 0;
    return data + cede;
}

- (NSString *)StringFromTapViaData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TapViaDataToCache:data]];
}

//: CFBundleShortVersionString
- (NSString *)k_contentStr {
    if (!_k_contentStr) {
        Byte value[] = {26, 64, 9, 53, 46, 208, 139, 217, 108, 131, 134, 130, 181, 174, 164, 172, 165, 147, 168, 175, 178, 180, 150, 165, 178, 179, 169, 175, 174, 147, 180, 178, 169, 174, 167, 226};
        _k_contentStr = [self StringFromTapViaData:value];
    }
    return _k_contentStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickInfo.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "QuickInfo.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ValueJson.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const appHideUrl = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const show_pickIdent = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const user_subData = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const dream_bottomText = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const mainContextStr = @"message_count";

//: @implementation NTESMigrateHeader
@implementation QuickInfo


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithBefore {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    QuickInfo *ret = [[QuickInfo alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:[TapViaData sharedInstance].k_contentStr];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithText:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    QuickInfo *info = [[QuickInfo alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict recordInput:appHideUrl];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict recordInput:show_pickIdent];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict keyJson:user_subData];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict keyJson:dream_bottomText];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict recordInput:mainContextStr];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)digitizer {

    //: if ([self invalid]) {
    if ([self scale]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[appHideUrl] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[show_pickIdent] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[user_subData] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[dream_bottomText] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[mainContextStr] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)scale {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end