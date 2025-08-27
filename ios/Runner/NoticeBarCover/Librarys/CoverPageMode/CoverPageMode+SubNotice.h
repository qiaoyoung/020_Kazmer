// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverPageMode+SubNotice.h
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "CoverPageMode.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^GlobalConfigBlock)(NSDictionary *configDict);
typedef void(^GlobalConfigBlock)(NSDictionary *configDict);

//: @interface ZCHttpManager (Addtionals)
@interface CoverPageMode (SubNotice)
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo;
+(NSDictionary *)input:(NSDictionary *)userInfo;
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value;
+(void)modeNeedDoing:(NSDictionary *)userInfo fastenerImage:(NSString *)key show:(NSString *)value;

//: + (void)refreshRegistConfig:(GlobalConfigBlock)block;
+ (void)carmineConfig:(GlobalConfigBlock)block;

//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block;
+(void)nameConfig:(GlobalConfigBlock)block;

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block;
+(void)tagCheckmoments:(GlobalConfigBlock)block;//检查朋友圈权限

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block;
+(void)countRelation:(GlobalConfigBlock)block;

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block;
+ (void)button:(GlobalConfigBlock)block;

//: +(void)deleteUser:(GlobalConfigBlock)block;
+(void)eventContent:(GlobalConfigBlock)block;

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block;
+ (void)containerSelect:(NSDictionary *)params writtenMatter:(GlobalConfigBlock)block;

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block;
+(void)greenDown:(GlobalConfigBlock)block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END