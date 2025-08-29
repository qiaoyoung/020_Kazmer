// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldMaker.h
// Mortification
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

//: @interface FFFMessageMaker : NSObject
@interface ShouldMaker : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)file:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)data:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)select:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)pin:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)naturalLanguageTing:(NSData *)data simulationExtension:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)line:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface GrowingColor : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)scale:(int64_t)type
                             //: content:(NSString *)content
                             top:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 noticeParentName:(NSString *)ext;

//: @end
@end