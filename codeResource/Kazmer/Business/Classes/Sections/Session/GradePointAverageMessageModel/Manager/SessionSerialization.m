
#import <Foundation/Foundation.h>
typedef struct {
    Byte misdemeanour;
    Byte *circulate;
    unsigned int excogitate;
    Byte sharedViewTop;
	int mystery;
} StopRedData;

NSString *StringFromStopRedData(StopRedData *data);


//: YYYYMMddhhmmssSSS
StopRedData kTitleDataString = (StopRedData){149, (Byte []){204, 204, 204, 204, 216, 216, 241, 241, 253, 253, 248, 248, 230, 230, 198, 198, 198, 156}, 17, 215, 200};

//: .txt
StopRedData kName_tapString = (StopRedData){243, (Byte []){221, 135, 139, 135, 45}, 4, 221, 65};

//: USER.message.serialization
StopRedData kName_placeString = (StopRedData){41, (Byte []){124, 122, 108, 123, 7, 68, 76, 90, 90, 72, 78, 76, 7, 90, 76, 91, 64, 72, 69, 64, 83, 72, 93, 64, 70, 71, 74}, 26, 212, 95};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionSerialization.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMessageSerialization.h"
#import "SessionSerialization.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import "USERFileUtil.h"
#import "ViewTeamUtil.h"
//: #import "USERMigrateHeader.h"
#import "ActionLabel.h"
//: #import "NSData+USER.h"
#import "NSData+Turn.h"

//: static dispatch_queue_t USERMessageSerializationQueue()
static dispatch_queue_t objectPoint()
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

//: @interface USERMessageSerialization ()
@interface SessionSerialization ()

//: @property (nonatomic, copy) NSString *targetFile;
@property (nonatomic, copy) NSString *targetFile;

//: @end
@end


//: @implementation USERMessageSerialization
@implementation SessionSerialization

//: #pragma mark - Export
#pragma mark - Export
//: - (NSString *)targetFile {
- (NSString *)targetFile {
    //: NSDate * date = [[NSDate alloc] init];
    NSDate * date = [[NSDate alloc] init];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: formatter.dateFormat = @"YYYYMMddhhmmssSSS";
    formatter.dateFormat = StringFromStopRedData(&kTitleDataString);
    //: NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:@".txt"];
    NSString *fileName = [[formatter stringFromDate:date] stringByAppendingString:StringFromStopRedData(&kName_tapString)];
    //: return [USERFileLocationHelper filepathForMergeForwardFile:fileName];
    return [DisplayHelper visualImage:fileName];
}

