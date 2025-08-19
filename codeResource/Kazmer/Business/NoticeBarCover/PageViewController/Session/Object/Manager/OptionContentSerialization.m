
#import <Foundation/Foundation.h>

NSString *StringFromBorrowTerriblyData(Byte *data);


//: .txt
Byte mUpStr[] = {26, 4, 40, 5, 166, 86, 156, 160, 156, 127};

//: YYYYMMddhhmmssSSS
Byte main_hoppingStr[] = {22, 17, 36, 10, 147, 129, 121, 6, 93, 8, 125, 125, 125, 125, 113, 113, 136, 136, 140, 140, 145, 145, 151, 151, 119, 119, 119, 200};

//: ntes.message.serialization
Byte mainShipEstablishmentMsg[] = {6, 26, 24, 14, 31, 17, 70, 208, 224, 31, 224, 26, 195, 247, 134, 140, 125, 139, 70, 133, 125, 139, 139, 121, 127, 125, 70, 139, 125, 138, 129, 121, 132, 129, 146, 121, 140, 129, 135, 134, 214};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OptionContentSerialization.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageSerialization.h"
#import "OptionContentSerialization.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import "NTESFileUtil.h"
#import "MaxUtil.h"
//: #import "NTESMigrateHeader.h"
#import "QuickInfo.h"
//: #import "NSData+NTES.h"
#import "NSData+Zone.h"

//: static dispatch_queue_t NTESMessageSerializationQueue()
static dispatch_queue_t serializationLocal()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.serialization.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.serialization.queue", 0);
    //: });
    });
    //: return queue;
    return queue;
}

//: @interface NTESMessageSerialization ()
@interface OptionContentSerialization ()

//: @property (nonatomic, copy) NSString *targetFile;
@property (nonatomic, copy) NSString *targetFile;

//: @end
@end


//: @implementation NTESMessageSerialization
@implementation OptionContentSerialization

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)inputParent:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       team:(BOOL)encrypt
      //: password:(NSString *)password
      with:(NSString *)password
    //: completion:(NTESMessageEncodeResult)completion {
    link:(NTESMessageEncodeResult)completion {

    //: dispatch_async(NTESMessageSerializationQueue(), ^{
    dispatch_async(serializationLocal(), ^{
        //: NSMutableArray *datas = [NSMutableArray array];
        NSMutableArray *datas = [NSMutableArray array];
        //: __block NSError *error = nil;
        __block NSError *error = nil;

        //header
        //: NSData *headerRowData = [self fileHeaderWithCount:messages.count];
        NSData *headerRowData = [self consuetude:messages.count];

        //: if (!headerRowData) {
        if (!headerRowData) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1000 userInfo:nil];
                error = [NSError errorWithDomain:StringFromBorrowTerriblyData(mainShipEstablishmentMsg) code:1000 userInfo:nil];
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }
        //: [datas addObject:headerRowData];
        [datas addObject:headerRowData];

        //message
        //: NSArray *messageRowData = [self messageRowData:messages];
        NSArray *messageRowData = [self notRow:messages];
        //: if (messageRowData.count == 0) {
        if (messageRowData.count == 0) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:StringFromBorrowTerriblyData(mainShipEstablishmentMsg) code:1001 userInfo:nil];
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }
        //: [datas addObjectsFromArray:messageRowData];
        [datas addObjectsFromArray:messageRowData];

        //write
        //: NSString *file = [self writeRowDatasToFile:datas encrypt:encrypt password:password];
        NSString *file = [self location:datas name:encrypt can:password];
        //: if (file == nil) {
        if (file == nil) {
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1002 userInfo:nil];
            error = [NSError errorWithDomain:StringFromBorrowTerriblyData(mainShipEstablishmentMsg) code:1002 userInfo:nil];
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }

        //md5
        //: NSString *md5 = [NTESFileUtil fileMD5:file];
        NSString *md5 = [MaxUtil counterchange:file];
        //: if (!md5) {
        if (!md5) {
            //delete
            //: [[NSFileManager defaultManager] removeItemAtPath:file error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:file error:nil];

            //error
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromBorrowTerriblyData(mainShipEstablishmentMsg) code:1003 userInfo:nil];
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (completion) {
                if (completion) {
                    //: completion(error, nil);
                    completion(error, nil);
                }
            //: });
            });
            //: return;
            return;
        }

        //callback
        //: NTESMessageSerializationInfo *info = [[NTESMessageSerializationInfo alloc] init];
        ValueSyllabusMessageInfo *info = [[ValueSyllabusMessageInfo alloc] init];
        //: info.filePath = file;
        info.filePath = file;
        //: info.md5 = md5;
        info.md5 = md5;
        //: info.encrypted = YES;
        info.encrypted = YES;
        //: info.password = password;
        info.password = password;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion) {
            if (completion) {
                //: completion(error, info);
                completion(error, info);
            }
        //: });
        });
    //: });
    });

}

