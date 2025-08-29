
#import <Foundation/Foundation.h>

typedef struct {
    Byte countactAdd;
    Byte *monthError;
    unsigned int searchedPorch;
	int youngBird;
} StructNimData;

@interface NimData : NSObject

+ (instancetype)sharedInstance;

//: nim.demo.mergeforward.task
@property (nonatomic, copy) NSString *kNameHeavilyKeyData;

//: null
@property (nonatomic, copy) NSString *kNameSculptureData;

@end

@implementation NimData

//: null
- (NSString *)kNameSculptureData {
    if (!_kNameSculptureData) {
        StructNimData value = (StructNimData){138, (Byte []){228, 255, 230, 230, 79}, 4, 138};
        _kNameSculptureData = [self StringFromNimData:&value];
    }
    return _kNameSculptureData;
}

- (Byte *)NimDataToByte:(StructNimData *)data {
    for (int i = 0; i < data->searchedPorch; i++) {
        data->monthError[i] ^= data->countactAdd;
    }
    data->monthError[data->searchedPorch] = 0;
	if (data->searchedPorch >= 1) {
		data->youngBird = data->monthError[0];
	}
    return data->monthError;
}

//: nim.demo.mergeforward.task
- (NSString *)kNameHeavilyKeyData {
    if (!_kNameHeavilyKeyData) {
        StructNimData value = (StructNimData){86, (Byte []){56, 63, 59, 120, 50, 51, 59, 57, 120, 59, 51, 36, 49, 51, 48, 57, 36, 33, 55, 36, 50, 120, 34, 55, 37, 61, 46}, 26, 214};
        _kNameHeavilyKeyData = [self StringFromNimData:&value];
    }
    return _kNameHeavilyKeyData;
}

- (NSString *)StringFromNimData:(StructNimData *)data {
    return [NSString stringWithUTF8String:(char *)[self NimDataToByte:data]];
}

+ (instancetype)sharedInstance {
    static NimData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoonOff.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMergeForwardSession.h"
#import "MoonOff.h"
//: #import "USERMessageSerialization.h"
#import "SessionSerialization.h"
//: #import "USERMultiRetweetAttachment.h"
#import "SessionWith.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"

//: typedef void(^USERMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);
typedef void(^USERMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);

//: @interface USERMergeForwardSession ()
@interface MoonOff ()

//: @property (nonatomic, strong) NSMutableDictionary <NSNumber *, USERMergeForwardTask *> *tasks;
@property (nonatomic, strong) NSMutableDictionary <NSNumber *, FederalizeRecord *> *tasks;

//: @end
@end

//: @interface USERMergeForwardTask ()
@interface FederalizeRecord ()

//: @property (nonatomic, assign) uint64_t identifier;
@property (nonatomic, assign) uint64_t identifier;
//: @property (nonatomic, strong) USERMessageSerialization *serialize;
@property (nonatomic, strong) SessionSerialization *serialize;
//: @property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
@property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
//: @property (nonatomic, strong) USERMergeForwardProcess process;
@property (nonatomic, strong) USERMergeForwardProcess process;
//: @property (nonatomic, strong) USERMergeForwardTaskResult completion;
@property (nonatomic, strong) USERMergeForwardTaskResult completion;

//: @end
@end

//: @implementation USERMergeForwardSession
@implementation MoonOff
//: - (USERMergeForwardTask *)forwardTaskWithMessages:(NSMutableArray <NIMMessage *> *)messages
- (FederalizeRecord *)pastView:(NSMutableArray <NIMMessage *> *)messages
                                          //: process:(USERMergeForwardProcess)process
                                          messages:(USERMergeForwardProcess)process
                                       //: completion:(USERMergeForwardResult)completion {
                                       cover:(USERMergeForwardResult)completion {
    //: USERMergeForwardTask *task = [[USERMergeForwardTask alloc] init];
    FederalizeRecord *task = [[FederalizeRecord alloc] init];
    //: task.messages = messages;
    task.messages = messages;
    //: task.process = process;
    task.process = process;

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
    task.completion = ^(uint64_t identifier, NSError *error, NIMMessage *message) {
        //: if (completion) {
        if (completion) {
            //: completion(error, message);
            completion(error, message);
        }
        //: weakSelf.tasks[@(identifier)] = nil;
        weakSelf.tasks[@(identifier)] = nil;
    //: };
    };
    //: _tasks[@(task.identifier)] = task;
    _tasks[@(task.identifier)] = task;
    //: return task;
    return task;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _tasks = [NSMutableDictionary dictionary];
        _tasks = [NSMutableDictionary dictionary];
    }
    //: return self;
    return self;
}

//: @end
@end


