
#import <Foundation/Foundation.h>

typedef struct {
    Byte bankCharter;
    Byte *trainUrea;
    unsigned int rehabAt;
	int deliverRumen;
	int imageRepairNowhere;
} StructScornData;

@interface ScornData : NSObject

+ (instancetype)sharedInstance;

//: title
@property (nonatomic, copy) NSString *noti_hugeMsg;

//: redPacketId
@property (nonatomic, copy) NSString *dreamContributionKey;

//: data
@property (nonatomic, copy) NSString *appLibKey;

//: type
@property (nonatomic, copy) NSString *appWorkplaceName;

//: redPacketSendID
@property (nonatomic, copy) NSString *notiTunnelAchieveFormat;

//: content
@property (nonatomic, copy) NSString *m_parishData;

@end

@implementation ScornData

+ (instancetype)sharedInstance {
    static ScornData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ScornDataToByte:(StructScornData *)data {
    for (int i = 0; i < data->rehabAt; i++) {
        data->trainUrea[i] ^= data->bankCharter;
    }
    data->trainUrea[data->rehabAt] = 0;
	if (data->rehabAt >= 2) {
		data->deliverRumen = data->trainUrea[0];
		data->imageRepairNowhere = data->trainUrea[1];
	}
    return data->trainUrea;
}

- (NSString *)StringFromScornData:(StructScornData *)data {
    return [NSString stringWithUTF8String:(char *)[self ScornDataToByte:data]];
}

//: redPacketId
- (NSString *)dreamContributionKey {
    if (!_dreamContributionKey) {
        StructScornData value = (StructScornData){63, (Byte []){77, 90, 91, 111, 94, 92, 84, 90, 75, 118, 91, 158}, 11, 74, 9};
        _dreamContributionKey = [self StringFromScornData:&value];
    }
    return _dreamContributionKey;
}

//: content
- (NSString *)m_parishData {
    if (!_m_parishData) {
        StructScornData value = (StructScornData){109, (Byte []){14, 2, 3, 25, 8, 3, 25, 2}, 7, 58, 78};
        _m_parishData = [self StringFromScornData:&value];
    }
    return _m_parishData;
}

//: title
- (NSString *)noti_hugeMsg {
    if (!_noti_hugeMsg) {
        StructScornData value = (StructScornData){226, (Byte []){150, 139, 150, 142, 135, 152}, 5, 99, 22};
        _noti_hugeMsg = [self StringFromScornData:&value];
    }
    return _noti_hugeMsg;
}

//: redPacketSendID
- (NSString *)notiTunnelAchieveFormat {
    if (!_notiTunnelAchieveFormat) {
        StructScornData value = (StructScornData){45, (Byte []){95, 72, 73, 125, 76, 78, 70, 72, 89, 126, 72, 67, 73, 100, 105, 203}, 15, 193, 143};
        _notiTunnelAchieveFormat = [self StringFromScornData:&value];
    }
    return _notiTunnelAchieveFormat;
}

//: data
- (NSString *)appLibKey {
    if (!_appLibKey) {
        StructScornData value = (StructScornData){124, (Byte []){24, 29, 8, 29, 132}, 4, 113, 242};
        _appLibKey = [self StringFromScornData:&value];
    }
    return _appLibKey;
}

//: type
- (NSString *)appWorkplaceName {
    if (!_appWorkplaceName) {
        StructScornData value = (StructScornData){22, (Byte []){98, 111, 102, 115, 22}, 4, 51, 183};
        _appWorkplaceName = [self StringFromScornData:&value];
    }
    return _appWorkplaceName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoMessageBackground.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "InfoMessageBackground.h"

//: @implementation NTESRedPacketAttachment
@implementation InfoMessageBackground

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  [ScornData sharedInstance].noti_hugeMsg : self.title,
                                  //: @"content" : self.content,
                                  [ScornData sharedInstance].m_parishData : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  [ScornData sharedInstance].dreamContributionKey : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  [ScornData sharedInstance].notiTunnelAchieveFormat : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{[ScornData sharedInstance].appWorkplaceName: @(CustomMessageTypeRedPacket), [ScornData sharedInstance].appLibKey: dictContent};
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
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)fingertip:(NIMMessage *)message {
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

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)select:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"FoamControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)preserve
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)behindInfo
{
    //: return NO;
    return NO;
}


//: @end
@end