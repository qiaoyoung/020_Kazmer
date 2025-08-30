
#import <Foundation/Foundation.h>

@interface DegreeRoveData : NSObject

@end

@implementation DegreeRoveData

+ (NSData *)DegreeRoveDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)DegreeRoveDataToCache:(Byte *)data {
    int bull = data[0];
    Byte mobile = data[1];
    int cellSen = data[2];
    for (int i = cellSen; i < cellSen + bull; i++) {
        int value = data[i] + mobile;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[cellSen + bull] = 0;
    return data + cellSen;
}

+ (NSString *)StringFromDegreeRoveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DegreeRoveDataToCache:data]];
}

//: message must be custom
+ (NSString *)kTitleAttitudeName {
    /* static */ NSString *kTitleAttitudeName = nil;
    if (!kTitleAttitudeName) {
		NSArray<NSString *> *origin = @[@"22", @"48", @"12", @"116", @"215", @"16", @"111", @"196", @"100", @"97", @"73", @"14", @"61", @"53", @"67", @"67", @"49", @"55", @"53", @"240", @"61", @"69", @"67", @"68", @"240", @"50", @"53", @"240", @"51", @"69", @"67", @"68", @"63", @"61", @"104"];
		NSData *data = [DegreeRoveData DegreeRoveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleAttitudeName = [self StringFromDegreeRoveData:value];
    }
    return kTitleAttitudeName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorCancel.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionCustomContentConfig.h"
#import "ColorCancel.h"
//: #import "USERCustomAttachmentDefines.h"
#import "USERCustomAttachmentDefines.h"

//: @interface USERSessionCustomContentConfig()
@interface ColorCancel()

//: @end
@end

//: @implementation USERSessionCustomContentConfig
@implementation ColorCancel

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [DegreeRoveData kTitleAttitudeName]);
    //: id<USERCustomAttachmentInfo> info = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> info = (id<AdvertizeTarget>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info ting:message pastCell:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [DegreeRoveData kTitleAttitudeName]);
    //: id<USERCustomAttachmentInfo> info = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> info = (id<AdvertizeTarget>)object.attachment;
    //: return [info cellContent:message];
    return [info actionRecent:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [DegreeRoveData kTitleAttitudeName]);
    //: id<USERCustomAttachmentInfo> info = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> info = (id<AdvertizeTarget>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info reply:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)scaling:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [DegreeRoveData kTitleAttitudeName]);
    //: id<USERCustomAttachmentInfo> info = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> info = (id<AdvertizeTarget>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(emotionRestore:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info emotionRestore:message];
}


//: @end
@end