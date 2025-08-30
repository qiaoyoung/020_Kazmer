// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.h
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary(Extend)
@interface NSDictionary(Extend)

// for value
// xml
//: - (NSArray*) toArray;
- (NSArray*) domain;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)view:(NSString *)key byValue:(long)defaultValue;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)clean:(NSString *)key origin:(int)defaultValue;
//: - (NSString*) toXMLString;
- (NSString*) blueApp;
// url string

//: - (NSString *)toUrlString;
- (NSString *)to;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)max:(NSString *)key buttonViewLong:(long long)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)thanAcross:(NSString *)key ghb:(NSArray *)defaultValue;
//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj;
- (id)material:(NSString *)key color:(id)defaultObj;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)retortCenter:(NSString *)key success:(NSDictionary *)defaultValue;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)text:(id)aKey nearPressed:(Class)aClass setApart:(id)defaultObj;


/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)dateName;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)centerText;

//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)pressSnapLine;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)unwantedValue:(NSString *)key installment:(NSString *)defaultValue;

//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)installment:(NSString *)key overFile:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)camera:(NSString *)key digitiserSum:(double)defaultValue;

//: @end
@end