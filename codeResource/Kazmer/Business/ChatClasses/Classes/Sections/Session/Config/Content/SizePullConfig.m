
#import <Foundation/Foundation.h>

@interface ChopData : NSObject

@end

@implementation ChopData

+ (NSData *)ChopDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ChopDataToCache:(Byte *)data {
    int whereasProper = data[0];
    Byte violationRural = data[1];
    int ruptureRelieve = data[2];
    for (int i = ruptureRelieve; i < ruptureRelieve + whereasProper; i++) {
        int value = data[i] + violationRural;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[ruptureRelieve + whereasProper] = 0;
    return data + ruptureRelieve;
}

+ (NSString *)StringFromChopData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChopDataToCache:data]];
}

//: message should be image
+ (NSString *)kText_inkPlayDespiteString {
    /* static */ NSString *kText_inkPlayDespiteString = nil;
    if (!kText_inkPlayDespiteString) {
		NSArray<NSString *> *origin = @[@"23", @"17", @"13", @"157", @"9", @"13", @"7", @"202", @"156", @"83", @"97", @"49", @"154", @"92", @"84", @"98", @"98", @"80", @"86", @"84", @"15", @"98", @"87", @"94", @"100", @"91", @"83", @"15", @"81", @"84", @"15", @"88", @"92", @"80", @"86", @"84", @"15"];
		NSData *data = [ChopData ChopDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_inkPlayDespiteString = [self StringFromChopData:value];
    }
    return kText_inkPlayDespiteString;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizePullConfig.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "SizePullConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation FFFImageContentConfig
@implementation SizePullConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], [ChopData kText_inkPlayDespiteString]);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);


    //: CGSize imageSize;
    CGSize imageSize;
    //: if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
        //: imageSize = imageObject.size;
        imageSize = imageObject.size;
        //: if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
        if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
            //: imageSize = CGSizeMake(80, 80);
            imageSize = CGSizeMake(80, 80);
        }
    }
    //: else
    else
    {
        //: UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        //: imageSize = image ? image.size : CGSizeZero;
        imageSize = image ? image.size : CGSizeZero;
    }
    //: CGSize contentSize = [UIImage device_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage conformToSession:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   anImage:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   with:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"CenterTextView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}



//: @end
@end