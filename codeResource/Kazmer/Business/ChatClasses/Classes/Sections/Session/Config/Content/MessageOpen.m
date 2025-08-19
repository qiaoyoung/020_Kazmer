
#import <Foundation/Foundation.h>

@interface BetweenData : NSObject

+ (instancetype)sharedInstance;

//: message should be image
@property (nonatomic, copy) NSString *noti_surfaceId;

@end

@implementation BetweenData

+ (instancetype)sharedInstance {
    static BetweenData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BetweenDataToCache:(Byte *)data {
    int ohoOuch = data[0];
    int elderly = data[1];
    for (int i = 0; i < ohoOuch / 2; i++) {
        int begin = elderly + i;
        int end = elderly + ohoOuch - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[elderly + ohoOuch] = 0;
    return data + elderly;
}

- (NSString *)StringFromBetweenData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BetweenDataToCache:data]];
}  

//: message should be image
- (NSString *)noti_surfaceId {
    if (!_noti_surfaceId) {
        Byte value[] = {23, 3, 203, 101, 103, 97, 109, 105, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 124};
        _noti_surfaceId = [self StringFromBetweenData:value];
    }
    return _noti_surfaceId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageOpen.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchImageContentConfig.h"
#import "MessageOpen.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation WatchImageContentConfig
@implementation MessageOpen
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], [BetweenData sharedInstance].noti_surfaceId);

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
    //: CGSize contentSize = [UIImage nim_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage pin:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   inputName:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   unsullied:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"WatchSessionImageContentView";
    return @"MakeContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}



//: @end
@end
