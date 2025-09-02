// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+Mortification.h
// Mortification
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (MyUserKit)
@interface NSDictionary (Mortification)

//: - (NSInteger)nimkit_jsonInteger: (NSString *)key;
- (NSInteger)add: (NSString *)key;

//: - (NSString *)nimkit_jsonString: (NSString *)key;
- (NSString *)to: (NSString *)key;
//: - (BOOL)nimkit_jsonBool: (NSString *)key;
- (BOOL)size: (NSString *)key;
//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key;
- (NSDictionary *)searchTool: (NSString *)key;


//: - (double)nimkit_jsonDouble: (NSString *)key;
- (double)locationPage: (NSString *)key;
//: - (long long)nimkit_jsonLongLong: (NSString *)key;
- (long long)forbid: (NSString *)key;
//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)app:(NSString *)key;
//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key;
- (NSArray *)enable: (NSString *)key;

//: - (NSArray *)nimkit_jsonArray: (NSString *)key;
- (NSArray *)than: (NSString *)key;

//: @end
@end