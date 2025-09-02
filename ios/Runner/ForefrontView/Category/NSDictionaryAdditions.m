
#import <Foundation/Foundation.h>

typedef struct {
    Byte houseJoin;
    Byte *repute;
    unsigned int prevail;
} StructBasketballAmpleTreasureData;

@interface BasketballAmpleTreasureData : NSObject

@end

@implementation BasketballAmpleTreasureData

+ (NSData *)BasketballAmpleTreasureDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BasketballAmpleTreasureDataToByte:(StructBasketballAmpleTreasureData *)data {
    for (int i = 0; i < data->prevail; i++) {
        data->repute[i] ^= data->houseJoin;
    }
    data->repute[data->prevail] = 0;
    return data->repute;
}

+ (NSString *)StringFromBasketballAmpleTreasureData:(StructBasketballAmpleTreasureData *)data {
    return [NSString stringWithUTF8String:(char *)[self BasketballAmpleTreasureDataToByte:data]];
}

//: code
+ (NSString *)kTitle_numbValue {
    /* static */ NSString *kTitle_numbValue = nil;
    if (!kTitle_numbValue) {
		NSArray<NSString *> *origin = @[@"78", @"66", @"73", @"72", @"171"];
		NSData *data = [BasketballAmpleTreasureData BasketballAmpleTreasureDataToData:origin];
        StructBasketballAmpleTreasureData value = (StructBasketballAmpleTreasureData){45, (Byte *)data.bytes, 4};
        kTitle_numbValue = [self StringFromBasketballAmpleTreasureData:&value];
    }
    return kTitle_numbValue;
}

@end   

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
@implementation NSDictionary (UserSizeAdditions)

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key {
- (NSDictionary*)top:(NSString*)key {
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

//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue {
- (long long)eigenvalueOfAMatrixSession:(NSString *)key color:(long long)defaultValue {
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

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue {
- (BOOL)sendSub:(NSString *)key shadow:(BOOL)defaultValue {
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

//: - (NSArray*)getArrayForKey:(NSString*)key {
- (NSArray*)arrangement:(NSString*)key {
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

//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
- (NSString *)message:(NSString *)key gain:(NSString *)defaultValue {
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

//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue {
- (double)top:(NSString*)key valueCount:(double)defaultValue {
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

//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue {
- (int)toValue:(NSString *)key under:(int)defaultValue {
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
- (float)name:(NSString *)key imageOutside:(float)defaultValue {
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

//: @end
@end


//: @implementation NSDictionary (CollationAdditions)
@implementation NSDictionary (PageTitle)
//: - (NSString*)getCodeValue {
- (NSString*)green {
    //: return [self getStringValueForKey:@"code" defaultValue:@""];
    return [self message:[BasketballAmpleTreasureData kTitle_numbValue] gain:@""];
}
//: - (NSString*)getNameValue {
- (NSString*)couvade {
    //: return [self getStringValueForKey:@"name" defaultValue:@""];
    return [self message:@"name" gain:@""];
}
//: @end
@end
//: __SAVE__ ignore_string [417.4]