//: - (void)decode:(NSString *)filePath
- (void)image:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       rubric:(BOOL)encrypt
      //: password:(NSString *)password
      nim:(NSString *)password
    //: completion:(NTESMessageDecodeResult)completion {
    send:(NTESMessageDecodeResult)completion {
    //: dispatch_async(NTESMessageSerializationQueue(), ^{
    dispatch_async(serializationLocal(), ^{
        //: NSError *error = nil;
        NSError *error = nil;

        //: NSMutableArray *ret = [self readRowDatasFromFile:filePath encrypt:encrypt password:password];
        NSMutableArray *ret = [self view:filePath be:encrypt readReply:password];
        //: if (!ret) {
        if (!ret) {
            //: error = [NSError errorWithDomain:@"ntes.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromBorrowTerriblyData(mainShipEstablishmentMsg) code:1003 userInfo:nil];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion) {
            if (completion) {
                //: completion(error, ret);
                completion(error, ret);
            }
        //: });
        });
    //: });
    });
}

//: #pragma mark - Export
#pragma mark - Export
//: - (NSString *)targetFile {
- (NSString *)targetFile {
    //: NSDate * date = [[NSDate alloc] init];
    NSDate * date = [[NSDate alloc] init];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: formatter.dateFormat = @"YYYYMMddhhmmssSSS";
    formatter.dateFormat = StringFromBorrowTerriblyData(main_hoppingStr);
    //: NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:@".txt"];
    NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:StringFromBorrowTerriblyData(mUpStr)];
    //: return [NTESFileLocationHelper filepathForMergeForwardFile:fileName];
    return [RegisterColor nameFile:fileName];
}

//: - (NSData *)fileHeaderWithCount:(NSInteger)count {
- (NSData *)consuetude:(NSInteger)count {
    //: NTESMigrateHeader *header = [NTESMigrateHeader initWithDefaultConfig];
    QuickInfo *header = [QuickInfo initWithBefore];
    //: header.totalInfoCount = count;
    header.totalInfoCount = count;
    //: return [header toRawContent];
    return [header digitizer];
}

//: - (NSMutableArray <NSData *>*)messageRowData:(NSArray <NIMMessage *>*)messages {
- (NSMutableArray <NSData *>*)notRow:(NSArray <NIMMessage *>*)messages {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: NSData *data = [[NIMSDK sharedSDK].conversationManager encodeMessageToData:obj];
        NSData *data = [[NIMSDK sharedSDK].conversationManager encodeMessageToData:obj];
        //: if (data) {
        if (data) {
            //: [ret addObject:data];
            [ret addObject:data];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (NSString *)writeRowDatasToFile:(NSMutableArray *)datas
- (NSString *)location:(NSMutableArray *)datas
                          //: encrypt:(BOOL)encrypt
                          name:(BOOL)encrypt
                         //: password:(NSString *)password {
                         can:(NSString *)password {
    //: NSString *filePath = [self targetFile];
    NSString *filePath = [self targetFile];
    //: FILE *fp = fopen([filePath UTF8String], "wb");
    FILE *fp = fopen([filePath UTF8String], "wb");
    //: if (!fp) {
    if (!fp) {
        //: return nil;
        return nil;
    }
    //: NSMutableData *temp = [NSMutableData data];
    NSMutableData *temp = [NSMutableData data];
    //: NSString *newlineStr = @"\n";
    NSString *newlineStr = @"\n";
    //: NSData *newline = [newlineStr dataUsingEncoding:NSUTF8StringEncoding];
    NSData *newline = [newlineStr dataUsingEncoding:NSUTF8StringEncoding];
    //: [datas enumerateObjectsUsingBlock:^(NSData *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [datas enumerateObjectsUsingBlock:^(NSData *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: [temp appendData:obj];
        [temp appendData:obj];
        //: [temp appendData:newline];
        [temp appendData:newline];
    //: }];
    }];

    //: if (temp.length != 0) {
    if (temp.length != 0) {
        //: if (encrypt) {
        if (encrypt) {
            //: NSData *encryptData = [temp rc4EncryptWithKey:password];
            NSData *encryptData = [temp status:password];
            //: fwrite(encryptData.bytes, 1, encryptData.length, fp);
            fwrite(encryptData.bytes, 1, encryptData.length, fp);
        //: } else {
        } else {
            //: fwrite(temp.bytes, 1, temp.length, fp);
            fwrite(temp.bytes, 1, temp.length, fp);
        }
        //: [temp resetBytesInRange:NSMakeRange(0, temp.length)];
        [temp resetBytesInRange:NSMakeRange(0, temp.length)];
        //: [temp setLength:0];
        [temp setLength:0];
    }

    //: fclose(fp);
    fclose(fp);
    //: return filePath;
    return filePath;
}