//: - (NSMutableArray <NSData *>*)messageRowData:(NSArray <NIMMessage *>*)messages {
- (NSMutableArray <NSData *>*)titleData:(NSArray <NIMMessage *>*)messages {
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

//: - (NSMutableArray <NIMMessage *>*)readRowDatasFromFile:(NSString *)file
- (NSMutableArray <NIMMessage *>*)message:(NSString *)file
                                               //: encrypt:(BOOL)encrypt
                                               description:(BOOL)encrypt
                                              //: password:(NSString *)password {
                                              option:(NSString *)password {

    //: NSMutableArray *ret = nil;
    NSMutableArray *ret = nil;
    //: NSString *fileString = [self readFileString:file encrypt:encrypt password:password];
    NSString *fileString = [self contentRegister:file takeInRecord:encrypt power:password];
    //: NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    NSArray *subStrings = [fileString componentsSeparatedByString:@"\n"];
    //: USERMigrateHeader *header = nil;
    ActionLabel *header = nil;
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
            //: header = [USERMigrateHeader initWithRawContent:headerData];
            header = [ActionLabel initWithPin:headerData];
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

//: - (NSString *)writeRowDatasToFile:(NSMutableArray *)datas
- (NSString *)recentBackground:(NSMutableArray *)datas
                          //: encrypt:(BOOL)encrypt
                          share:(BOOL)encrypt
                         //: password:(NSString *)password {
                         message:(NSString *)password {
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
            NSData *encryptData = [temp can:password];
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

//: - (NSData *)fileHeaderWithCount:(NSInteger)count {
- (NSData *)team:(NSInteger)count {
    //: USERMigrateHeader *header = [USERMigrateHeader initWithDefaultConfig];
    ActionLabel *header = [ActionLabel initWithTing];
    //: header.totalInfoCount = count;
    header.totalInfoCount = count;
    //: return [header toRawContent];
    return [header size];
}

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)compass:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       encodeContent:(BOOL)encrypt
      //: password:(NSString *)password
      encodeTo:(NSString *)password
    //: completion:(USERMessageEncodeResult)completion {
    statusSend:(USERMessageEncodeResult)completion {

    //: dispatch_async(USERMessageSerializationQueue(), ^{
    dispatch_async(objectPoint(), ^{
        //: NSMutableArray *datas = [NSMutableArray array];
        NSMutableArray *datas = [NSMutableArray array];
        //: __block NSError *error = nil;
        __block NSError *error = nil;

        //header
        //: NSData *headerRowData = [self fileHeaderWithCount:messages.count];
        NSData *headerRowData = [self team:messages.count];

        //: if (!headerRowData) {
        if (!headerRowData) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"USER.message.serialization" code:1000 userInfo:nil];
                error = [NSError errorWithDomain:StringFromStopRedData(&kName_placeString) code:1000 userInfo:nil];
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
        NSArray *messageRowData = [self titleData:messages];
        //: if (messageRowData.count == 0) {
        if (messageRowData.count == 0) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: error = [NSError errorWithDomain:@"USER.message.serialization" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:StringFromStopRedData(&kName_placeString) code:1001 userInfo:nil];
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
        NSString *file = [self recentBackground:datas share:encrypt message:password];
        //: if (file == nil) {
        if (file == nil) {
            //: error = [NSError errorWithDomain:@"USER.message.serialization" code:1002 userInfo:nil];
            error = [NSError errorWithDomain:StringFromStopRedData(&kName_placeString) code:1002 userInfo:nil];
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
        //: NSString *md5 = [USERFileUtil fileMD5:file];
        NSString *md5 = [ViewTeamUtil from:file];
        //: if (!md5) {
        if (!md5) {
            //delete
            //: [[NSFileManager defaultManager] removeItemAtPath:file error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:file error:nil];

            //error
            //: error = [NSError errorWithDomain:@"USER.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromStopRedData(&kName_placeString) code:1003 userInfo:nil];
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
        //: USERMessageSerializationInfo *info = [[USERMessageSerializationInfo alloc] init];
        ResultTargetPraise *info = [[ResultTargetPraise alloc] init];
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
- (void)styleCompletion:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       should:(BOOL)encrypt
      //: password:(NSString *)password
      encrypt:(NSString *)password
    //: completion:(USERMessageDecodeResult)completion {
    recordCompletion:(USERMessageDecodeResult)completion {
    //: dispatch_async(USERMessageSerializationQueue(), ^{
    dispatch_async(objectPoint(), ^{
        //: NSError *error = nil;
        NSError *error = nil;

        //: NSMutableArray *ret = [self readRowDatasFromFile:filePath encrypt:encrypt password:password];
        NSMutableArray *ret = [self message:filePath description:encrypt option:password];
        //: if (!ret) {
        if (!ret) {
            //: error = [NSError errorWithDomain:@"USER.message.serialization" code:1003 userInfo:nil];
            error = [NSError errorWithDomain:StringFromStopRedData(&kName_placeString) code:1003 userInfo:nil];
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


//: #pragma mark - Import
#pragma mark - Import
//: - (NSString *)readFileString:(NSString *)file
- (NSString *)contentRegister:(NSString *)file
                     //: encrypt:(BOOL)encrypt
                     takeInRecord:(BOOL)encrypt
                    //: password:(NSString *)password{
                    power:(NSString *)password{
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
            NSData *decryptData = [fileData ofWith:password];
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

//: @end
@end


//: @implementation USERMessageSerializationInfo
@implementation ResultTargetPraise

//: @end
@end

Byte *StopRedDataToByte(StopRedData *data) {
    if (data->sharedViewTop < 114) return data->circulate;
    for (int i = 0; i < data->excogitate; i++) {
        data->circulate[i] ^= data->misdemeanour;
    }
    data->circulate[data->excogitate] = 0;
    data->sharedViewTop = 23;
	if (data->excogitate >= 1) {
		data->mystery = data->circulate[0];
	}
    return data->circulate;
}

NSString *StringFromStopRedData(StopRedData *data) {
    return [NSString stringWithUTF8String:(char *)StopRedDataToByte(data)];
}
