// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplyControl.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERGlobalConfigManager : NSObject
@interface ReplyControl : NSObject

//: + (NSArray *)getSecretQuestionList;
+ (NSArray *)origin;
//: + (void)refreshSecretQuestionConfig;
+ (void)info;
//: + (USERGlobalConfigManager *)shareConfigManager;
+ (ReplyControl *)content;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END