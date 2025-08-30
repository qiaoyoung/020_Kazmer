// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionMsgHelper.h
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

//: @class USERJanKenPonAttachment;
@class GlossAttachment;
//: @class USERSnapchatAttachment;
@class DigitizerAttachment;
//: @class USERWhiteboardAttachment;
@class MessageAttachment;
//: @class USERRedPacketAttachment;
@class LabelTagContext;
//: @class USERRedPacketTipAttachment;
@class ContentAttachment;
//: @class USERMultiRetweetAttachment;
@class SessionWith;
//: @class USERShareCardAttachment;
@class ProfitsToAttachmentColor;

//: @interface USERSessionMsgConverter : NSObject
@interface TopConverter : NSObject

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)content:(NSString *)tip;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)messageBar:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(USERJanKenPonAttachment *)attachment;
+ (NIMMessage *)length:(GlossAttachment *)attachment;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)messageFor:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              tipRead:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         sure:(NSString *)revokeCallbackExt;
//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)progress:(NSData *)data streetwise:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)info:(NSString *)filePath;

//: + (NIMMessage *)msgWithShareCard:(USERShareCardAttachment *)attachment;
+ (NIMMessage *)slice:(ProfitsToAttachmentColor *)attachment;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)bound:(NSString *)path;

//: + (NIMMessage *)msgWithRedPacket:(USERRedPacketAttachment *)attachment;
+ (NIMMessage *)red:(LabelTagContext *)attachment;

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)streetSmart:(NSString *)text;

//: + (NIMMessage *)msgWithRedPacketTip:(USERRedPacketTipAttachment *)attachment;
+ (NIMMessage *)maxTip:(ContentAttachment *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(USERWhiteboardAttachment *)attachment;
+ (NIMMessage *)streetwise:(MessageAttachment *)attachment;


//: + (NIMMessage *)msgWithMultiRetweetAttachment:(USERMultiRetweetAttachment *)attachment;
+ (NIMMessage *)data:(SessionWith *)attachment;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)at:(UIImage *)image;

//: + (NIMMessage *)msgWithSnapchatAttachment:(USERSnapchatAttachment *)attachment;
+ (NIMMessage *)teamImage:(DigitizerAttachment *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)primrosePath:(NSString *)path;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)can:(NIMMessage *)revocationMessage;

//: @end
@end