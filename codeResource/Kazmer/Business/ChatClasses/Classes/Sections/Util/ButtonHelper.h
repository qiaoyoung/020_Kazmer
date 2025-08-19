// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonHelper.h
// ButtonKit
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface WatchKitFileLocationHelper : NSObject
@interface ButtonHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)with;

//: + (NSString *)getAppTempPath;
+ (NSString *)page;

//: + (NSString *)userDirectory;
+ (NSString *)language;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)withKey:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)info:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)nim:(NSString *)filename;

//: @end
@end
