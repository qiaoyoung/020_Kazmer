// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeManager.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFLanguageManager : NSObject
@interface MakeManager : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (NSString *)getLocale;
+ (NSString *)enableTeam;
//: + (FFFLanguageManager *)shareInstance;
+ (MakeManager *)range;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setShould:(NSString *)langType;

//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)cell:(NSString *)key;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END