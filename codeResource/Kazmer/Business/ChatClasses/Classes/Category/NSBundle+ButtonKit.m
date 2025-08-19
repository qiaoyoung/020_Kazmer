
#import <Foundation/Foundation.h>
typedef struct {
    Byte survey;
    Byte *datePlastic;
    unsigned int occasional;
    Byte riotConvince;
	int nonbiodegradablePollution;
	int somebody;
} GrantData;

NSString *StringFromGrantData(GrantData *data);


//: DrawSortAdapter
GrantData k_economicallyName = (GrantData){169, (Byte []){237, 219, 200, 222, 250, 198, 219, 221, 232, 205, 200, 217, 221, 204, 219, 223}, 15, 244, 138, 92};

//: emoji.plist
GrantData mMindIdent = (GrantData){53, (Byte []){80, 88, 90, 95, 92, 27, 69, 89, 92, 70, 65, 241}, 11, 166, 92, 205};

//: en.lproj
GrantData kCombinationText = (GrantData){137, (Byte []){236, 231, 167, 229, 249, 251, 230, 227, 2}, 8, 206, 75, 179};

//: bundle
GrantData main_competeValue = (GrantData){96, (Byte []){2, 21, 14, 4, 12, 5, 57}, 6, 228, 114, 206};

//: %@.lproj
GrantData dream_coachContentStr = (GrantData){93, (Byte []){120, 29, 115, 49, 45, 47, 50, 55, 124}, 8, 157, 43, 6};

//: emoji_ios.plist
GrantData show_regardValidityName = (GrantData){27, (Byte []){126, 118, 116, 113, 114, 68, 114, 116, 104, 53, 107, 119, 114, 104, 111, 78}, 15, 199, 133, 163};

//: NSUserDefaultLanguage
GrantData main_undertakeFormat = (GrantData){50, (Byte []){124, 97, 103, 65, 87, 64, 118, 87, 84, 83, 71, 94, 70, 126, 83, 92, 85, 71, 83, 85, 87, 137}, 21, 212, 181, 28};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// ButtonKit
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//:  
 
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (ButtonKit)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)overUserMonth {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[ButtonKit class]];
    //: NSURL *url = [bundle URLForResource:@"DrawSortAdapter" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:StringFromGrantData(&k_economicallyName) withExtension:StringFromGrantData(&main_competeValue)];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)value {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[EmptyTing intervalegrated] from];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self text];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromGrantData(&dream_coachContentStr), languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:StringFromGrantData(&kCombinationText)];
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
+ (NSString *)hidden {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EmptyTing intervalegrated] gray];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromGrantData(&show_regardValidityName)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [ButtonKit sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)colorLanguageFile {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EmptyTing intervalegrated] gray];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromGrantData(&mMindIdent)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [ButtonKit sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)text
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromGrantData(&main_undertakeFormat)];
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

Byte *GrantDataToByte(GrantData *data) {
    if (data->riotConvince < 148) return data->datePlastic;
    for (int i = 0; i < data->occasional; i++) {
        data->datePlastic[i] ^= data->survey;
    }
    data->datePlastic[data->occasional] = 0;
    data->riotConvince = 49;
	if (data->occasional >= 2) {
		data->nonbiodegradablePollution = data->datePlastic[0];
		data->somebody = data->datePlastic[1];
	}
    return data->datePlastic;
}

NSString *StringFromGrantData(GrantData *data) {
    return [NSString stringWithUTF8String:(char *)GrantDataToByte(data)];
}