//: #pragma mark - Import
#pragma mark - Import
//: - (NSString *)readFileString:(NSString *)file
- (NSString *)gildTheLily:(NSString *)file
                     //: encrypt:(BOOL)encrypt
                     standard:(BOOL)encrypt
                    //: password:(NSString *)password{
                    ting:(NSString *)password{
    //: FILE *fp = NULL;
    FILE *fp = NULL;
    //: char szBlock[1024*100] = {0};
    char szBlock[1024*100] = {0};
    //: size_t len = 0;
    size_t len = 0;
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];

    //: fp = fopen(file.UTF8String, "r");
    fp = fopen(file.UTF8String, "r");
    //: if (fp == NULL) {
    if (fp == NULL) {
        //: return nil;
        return nil;
    }

    //: while (!feof(fp)) {
    while (!feof(fp)) {
        //: len = fread(szBlock, 1, sizeof(szBlock), fp);
        len = fread(szBlock, 1, sizeof(szBlock), fp);
        //: NSData *fileData = [NSData dataWithBytes:szBlock length:len];
        NSData *fileData = [NSData dataWithBytes:szBlock length:len];
        //: if (encrypt) {
        if (encrypt) {
            //: NSData *decryptData = [fileData rc4DecryptWithKey:password];
            NSData *decryptData = [fileData show:password];
            //: NSString *decryptStr = [[NSString alloc] initWithData:decryptData encoding:NSUTF8StringEncoding];
            NSString *decryptStr = [[NSString alloc] initWithData:decryptData encoding:NSUTF8StringEncoding];
            //: if (decryptStr) {
            if (decryptStr) {
                //: [ret appendString:decryptStr];
                [ret appendString:decryptStr];
            }
        //: } else {
        } else {
            //: NSString *fileStr = [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
            NSString *fileStr = [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
            //: if (fileStr) {
            if (fileStr) {
                //: [ret appendString:fileStr];
                [ret appendString:fileStr];
            }
        }
    }

    //: fclose(fp);
    fclose(fp);
    //: return ret;
    return ret;
}


//: - (NSMutableArray <NIMMessage *>*)readRowDatasFromFile:(NSString *)file
- (NSMutableArray <NIMMessage *>*)view:(NSString *)file
                                               //: encrypt:(BOOL)encrypt
                                               be:(BOOL)encrypt
                                              //: password:(NSString *)password {
                                              readReply:(NSString *)password {

    //: NSMutableArray *ret = nil;
    NSMutableArray *ret = nil;
    //: NSString *fileString = [self readFileString:file encrypt:encrypt password:password];
    NSString *fileString = [self gildTheLily:file standard:encrypt ting:password];
    //: NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    //: NTESMigrateHeader *header = nil;
    QuickInfo *header = nil;
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: if (subStrings.count == 0) {
    if (subStrings.count == 0) {
        //: return ret;
        return ret;
    }

    //: for (int i = 0; i < subStrings.count; i++) {
    for (int i = 0; i < subStrings.count; i++) {
        //: NSString *jsonString = subStrings[i];
        NSString *jsonString = subStrings[i];
        //: if (i == 0) {
        if (i == 0) {
            //: NSData *headerData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSData *headerData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            //: header = [NTESMigrateHeader initWithRawContent:headerData];
            header = [QuickInfo initWithText:headerData];
            //: if (header == nil) {
            if (header == nil) {
                //: break;
                break;
            }
        //: } else {
        } else {
            //: if (count++ == header.totalInfoCount) {
            if (count++ == header.totalInfoCount) {
                //: break;
                break;
            }
            //: if (!ret) {
            if (!ret) {
                //: ret = [NSMutableArray array];
                ret = [NSMutableArray array];
            }
            //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            //: NIMMessage *message = [[NIMSDK sharedSDK].conversationManager decodeMessageFromData:data];
            NIMMessage *message = [[NIMSDK sharedSDK].conversationManager decodeMessageFromData:data];
            //: if (message) {
            if (message) {
                //: [ret addObject:message];
                [ret addObject:message];
            }
        }
    }
    //: return ret;
    return ret;
}

//: @end
@end


//: @implementation NTESMessageSerializationInfo
@implementation ValueSyllabusMessageInfo

//: @end
@end

Byte * BorrowTerriblyDataToCache(Byte *data) {
    int modify = data[0];
    int survivalWorkplace = data[1];
    Byte convince = data[2];
    int redundant = data[3];
    if (!modify) return data + redundant;
    for (int i = redundant; i < redundant + survivalWorkplace; i++) {
        int value = data[i] - convince;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[redundant + survivalWorkplace] = 0;
    return data + redundant;
}

NSString *StringFromBorrowTerriblyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BorrowTerriblyDataToCache(data)];
}
