
#import <Foundation/Foundation.h>

typedef struct {
    Byte crushPreparation;
    Byte *carbohydrate;
    unsigned int curBroken;
	int membershipColor;
} StructReduceData;

@interface ReduceData : NSObject

@end

@implementation ReduceData

+ (Byte *)ReduceDataToByte:(StructReduceData *)data {
    for (int i = 0; i < data->curBroken; i++) {
        data->carbohydrate[i] ^= data->crushPreparation;
    }
    data->carbohydrate[data->curBroken] = 0;
	if (data->curBroken >= 1) {
		data->membershipColor = data->carbohydrate[0];
	}
    return data->carbohydrate;
}

+ (NSString *)StringFromReduceData:(StructReduceData *)data {
    return [NSString stringWithUTF8String:(char *)[self ReduceDataToByte:data]];
}

//: inputCorrectionLevel
+ (NSString *)kShowName {
    /* static */ NSString *kShowName = nil;
    if (!kShowName) {
        StructReduceData value = (StructReduceData){214, (Byte []){191, 184, 166, 163, 162, 149, 185, 164, 164, 179, 181, 162, 191, 185, 184, 154, 179, 160, 179, 186, 93}, 20, 228};
        kShowName = [self StringFromReduceData:&value];
    }
    return kShowName;
}

