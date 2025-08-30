// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxDevice.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayKitDevice.h"
#import "MaxDevice.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"

//: @interface DisplayKitDevice ()
@interface MaxDevice ()

//: @end
@end

//: @implementation DisplayKitDevice
@implementation MaxDevice

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {

    }
    //: return self;
    return self;
}


//: + (DisplayKitDevice *)currentDevice{
+ (MaxDevice *)green{
    //: static DisplayKitDevice *instance = nil;
    static MaxDevice *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[DisplayKitDevice alloc] init];
        instance = [[MaxDevice alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)past {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)declare{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)withHandle{
    //: return 0.5;
    return 0.5;
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)grayTing{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice comeDownSuperphylum];
}


//: @end
@end
