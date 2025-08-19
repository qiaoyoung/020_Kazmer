// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESJanKenPonAttachment;
@class ObjectAttachment;
//: @class NTESSnapchatAttachment;
@class WeltanschauungAttachment;
//: @class NTESWhiteboardAttachment;
@class InfoAttachment;
//: @class NTESRedPacketAttachment;
@class InfoMessageBackground;
//: @class NTESRedPacketTipAttachment;
@class ReplacementAttachment;
//: @class NTESMultiRetweetAttachment;
@class ShowImageEvent;
//: @class NTESShareCardAttachment;
@class KeyAttachment;

//: @interface NTESSessionMsgConverter : NSObject
@interface BackgroundCover : NSObject

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)name:(NSString *)text;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)blueImage:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)path:(NSString *)path;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)state:(NSString *)filePath;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)label:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment;
+ (NIMMessage *)origin:(ObjectAttachment *)attachment;

//: + (NIMMessage *)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment;
+ (NIMMessage *)title:(WeltanschauungAttachment *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment;
+ (NIMMessage *)image:(InfoAttachment *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)down:(NSString *)path;

//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)withMetadata:(NSData *)data reach:(NSString *)extension;

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)color:(NSString *)tip;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)my:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              image:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         should:(NSString *)revokeCallbackExt;

//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment;
+ (NIMMessage *)withChecked:(InfoMessageBackground *)attachment;

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment;
+ (NIMMessage *)streetSmartContentBeak:(ReplacementAttachment *)attachment;

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment;
+ (NIMMessage *)surnameArray:(ShowImageEvent *)attachment;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)gesture:(NIMMessage *)revocationMessage;

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment;
+ (NIMMessage *)white:(KeyAttachment *)attachment;

//: @end
@end