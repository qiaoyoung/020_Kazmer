//
//  NSString+USER.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString * emptyString(NSString *anMaybeEmptyString);

@interface NSString (USER)

- (CGSize)stringSizeWithFont:(UIFont *)font;

- (NSString *)MD5String;

- (NSUInteger)getBytesLength;

- (NSString *)stringByDeletingPictureResolution;

- (NSString *)tokenByPassword;

- (NSString *)user_localized;

+ (NSString *)randomStringWithLength:(NSUInteger)length;

@end
