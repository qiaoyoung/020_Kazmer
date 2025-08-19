// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+ButtonKit.h
// ButtonKit
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (MyUserKit)
@interface NSDictionary (ButtonKit)

//: - (NSString *)nimkit_jsonString: (NSString *)key;
- (NSString *)visualImage: (NSString *)key;

//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key;
- (NSDictionary *)colorTo: (NSString *)key;
//: - (NSArray *)nimkit_jsonArray: (NSString *)key;
- (NSArray *)orientation: (NSString *)key;
//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key;
- (NSArray *)quantity: (NSString *)key;


//: - (BOOL)nimkit_jsonBool: (NSString *)key;
- (BOOL)size: (NSString *)key;
//: - (NSInteger)nimkit_jsonInteger: (NSString *)key;
- (NSInteger)shouldTitle: (NSString *)key;
//: - (long long)nimkit_jsonLongLong: (NSString *)key;
- (long long)downward: (NSString *)key;
//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)option:(NSString *)key;

//: - (double)nimkit_jsonDouble: (NSString *)key;
- (double)nearLength: (NSString *)key;

//: @end
@end