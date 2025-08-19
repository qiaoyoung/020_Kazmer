// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeConverter.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESPinyinConverter : NSObject
@interface ModeConverter : NSObject
//: + (NTESPinyinConverter *)sharedInstance;
+ (ModeConverter *)instancePath;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)need: (NSString *)source;
//: @end
@end