// __DEBUG__
// __CLOSE_PRINT__
//
//  FastEmpty.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface WatchPinyinConverter : NSObject
@interface FastEmpty : NSObject

//: + (WatchPinyinConverter *)sharedInstance;
+ (FastEmpty *)shared;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)should: (NSString *)source;

//: @end
@end
