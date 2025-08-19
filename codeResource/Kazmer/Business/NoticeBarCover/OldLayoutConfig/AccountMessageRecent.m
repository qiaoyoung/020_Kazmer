
#import <Foundation/Foundation.h>
typedef struct {
    Byte atQuantityellectual;
    Byte *vanishConduct;
    unsigned int seizeDominate;
    Byte deadlineCue;
	int train;
} WaterSkiData;

NSString *StringFromWaterSkiData(WaterSkiData *data);


//: message must be custom
WaterSkiData showStoneName = (WaterSkiData){8, (Byte []){101, 109, 123, 123, 105, 111, 109, 40, 101, 125, 123, 124, 40, 106, 109, 40, 107, 125, 123, 124, 103, 101, 31}, 22, 253, 210};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountMessageRecent.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "AccountMessageRecent.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface AccountMessageRecent()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation AccountMessageRecent

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromWaterSkiData(&showStoneName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<TableInfo> info = (id<TableInfo>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info locationWidth:message stochasticProcess:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromWaterSkiData(&showStoneName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<TableInfo> info = (id<TableInfo>)object.attachment;
    //: return [info cellContent:message];
    return [info select:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromWaterSkiData(&showStoneName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<TableInfo> info = (id<TableInfo>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info fingertip:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)threadded:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromWaterSkiData(&showStoneName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<TableInfo> info = (id<TableInfo>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(names:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info names:message];
}


//: @end
@end

Byte *WaterSkiDataToByte(WaterSkiData *data) {
    if (data->deadlineCue < 133) return data->vanishConduct;
    for (int i = 0; i < data->seizeDominate; i++) {
        data->vanishConduct[i] ^= data->atQuantityellectual;
    }
    data->vanishConduct[data->seizeDominate] = 0;
    data->deadlineCue = 4;
	if (data->seizeDominate >= 1) {
		data->train = data->vanishConduct[0];
	}
    return data->vanishConduct;
}

NSString *StringFromWaterSkiData(WaterSkiData *data) {
    return [NSString stringWithUTF8String:(char *)WaterSkiDataToByte(data)];
}
