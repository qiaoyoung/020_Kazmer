// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayHelper.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface USERFileLocationHelper : NSObject
@interface DisplayHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)titles;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)checkSumoMessage:(NSString *)filename;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)filepathOrTvLocation:(NSString *)filename;

//: + (NSString *)userDirectory;
+ (NSString *)quick;

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename;
+ (NSString *)visualImage:(NSString *)filename;

//: + (NSString *)getAppTempPath;
+ (NSString *)compartment;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)should:(NSString *)ext;

//: @end
@end