// __DEBUG__
// __CLOSE_PRINT__
//
//  OldUtil.h
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

//: typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
    // @ 标记
    //: NTESRecentSessionMarkTypeAt,
    NTESRecentSessionMarkTypeAt,
    // 置顶标记（已废弃）
    //: NTESRecentSessionMarkTypeTop,
    NTESRecentSessionMarkTypeTop,
//: };
};

//: @interface NTESSessionUtil : NSObject
@interface OldUtil : NSObject

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)keyTemp:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  rangeLink:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSize;
                                  add:(CGSize)imageMaxSize;

//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session;
+ (NSString *)red:(NSString*)uid dateSession:(NIMSession*)session;

//接收时间格式化
//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail;
+ (NSString*)time:(NSTimeInterval) msglastTime phaseOfTheMoon:(BOOL)showDetail;

//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)input:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  link:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler;
               signing:(void (^)(AVAssetExportSession*))handler;


//: + (NSDictionary *)dictByJsonData:(NSData *)data;
+ (NSDictionary *)should:(NSData *)data;

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString;
+ (NSDictionary *)place:(NSString *)jsonString;

//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message;
+ (BOOL)nameTempState:(NIMMessage *)message;

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message;
+ (BOOL)shadeRevoked:(NIMMessage *)message;

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message;
+ (BOOL)showCan:(NIMMessage *)message;

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notificaton;
+ (NSString *)signText:(NIMRevokeMessageNotification *)notificaton;

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript;
+ (NSString *)imageBy:(NSString *)postscript;

//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)sessionAcross:(NIMSession *)session enrichForGenre:(NTESRecentSessionMarkType)type;

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)show:(NIMSession *)session session:(NTESRecentSessionMarkType)type;

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type;
+ (BOOL)under:(NIMRecentSession *)recent by:(NTESRecentSessionMarkType)type;



//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail;
+ (NSString *)item:(NSString *)userId team:(BOOL)detail;

//: + (NSString *)formatAutoLoginMessage:(NSError *)error;
+ (NSString *)reply:(NSError *)error;

//: @end
@end