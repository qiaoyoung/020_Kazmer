
#import <Foundation/Foundation.h>

@interface CropData : NSObject

@end

@implementation CropData

+ (Byte *)CropDataToCache:(Byte *)data {
    int repress = data[0];
    Byte liberated = data[1];
    int thermonuclear = data[2];
    for (int i = thermonuclear; i < thermonuclear + repress; i++) {
        int value = data[i] - liberated;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[thermonuclear + repress] = 0;
    return data + thermonuclear;
}

+ (NSString *)StringFromCropData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CropDataToCache:data]];
}

//: Clear_color_image
+ (NSString *)user_maxDominateData {
    /* static */ NSString *user_maxDominateData = nil;
    if (!user_maxDominateData) {
        Byte value[] = {17, 12, 13, 71, 197, 217, 183, 150, 8, 203, 195, 226, 67, 79, 120, 113, 109, 126, 107, 111, 123, 120, 123, 126, 107, 117, 121, 109, 115, 113, 104};
        user_maxDominateData = [self StringFromCropData:value];
    }
    return user_maxDominateData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+ShowObject.h"

//: @interface UIColorCache : NSObject
@interface ToCache : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation ToCache
//: + (instancetype)sharedCache
+ (instancetype)common
{
    //: static UIColorCache *instance = nil;
    static ToCache *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[ToCache alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)key:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)name:(UIImage *)image
        //: forColor:(UIColor *)color
        link:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (ShowObject)

//: + (UIImage *)clearColorImage {
+ (UIImage *)blueErase {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:[CropData user_maxDominateData]];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)recent:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[ToCache common] key:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[ToCache common] name:image
                                    //: forColor:color];
                                    link:color];
    }
    //: return image;
    return image;
}


//: @end
@end