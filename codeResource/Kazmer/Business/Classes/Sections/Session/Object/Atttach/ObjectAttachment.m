
#import <Foundation/Foundation.h>

typedef struct {
    Byte worm;
    Byte *lag;
    unsigned int historyConsultant;
	int hypophysectomise;
} StructGarlicData;

@interface GarlicData : NSObject

+ (instancetype)sharedInstance;

//: custom_msg_pon
@property (nonatomic, copy) NSString *k_survivalMessage;

//: custom_msg_jan
@property (nonatomic, copy) NSString *mainMembershipUrl;

//: type
@property (nonatomic, copy) NSString *appConsultantTitle;

//: custom_msg_ken
@property (nonatomic, copy) NSString *dream_propertyPath;

//: value
@property (nonatomic, copy) NSString *main_myMessage;

//: data
@property (nonatomic, copy) NSString *show_titleClusterEvaluatePath;

@end

@implementation GarlicData

+ (instancetype)sharedInstance {
    static GarlicData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)GarlicDataToByte:(StructGarlicData *)data {
    for (int i = 0; i < data->historyConsultant; i++) {
        data->lag[i] ^= data->worm;
    }
    data->lag[data->historyConsultant] = 0;
	if (data->historyConsultant >= 1) {
		data->hypophysectomise = data->lag[0];
	}
    return data->lag;
}

- (NSString *)StringFromGarlicData:(StructGarlicData *)data {
    return [NSString stringWithUTF8String:(char *)[self GarlicDataToByte:data]];
}

//: custom_msg_jan
- (NSString *)mainMembershipUrl {
    if (!_mainMembershipUrl) {
        StructGarlicData value = (StructGarlicData){6, (Byte []){101, 115, 117, 114, 105, 107, 89, 107, 117, 97, 89, 108, 103, 104, 20}, 14, 72};
        _mainMembershipUrl = [self StringFromGarlicData:&value];
    }
    return _mainMembershipUrl;
}

//: type
- (NSString *)appConsultantTitle {
    if (!_appConsultantTitle) {
        StructGarlicData value = (StructGarlicData){144, (Byte []){228, 233, 224, 245, 253}, 4, 126};
        _appConsultantTitle = [self StringFromGarlicData:&value];
    }
    return _appConsultantTitle;
}

//: custom_msg_pon
- (NSString *)k_survivalMessage {
    if (!_k_survivalMessage) {
        StructGarlicData value = (StructGarlicData){229, (Byte []){134, 144, 150, 145, 138, 136, 186, 136, 150, 130, 186, 149, 138, 139, 234}, 14, 235};
        _k_survivalMessage = [self StringFromGarlicData:&value];
    }
    return _k_survivalMessage;
}

//: data
- (NSString *)show_titleClusterEvaluatePath {
    if (!_show_titleClusterEvaluatePath) {
        StructGarlicData value = (StructGarlicData){57, (Byte []){93, 88, 77, 88, 236}, 4, 163};
        _show_titleClusterEvaluatePath = [self StringFromGarlicData:&value];
    }
    return _show_titleClusterEvaluatePath;
}

//: value
- (NSString *)main_myMessage {
    if (!_main_myMessage) {
        StructGarlicData value = (StructGarlicData){54, (Byte []){64, 87, 90, 67, 83, 210}, 5, 61};
        _main_myMessage = [self StringFromGarlicData:&value];
    }
    return _main_myMessage;
}

//: custom_msg_ken
- (NSString *)dream_propertyPath {
    if (!_dream_propertyPath) {
        StructGarlicData value = (StructGarlicData){49, (Byte []){82, 68, 66, 69, 94, 92, 110, 92, 66, 86, 110, 90, 84, 95, 85}, 14, 63};
        _dream_propertyPath = [self StringFromGarlicData:&value];
    }
    return _dream_propertyPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "ObjectAttachment.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation ObjectAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{[GarlicData sharedInstance].appConsultantTitle : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           [GarlicData sharedInstance].show_titleClusterEvaluatePath : @{[GarlicData sharedInstance].main_myMessage:@(self.value)}};
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


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)select:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"ModelNameView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)fingertip:(NIMMessage *)message
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
                image = [UIImage imageNamed:[GarlicData sharedInstance].mainMembershipUrl];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:[GarlicData sharedInstance].dream_propertyPath];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:[GarlicData sharedInstance].k_survivalMessage];
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

//: - (BOOL)canBeRevoked
- (BOOL)behindInfo
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)preserve
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)names:(NIMMessage *)message
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