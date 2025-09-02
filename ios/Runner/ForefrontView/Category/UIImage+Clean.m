
#import <Foundation/Foundation.h>

@interface HistorianData : NSObject

@end

@implementation HistorianData

+ (NSData *)HistorianDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)HistorianDataToCache:(Byte *)data {
    int foreignerPoster = data[0];
    Byte nightmareQuick = data[1];
    int grain = data[2];
    for (int i = grain; i < grain + foreignerPoster; i++) {
        int value = data[i] + nightmareQuick;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[grain + foreignerPoster] = 0;
    return data + grain;
}

+ (NSString *)StringFromHistorianData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HistorianDataToCache:data]];
}

//: Clear_color_image
+ (NSString *)kTitle_stableUmmCharityString {
    /* static */ NSString *kTitle_stableUmmCharityString = nil;
    if (!kTitle_stableUmmCharityString) {
		NSString *origin = @"11200520D5234C4541523F434F4C4F523F494D41474595";
		NSData *data = [HistorianData HistorianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_stableUmmCharityString = [self StringFromHistorianData:value];
    }
    return kTitle_stableUmmCharityString;
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
//: #import "UIImage+USERColor.h"
#import "UIImage+Clean.h"

//: @interface UIColorCache : NSObject
@interface DoCache : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation DoCache
//: + (instancetype)sharedCache
+ (instancetype)backCache
{
    //: static UIColorCache *instance = nil;
    static DoCache *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[DoCache alloc] init];
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
- (UIImage *)enableDate:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)viewAcross:(UIImage *)image
        //: forColor:(UIColor *)color
        withFor:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (USERColor)
@implementation UIImage (Clean)

//: + (UIImage *)clearColorImage {
+ (UIImage *)bump {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:[HistorianData kTitle_stableUmmCharityString]];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)format:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[DoCache backCache] enableDate:color];
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
        [[DoCache backCache] viewAcross:image
                                    //: forColor:color];
                                    withFor:color];
    }
    //: return image;
    return image;
}


//: @end
@end