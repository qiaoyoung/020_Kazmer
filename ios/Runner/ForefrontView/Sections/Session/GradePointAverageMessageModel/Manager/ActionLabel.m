
#import <Foundation/Foundation.h>

typedef struct {
    Byte writtenAccount;
    Byte *crown;
    unsigned int aircraftShallow;
} StructToothData;

@interface ToothData : NSObject

@end

@implementation ToothData

//: sdk_version
+ (NSString *)kTitleSecurityName {
    /* static */ NSString *kTitleSecurityName = nil;
    if (!kTitleSecurityName) {
		NSString *origin = @"8B9C93A78E9D8A8B9197966F";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){248, (Byte *)data.bytes, 11};
        kTitleSecurityName = [self StringFromToothData:&value];
    }
    return kTitleSecurityName;
}

//: CFBundleShortVersionString
+ (NSString *)kContentWithTopTitleData {
    /* static */ NSString *kContentWithTopTitleData = nil;
    if (!kContentWithTopTitleData) {
		NSString *origin = @"0E0B0F38232921281E25223F391B283F3E2422231E393F24232A13";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){77, (Byte *)data.bytes, 26};
        kContentWithTopTitleData = [self StringFromToothData:&value];
    }
    return kContentWithTopTitleData;
}

+ (Byte *)ToothDataToByte:(StructToothData *)data {
    for (int i = 0; i < data->aircraftShallow; i++) {
        data->crown[i] ^= data->writtenAccount;
    }
    data->crown[data->aircraftShallow] = 0;
    return data->crown;
}

//: version
+ (NSString *)kTitle_fileData {
    /* static */ NSString *kTitle_fileData = nil;
    if (!kTitle_fileData) {
		NSString *origin = @"AEBDAAABB1B7B690";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){216, (Byte *)data.bytes, 7};
        kTitle_fileData = [self StringFromToothData:&value];
    }
    return kTitle_fileData;
}

//: terminal
+ (NSString *)kTitle_withLastValue {
    /* static */ NSString *kTitle_withLastValue = nil;
    if (!kTitle_withLastValue) {
		NSString *origin = @"809186999D9A9598C2";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){244, (Byte *)data.bytes, 8};
        kTitle_withLastValue = [self StringFromToothData:&value];
    }
    return kTitle_withLastValue;
}

+ (NSString *)StringFromToothData:(StructToothData *)data {
    return [NSString stringWithUTF8String:(char *)[self ToothDataToByte:data]];
}

//: app_version
+ (NSString *)kText_stepData {
    /* static */ NSString *kText_stepData = nil;
    if (!kText_stepData) {
		NSString *origin = @"2F3E3E11382B3C3D272120A8";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){78, (Byte *)data.bytes, 11};
        kText_stepData = [self StringFromToothData:&value];
    }
    return kText_stepData;
}

//: message_count
+ (NSString *)kNameFantasticString {
    /* static */ NSString *kNameFantasticString = nil;
    if (!kNameFantasticString) {
		NSString *origin = @"C3CBDDDDCFC9CBF1CDC1DBC0DA13";
		NSData *data = [ToothData ToothDataToData:origin];
        StructToothData value = (StructToothData){174, (Byte *)data.bytes, 13};
        kNameFantasticString = [self StringFromToothData:&value];
    }
    return kNameFantasticString;
}

+ (NSData *)ToothDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionLabel.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMigrateHeader.h"
#import "ActionLabel.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"

//: static NSString *const kUSERMigrateHeaderVersion = @"version";

static NSString *const dream_objectManagerMsg (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"gender"];
    }
    return  [ToothData kTitle_fileData];
};
//: static NSString *const kUSERMigrateHeaderTerminal = @"terminal";

static NSString *const dreamNamePath (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"fill"];
    }
    return  [ToothData kTitle_withLastValue];
};
//: static NSString *const kUSERMigrateHeaderSDKVersion = @"sdk_version";

static NSString *const mMenuIdent (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"max"];
    }
    return  [ToothData kTitleSecurityName];
};
//: static NSString *const kUSERMigrateHeaderAPPVersion = @"app_version";

static NSString *const dreamCompositionText (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"system"];
    }
    return  [ToothData kText_stepData];
};
//: static NSString *const kUSERMigrateHeaderMessageCount = @"message_count";

static NSString *const showCustomContent (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"cell"];
    }
    return  [ToothData kNameFantasticString];
};

//: @implementation USERMigrateHeader
@implementation ActionLabel


//: - (nullable NSData *)toRawContent {
- (nullable NSData *)size {

    //: if ([self invalid]) {
    if ([self picture]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kUSERMigrateHeaderVersion] = @(_version);
    dic[dream_objectManagerMsg(nil)] = @(_version);
    //: dic[kUSERMigrateHeaderTerminal] = @(_clientType);
    dic[dreamNamePath(nil)] = @(_clientType);
    //: dic[kUSERMigrateHeaderSDKVersion] = _sdkVersion;
    dic[mMenuIdent(nil)] = _sdkVersion;
    //: dic[kUSERMigrateHeaderAPPVersion] = _appVersion;
    dic[dreamCompositionText(nil)] = _appVersion;
    //: dic[kUSERMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[showCustomContent(nil)] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithPin:(NSData *)data {
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
    //: USERMigrateHeader *info = [[USERMigrateHeader alloc] init];
    ActionLabel *info = [[ActionLabel alloc] init];
    //: info.version = [dict jsonInteger:kUSERMigrateHeaderVersion];
    info.version = [dict immobilise:dream_objectManagerMsg(nil)];
    //: info.clientType = [dict jsonInteger:kUSERMigrateHeaderTerminal];
    info.clientType = [dict immobilise:dreamNamePath(nil)];
    //: info.sdkVersion = [dict jsonString:kUSERMigrateHeaderSDKVersion];
    info.sdkVersion = [dict changeRange:mMenuIdent(nil)];
    //: info.appVersion = [dict jsonString:kUSERMigrateHeaderAPPVersion];
    info.appVersion = [dict changeRange:dreamCompositionText(nil)];
    //: info.totalInfoCount = [dict jsonInteger:kUSERMigrateHeaderMessageCount];
    info.totalInfoCount = [dict immobilise:showCustomContent(nil)];
    //: return info;
    return info;
}

//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithTing {
    //: USERMigrateHeader *ret = [[USERMigrateHeader alloc] init];
    ActionLabel *ret = [[ActionLabel alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:[ToothData kContentWithTopTitleData]];
    //: return ret;
    return ret;
}

//: - (BOOL)invalid {
- (BOOL)picture {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end
//: __SAVE__ ignore_string [677.6,423.4,416.4,326.3,629.6]