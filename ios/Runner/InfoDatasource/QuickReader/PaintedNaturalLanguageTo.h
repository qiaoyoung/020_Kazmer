// __DEBUG__
// __CLOSE_PRINT__
//
//  PaintedNaturalLanguageTo.h
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

//: @interface WatchLanguageManager : NSObject
@interface PaintedNaturalLanguageTo : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (WatchLanguageManager *)shareInstance;
+ (PaintedNaturalLanguageTo *)marginSource;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setOfImage:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)exhibit:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)mode;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
