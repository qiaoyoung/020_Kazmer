// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionStandard.h
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
// 最近会话本地扩展标记类型

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: typedef NS_ENUM(NSInteger, USERRecentSessionMarkType){
typedef NS_ENUM(NSInteger, USERRecentSessionMarkType){
    // @ 标记
    //: USERRecentSessionMarkTypeAt,
    USERRecentSessionMarkTypeAt,
    // 置顶标记（已废弃）
    //: USERRecentSessionMarkTypeTop,
    USERRecentSessionMarkTypeTop,
//: };
};

//: @interface USERSessionUtil : NSObject
@interface SessionStandard : NSObject

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message;
+ (BOOL)shoot:(NIMMessage *)message;


//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notificaton;
+ (NSString *)noneTitle:(NIMRevokeMessageNotification *)notificaton;

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString;
+ (NSDictionary *)remove:(NSString *)jsonString;

//: + (NSDictionary *)dictByJsonData:(NSData *)data;
+ (NSDictionary *)event:(NSData *)data;



//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)messageSize:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  child:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSize;
                                  commandSize:(CGSize)imageMaxSize;
//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session;
+ (NSString *)hijabText:(NSString*)uid managerTeam:(NIMSession*)session;

//接收时间格式化
//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail;
+ (NSString*)label:(NSTimeInterval) msglastTime image:(BOOL)showDetail;

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(USERRecentSessionMarkType)type;
+ (void)status:(NIMSession *)session readType:(USERRecentSessionMarkType)type;

//: + (void)addRecentSessionMark:(NIMSession *)session type:(USERRecentSessionMarkType)type;
+ (void)sessionRed:(NIMSession *)session last:(USERRecentSessionMarkType)type;

//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail;
+ (NSString *)imageDetail:(NSString *)userId shouldPath:(BOOL)detail;

//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message;
+ (BOOL)of:(NIMMessage *)message;

//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)createHandler:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  layer_strong:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler;
               ingot:(void (^)(AVAssetExportSession*))handler;
//: + (NSString *)formatAutoLoginMessage:(NSError *)error;
+ (NSString *)textBy:(NSError *)error;

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript;
+ (NSString *)tingBackground:(NSString *)postscript;



//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(USERRecentSessionMarkType)type;
+ (BOOL)name:(NIMRecentSession *)recent argumentThread:(USERRecentSessionMarkType)type;

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message;
+ (BOOL)beSize:(NIMMessage *)message;

//: @end
@end