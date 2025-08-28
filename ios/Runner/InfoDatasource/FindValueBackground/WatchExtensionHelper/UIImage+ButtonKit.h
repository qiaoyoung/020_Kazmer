// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+ButtonKit.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (ButtonKit)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)beyondRecent:(NSString *)imageName distanceWithoutChartlet:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)pin:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              inputName:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              unsullied:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)cut:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)random;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)should;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)color:(CGSize)size;

//: @end
@end