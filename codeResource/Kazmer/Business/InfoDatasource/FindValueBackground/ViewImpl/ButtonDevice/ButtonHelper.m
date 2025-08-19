
#import <Foundation/Foundation.h>

@interface PloyOhoData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PloyOhoData

+ (instancetype)sharedInstance {
    static PloyOhoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PloyOhoDataToCache:(Byte *)data {
    int victim = data[0];
    Byte individualRiotNowhere = data[1];
    int additionalOversee = data[2];
    for (int i = additionalOversee; i < additionalOversee + victim; i++) {
        int value = data[i] - individualRiotNowhere;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[additionalOversee + victim] = 0;
    return data + additionalOversee;
}

- (NSString *)StringFromPloyOhoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PloyOhoDataToCache:data]];
}

//: image
- (NSString *)userCabinData {
    /* static */ NSString *userCabinData = nil;
    if (!userCabinData) {
        Byte value[] = {5, 71, 3, 176, 180, 168, 174, 172, 152};
        userCabinData = [self StringFromPloyOhoData:value];
    }
    return userCabinData;
}

//: video
- (NSString *)app_inflationData {
    /* static */ NSString *app_inflationData = nil;
    if (!app_inflationData) {
        Byte value[] = {5, 33, 13, 169, 252, 241, 30, 56, 40, 40, 104, 29, 159, 151, 138, 133, 134, 144, 41};
        app_inflationData = [self StringFromPloyOhoData:value];
    }
    return app_inflationData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonHelper.m
// ButtonKit
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchKitFileLocationHelper.h"
#import "ButtonHelper.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import <sys/stat.h>
#import <sys/stat.h>

//: @interface WatchKitFileLocationHelper ()
@interface ButtonHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)labelFilename: (NSString *)dirname lengthTool: (NSString *)filename;
//: @end
@end


//: @implementation WatchKitFileLocationHelper
@implementation ButtonHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)disableUrl:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
        //: NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)with
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [NIMSDK sharedSDK].appKey;
        NSString *appKey = [NIMSDK sharedSDK].appKey;
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [WatchKitFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [ButtonHelper disableUrl:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)page
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)language
{
    //: NSString *documentPath = [WatchKitFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [ButtonHelper with];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
        //: NSLog(@"Error: Get User Directory While UserID Is Empty");
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)betweenColorDir: (NSString *)resouceName
{
    //: NSString *dir = [[WatchKitFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[ButtonHelper language] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)info:(NSString *)filename
{
    //: return [WatchKitFileLocationHelper filepathForDir:@"video"
    return [ButtonHelper labelFilename:[[PloyOhoData sharedInstance] app_inflationData]
                                         //: filename:filename];
                                         lengthTool:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)nim:(NSString *)filename
{
    //: return [WatchKitFileLocationHelper filepathForDir:@"image"
    return [ButtonHelper labelFilename:[[PloyOhoData sharedInstance] userCabinData]
                                         //: filename:filename];
                                         lengthTool:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)withKey:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)labelFilename:(NSString *)dirname
                    //: filename:(NSString *)filename
                    lengthTool:(NSString *)filename
{
    //: return [[WatchKitFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[ButtonHelper betweenColorDir:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end
