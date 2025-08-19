
#import <Foundation/Foundation.h>

@interface ThoroughlyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ThoroughlyData

+ (instancetype)sharedInstance {
    static ThoroughlyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ThoroughlyDataToCache:(Byte *)data {
    int hoppingStrange = data[0];
    int veteran = data[1];
    for (int i = 0; i < hoppingStrange / 2; i++) {
        int begin = veteran + i;
        int end = veteran + hoppingStrange - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[veteran + hoppingStrange] = 0;
    return data + veteran;
}

- (NSString *)StringFromThoroughlyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ThoroughlyDataToCache:data]];
}  

//: nim.demo.mergeforward.task
- (NSString *)m_barIdent {
    /* static */ NSString *m_barIdent = nil;
    if (!m_barIdent) {
        Byte value[] = {26, 4, 242, 5, 107, 115, 97, 116, 46, 100, 114, 97, 119, 114, 111, 102, 101, 103, 114, 101, 109, 46, 111, 109, 101, 100, 46, 109, 105, 110, 228};
        m_barIdent = [self StringFromThoroughlyData:value];
    }
    return m_barIdent;
}

//: null
- (NSString *)notiSandwichIdent {
    /* static */ NSString *notiSandwichIdent = nil;
    if (!notiSandwichIdent) {
        Byte value[] = {4, 7, 3, 53, 50, 237, 136, 108, 108, 117, 110, 249};
        notiSandwichIdent = [self StringFromThoroughlyData:value];
    }
    return notiSandwichIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventImage.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeForwardSession.h"
#import "EventImage.h"
//: #import "NTESMessageSerialization.h"
#import "OptionContentSerialization.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"
//: #import "NTESSessionMsgConverter.h"
#import "BackgroundCover.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"

//: typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);
typedef void(^NTESMergeForwardTaskResult)(uint64_t identifier, NSError * _Nonnull error, NIMMessage * _Nonnull message);

//: @interface NTESMergeForwardSession ()
@interface EventImage ()

//: @property (nonatomic, strong) NSMutableDictionary <NSNumber *, NTESMergeForwardTask *> *tasks;
@property (nonatomic, strong) NSMutableDictionary <NSNumber *, LocationTask *> *tasks;

//: @end
@end

//: @interface NTESMergeForwardTask ()
@interface LocationTask ()

//: @property (nonatomic, assign) uint64_t identifier;
@property (nonatomic, assign) uint64_t identifier;
//: @property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
@property (nonatomic, strong) NSMutableArray <NIMMessage *> *messages;
//: @property (nonatomic, strong) NTESMergeForwardProcess process;
@property (nonatomic, strong) NTESMergeForwardProcess process;
//: @property (nonatomic, strong) NTESMergeForwardTaskResult completion;
@property (nonatomic, strong) NTESMergeForwardTaskResult completion;
//: @property (nonatomic, strong) NTESMessageSerialization *serialize;
@property (nonatomic, strong) OptionContentSerialization *serialize;

//: @end
@end

//: @implementation NTESMergeForwardSession
@implementation EventImage
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

//: - (NTESMergeForwardTask *)forwardTaskWithMessages:(NSMutableArray <NIMMessage *> *)messages
- (LocationTask *)present:(NSMutableArray <NIMMessage *> *)messages
                                          //: process:(NTESMergeForwardProcess)process
                                          forradOrCompletion:(NTESMergeForwardProcess)process
                                       //: completion:(NTESMergeForwardResult)completion {
                                       modelIcon:(NTESMergeForwardResult)completion {
    //: NTESMergeForwardTask *task = [[NTESMergeForwardTask alloc] init];
    LocationTask *task = [[LocationTask alloc] init];
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

//: @end
@end


//: @implementation NTESMergeForwardTask
@implementation LocationTask

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _identifier = (uint64_t)self;
        _identifier = (uint64_t)self;
        //: _serialize = [[NTESMessageSerialization alloc] init];
        _serialize = [[OptionContentSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)resume {
- (void)highlight {
    //: NSError *error = nil;
    NSError *error = nil;
    //: __block NIMMessage *message = nil;
    __block NIMMessage *message = nil;
    //: if (_messages.count == 0) {
    if (_messages.count == 0) {
        //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1000 userInfo:nil];
        error = [NSError errorWithDomain:[[ThoroughlyData sharedInstance] m_barIdent] code:1000 userInfo:nil];
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
    NSString *password = [self upColor];
    //: [_serialize encode:_messages encrypt:YES password:password completion:^(NSError * _Nullable error, NTESMessageSerializationInfo * _Nullable info) {
    [_serialize inputParent:_messages team:YES with:password link:^(NSError * _Nullable error, ValueSyllabusMessageInfo * _Nullable info) {
        //: if (error) {
        if (error) {
            //: if (weakSelf.completion) {
            if (weakSelf.completion) {
                //: weakSelf.completion(weakSelf.identifier, error, message);
                weakSelf.completion(weakSelf.identifier, error, message);
            }
        //: } else {
        } else {
            //: NTESMultiRetweetAttachment *attach = [[NTESMultiRetweetAttachment alloc] init];
            ShowImageEvent *attach = [[ShowImageEvent alloc] init];
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
            attach.abstracts = [weakSelf blueSharedLabel:weakSelf.messages];
            //: if (attach.messageAbstract.count == 0) {
            if (attach.messageAbstract.count == 0) {
                //: error = [NSError errorWithDomain:@"nim.demo.mergeforward.task" code:1001 userInfo:nil];
                error = [NSError errorWithDomain:[[ThoroughlyData sharedInstance] m_barIdent] code:1001 userInfo:nil];
            //: } else {;
            } else {;
                //show name
                //: NIMSession *fromSession = [weakSelf.messages firstObject].session;
                NIMSession *fromSession = [weakSelf.messages firstObject].session;
                //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
                CoverTingContent *option = [[CoverTingContent alloc] init];
                //: option.session = fromSession;
                option.session = fromSession;
                //: FFFKitInfo *info = nil;
                TingMessage *info = nil;
                //: if (fromSession.sessionType == NIMSessionTypeP2P) {
                if (fromSession.sessionType == NIMSessionTypeP2P) {
                    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
                    //: info = [[MyUserKit sharedKit].provider infoByUser:userId option:option];
                    info = [[ButtonKit sheerOption].provider past:userId skinColour_strong:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeTeam){
                } else if (fromSession.sessionType == NIMSessionTypeTeam){
                    //: info = [[MyUserKit sharedKit].provider infoByTeam:fromSession.sessionId option:option];
                    info = [[ButtonKit sheerOption].provider pressMedia:fromSession.sessionId sizeOption:option];
                //: } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                } else if (fromSession.sessionType == NIMSessionTypeSuperTeam) {
                    //: info = [[MyUserKit sharedKit].provider infoBySuperTeam:fromSession.sessionId option:option];
                    info = [[ButtonKit sheerOption].provider tiddler:fromSession.sessionId ting:option];
                }
                //: attach.sessionName = info.showName ?: @"null";
                attach.sessionName = info.showName ?: [[ThoroughlyData sharedInstance] notiSandwichIdent];
                //: attach.sessionId = fromSession.sessionId;
                attach.sessionId = fromSession.sessionId;

                //message
                //: message = [NTESSessionMsgConverter msgWithMultiRetweetAttachment:attach];
                message = [BackgroundCover surnameArray:attach];
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

//: - (NSMutableArray <NTESMessageAbstract *> *)messageAbstract:(NSArray <NIMMessage *> *)messages {
- (NSMutableArray <NameAbstract *> *)blueSharedLabel:(NSArray <NIMMessage *> *)messages {
    //: NSMutableArray <NTESMessageAbstract *> *abstracts = [NSMutableArray array];
    NSMutableArray <NameAbstract *> *abstracts = [NSMutableArray array];
    //: for (NIMMessage *message in _messages) {
    for (NIMMessage *message in _messages) {
        //: if (abstracts.count == (2)) {
        if (abstracts.count == (2)) {
            //: break;
            break;
        }
        //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithMessage:message];
        NameAbstract *abstract = [NameAbstract emptyMessage:message];



        //: if (abstract) {
        if (abstract) {
            //: [abstracts addObject:abstract];
            [abstracts addObject:abstract];
        }
    }
    //: return abstracts;
    return abstracts;
}

//: -(NSString *)getRandomRCKey
-(NSString *)upColor
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