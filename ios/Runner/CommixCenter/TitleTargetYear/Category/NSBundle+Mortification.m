
#import <Foundation/Foundation.h>

typedef struct {
    Byte amberWrap;
    Byte *receptionHide;
    unsigned int highWater;
} StructAuthorData;

@interface AuthorData : NSObject

+ (instancetype)sharedInstance;

//: DrawSortAdapter
@property (nonatomic, copy) NSString *kText_recentValue;

//: en.lproj
@property (nonatomic, copy) NSString *kText_banFieValue;

//: emoji_ios.plist
@property (nonatomic, copy) NSString *kNameDisturbString;

//: NSUserDefaultLanguage
@property (nonatomic, copy) NSString *kText_addServeItemValue;

//: %@.lproj
@property (nonatomic, copy) NSString *kName_visibleData;

//: emoji.plist
@property (nonatomic, copy) NSString *kText_easyEverButString;

//: bundle
@property (nonatomic, copy) NSString *kName_optimisticValue;

@end

@implementation AuthorData

+ (instancetype)sharedInstance {
    static AuthorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AuthorDataToByte:(StructAuthorData *)data {
    for (int i = 0; i < data->highWater; i++) {
        data->receptionHide[i] ^= data->amberWrap;
    }
    data->receptionHide[data->highWater] = 0;
    return data->receptionHide;
}

- (NSString *)StringFromAuthorData:(StructAuthorData *)data {
    return [NSString stringWithUTF8String:(char *)[self AuthorDataToByte:data]];
}

//: bundle
- (NSString *)kName_optimisticValue {
    if (!_kName_optimisticValue) {
        StructAuthorData value = (StructAuthorData){199, (Byte []){165, 178, 169, 163, 171, 162, 66}, 6};
        _kName_optimisticValue = [self StringFromAuthorData:&value];
    }
    return _kName_optimisticValue;
}

//: NSUserDefaultLanguage
- (NSString *)kText_addServeItemValue {
    if (!_kText_addServeItemValue) {
        StructAuthorData value = (StructAuthorData){175, (Byte []){225, 252, 250, 220, 202, 221, 235, 202, 201, 206, 218, 195, 219, 227, 206, 193, 200, 218, 206, 200, 202, 117}, 21};
        _kText_addServeItemValue = [self StringFromAuthorData:&value];
    }
    return _kText_addServeItemValue;
}

//: emoji.plist
- (NSString *)kText_easyEverButString {
    if (!_kText_easyEverButString) {
        StructAuthorData value = (StructAuthorData){126, (Byte []){27, 19, 17, 20, 23, 80, 14, 18, 23, 13, 10, 135}, 11};
        _kText_easyEverButString = [self StringFromAuthorData:&value];
    }
    return _kText_easyEverButString;
}

//: %@.lproj
- (NSString *)kName_visibleData {
    if (!_kName_visibleData) {
        StructAuthorData value = (StructAuthorData){165, (Byte []){128, 229, 139, 201, 213, 215, 202, 207, 82}, 8};
        _kName_visibleData = [self StringFromAuthorData:&value];
    }
    return _kName_visibleData;
}

//: emoji_ios.plist
- (NSString *)kNameDisturbString {
    if (!_kNameDisturbString) {
        StructAuthorData value = (StructAuthorData){101, (Byte []){0, 8, 10, 15, 12, 58, 12, 10, 22, 75, 21, 9, 12, 22, 17, 14}, 15};
        _kNameDisturbString = [self StringFromAuthorData:&value];
    }
    return _kNameDisturbString;
}

//: en.lproj
- (NSString *)kText_banFieValue {
    if (!_kText_banFieValue) {
        StructAuthorData value = (StructAuthorData){84, (Byte []){49, 58, 122, 56, 36, 38, 59, 62, 160}, 8};
        _kText_banFieValue = [self StringFromAuthorData:&value];
    }
    return _kText_banFieValue;
}

//: DrawSortAdapter
- (NSString *)kText_recentValue {
    if (!_kText_recentValue) {
        StructAuthorData value = (StructAuthorData){81, (Byte []){21, 35, 48, 38, 2, 62, 35, 37, 16, 53, 48, 33, 37, 52, 35, 110}, 15};
        _kText_recentValue = [self StringFromAuthorData:&value];
    }
    return _kText_recentValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// Mortification
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayInputEmoticonDefine.h"
#import "DisplayInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (Mortification)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)disappearEnd {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[Mortification class]];
    //: NSURL *url = [bundle URLForResource:@"DrawSortAdapter" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:[AuthorData sharedInstance].kText_recentValue withExtension:[AuthorData sharedInstance].kName_optimisticValue];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)sleepingCapsule {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[PersonShould commonKey] createPath];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self blue];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:[AuthorData sharedInstance].kName_visibleData, languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:[AuthorData sharedInstance].kText_banFieValue];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }
    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)overDisable {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[PersonShould commonKey] getText];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[AuthorData sharedInstance].kNameDisturbString];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Mortification sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)on {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[PersonShould commonKey] getText];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[AuthorData sharedInstance].kText_easyEverButString];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Mortification sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)blue
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:[AuthorData sharedInstance].kText_addServeItemValue];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end
