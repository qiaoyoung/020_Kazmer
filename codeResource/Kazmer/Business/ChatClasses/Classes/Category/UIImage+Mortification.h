// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Mortification.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (Mortification)

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)margin;

//: + (CGSize)device_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)conformToSession:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              anImage:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              with:(CGSize)imageMaxSiz;


//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)imageMy:(CGSize)size;

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)language:(NSString *)imageName gammaHydroxybutyrate:(NSString *)chartletId;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)small;

//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)kitDirectionInward:(NSString *)imageName;

//: @end
@end