//: @implementation USERMergeForwardTask
@implementation FederalizeRecord

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _identifier = (uint64_t)self;
        _identifier = (uint64_t)self;
        //: _serialize = [[USERMessageSerialization alloc] init];
        _serialize = [[SessionSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSMutableArray <USERMessageAbstract *> *)messageAbstract:(NSArray <NIMMessage *> *)messages {
- (NSMutableArray <ReckonAbstract *> *)index:(NSArray <NIMMessage *> *)messages {
    //: NSMutableArray <USERMessageAbstract *> *abstracts = [NSMutableArray array];
    NSMutableArray <ReckonAbstract *> *abstracts = [NSMutableArray array];
    //: for (NIMMessage *message in _messages) {
    for (NIMMessage *message in _messages) {
        //: if (abstracts.count == (2)) {
        if (abstracts.count == (2)) {
            //: break;
            break;
        }
        //: USERMessageAbstract *abstract = [USERMessageAbstract abstractWithMessage:message];
        ReckonAbstract *abstract = [ReckonAbstract team:message];



        //: if (abstract) {
        if (abstract) {
            //: [abstracts addObject:abstract];
            [abstracts addObject:abstract];
        }
    }
    //: return abstracts;
    return abstracts;
}

//: - (void)resume {
- (void)under {
    //: NSError *error = nil;
    NSError *error = nil;
    //: __block NIMMessage *message = nil;
    __block NIMMessage *message = nil;
    //: if (_messages.count == 0) {
    if (_messages.count == 0) {
        //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1000 userInfo:nil];
        error = [NSError errorWithDomain:[NimData sharedInstance].kNameHeavilyKeyData code:1000 userInfo:nil];
        //: if (_completion) {
        if (_completion) {
            //: _completion(_identifier, error, message);
            _completion(_identifier, error, message);
        }
        //: return;
        return;
    }

    //时间戳排序
    //: [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
    [_messages sortUsingComparator:^NSComparisonResult(NIMMessage *_Nonnull obj1, NIMMessage * _Nonnull obj2) {
        //: if (obj1.timestamp < obj2.timestamp) {
        if (obj1.timestamp < obj2.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        //: } else {
        } else {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
    //: }];
    }];

    //序列化
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *password = [self getRandomRCKey];
    NSString *password = [self team];
    //: [_serialize encode:_messages encrypt:YES password:password completion:^(NSError * _Nullable error, USERMessageSerializationInfo * _Nullable info) {
    [_serialize compass:_messages encodeContent:YES encodeTo:password statusSend:^(NSError * _Nullable error, ResultTargetPraise * _Nullable info) {
        //: if (error) {
        if (error) {
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        //: } else {
        } else {
            //: USERMultiRetweetAttachment *attach = [[USERMultiRetweetAttachment alloc] init];
            SessionWith *attach = [[SessionWith alloc] init];
            //: attach.fileName = info.filePath.lastPathComponent;
            attach.fileName = info.filePath.lastPathComponent;
            //: attach.md5 = info.md5;
            attach.md5 = info.md5;
            //: attach.compressed = info.compressed;
            attach.compressed = info.compressed;
            //: attach.encrypted = info.encrypted;
            attach.encrypted = info.encrypted;
            //: attach.password = info.password;
            attach.password = info.password;
            //: attach.abstracts = [weakSelf messageAbstract:weakSelf.messages];
            attach.abstracts = [weakSelf index:weakSelf.messages];
            //: if (attach.messageAbstract.count == 0) {
            if (attach.messageAbstract.count == 0) {
                //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:[NimData sharedInstance].kNameHeavilyKeyData code:1001 userInfo:nil];
            //: } else {;
            } else {;
                //show name
                //: NIMSession *fromSession = [weakSelf.messages firstObject].session;
                NIMSession *fromSession = [weakSelf.messages firstObject].session;
                //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
                CellClean *option = [[CellClean alloc] init];
                //: option.session = fromSession;
                option.session = fromSession;
                //: FFFKitInfo *info = nil;
                CancelTeamCorner *info = nil;
                //: if (fromSession.sessionType == NIMSessionTypeP2P) {
                if (fromSession.sessionType == NIMSessionTypeP2P) {
                    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    //: info = [[MyUserKit sharedKit].provider infoByUser:userId option:option];
                    info = [[Mortification text].provider tingVoice:userId keepingOption:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeTeam){
                } else if (fromSession.sessionType == NIMSessionTypeTeam){
                    //: info = [[MyUserKit sharedKit].provider infoByTeam:fromSession.sessionId option:option];
                    info = [[Mortification text].provider ability:fromSession.sessionId naturalEvent_strong:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                    //: info = [[MyUserKit sharedKit].provider infoBySuperTeam:fromSession.sessionId option:option];
                    info = [[Mortification text].provider cellList:fromSession.sessionId view:option];
                }
                //: attach.sessionName = info.showName ?: @"null";
                attach.sessionName = info.showName ?: [NimData sharedInstance].kNameSculptureData;
                //: attach.sessionId = fromSession.sessionId;
                attach.sessionId = fromSession.sessionId;

                //message
                //: message = [USERSessionMsgConverter msgWithMultiRetweetAttachment:attach];
                message = [TopConverter data:attach];
            }
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        }
    //: }];
    }];
}

//: -(NSString *)getRandomRCKey
-(NSString *)team
{
    //: char data[16] = {0};
    char data[16] = {0};
    //: for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    for (int x=0; x < sizeof(data); data[x++] = (char)('a' + (arc4random_uniform(26))));
    //: NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    NSString *randomStr = [[NSString alloc] initWithBytes:data length:sizeof(data) encoding:NSUTF8StringEncoding];
    //: NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    NSString *string = [NSString stringWithFormat:@"%@",randomStr];
    //: return string;
    return string;
}



//: @end
@end