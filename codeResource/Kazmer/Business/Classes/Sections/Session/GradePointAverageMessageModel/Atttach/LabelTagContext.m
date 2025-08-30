
#import <Foundation/Foundation.h>
typedef struct {
    Byte redShallow;
    Byte *lasting;
    unsigned int crawTroubled;
    Byte impenetrable;
} PlaceData;

NSString *StringFromPlaceData(PlaceData *data);


//: type
PlaceData kTitleDataToolString = (PlaceData){148, (Byte []){224, 237, 228, 241, 99}, 4, 200};

//: redPacketId
PlaceData kName_currentData = (PlaceData){104, (Byte []){26, 13, 12, 56, 9, 11, 3, 13, 28, 33, 12, 12}, 11, 200};

//: redPacketSendID
PlaceData kTitleCrawName = (PlaceData){168, (Byte []){218, 205, 204, 248, 201, 203, 195, 205, 220, 251, 205, 198, 204, 225, 236, 132}, 15, 237};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelTagContext.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"

//: @implementation USERRedPacketAttachment
@implementation LabelTagContext

//: - (BOOL)canBeRevoked
- (BOOL)cover
{
    //: return NO;
    return NO;
}


//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  @"title" : self.title,
                                  //: @"content" : self.content,
                                  @"content" : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  StringFromPlaceData(&kName_currentData) : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  StringFromPlaceData(&kTitleCrawName) : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{StringFromPlaceData(&kTitleDataToolString): @(CustomMessageTypeRedPacket), @"data": dictContent};
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)actionRecent:(NIMMessage *)message{
   //: return @"USERSessionRedPacketContentView";
   return @"GrowingControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)reply:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (BOOL)canBeForwarded
- (BOOL)pop
{
    //: return NO;
    return NO;
}


//: @end
@end
//: __SAVE__ ignore_string [763.7,546.5,410.4]

Byte *PlaceDataToByte(PlaceData *data) {
    if (data->impenetrable < 125) return data->lasting;
    for (int i = 0; i < data->crawTroubled; i++) {
        data->lasting[i] ^= data->redShallow;
    }
    data->lasting[data->crawTroubled] = 0;
    data->impenetrable = 68;
    return data->lasting;
}

NSString *StringFromPlaceData(PlaceData *data) {
    return [NSString stringWithUTF8String:(char *)PlaceDataToByte(data)];
}
