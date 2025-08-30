
#import <Foundation/Foundation.h>

typedef struct {
    Byte itemTeam;
    Byte *workingPapers;
    unsigned int partMessage;
	int refreshItem;
} StructColorGrayData;

@interface ColorGrayData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ColorGrayData

- (Byte *)ColorGrayDataToByte:(StructColorGrayData *)data {
    for (int i = 0; i < data->partMessage; i++) {
        data->workingPapers[i] ^= data->itemTeam;
    }
    data->workingPapers[data->partMessage] = 0;
	if (data->partMessage >= 1) {
		data->refreshItem = data->workingPapers[0];
	}
    return data->workingPapers;
}

//: custom_msg_jan
- (NSString *)kTitlePlaySharedString {
    /* static */ NSString *kTitlePlaySharedString = nil;
    if (!kTitlePlaySharedString) {
		NSArray<NSNumber *> *origin = @[@137, @159, @153, @158, @133, @135, @181, @135, @153, @141, @181, @128, @139, @132, @186];
		NSData *data = [ColorGrayData ColorGrayDataToData:origin];
        StructColorGrayData value = (StructColorGrayData){234, (Byte *)data.bytes, 14, 179};
        kTitlePlaySharedString = [self StringFromColorGrayData:&value];
    }
    return kTitlePlaySharedString;
}

+ (instancetype)sharedInstance {
    static ColorGrayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: custom_msg_pon
- (NSString *)kName_hideAlsoData {
    /* static */ NSString *kName_hideAlsoData = nil;
    if (!kName_hideAlsoData) {
		NSArray<NSNumber *> *origin = @[@224, @246, @240, @247, @236, @238, @220, @238, @240, @228, @220, @243, @236, @237, @6];
		NSData *data = [ColorGrayData ColorGrayDataToData:origin];
        StructColorGrayData value = (StructColorGrayData){131, (Byte *)data.bytes, 14, 217};
        kName_hideAlsoData = [self StringFromColorGrayData:&value];
    }
    return kName_hideAlsoData;
}

//: custom_msg_ken
- (NSString *)kTitleKeyString {
    /* static */ NSString *kTitleKeyString = nil;
    if (!kTitleKeyString) {
		NSArray<NSNumber *> *origin = @[@228, @242, @244, @243, @232, @234, @216, @234, @244, @224, @216, @236, @226, @233, @84];
		NSData *data = [ColorGrayData ColorGrayDataToData:origin];
        StructColorGrayData value = (StructColorGrayData){135, (Byte *)data.bytes, 14, 143};
        kTitleKeyString = [self StringFromColorGrayData:&value];
    }
    return kTitleKeyString;
}

+ (NSData *)ColorGrayDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: type
- (NSString *)kTitleMoleName {
    /* static */ NSString *kTitleMoleName = nil;
    if (!kTitleMoleName) {
		NSArray<NSNumber *> *origin = @[@159, @146, @155, @142, @124];
		NSData *data = [ColorGrayData ColorGrayDataToData:origin];
        StructColorGrayData value = (StructColorGrayData){235, (Byte *)data.bytes, 4, 241};
        kTitleMoleName = [self StringFromColorGrayData:&value];
    }
    return kTitleMoleName;
}

- (NSString *)StringFromColorGrayData:(StructColorGrayData *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorGrayDataToByte:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GlossAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"

//: @implementation USERJanKenPonAttachment
@implementation GlossAttachment

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)actionRecent:(NIMMessage *)message{
    //: return @"USERSessionJankenponContentView";
    return @"ShouldTitleView";
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (BOOL)canBeRevoked
- (BOOL)cover
{
    //: return YES;
    return YES;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:[[ColorGrayData sharedInstance] kTitlePlaySharedString]];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:[[ColorGrayData sharedInstance] kTitleKeyString]];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:[[ColorGrayData sharedInstance] kName_hideAlsoData]];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)reply:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (BOOL)canBeForwarded
- (BOOL)pop
{
    //: return YES;
    return YES;
}

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{[[ColorGrayData sharedInstance] kTitleMoleName] : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           @"data" : @{@"value":@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)emotionRestore:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end
//: __SAVE__ ignore_string [541.5,410.4]