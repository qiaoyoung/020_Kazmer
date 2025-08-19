// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Zone.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * twineInside(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (Zone)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)sizeOption:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)image;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)lineUp;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)filterResolution;

//: - (NSString *)tokenByPassword;
- (NSString *)words;

//: - (NSString *)ntes_localized;
- (NSString *)textIndex;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)targetTitle:(NSUInteger)length;

//: @end
@end