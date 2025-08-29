//
//  USERMigrateHeader.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

#import "USERMigrateHeader.h"
#import "NSDictionary+USERJson.h"

static NSString *const kUSERMigrateHeaderVersion = @"version";
static NSString *const kUSERMigrateHeaderTerminal = @"terminal";
static NSString *const kUSERMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const kUSERMigrateHeaderAPPVersion = @"app_version";
static NSString *const kUSERMigrateHeaderMessageCount = @"message_count";

@implementation USERMigrateHeader


+ (instancetype)initWithDefaultConfig {
    USERMigrateHeader *ret = [[USERMigrateHeader alloc] init];
    ret.version = 0;
    ret.clientType = NIMLoginClientTypeiOS;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return ret;
}

+ (instancetype)initWithRawContent:(NSData *)data {
    if (!data) {
        return nil;
    }
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    
    NSDictionary *dict = (NSDictionary *)jsonData;
    USERMigrateHeader *info = [[USERMigrateHeader alloc] init];
    info.version = [dict jsonInteger:kUSERMigrateHeaderVersion];
    info.clientType = [dict jsonInteger:kUSERMigrateHeaderTerminal];
    info.sdkVersion = [dict jsonString:kUSERMigrateHeaderSDKVersion];
    info.appVersion = [dict jsonString:kUSERMigrateHeaderAPPVersion];
    info.totalInfoCount = [dict jsonInteger:kUSERMigrateHeaderMessageCount];
    return info;
}

- (nullable NSData *)toRawContent {
    
    if ([self invalid]) {
        return nil;
    }
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[kUSERMigrateHeaderVersion] = @(_version);
    dic[kUSERMigrateHeaderTerminal] = @(_clientType);
    dic[kUSERMigrateHeaderSDKVersion] = _sdkVersion;
    dic[kUSERMigrateHeaderAPPVersion] = _appVersion;
    dic[kUSERMigrateHeaderMessageCount] = @(_totalInfoCount);
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    return jsonData;
}

- (BOOL)invalid {
    return (_totalInfoCount == 0 ||
            _version != 0);
}

@end
