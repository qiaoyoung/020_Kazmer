
#import <Foundation/Foundation.h>

typedef struct {
    Byte showerStone;
    Byte *championName;
    unsigned int exhaustivelyGuidance;
	int terriblyBow;
	int violence;
} StructDeveloperData;

@interface DeveloperData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DeveloperData

+ (instancetype)sharedInstance {
    static DeveloperData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DeveloperDataToByte:(StructDeveloperData *)data {
    for (int i = 0; i < data->exhaustivelyGuidance; i++) {
        data->championName[i] ^= data->showerStone;
    }
    data->championName[data->exhaustivelyGuidance] = 0;
	if (data->exhaustivelyGuidance >= 2) {
		data->terriblyBow = data->championName[0];
		data->violence = data->championName[1];
	}
    return data->championName;
}

- (NSString *)StringFromDeveloperData:(StructDeveloperData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeveloperDataToByte:data]];
}

//: video
- (NSString *)dreamRegulationPowerPath {
    /* static */ NSString *dreamRegulationPowerPath = nil;
    if (!dreamRegulationPowerPath) {
        StructDeveloperData value = (StructDeveloperData){48, (Byte []){70, 89, 84, 85, 95, 6}, 5, 145, 75};
        dreamRegulationPowerPath = [self StringFromDeveloperData:&value];
    }
    return dreamRegulationPowerPath;
}

//: image
- (NSString *)dream_propertyValue {
    /* static */ NSString *dream_propertyValue = nil;
    if (!dream_propertyValue) {
        StructDeveloperData value = (StructDeveloperData){135, (Byte []){238, 234, 230, 224, 226, 229}, 5, 126, 96};
        dream_propertyValue = [self StringFromDeveloperData:&value];
    }
    return dream_propertyValue;
}

//: merge
- (NSString *)mBowStr {
    /* static */ NSString *mBowStr = nil;
    if (!mBowStr) {
        StructDeveloperData value = (StructDeveloperData){57, (Byte []){84, 92, 75, 94, 92, 78}, 5, 235, 58};
        mBowStr = [self StringFromDeveloperData:&value];
    }
    return mBowStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegisterColor.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "FFFConfig.h"
#import "RecordInput.h"

//: @interface NTESFileLocationHelper ()
@interface RegisterColor ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)completeTeam: (NSString *)dirname size: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation RegisterColor
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)kind:(NSURL *)URL
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
//: + (NSString *)getAppDocumentPath
+ (NSString *)capture
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
        NSString *appKey = [[RecordInput file] appKey];
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
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [RegisterColor kind:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)inscription
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)hull
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [RegisterColor capture];
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

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)priceTag: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[RegisterColor hull] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)optionDate:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [RegisterColor completeTeam:([[DeveloperData sharedInstance] dreamRegulationPowerPath])
                                     //: filename:filename];
                                     size:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)be:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [RegisterColor completeTeam:([[DeveloperData sharedInstance] dream_propertyValue])
                                     //: filename:filename];
                                     size:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)nameFile:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [RegisterColor completeTeam:([[DeveloperData sharedInstance] mBowStr])
                                     //: filename:filename];
                                     size:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)exceptLast:(NSString *)ext
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
+ (NSString *)completeTeam:(NSString *)dirname
                    //: filename:(NSString *)filename
                    size:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[RegisterColor priceTag:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end