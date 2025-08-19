// __DEBUG__
// __CLOSE_PRINT__
//
//  ImpendentMaker.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class MyUserKitLocationPoint;
@class MyUserKitLocationPoint;

//: @interface WatchMessageMaker : NSObject
@interface ImpendentMaker : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)colorColumn:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)info:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)source:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)fortSession:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)noWill:(NSData *)data model_strong:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)video:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface QuickMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)successUserText:(int64_t)type
                             //: content:(NSString *)content
                             valueTingClean:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 last:(NSString *)ext;

//: @end
@end
