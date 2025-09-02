
#import <Foundation/Foundation.h>

typedef struct {
    Byte pinDate;
    Byte *hideName;
    unsigned int recent;
	int shared;
} StructLastData;

@interface LastData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LastData

+ (instancetype)sharedInstance {
    static LastData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: chong
- (NSString *)kTitleSendString {
    /* static */ NSString *kTitleSendString = nil;
    if (!kTitleSendString) {
        StructLastData value = (StructLastData){121, (Byte []){26, 17, 22, 23, 30, 237}, 5, 71};
        kTitleSendString = [self StringFromLastData:&value];
    }
    return kTitleSendString;
}

//: xia
- (NSString *)kNameColorText {
    /* static */ NSString *kNameColorText = nil;
    if (!kNameColorText) {
        StructLastData value = (StructLastData){241, (Byte []){137, 152, 144, 72}, 3, 225};
        kNameColorText = [self StringFromLastData:&value];
    }
    return kNameColorText;
}

//: chang
- (NSString *)kTextContentData {
    /* static */ NSString *kTextContentData = nil;
    if (!kTextContentData) {
        StructLastData value = (StructLastData){173, (Byte []){206, 197, 204, 195, 202, 151}, 5, 79};
        kTextContentData = [self StringFromLastData:&value];
    }
    return kTextContentData;
}

- (Byte *)LastDataToByte:(StructLastData *)data {
    for (int i = 0; i < data->recent; i++) {
        data->hideName[i] ^= data->pinDate;
    }
    data->hideName[data->recent] = 0;
	if (data->recent >= 1) {
		data->shared = data->hideName[0];
	}
    return data->hideName;
}

- (NSString *)StringFromLastData:(StructLastData *)data {
    return [NSString stringWithUTF8String:(char *)[self LastDataToByte:data]];
}

//: shen
- (NSString *)kTitleShowViewName {
    /* static */ NSString *kTitleShowViewName = nil;
    if (!kTitleShowViewName) {
        StructLastData value = (StructLastData){79, (Byte []){60, 39, 42, 33, 114}, 4, 143};
        kTitleShowViewName = [self StringFromLastData:&value];
    }
    return kTitleShowViewName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+TitleTag.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+TitleTag.h"

//: @implementation NSString (LJExtension)
@implementation NSString (TitleTag)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)shared:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)byName:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[[LastData sharedInstance] kTextContentData]];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:[[LastData sharedInstance] kTitleShowViewName]];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:[[LastData sharedInstance] kNameColorText]];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[[LastData sharedInstance] kTitleSendString]];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end