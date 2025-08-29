
#import <Foundation/Foundation.h>

@interface EquivalentData : NSObject

+ (instancetype)sharedInstance;

//: video
@property (nonatomic, copy) NSString *kTextSculptureString;

//: merge
@property (nonatomic, copy) NSString *kTitleAmpleText;

@end

@implementation EquivalentData

+ (instancetype)sharedInstance {
    static EquivalentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EquivalentDataToCache:(Byte *)data {
    int sealSnap = data[0];
    Byte estimated = data[1];
    int sculptureLieCell = data[2];
    for (int i = sculptureLieCell; i < sculptureLieCell + sealSnap; i++) {
        int value = data[i] + estimated;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[sculptureLieCell + sealSnap] = 0;
    return data + sculptureLieCell;
}

- (NSString *)StringFromEquivalentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EquivalentDataToCache:data]];
}

//: video
- (NSString *)kTextSculptureString {
    if (!_kTextSculptureString) {
        Byte value[] = {5, 7, 8, 204, 242, 183, 9, 145, 111, 98, 93, 94, 104, 170};
        _kTextSculptureString = [self StringFromEquivalentData:value];
    }
    return _kTextSculptureString;
}

//: merge
- (NSString *)kTitleAmpleText {
    if (!_kTitleAmpleText) {
        Byte value[] = {5, 6, 3, 103, 95, 108, 97, 95, 124};
        _kTitleAmpleText = [self StringFromEquivalentData:value];
    }
    return _kTitleAmpleText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayHelper.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "FFFConfig.h"
#import "ContextTeam.h"

//: @interface USERFileLocationHelper ()
@interface DisplayHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)tutorialAppear: (NSString *)dirname user: (NSString *)filename;
//: @end
@end


//: @implementation USERFileLocationHelper
@implementation DisplayHelper
//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)visualImage:(NSString *)filename {
    //: return [USERFileLocationHelper filepathForDir:(@"merge")
    return [DisplayHelper tutorialAppear:([EquivalentData sharedInstance].kTitleAmpleText)
                                     //: filename:filename];
                                     user:filename];
}
//: + (NSString *)getAppDocumentPath
+ (NSString *)titles
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
        NSString *appKey = [[ContextTeam mutual] appKey];
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
        //: [USERFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [DisplayHelper album:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)album:(NSURL *)URL
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
    }
    //: return success;
    return success;

}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)should:(NSString *)ext
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

//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)filepathOrTvLocation:(NSString *)filename
{
    //: return [USERFileLocationHelper filepathForDir:(@"video")
    return [DisplayHelper tutorialAppear:([EquivalentData sharedInstance].kTextSculptureString)
                                     //: filename:filename];
                                     user:filename];
}


//: + (NSString *)getAppTempPath
+ (NSString *)compartment
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)sole: (NSString *)resouceName
{
    //: NSString *dir = [[USERFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[DisplayHelper quick] stringByAppendingPathComponent:resouceName];
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

//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)tutorialAppear:(NSString *)dirname
                    //: filename:(NSString *)filename
                    user:(NSString *)filename
{
    //: return [[USERFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[DisplayHelper sole:dirname] stringByAppendingPathComponent:filename];
}

//: + (NSString *)userDirectory
+ (NSString *)quick
{
    //: NSString *documentPath = [USERFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [DisplayHelper titles];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
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


//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)checkSumoMessage:(NSString *)filename
{
    //: return [USERFileLocationHelper filepathForDir:(@"image")
    return [DisplayHelper tutorialAppear:(@"image")
                                     //: filename:filename];
                                     user:filename];
}

//: @end
@end
//: __SAVE__ ignore_string [515.5]