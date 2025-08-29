// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentUtil.h
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface USERClientUtil : NSObject
@interface ContentUtil : NSObject

//: + (NSString *)clientName:(NIMLoginClientType)clientType;
+ (NSString *)view:(NIMLoginClientType)clientType;

//: @end
@end