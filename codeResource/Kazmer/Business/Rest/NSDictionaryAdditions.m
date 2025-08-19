
#import <Foundation/Foundation.h>

NSString *StringFromPhoneMessageData(Byte *data);


//: code
Byte main_borrowName[] = {7, 4, 17, 7, 245, 61, 152, 116, 128, 117, 118, 224};

//: name
Byte dreamParishName[] = {77, 4, 52, 12, 70, 102, 71, 148, 163, 114, 124, 45, 162, 149, 161, 153, 15};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryAdditions.m
//  WeiboPad
//
//  Created by junmin liu on 10-10-6.
//  Copyright 2010 Openlab. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"

//: @implementation NSDictionary (Additions)
@implementation NSDictionary (MaxText)

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue {
- (BOOL)option:(NSString *)key content:(BOOL)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSNumber class]]) {
    if ([tmpValue isKindOfClass:[NSNumber class]]) {
        //: return [tmpValue boolValue];
        return [tmpValue boolValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [tmpValue boolValue];
            return [tmpValue boolValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getBoolValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue {
- (int)userValue:(NSString *)key index:(int)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSNumber class]]) {
    if ([tmpValue isKindOfClass:[NSNumber class]]) {
        //: return [tmpValue intValue];
        return [tmpValue intValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [tmpValue intValue];
            return [tmpValue intValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getIntValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (float)getFloatValueForKey:(NSString *)key defaultValue:(float)defaultValue {
- (float)verticalValue:(NSString *)key success:(float)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSNumber class]]) {
    if ([tmpValue isKindOfClass:[NSNumber class]]) {
        //: return [tmpValue floatValue];
        return [tmpValue floatValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [tmpValue floatValue];
            return [tmpValue floatValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getFloatValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue {
- (double)should:(NSString*)key viewInfo:(double)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSNumber class]]) {
    if ([tmpValue isKindOfClass:[NSNumber class]]) {
        //: return [tmpValue doubleValue];
        return [tmpValue doubleValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [tmpValue doubleValue];
            return [tmpValue doubleValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getDoubleValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue {
- (long long)eigenvalueSession:(NSString *)key characteristicRootOfASquareMatrixLong:(long long)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSNumber class]]) {
    if ([tmpValue isKindOfClass:[NSNumber class]]) {
        //: return [tmpValue longLongValue];
        return [tmpValue longLongValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [tmpValue longLongValue];
            return [tmpValue longLongValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getLongLongValueValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
- (NSString *)comparable:(NSString *)key progress:(NSString *)defaultValue {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];

    //: if (tmpValue == nil || tmpValue == [NSNull null]) {
    if (tmpValue == nil || tmpValue == [NSNull null]) {
        //: return defaultValue;
        return defaultValue;
    }

    //: if ([tmpValue isKindOfClass:[NSString class]]) {
    if ([tmpValue isKindOfClass:[NSString class]]) {
        //: return [NSString stringWithString:tmpValue];
        return [NSString stringWithString:tmpValue];
    //: } else {
    } else {
        //: @try {
        @try {
            //: return [NSString stringWithFormat:@"%@",tmpValue];
            return [NSString stringWithFormat:@"%@",tmpValue];
        }
        //: @catch (NSException *exception) {
        @catch (NSException *exception) {
//            DLog(@"getStringValueForKey : %@",key);
//            DLog(@"tmpValue : %@",tmpValue);
            //: return defaultValue;
            return defaultValue;
        }
    }
}

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key {
- (NSDictionary*)key:(NSString*)key {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];
    //: if ([tmpValue isKindOfClass:[NSDictionary class]]) {
    if ([tmpValue isKindOfClass:[NSDictionary class]]) {
        //: return tmpValue;
        return tmpValue;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: - (NSArray*)getArrayForKey:(NSString*)key {
- (NSArray*)comment:(NSString*)key {
    //: id tmpValue = [self objectForKey:key];
    id tmpValue = [self objectForKey:key];
    //: if ([tmpValue isKindOfClass:[NSArray class]]) {
    if ([tmpValue isKindOfClass:[NSArray class]]) {
        //: return tmpValue;
        return tmpValue;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: @end
@end


//: @implementation NSDictionary (CollationAdditions)
@implementation NSDictionary (MisinformationAdditions)
//: - (NSString*)getNameValue {
- (NSString*)valueTotal {
    //: return [self getStringValueForKey:@"name" defaultValue:@""];
    return [self comparable:StringFromPhoneMessageData(dreamParishName) progress:@""];
}
//: - (NSString*)getCodeValue {
- (NSString*)hide {
    //: return [self getStringValueForKey:@"code" defaultValue:@""];
    return [self comparable:StringFromPhoneMessageData(main_borrowName) progress:@""];
}
//: @end
@end

Byte * PhoneMessageDataToCache(Byte *data) {
    int pool = data[0];
    int aver = data[1];
    Byte propertyCow = data[2];
    int soul = data[3];
    if (!pool) return data + soul;
    for (int i = soul; i < soul + aver; i++) {
        int value = data[i] - propertyCow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[soul + aver] = 0;
    return data + soul;
}

NSString *StringFromPhoneMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PhoneMessageDataToCache(data)];
}
