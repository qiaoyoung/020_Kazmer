//
//  USERSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class USERJanKenPonAttachment;
@class USERSnapchatAttachment;
@class USERWhiteboardAttachment;
@class USERRedPacketAttachment;
@class USERRedPacketTipAttachment;
@class USERMultiRetweetAttachment;
@class USERShareCardAttachment;

@interface USERSessionMsgConverter : NSObject

+ (NIMMessage *)msgWithText:(NSString *)text;

+ (NIMMessage *)msgWithImage:(UIImage *)image;

+ (NIMMessage *)msgWithImagePath:(NSString *)path;

+ (NIMMessage *)msgWithAudio:(NSString *)filePath;

+ (NIMMessage *)msgWithVideo:(NSString *)filePath;

+ (NIMMessage *)msgWithJenKenPon:(USERJanKenPonAttachment *)attachment;

+ (NIMMessage *)msgWithSnapchatAttachment:(USERSnapchatAttachment *)attachment;

+ (NIMMessage *)msgWithWhiteboardAttachment:(USERWhiteboardAttachment *)attachment;

+ (NIMMessage *)msgWithFilePath:(NSString *)path;

+ (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;

+ (NIMMessage *)msgWithTip:(NSString *)tip;

+ (NIMMessage *)msgWithTip:(NSString *)tip
              revokeAttach:(NSString *)revokeAttach
         revokeCallbackExt:(NSString *)revokeCallbackExt;

+ (NIMMessage *)msgWithRedPacket:(USERRedPacketAttachment *)attachment;

+ (NIMMessage *)msgWithRedPacketTip:(USERRedPacketTipAttachment *)attachment;

+ (NIMMessage *)msgWithMultiRetweetAttachment:(USERMultiRetweetAttachment *)attachment;

+ (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;

+ (NIMMessage *)msgWithShareCard:(USERShareCardAttachment *)attachment;

@end
