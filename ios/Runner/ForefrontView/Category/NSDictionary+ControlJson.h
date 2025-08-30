// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+ControlJson.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (USERJson)
@interface NSDictionary (ControlJson)
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)immobilise: (NSString *)key;

//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)changeRange: (NSString *)key;
//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)last: (NSString *)key;
//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)dict: (NSString *)key;


//: - (double)jsonDouble: (NSString *)key;
- (double)be: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)array: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)longHolder:(NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)color: (NSString *)key;

//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)step: (NSString *)key;
//: @end
@end