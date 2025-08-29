// __DEBUG__
// __CLOSE_PRINT__
//
//  PageHelper.h
// Mortification
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFKitFileLocationHelper : NSObject
@interface PageHelper : NSObject

//: + (NSString *)userDirectory;
+ (NSString *)center;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)object:(NSString *)filename;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)background:(NSString *)filename;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)item:(NSString *)ext;

//: + (NSString *)getAppTempPath;
+ (NSString *)title;

//: + (NSString *)getAppDocumentPath;
+ (NSString *)cell;

//: @end
@end