//: inputMessage
+ (NSString *)user_collectiveData {
    /* static */ NSString *user_collectiveData = nil;
    if (!user_collectiveData) {
        StructReduceData value = (StructReduceData){18, (Byte []){123, 124, 98, 103, 102, 95, 119, 97, 97, 115, 117, 119, 235}, 12, 226};
        user_collectiveData = [self StringFromReduceData:&value];
    }
    return user_collectiveData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  LCQrcodeUtil.m
//  二维码测试
//
//  Created by 刘通超 on 16/5/5.
//  Copyright © 2016年 刘通超. All rights reserved.
//

// __M_A_C_R_O__
//: #import "LCQRCodeUtil.h"
#import "UserTo.h"

//: @implementation LCQRCodeUtil
@implementation UserTo

//: #pragma mark 读取图片二维码
#pragma mark 读取图片二维码
/**
 *  读取图片中二维码信息
 *
 *  @param image 图片
 *
 *  @return 二维码内容
 */
//: +(NSString *)readQRCodeFromImage:(UIImage *)image{
+(NSString *)begin:(UIImage *)image{
    //: NSData *data = UIImagePNGRepresentation(image);
    NSData *data = UIImagePNGRepresentation(image);
    //: CIImage *ciimage = [CIImage imageWithData:data];
    CIImage *ciimage = [CIImage imageWithData:data];
    //: if (ciimage) {
    if (ciimage) {
        //: CIDetector *qrDetector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:[CIContext contextWithOptions:@{kCIContextUseSoftwareRenderer:@(YES)}] options:@{CIDetectorAccuracy : CIDetectorAccuracyHigh}];
        CIDetector *qrDetector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:[CIContext contextWithOptions:@{kCIContextUseSoftwareRenderer:@(YES)}] options:@{CIDetectorAccuracy : CIDetectorAccuracyHigh}];
        //: NSArray *resultArr = [qrDetector featuresInImage:ciimage];
        NSArray *resultArr = [qrDetector featuresInImage:ciimage];
        //: if (resultArr.count >0) {
        if (resultArr.count >0) {
            //: CIFeature *feature = resultArr[0];
            CIFeature *feature = resultArr[0];
            //: CIQRCodeFeature *qrFeature = (CIQRCodeFeature *)feature;
            CIQRCodeFeature *qrFeature = (CIQRCodeFeature *)feature;
            //: NSString *result = qrFeature.messageString;
            NSString *result = qrFeature.messageString;

            //: return result;
            return result;
        //: }else{
        }else{
            //: return nil;
            return nil;
        }
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}

//: #pragma mark 生成二维码
#pragma mark 生成二维码
/**
 *  生成二维码图片
 *
 *  @param QRString  二维码内容
 *  @param sizeWidth 图片size（正方形）
 *  @param color     填充色
 *
 *  @return  二维码图片
 */
//: +(UIImage *)createQRimageString:(NSString *)QRString sizeWidth:(CGFloat)sizeWidth fillColor:(UIColor *)color{
+(UIImage *)scan:(NSString *)QRString past:(CGFloat)sizeWidth change:(UIColor *)color{
    //: CIImage *ciimage = [self createQRForString:QRString];
    CIImage *ciimage = [self putTogetherMagnitude:QRString];
    //: UIImage *qrcode = [self createNonInterpolatedUIImageFormCIImage:ciimage withSize:sizeWidth];
    UIImage *qrcode = [self image:ciimage viewTo:sizeWidth];
    //: if (color) {
    if (color) {
        //: CGFloat R=0, G=0, B=0;
        CGFloat R=0, G=0, B=0;

        //: CGColorRef colorRef = [color CGColor];
        CGColorRef colorRef = [color CGColor];
        //: long numComponents = CGColorGetNumberOfComponents(colorRef);
        long numComponents = CGColorGetNumberOfComponents(colorRef);

        //: if (numComponents == 4)
        if (numComponents == 4)
        {
            //: const CGFloat *components = CGColorGetComponents(colorRef);
            const CGFloat *components = CGColorGetComponents(colorRef);
            //: R = components[0];
            R = components[0];
            //: G = components[1];
            G = components[1];
            //: B = components[2];
            B = components[2];
        }

        //: UIImage *customQrcode = [self imageBlackToTransparent:qrcode withRed:R andGreen:G andBlue:B];
        UIImage *customQrcode = [self darkWhen:qrcode atMax:R atCell:G view:B];
        //: return customQrcode;
        return customQrcode;
    }

    //: return qrcode;
    return qrcode;

}
//: #pragma mark - QRCodeGenerator
#pragma mark - QRCodeGenerator
//: + (CIImage *)createQRForString:(NSString *)qrString {
+ (CIImage *)putTogetherMagnitude:(NSString *)qrString {
    // Need to convert the string to a UTF-8 encoded NSData object
    //: NSData *stringData = [qrString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *stringData = [qrString dataUsingEncoding:NSUTF8StringEncoding];
    // Create the filter
    //: CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *qrFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // Set the message content and error-correction level
    //: [qrFilter setValue:stringData forKey:@"inputMessage"];
    [qrFilter setValue:stringData forKey:[ReduceData user_collectiveData]];
    //: [qrFilter setValue:@"M" forKey:@"inputCorrectionLevel"];
    [qrFilter setValue:@"M" forKey:[ReduceData kShowName]];
    // Send the image back
    //: return qrFilter.outputImage;
    return qrFilter.outputImage;
}


//: #pragma mark - InterpolatedUIImage
#pragma mark - InterpolatedUIImage
//: + (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size {
+ (UIImage *)image:(CIImage *)image viewTo:(CGFloat) size {
    //: CGRect extent = CGRectIntegral(image.extent);
    CGRect extent = CGRectIntegral(image.extent);
    //: CGFloat scale = ((size/CGRectGetWidth(extent)) < (size/CGRectGetHeight(extent)) ? (size/CGRectGetWidth(extent)) : (size/CGRectGetHeight(extent)));
    CGFloat scale = ((size/CGRectGetWidth(extent)) < (size/CGRectGetHeight(extent)) ? (size/CGRectGetWidth(extent)) : (size/CGRectGetHeight(extent)));
    // create a bitmap image that we'll draw into a bitmap context at the desired size;
    //: size_t width = CGRectGetWidth(extent) * scale;
    size_t width = CGRectGetWidth(extent) * scale;
    //: size_t height = CGRectGetHeight(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    //: CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    //: CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    //: CIContext *context = [CIContext contextWithOptions:nil];
    CIContext *context = [CIContext contextWithOptions:nil];
    //: CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    //: CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    //: CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextScaleCTM(bitmapRef, scale, scale);
    //: CGContextDrawImage(bitmapRef, extent, bitmapImage);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    // Create an image with the contents of our bitmap
    //: CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    // Cleanup
    //: CGContextRelease(bitmapRef);
    CGContextRelease(bitmapRef);
    //: CGImageRelease(bitmapImage);
    CGImageRelease(bitmapImage);
    //: return [UIImage imageWithCGImage:scaledImage];
    return [UIImage imageWithCGImage:scaledImage];
}

//: #pragma mark - imageToTransparent
#pragma mark - imageToTransparent
//: void ProviderReleaseData (void *info, const void *data, size_t size){
void sectionSize (void *info, const void *data, size_t size){
    //: free((void*)data);
    free((void*)data);
}
//: + (UIImage*)imageBlackToTransparent:(UIImage*)image withRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
+ (UIImage*)darkWhen:(UIImage*)image atMax:(CGFloat)red atCell:(CGFloat)green view:(CGFloat)blue{
    //: const int imageWidth = image.size.width;
    const int imageWidth = image.size.width;
    //: const int imageHeight = image.size.height;
    const int imageHeight = image.size.height;
    //: size_t bytesPerRow = imageWidth * 4;
    size_t bytesPerRow = imageWidth * 4;
    //: uint32_t* rgbImageBuf = (uint32_t*)malloc(bytesPerRow * imageHeight);
    uint32_t* rgbImageBuf = (uint32_t*)malloc(bytesPerRow * imageHeight);
    // create context
    //: CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //: CGContextRef context = CGBitmapContextCreate(rgbImageBuf, imageWidth, imageHeight, 8, bytesPerRow, colorSpace,
    CGContextRef context = CGBitmapContextCreate(rgbImageBuf, imageWidth, imageHeight, 8, bytesPerRow, colorSpace,
                                                 //: kCGBitmapByteOrder32Little | kCGImageAlphaNoneSkipLast);
                                                 kCGBitmapByteOrder32Little | kCGImageAlphaNoneSkipLast);
    //: CGContextDrawImage(context, CGRectMake(0, 0, imageWidth, imageHeight), image.CGImage);
    CGContextDrawImage(context, CGRectMake(0, 0, imageWidth, imageHeight), image.CGImage);
    // traverse pixe
    //: int pixelNum = imageWidth * imageHeight;
    int pixelNum = imageWidth * imageHeight;
    //: uint32_t* pCurPtr = rgbImageBuf;
    uint32_t* pCurPtr = rgbImageBuf;
    //: for (int i = 0; i < pixelNum; i++, pCurPtr++){
    for (int i = 0; i < pixelNum; i++, pCurPtr++){
        //: if ((*pCurPtr & 0xFFFWatch00) < 0x99999900){
        if ((*pCurPtr & 0xFFFFFF00) < 0x99999900){
            // change color
            //: uint8_t* ptr = (uint8_t*)pCurPtr;
            uint8_t* ptr = (uint8_t*)pCurPtr;
            //: ptr[3] = red; 
            ptr[3] = red; //0~255
            //: ptr[2] = green;
            ptr[2] = green;
            //: ptr[1] = blue;
            ptr[1] = blue;
        //: }else{
        }else{
            //: uint8_t* ptr = (uint8_t*)pCurPtr;
            uint8_t* ptr = (uint8_t*)pCurPtr;
            //: ptr[0] = 0;
            ptr[0] = 0;
        }
    }
    // context to image
    //: CGDataProviderRef dataProvider = CGDataProviderCreateWithData(NULL, rgbImageBuf, bytesPerRow * imageHeight, ProviderReleaseData);
    CGDataProviderRef dataProvider = CGDataProviderCreateWithData(NULL, rgbImageBuf, bytesPerRow * imageHeight, sectionSize);
    //: CGImageRef imageRef = CGImageCreate(imageWidth, imageHeight, 8, 32, bytesPerRow, colorSpace,
    CGImageRef imageRef = CGImageCreate(imageWidth, imageHeight, 8, 32, bytesPerRow, colorSpace,
                                        //: kCGImageAlphaLast | kCGBitmapByteOrder32Little, dataProvider,
                                        kCGImageAlphaLast | kCGBitmapByteOrder32Little, dataProvider,
                                        //: NULL, true, kCGRenderingIntentDefault);
                                        NULL, true, kCGRenderingIntentDefault);
    //: CGDataProviderRelease(dataProvider);
    CGDataProviderRelease(dataProvider);
    //: UIImage* resultUIImage = [UIImage imageWithCGImage:imageRef];
    UIImage* resultUIImage = [UIImage imageWithCGImage:imageRef];
    // release
    //: CGImageRelease(imageRef);
    CGImageRelease(imageRef);
    //: CGContextRelease(context);
    CGContextRelease(context);
    //: CGColorSpaceRelease(colorSpace);
    CGColorSpaceRelease(colorSpace);
    //: return resultUIImage;
    return resultUIImage;
}

//: @end
@end
