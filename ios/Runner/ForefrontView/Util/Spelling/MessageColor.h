// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageColor.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface USERPinyinConverter : NSObject
@interface MessageColor : NSObject
//: + (USERPinyinConverter *)sharedInstance;
+ (MessageColor *)someone;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)doing: (NSString *)source;
//: @end
@end