// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+ValueJson.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (ValueJson)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)keyJson: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)menu: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)should: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)fullPanoplyValue: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)viewHigh: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)recordInput: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)ground: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)my:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)fileAllocationTableValue: (NSString *)key;
//: @end
@end