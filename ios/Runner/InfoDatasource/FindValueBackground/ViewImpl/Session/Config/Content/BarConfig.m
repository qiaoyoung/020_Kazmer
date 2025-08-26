
#import <Foundation/Foundation.h>

typedef struct {
    Byte boostAcid;
    Byte *pieceFlow;
    unsigned int createerShow;
	int nameSexyDecide;
} StructDatabaseData;

@interface DatabaseData : NSObject

@end

@implementation DatabaseData

+ (Byte *)DatabaseDataToByte:(StructDatabaseData *)data {
    for (int i = 0; i < data->createerShow; i++) {
        data->pieceFlow[i] ^= data->boostAcid;
    }
    data->pieceFlow[data->createerShow] = 0;
	if (data->createerShow >= 1) {
		data->nameSexyDecide = data->pieceFlow[0];
	}
    return data->pieceFlow;
}

+ (NSString *)StringFromDatabaseData:(StructDatabaseData *)data {
    return [NSString stringWithUTF8String:(char *)[self DatabaseDataToByte:data]];
}

//: message should be video
+ (NSString *)mCabinData {
    /* static */ NSString *mCabinData = nil;
    if (!mCabinData) {
        StructDatabaseData value = (StructDatabaseData){87, (Byte []){58, 50, 36, 36, 54, 48, 50, 119, 36, 63, 56, 34, 59, 51, 119, 53, 50, 119, 33, 62, 51, 50, 56, 188}, 23, 46};
        mCabinData = [self StringFromDatabaseData:&value];
    }
    return mCabinData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarConfig.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchVideoContentConfig.h"
#import "BarConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation WatchVideoContentConfig
@implementation BarConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], [DatabaseData mCabinData]);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage pin:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   inputName:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   unsullied:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"WatchSessionVideoContentView";
    return @"VisualCommunicationControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}

//: @end
@end
