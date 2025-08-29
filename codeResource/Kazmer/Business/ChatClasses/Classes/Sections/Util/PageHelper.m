
#import <Foundation/Foundation.h>

@interface DiaryTreasureData : NSObject

@end

@implementation DiaryTreasureData

+ (NSData *)DiaryTreasureDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)DiaryTreasureDataToCache:(Byte *)data {
    int ridiculous = data[0];
    Byte disreputable = data[1];
    int keyFile = data[2];
    for (int i = keyFile; i < keyFile + ridiculous; i++) {
        int value = data[i] - disreputable;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[keyFile + ridiculous] = 0;
    return data + keyFile;
}

+ (NSString *)StringFromDiaryTreasureData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DiaryTreasureDataToCache:data]];
}

//: video
+ (NSString *)kNameRiceData {
    /* static */ NSString *kNameRiceData = nil;
    if (!kNameRiceData) {
		NSArray<NSNumber *> *origin = @[@5, @18, @13, @209, @68, @7, @27, @236, @169, @112, @233, @202, @227, @136, @123, @118, @119, @129, @166];
		NSData *data = [DiaryTreasureData DiaryTreasureDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRiceData = [self StringFromDiaryTreasureData:value];
    }
    return kNameRiceData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PageHelper.m
// Mortification
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitFileLocationHelper.h"
#import "PageHelper.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import <sys/stat.h>
#import <sys/stat.h>

//: @interface FFFKitFileLocationHelper ()
@interface PageHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)tap: (NSString *)dirname text: (NSString *)filename;
//: @end
@end


//: @implementation FFFKitFileLocationHelper
@implementation PageHelper
//: + (NSString *)getAppTempPath
+ (NSString *)title
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}
//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)tap:(NSString *)dirname
                    //: filename:(NSString *)filename
                    text:(NSString *)filename
{
    //: return [[FFFKitFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[PageHelper quantityOn:dirname] stringByAppendingPathComponent:filename];
}

//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)background:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"video"
    return [PageHelper tap:[DiaryTreasureData kNameRiceData]
                                         //: filename:filename];
                                         text:filename];
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)quantityOn: (NSString *)resouceName
{
    //: NSString *dir = [[FFFKitFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[PageHelper center] stringByAppendingPathComponent:resouceName];
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

//: + (NSString *)getAppDocumentPath
+ (NSString *)cell
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
        //: [FFFKitFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [PageHelper addWithoutAtomicTotal85Url:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}


//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)object:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"image"
    return [PageHelper tap:@"image"
                                         //: filename:filename];
                                         text:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)item:(NSString *)ext
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

//: + (NSString *)userDirectory
+ (NSString *)center
{
    //: NSString *documentPath = [FFFKitFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [PageHelper cell];
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


//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)addWithoutAtomicTotal85Url:(NSURL *)URL
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

//: @end
@end
//: __SAVE__ ignore_string [515.5]