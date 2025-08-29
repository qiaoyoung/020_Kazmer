
#import <Foundation/Foundation.h>

@interface MerelyData : NSObject

+ (instancetype)sharedInstance;

//: scan_scanline_wc
@property (nonatomic, copy) NSString *kName_optimisticData;

//: #24E8B9
@property (nonatomic, copy) NSString *kNamePlyValue;

@end

@implementation MerelyData

+ (instancetype)sharedInstance {
    static MerelyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MerelyDataToCache:(Byte *)data {
    int aesthesiaRural = data[0];
    Byte however = data[1];
    int chromatic = data[2];
    for (int i = chromatic; i < chromatic + aesthesiaRural; i++) {
        int value = data[i] + however;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[chromatic + aesthesiaRural] = 0;
    return data + chromatic;
}

- (NSString *)StringFromMerelyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MerelyDataToCache:data]];
}

//: scan_scanline_wc
- (NSString *)kName_optimisticData {
    if (!_kName_optimisticData) {
        Byte value[] = {16, 48, 10, 119, 45, 117, 250, 248, 17, 74, 67, 51, 49, 62, 47, 67, 51, 49, 62, 60, 57, 62, 53, 47, 71, 51, 71};
        _kName_optimisticData = [self StringFromMerelyData:value];
    }
    return _kName_optimisticData;
}

//: #24E8B9
- (NSString *)kNamePlyValue {
    if (!_kNamePlyValue) {
        Byte value[] = {7, 86, 9, 33, 139, 37, 196, 100, 44, 205, 220, 222, 239, 226, 236, 227, 69};
        _kNamePlyValue = [self StringFromMerelyData:value];
    }
    return _kNamePlyValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGScanViewConfigure.h"
#import "TargetBubble.h"

//: @implementation SGScanViewConfigure
@implementation TargetBubble

//: - (UIColor *)color {
- (UIColor *)color {
    //: if (!_color) {
    if (!_color) {
        //: return [[UIColor blackColor] colorWithAlphaComponent:0.5];
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    //: return _color;
    return _color;
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return [MerelyData sharedInstance].kName_optimisticData;
    }
    //: return _scanline;
    return _scanline;
}

//: + (instancetype)configure {
+ (instancetype)tillQuery {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
//        _isShowBorder = NO;
        //: _isShowBorder = YES;
        _isShowBorder = YES;
    }
    //: return self;
    return self;
}

//: - (CGFloat)cornerLength {
- (CGFloat)cornerLength {
    //: if (!_cornerLength) {
    if (!_cornerLength) {
//        return 20.0;
        //: return 40.0;
        return 40.0;
    }
    //: return _cornerLength;
    return _cornerLength;
}

//: - (CGFloat)cornerWidth {
- (CGFloat)cornerWidth {
    //: if (!_cornerWidth) {
    if (!_cornerWidth) {
        //: return 2.0;
        return 2.0;
    }
    //: return _cornerWidth;
    return _cornerWidth;
}

//: - (SGCornerLoaction)cornerLocation {
- (SGCornerLoaction)cornerLocation {
    //: if (!_cornerLocation) {
    if (!_cornerLocation) {
        //: return SGCornerLoactionDefault;
        return SGCornerLoactionDefault;
    }
    //: return _cornerLocation;
    return _cornerLocation;
}

//: - (CGFloat)borderWidth {
- (CGFloat)borderWidth {
    //: if (!_borderWidth) {
    if (!_borderWidth) {
        //: return 0.2;
        return 0.2;
    }
    //: return _borderWidth;
    return _borderWidth;
}

//: - (UIColor *)borderColor {
- (UIColor *)borderColor {
    //: if (!_borderColor) {
    if (!_borderColor) {
        //: return [UIColor whiteColor];
        return [UIColor whiteColor];
    }
    //: return _borderColor;
    return _borderColor;
}

//: - (CGFloat)scanlineStep {
- (CGFloat)scanlineStep {
    //: if (!_scanlineStep) {
    if (!_scanlineStep) {
        //: return 3.5;
        return 3.5;
    }
    //: return _scanlineStep;
    return _scanlineStep;
}

//: - (UIColor *)cornerColor {
- (UIColor *)cornerColor {
    //: if (!_cornerColor) {
    if (!_cornerColor) {
//        _cornerColor = [UIColor greenColor];
        //: _cornerColor = [UIColor colorWithHexString:@"#24E8B9"];
        _cornerColor = [UIColor cell:[MerelyData sharedInstance].kNamePlyValue];
    }
    //: return _cornerColor;
    return _cornerColor;
}

//: @end
@end