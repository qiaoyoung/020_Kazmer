
#import <Foundation/Foundation.h>

@interface PloyData : NSObject

+ (instancetype)sharedInstance;

//: 附件下载错误
@property (nonatomic, copy) NSString *dream_cigarViewFormat;

//: 文件解码错误
@property (nonatomic, copy) NSString *k_titleUrl;

//: %@。error:%zd
@property (nonatomic, copy) NSString *userDeadlineTitle;

@end

@implementation PloyData

+ (instancetype)sharedInstance {
    static PloyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PloyDataToCache:(Byte *)data {
    int upwards = data[0];
    Byte haveExtra = data[1];
    int tableName = data[2];
    for (int i = tableName; i < tableName + upwards; i++) {
        int value = data[i] + haveExtra;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[tableName + upwards] = 0;
    return data + tableName;
}

- (NSString *)StringFromPloyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PloyDataToCache:data]];
}

//: 附件下载错误
- (NSString *)dream_cigarViewFormat {
    if (!_dream_cigarViewFormat) {
        Byte value[] = {18, 44, 9, 207, 148, 156, 226, 83, 40, 189, 109, 88, 184, 143, 138, 184, 140, 95, 188, 145, 145, 189, 104, 109, 188, 131, 131, 29};
        _dream_cigarViewFormat = [self StringFromPloyData:value];
    }
    return _dream_cigarViewFormat;
}

//: %@。error:%zd
- (NSString *)userDeadlineTitle {
    if (!_userDeadlineTitle) {
        Byte value[] = {14, 89, 3, 204, 231, 138, 39, 41, 12, 25, 25, 22, 25, 225, 204, 33, 11, 57};
        _userDeadlineTitle = [self StringFromPloyData:value];
    }
    return _userDeadlineTitle;
}

//: 文件解码错误
- (NSString *)k_titleUrl {
    if (!_k_titleUrl) {
        Byte value[] = {18, 9, 7, 210, 132, 64, 12, 221, 141, 126, 219, 178, 173, 223, 158, 154, 222, 151, 120, 224, 139, 144, 223, 166, 166, 57};
        _k_titleUrl = [self StringFromPloyData:value];
    }
    return _k_titleUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DogEarSub.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "DogEarSub.h"
//: #import "NTESMessageSerialization.h"
#import "OptionContentSerialization.h"
//: #import "NTESMessageModel.h"
#import "TitleMessageModel.h"
//: #import "FFFTimestampModel.h"
#import "EnableName.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"

//: @interface NTESMergeMessageDataSource ()
@interface DogEarSub ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) OptionContentSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation DogEarSub

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[OptionContentSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)page:(ShowImageEvent *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    pressed:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization image:filePath
                               //: encrypt:attachment.encrypted
                               rubric:attachment.encrypted
                              //: password:attachment.password
                              nim:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            send:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[PloyData sharedInstance].userDeadlineTitle,[PloyData sharedInstance].k_titleUrl.textIndex, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf path:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf tapAdd:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[PloyData sharedInstance].userDeadlineTitle,[PloyData sharedInstance].dream_cigarViewFormat.textIndex, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization image:filePath
                                       //: encrypt:attachment.encrypted
                                       rubric:attachment.encrypted
                                      //: password:attachment.password
                                      nim:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    send:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:[PloyData sharedInstance].userDeadlineTitle,[PloyData sharedInstance].k_titleUrl.textIndex, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf path:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf tapAdd:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)birdSEyeViewKey:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    TitleMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[TitleMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        TitleMessageModel *modelItem = (TitleMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        TitleMessageModel *target = [self exist:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (TitleMessageModel *)exist:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    TitleMessageModel *model = [[TitleMessageModel alloc] initWithTextDisplay:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (FFFTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (EnableName *)color:(NSTimeInterval)timestamp {
    //: FFFTimestampModel *ret = [[FFFTimestampModel alloc] init];
    EnableName *ret = [[EnableName alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<TitleMessageModel *> *)tapAdd:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf white:obj.timestamp];
            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            EnableName *timeModel = [weakSelf color:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TitleMessageModel *msgModel = [self exist:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf recent:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[TitleMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                TitleMessageModel *model = (TitleMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            EnableName *timeModel = [weakSelf color:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TitleMessageModel *msgModel = [self exist:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TitleMessageModel *msgModel = [self exist:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)recent:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self white:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)white:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)path:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[FFFMessageModel class]]) {
        if ([item isKindOfClass:[CentralProcessingUnitModel class]]) {
            //: message = [(FFFMessageModel *)item message];
            message = [(CentralProcessingUnitModel *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end