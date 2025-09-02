
#import <Foundation/Foundation.h>

typedef struct {
    Byte greenish;
    Byte *oo;
    unsigned int discoMusic;
} StructLegationData;

@interface LegationData : NSObject

+ (instancetype)sharedInstance;

//: inputColor0
@property (nonatomic, copy) NSString *kName_curveString;

//: inputMessage
@property (nonatomic, copy) NSString *kTitleDiamondContent;

//: inputColor1
@property (nonatomic, copy) NSString *kNameAlsoValue;

//: inputImage
@property (nonatomic, copy) NSString *kTextPlayerPrevailData;

//: inputCorrectionLevel
@property (nonatomic, copy) NSString *kTitle_bothRiveName;

@end

@implementation LegationData

+ (instancetype)sharedInstance {
    static LegationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LegationDataToData:(NSString *)value {
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

- (Byte *)LegationDataToByte:(StructLegationData *)data {
    for (int i = 0; i < data->discoMusic; i++) {
        data->oo[i] ^= data->greenish;
    }
    data->oo[data->discoMusic] = 0;
    return data->oo;
}

- (NSString *)StringFromLegationData:(StructLegationData *)data {
    return [NSString stringWithUTF8String:(char *)[self LegationDataToByte:data]];
}

//: inputImage
- (NSString *)kTextPlayerPrevailData {
    if (!_kTextPlayerPrevailData) {
		NSString *origin = @"a6a1bfbabb86a2aea8aa79";
		NSData *data = [LegationData LegationDataToData:origin];
        StructLegationData value = (StructLegationData){207, (Byte *)data.bytes, 10};
        _kTextPlayerPrevailData = [self StringFromLegationData:&value];
    }
    return _kTextPlayerPrevailData;
}

//: inputCorrectionLevel
- (NSString *)kTitle_bothRiveName {
    if (!_kTitle_bothRiveName) {
		NSString *origin = @"c1c6d8dddcebc7dadacdcbdcc1c7c6e4cddecdc4fa";
		NSData *data = [LegationData LegationDataToData:origin];
        StructLegationData value = (StructLegationData){168, (Byte *)data.bytes, 20};
        _kTitle_bothRiveName = [self StringFromLegationData:&value];
    }
    return _kTitle_bothRiveName;
}

//: inputColor1
- (NSString *)kNameAlsoValue {
    if (!_kNameAlsoValue) {
		NSString *origin = @"f6f1efeaebdcf0f3f0edaea6";
		NSData *data = [LegationData LegationDataToData:origin];
        StructLegationData value = (StructLegationData){159, (Byte *)data.bytes, 11};
        _kNameAlsoValue = [self StringFromLegationData:&value];
    }
    return _kNameAlsoValue;
}

//: inputMessage
- (NSString *)kTitleDiamondContent {
    if (!_kTitleDiamondContent) {
		NSString *origin = @"9196888d8cb59d8b8b999f9d8b";
		NSData *data = [LegationData LegationDataToData:origin];
        StructLegationData value = (StructLegationData){248, (Byte *)data.bytes, 12};
        _kTitleDiamondContent = [self StringFromLegationData:&value];
    }
    return _kTitleDiamondContent;
}

//: inputColor0
- (NSString *)kName_curveString {
    if (!_kName_curveString) {
		NSString *origin = @"c4c3ddd8d9eec2c1c2df9d41";
		NSData *data = [LegationData LegationDataToData:origin];
        StructLegationData value = (StructLegationData){173, (Byte *)data.bytes, 11};
        _kName_curveString = [self StringFromLegationData:&value];
    }
    return _kName_curveString;
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
//: #import "SGGenerateQRCode.h"
#import "SizeFlipQrcode.h"

//: @implementation SGGenerateQRCode
@implementation SizeFlipQrcode

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size {
+ (UIImage *)ofSize:(NSString *)data image:(CGFloat)size {
    //: return [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    return [self noneCan:data disable:size skinColor:[UIColor blackColor] index:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor {
+ (UIImage *)noneCan:(NSString *)data disable:(CGFloat)size skinColor:(UIColor *)color index:(UIColor *)backgroundColor {
    //: NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    // 1、二维码滤镜
    //: CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //: [fileter setValue:string_data forKey:@"inputMessage"];
    [fileter setValue:string_data forKey:[LegationData sharedInstance].kTitleDiamondContent];
    //: [fileter setValue:@"H" forKey:@"inputCorrectionLevel"];
    [fileter setValue:@"H" forKey:[LegationData sharedInstance].kTitle_bothRiveName];
    //: CIImage *ciImage = fileter.outputImage;
    CIImage *ciImage = fileter.outputImage;
    // 2、颜色滤镜
    //: CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    //: [color_filter setValue:ciImage forKey:@"inputImage"];
    [color_filter setValue:ciImage forKey:[LegationData sharedInstance].kTextPlayerPrevailData];
    //: [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:[LegationData sharedInstance].kName_curveString];
    //: [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:@"inputColor1"];
    [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:[LegationData sharedInstance].kNameAlsoValue];
    // 3、生成处理
    //: CIImage *outImage = color_filter.outputImage;
    CIImage *outImage = color_filter.outputImage;
    //: CGFloat scale = size / outImage.extent.size.width;
    CGFloat scale = size / outImage.extent.size.width;
    //: outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    //: return [UIImage imageWithCIImage:outImage];
    return [UIImage imageWithCIImage:outImage];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio {
+ (UIImage *)circumferenceBy:(NSString *)data streetSmart:(CGFloat)size nameInfo:(UIImage *)logoImage arrayBottom:(CGFloat)ratio {
    //: return [self generateQRCodeWithData:data size:size logoImage:logoImage ratio:ratio logoImageCornerRadius:5 logoImageBorderWidth:5 logoImageBorderColor:[UIColor whiteColor]];
    return [self key:data change:size sub:logoImage disableIndependent:ratio past:5 icon:5 file:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor {
+ (UIImage *)key:(NSString *)data change:(CGFloat)size sub:(UIImage *)logoImage disableIndependent:(CGFloat)ratio past:(CGFloat)logoImageCornerRadius icon:(CGFloat)logoImageBorderWidth file:(UIColor *)logoImageBorderColor {
    //: UIImage *image = [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    UIImage *image = [self noneCan:data disable:size skinColor:[UIColor blackColor] index:[UIColor whiteColor]];
    //: if (logoImage == nil) return image;
    if (logoImage == nil) return image;
    //: if (ratio < 0.0 || ratio > 0.5) {
    if (ratio < 0.0 || ratio > 0.5) {
        //: ratio = 0.25;
        ratio = 0.25;
    }
    //: CGFloat logoImageW = ratio * size;
    CGFloat logoImageW = ratio * size;
    //: CGFloat logoImageH = logoImageW;
    CGFloat logoImageH = logoImageW;
    //: CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    //: CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    //: CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    // 绘制logo
    //: UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    //: [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];

    //: logoImageCornerRadius = logoImageW/2.f;
    logoImageCornerRadius = logoImageW/2.f;

    //: UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    //: if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
    if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
        //: logoImageBorderWidth = 5;
        logoImageBorderWidth = 5;
    }
    //: path.lineWidth = logoImageBorderWidth;
    path.lineWidth = logoImageBorderWidth;
    //: [logoImageBorderColor setStroke];
    [logoImageBorderColor setStroke];
    //: [path stroke];
    [path stroke];
    //: [path addClip];
    [path addClip];
    //: [logoImage drawInRect:logoImageRect];
    [logoImage drawInRect:logoImageRect];
    //: UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return QRCodeImage;
    return QRCodeImage;
}

//: @end
@end