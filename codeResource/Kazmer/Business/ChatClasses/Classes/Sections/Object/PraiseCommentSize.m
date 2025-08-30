
#import <Foundation/Foundation.h>

@interface UnitData : NSObject

+ (instancetype)sharedInstance;

//: HEIC
@property (nonatomic, copy) NSString *kNameResearchValue;

@end

@implementation UnitData

+ (instancetype)sharedInstance {
    static UnitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)UnitDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)UnitDataToCache:(Byte *)data {
    int etchCriticism = data[0];
    Byte privilege = data[1];
    int rated = data[2];
    for (int i = rated; i < rated + etchCriticism; i++) {
        int value = data[i] - privilege;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[rated + etchCriticism] = 0;
    return data + rated;
}

- (NSString *)StringFromUnitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self UnitDataToCache:data]];
}

//: HEIC
- (NSString *)kNameResearchValue {
    if (!_kNameResearchValue) {
		NSArray<NSString *> *origin = @[@"4", @"93", @"6", @"161", @"142", @"165", @"165", @"162", @"166", @"160", @"211"];
		NSData *data = [UnitData UnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameResearchValue = [self StringFromUnitData:value];
    }
    return _kNameResearchValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteraciton.m
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionInteractorImpl.h"
#import "PraiseCommentSize.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFSessionTableAdapter.h"
#import "FinancialCenterAdapter.h"
//: #import "FFFKitMediaFetcher.h"
#import "KitFetcher.h"
//: #import "FFFMessageMaker.h"
#import "ShouldMaker.h"
//: #import "FFFKitAudioCenter.h"
#import "CommixCenter.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "ControlInside.h"
//: #import "UIImage+SNCompress.h"
#import "UIImage+Display.h"

//: static const void * const USERDispatchMessageDataPrepareSpecificKey = &USERDispatchMessageDataPrepareSpecificKey;
static const void * const mSessionName = &mSessionName;

//: typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);
typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);

//: dispatch_queue_t USERMessageDataPrepareQueue()
dispatch_queue_t statusArray()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.queue", 0);
        //: dispatch_queue_set_specific(queue, USERDispatchMessageDataPrepareSpecificKey, (void *)USERDispatchMessageDataPrepareSpecificKey, NULL);
        dispatch_queue_set_specific(queue, mSessionName, (void *)mSessionName, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: @interface FFFSessionInteractorImpl()<NIMMediaManagerDelegate>
@interface PraiseCommentSize()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,strong) id<FFFSessionConfig> sessionConfig;
@property (nonatomic,strong) id<ColorConfig> sessionConfig;

//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) KitFetcher *mediaFetcher;

//: @property (nonatomic,strong) NSMutableArray *pendingChatroomModels;
@property (nonatomic,strong) NSMutableArray *pendingChatroomModels;

//: @property (nonatomic,strong) NSMutableArray *pendingAudioMessages;
@property (nonatomic,strong) NSMutableArray *pendingAudioMessages;

//: @property (nonatomic,assign) NIMKitSessionState sessionState;
@property (nonatomic,assign) NIMKitSessionState sessionState;

//: @property (nonatomic,strong) NIMMessage *referenceMessage;
@property (nonatomic,strong) NIMMessage *referenceMessage;

//: @end
@end

//: @implementation FFFSessionInteractorImpl
@implementation PraiseCommentSize

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithCrop:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig
                         dismiss:(id<ColorConfig>)sessionConfig
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: [self addListener];
        [self fromLabel];
    }
    //: return self;
    return self;
}


//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [self removeListenner];
    [self messageVoiceListenner];
}

//: - (NSArray *)items
- (NSArray *)textDevice
{
    //: return [self.dataSource items];
    return [self.dataSource title];
}

//: - (void)markRead:(BOOL)needMarkDataModel
- (void)block:(BOOL)needMarkDataModel
{
    //: if ([self shouldAutoMarkRead])
    if ([self facility])
    {
        //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
        [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];

        //: if ([self shouldHandleReceipt])
        if ([self messageSize])
        {
            //: [self sendMessageReceipt:self.items];
            [self of:self.textDevice];
        }

        //: if (needMarkDataModel)
        if (needMarkDataModel)
        {
            //: [self markReadInDataModel];
            [self accountingData];
        }
    }
}

//: - (void)markReadInDataModel {
- (void)accountingData {
    //: for (id model in [self items]) {
    for (id model in [self textDevice]) {
        //: if ([model isKindOfClass:[FFFMessageModel class]]) {
        if ([model isKindOfClass:[CleanDoing class]]) {
            //: FFFMessageModel *messageModel = (FFFMessageModel *)model;
            CleanDoing *messageModel = (CleanDoing *)model;
            //: if (messageModel.message.status == NIMMessageStatusNone) {
            if (messageModel.message.status == NIMMessageStatusNone) {
                //: messageModel.message.status = NIMMessageStatusRead;
                messageModel.message.status = NIMMessageStatusRead;
            }
        }
    }
}


//: - (void)addMessages:(NSArray *)messages
- (void)image:(NSArray *)messages
{
    //: NIMMessage *message = messages.firstObject;
    NIMMessage *message = messages.firstObject;
    //: if (message.session.sessionType == NIMSessionTypeChatroom) {
    if (message.session.sessionType == NIMSessionTypeChatroom) {
        //: [self addChatroomMessages:messages];
        [self imageSession:messages];
    //: }else{
    }else{
        //: [self addNormalMessages:messages];
        [self withRange:messages];
    }
}

//: - (void)insertMessages:(NSArray *)messages
- (void)managerMessages:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        CleanDoing *model = [[CleanDoing alloc] initWithLayer:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(disabling:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig disabling:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(shadowContent)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig shadowContent];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(moreBar)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig moreBar];
        }

        //: if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
        if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
            //撤回消息过滤
        //: }else{
        }else{
            //: [models addObject:model];
            [models addObject:model];
        }
    }

    //: NIMSessionMessageOperateResult *result = [self.dataSource insertMessageModels:models];
    CropTitleResult *result = [self.dataSource topView:models];
    //: [self refreshAllChatExtendDatasByModels:models completion:nil];
    [self title:models by:nil];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout green:result.indexpaths topOpen:YES];
}

//: - (void)addNormalMessages:(NSArray *)messages
- (void)withRange:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if (message.isDeleted)
        if (message.isDeleted)
        {
            //: continue;
            continue;
        }
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        CleanDoing *model = [[CleanDoing alloc] initWithLayer:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(disabling:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig disabling:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(shadowContent)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig shadowContent];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(moreBar)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig moreBar];
        }


        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]]; 
        [self secret:[self remote:message]]; // 刷新父消息
        //: [self refreshAllChatExtendDatasByModel:model completion:nil]; 
        [self color:model media:nil]; // 刷新本条消息

        //: [models addObject:model];
        [models addObject:model];
    }
    //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:models];
    CropTitleResult *result = [self.dataSource infoWith:models];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout green:result.indexpaths topOpen:YES];
}

//: - (void)addChatroomMessages:(NSArray *)messages
- (void)imageSession:(NSArray *)messages
{
    //: if (!self.pendingChatroomModels) {
    if (!self.pendingChatroomModels) {
        //: self.pendingChatroomModels = [[NSMutableArray alloc] init];
        self.pendingChatroomModels = [[NSMutableArray alloc] init];
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(USERMessageDataPrepareQueue(), ^{
    dispatch_async(statusArray(), ^{
        //: NSMutableArray *models = [[NSMutableArray alloc] init];
        NSMutableArray *models = [[NSMutableArray alloc] init];
        //: for (NIMMessage *message in messages)
        for (NIMMessage *message in messages)
        {
            //: if (message.isDeleted)
            if (message.isDeleted)
            {
                //: continue;
                continue;
            }
            //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
            CleanDoing *model = [[CleanDoing alloc] initWithLayer:message];
            //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(disabling:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig disabling:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(shadowContent)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig shadowContent];
            }

            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(moreBar)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig moreBar];
            }

            //: [weakSelf.layout calculateContent:model];
            [weakSelf.layout contentShow:model];
            //: [models addObject:model];
            [models addObject:model];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            //: [weakSelf processChatroomMessageModels];
            [weakSelf read];
        //: });
        });
    //: });
    });
}

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message
- (CleanDoing *)date:(NIMMessage *)message
{
    //: FFFMessageModel *model = [self findMessageModel:message];
    CleanDoing *model = [self telegram:message];
    //: if (model) {
    if (model) {
        //: NIMSessionMessageOperateResult *result = [self.dataSource deleteMessageModel:model];
        CropTitleResult *result = [self.dataSource imageModel:model];
        //: [self.layout remove:result.indexpaths];
        [self.layout paged:result.indexpaths];

        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasBySubModel:model completion:nil];
        [self independentImageSize:model pastTotaleractorHandler:nil];
    }
    //: return model;
    return model;
}

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message
- (CleanDoing *)valueInfo:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return nil;
        return nil;
    }

    //: FFFMessageModel *model = [self findMessageModel:message];
    CleanDoing *model = [self telegram:message];
    //: if (model)
    if (model)
    {
        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]];
        [self secret:[self remote:message]];
        //: [self refreshAllChatExtendDatasByModel:model
        [self color:model
                                  //: completion:nil];
                                  media:nil];
        //: NIMSessionMessageOperateResult *result = [self.dataSource updateMessageModel:model];
        CropTitleResult *result = [self.dataSource modify:model];
        //: NSInteger index = [result.indexpaths.firstObject row];
        NSInteger index = [result.indexpaths.firstObject row];
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        //: [self safelyReloadRowAtIndexPath:indexPath];
        [self text:indexPath];
    }
    //: return model;
    return model;
}

//: - (void)addPinForMessage:(NIMMessage *)message
- (void)pictureMessage:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource addPinForMessage:message callback:^(NSError *error) {
    [self.dataSource of:message beginDateWith:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself valueInfo:message];
    //: }];
    }];
}

//: - (void)removePinForMessage:(NIMMessage *)message
- (void)object:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource removePinForMessage:message callback:^(NSError *error) {
    [self.dataSource drop:message show:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself valueInfo:message];
    //: }];
    }];
}

//: - (void)setSessionState:(NIMKitSessionState)sessionState {
- (void)setSessionState:(NIMKitSessionState)sessionState {
    //: if (_sessionState != sessionState) {
    if (_sessionState != sessionState) {
        //: [self.dataSource refreshMessageModelShowSelect:(sessionState == NIMKitSessionStateSelect)];
        [self.dataSource way:(sessionState == NIMKitSessionStateSelect)];
        //: [self.layout reloadTable];
        [self.layout upsetLast];
        //: _sessionState = sessionState;
        _sessionState = sessionState;
    }
}

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message
- (CleanDoing *)telegram:(NIMMessage *)message
{
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: return [self.dataSource findModel:message];
        return [self.dataSource need:message];
    }
    //: return nil;
    return nil;
}

//: - (NSInteger)findMessageIndex:(NIMMessage *)message {
- (NSInteger)turnIndex:(NIMMessage *)message {
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        CleanDoing *model = [[CleanDoing alloc] initWithLayer:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(disabling:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig disabling:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(shadowContent)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig shadowContent];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(moreBar)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig moreBar];
        }

        //: return [self.dataSource indexAtModelArray:model];
        return [self.dataSource checkion:model];
    }
    //: return -1;
    return -1;
}

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)view:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldHandleReceipt])
    if ([self messageSize])
    {
        //: NSDictionary *models = [self.dataSource checkReceipts:receipts];
        NSDictionary *models = [self.dataSource child:receipts];
        //: for (NSNumber *index in models.allKeys) {
        for (NSNumber *index in models.allKeys) {
            //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            //: [self safelyReloadRowAtIndexPath:indexPath];
            [self text:indexPath];
        }
    }
}

//: - (BOOL)shouldHandleReceipt
- (BOOL)messageSize
{
    //: return [self.sessionConfig respondsToSelector:@selector(shouldHandleReceipt)] &&
    return [self.sessionConfig respondsToSelector:@selector(messageSize)] &&
    //: [self.sessionConfig shouldHandleReceipt];
    [self.sessionConfig messageSize];
}

//: - (void)markAllMessagesRead
- (void)previous
{
    //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
    [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
}

//: - (void)sendMessageReceipt:(NSArray *)messages
- (void)of:(NSArray *)messages
{
    //: [self.dataSource sendMessageReceipt:messages];
    [self.dataSource team:messages];
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)state:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion
             at:(void(^)(NSError *error))completion
{
    //: NIMMessage *message = self.referenceMessage;
    NIMMessage *message = self.referenceMessage;
    //: if (message)
    if (message)
    {
        //: [self addQuickComment:comment
        [self pressDownEnable:comment
                    //: toMessage:message
                    my:message
                   //: completion:^(NSError *error)
                   outInfo:^(NSError *error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
        //: }];
        }];
        //: self.referenceMessage = nil;
        self.referenceMessage = nil;
    }
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)pressDownEnable:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)message
              my:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             outInfo:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
                                                //: toMessage:message
                                                toMessage:message
                                               //: completion:^(NSError * _Nullable error)
                                               completion:^(NSError * _Nullable error)
    {
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf referImage:message preface:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)fastPress:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          speedy:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             instance:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
                                                  //: completion:^(NSError * _Nullable error)
                                                  completion:^(NSError * _Nullable error)
    {
        //: weakSelf.referenceMessage = nil;
        weakSelf.referenceMessage = nil;
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf referImage:message preface:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)resetLayout
- (void)publication
{
    //: [self.layout resetLayout];
    [self.layout standard];
}

//: - (void)changeLayout:(CGFloat)inputHeight
- (void)option:(CGFloat)inputHeight
{
    //: [self.layout changeLayout:inputHeight];
    [self.layout month:inputHeight];
}

//: - (void)cleanCache
- (void)scrubbedMessage
{
    //: [self.dataSource cleanCache];
    [self.dataSource cell];
}


//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler
- (void)center:(void (^)(NSArray *messages, NSError *error))handler
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.dataSource loadHistoryMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource send:^(NSInteger index, NSArray *messages, NSError *error) {
//        [SVProgressHUD dismiss];
        //: if (messages.count) {
        if (messages.count) {

            //: if (wself.session.sessionType != NIMSessionTypeChatroom) {
            if (wself.session.sessionType != NIMSessionTypeChatroom) {
                //: [wself refreshAllAfterFetchCommentsByMessages:messages];
                [wself repel:messages];
            }

            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(phaetonShadow)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.phaetonShadow) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource label:messages];
            }
        }
        //: if (handler) {
        if (handler) {
            //: handler(messages,error);
            handler(messages,error);
        }
    //: }];
    }];
}

//: - (void)pullUp {
- (void)attract {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(didPullUpMessageData)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(textMessage)]) {
        //: [self.delegate didPullUpMessageData];
        [self.delegate textMessage];
    }
}

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler {
- (void)info:(void(^)(NSArray *messages, NSError *error))handler {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource loadNewMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource icon:^(NSInteger index, NSArray *messages, NSError *error) {
        //: if (messages.count) {
        if (messages.count) {
            //: [wself.layout layoutAfterRefresh];
            [wself.layout user];
            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(phaetonShadow)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.phaetonShadow) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource label:messages];
            }
        }

        //: [wself refreshAllAfterFetchCommentsByMessages:messages];
        [wself repel:messages];

        //: if (handler) {
        if (handler) {
            //: handler(messages, error);
            handler(messages, error);
        }
    //: }];
    }];
}

//: - (void)resetMessages:(void (^)(NSError *error))handler
- (void)cellMessages:(void (^)(NSError *error))handler
{
//    [SVProgressHUD show];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: __block NSError *e = nil;
    __block NSError *e = nil;
    //: dispatch_group_t group = dispatch_group_create();
    dispatch_group_t group = dispatch_group_create();

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self.dataSource replyMessages:^(NSError *error, NSArray *models) {
        //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
        [weakSelf contentCreate:models];

        //: e = error;
        e = error;
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self loadMessagePins:^(NSError *error) {
    [self mark:^(NSError *error) {
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{

        //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
        if([weakSelf.delegate respondsToSelector:@selector(oldWith)])
        {
            //: [weakSelf.delegate didFetchMessageData];
            [weakSelf.delegate oldWith];
            //: if (handler) {
            if (handler) {
                //: handler(e);
                handler(e);
            }
        }
    //: });
    });

//    [SVProgressHUD dismiss];

}

//: - (void)autoFetchMessages
- (void)advertise
{
    //: if (![self.sessionConfig respondsToSelector:@selector(autoFetchWhenOpenSession)]
    if (![self.sessionConfig respondsToSelector:@selector(placeSession)]
        //: || self.sessionConfig.autoFetchWhenOpenSession) {
        || self.sessionConfig.placeSession) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_group_t group = dispatch_group_create();
        dispatch_group_t group = dispatch_group_create();

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
        [self.dataSource replyMessages:^(NSError *error, NSArray *models) {
            //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
            [weakSelf contentCreate:models];
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self loadMessagePins:^(NSError *error) {
        [self mark:^(NSError *error) {
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
            //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
            if([weakSelf.delegate respondsToSelector:@selector(oldWith)])
            {
                //: [weakSelf.delegate didFetchMessageData];
                [weakSelf.delegate oldWith];

                //: if (![weakSelf.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
                if (![weakSelf.sessionConfig respondsToSelector:@selector(phaetonShadow)]
                    //: || weakSelf.sessionConfig.autoFetchAttachment) {
                    || weakSelf.sessionConfig.phaetonShadow) {
                    //: [weakSelf.dataSource checkAttachmentState:weakSelf.items];
                    [weakSelf.dataSource label:weakSelf.textDevice];
                }
            }
        //: });
        });

    }
}

//: - (void)setDataSource:(id<NIMSessionDataSource>)dataSource
- (void)setDataSource:(id<AggregationSource>)dataSource
{
    //: _dataSource = dataSource;
    _dataSource = dataSource;
    //: [self autoFetchMessages];
    [self advertise];
}


//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)activity:(NIMMessage *)message
{
    //: NSError *err;
    NSError *err;
    //: [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    //: [self.layout dismissReplyContent];
    [self.layout pull];
}

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage
- (void)definiteMessage:(NIMMessage *)message bottom:(NIMMessage *)toMessage
{
    //: if (toMessage)
    if (toMessage)
    {
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:toMessage
                                                   to:toMessage
                                                //: error:nil];
                                                error:nil];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(messageMode)] && [self.sessionConfig messageMode])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig messageMode];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                                //: error:nil];
                                                error:nil];

        //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
        if ([self.sessionConfig respondsToSelector:@selector(untilMediaSent)])
        {
            //: if ([self.sessionConfig clearThreadMessageAfterSent])
            if ([self.sessionConfig untilMediaSent])
            {
                //: [self.sessionConfig cleanThreadMessage];
                [self.sessionConfig threadClose];
            }
        }
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message];
        [self activity:message];
    }

    //: [self.layout dismissReplyContent];
    [self.layout pull];
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError *))completion
- (void)memoryImage:(NIMMessage *)message choose:(void(^)(NSError *))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
    [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
        //: if(completion) {
        if(completion) {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf.layout dismissReplyContent];
        [weakSelf.layout pull];
    //: }];
    }];
}

//: - (void)sendMessage:(NIMMessage *)message
- (void)year:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          showCompletion:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion
         itemTap:(void(^)(NSError * error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
   //: if (toMessage)
   if (toMessage)
    {
        //: [[NIMSDK sharedSDK].chatExtendManager reply:message
        [[NIMSDK sharedSDK].chatExtendManager reply:message
                                                //: to:toMessage
                                                to:toMessage
                                        //: completion:^(NSError * _Nullable error)
                                        completion:^(NSError * _Nullable error)
         {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:toMessage]];
            [weakSelf secret:[self remote:toMessage]];

        //: }];
        }];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(messageMode)] && [self.sessionConfig messageMode])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig messageMode];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                           //: completion:^(NSError * _Nullable error) {
                                           completion:^(NSError * _Nullable error) {
            //: if ([weakSelf.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
            if ([weakSelf.sessionConfig respondsToSelector:@selector(untilMediaSent)])
            {
                //: if ([weakSelf.sessionConfig clearThreadMessageAfterSent])
                if ([weakSelf.sessionConfig untilMediaSent])
                {
                    //: [weakSelf.sessionConfig cleanThreadMessage];
                    [weakSelf.sessionConfig threadClose];
                }
            }

            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[weakSelf threadMessageOfMessage:toMessage]];
            [weakSelf secret:[weakSelf remote:toMessage]];
        //: }];
        }];
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message completion:completion];
        [self memoryImage:message choose:completion];
    }

    //: [self.layout dismissReplyContent];
    [self.layout pull];
}

//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification
- (void)bambinoing:(NSNotification *)notification
{
//    NSArray *models = [self.dataSource items];
//    [self sendMessageReceipt:models];
}

//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)quickses:(NSNotification *)notification {
    //: [self.delegate didRefreshMessageData];
    [self.delegate restoreWithinData];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification {
- (void)pictures:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *showDoingLoadData;
    extern NSString *showDoingLoadData;
    //: NSArray *teamIds = userInfo[showDoingLoadData];
    NSArray *teamIds = userInfo[showDoingLoadData];
    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate restoreWithinData];
    }
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)nimTag:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *showDoingLoadData;
    extern NSString *showDoingLoadData;
    //: NSArray *teamIds = userInfo[showDoingLoadData];
    NSArray *teamIds = userInfo[showDoingLoadData];

    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate restoreWithinData];
    }
}

//: #pragma mark - NIMSessionTableDataDelegate
#pragma mark - NIMSessionTableDataDelegate

//: - (void)didRefreshMessageData
- (void)restoreWithinData
{
    //: if ([self.delegate respondsToSelector:@selector(didRefreshMessageData)]) {
    if ([self.delegate respondsToSelector:@selector(restoreWithinData)]) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate restoreWithinData];
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel
- (void)record:(CleanDoing *)messageModel
{
    //: if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
    if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
        //: [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        //: self.pendingAudioMessages = [self findRemainAudioMessages:messageModel.message];
        self.pendingAudioMessages = [self circle:messageModel.message];
        //: [[FFFKitAudioCenter instance] play:messageModel.message];
        [[CommixCenter emptyDataTeam] centerPlay:messageModel.message];

    //: } else {
    } else {
        //: self.pendingAudioMessages = nil;
        self.pendingAudioMessages = nil;
        //: [[NIMSDK sharedSDK].mediaManager stopPlay];
        [[NIMSDK sharedSDK].mediaManager stopPlay];
    }
}

//: - (void)mediaPicturePressed
- (void)tingName
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchPhotoFromLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
    [self.mediaFetcher underScaleLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
        //: switch (type) {
        switch (type) {
            //: case PHAssetMediaTypeImage:
            case PHAssetMediaTypeImage:
            {
                //: for (UIImage *image in images) {
                for (UIImage *image in images) {



                    //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
                    NIMMessage *message = [ShouldMaker select:image];

                    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[ContextTeam mutual] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf definiteMessage:message bottom:nil];
                }
                //: if (path) {
                if (path) {
                    //: NIMMessage *message;
                    NIMMessage *message;
                    //: if ([path.pathExtension isEqualToString:@"HEIC"])
                    if ([path.pathExtension isEqualToString:[UnitData sharedInstance].kNameResearchValue])
                    {
                        //iOS 11 苹果采用了新的图片格式 HEIC ，如果采用原图会导致其他设备的兼容问题，在上层做好格式的兼容转换,压成 jpeg
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [FFFMessageMaker msgWithImage:image];
                        message = [ShouldMaker select:image];
                    }
                    //: else
                    else
                    {
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [FFFMessageMaker msgWithImage:image];
                        message = [ShouldMaker select:image];
                    }


                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf definiteMessage:message bottom:nil];
                }
            }
                //: break;
                break;
            //: case PHAssetMediaTypeVideo:
            case PHAssetMediaTypeVideo:
            {
                //: NIMMessage *message = [FFFMessageMaker msgWithVideo:path];
                NIMMessage *message = [ShouldMaker line:path];
                //: [weakSelf sendMessage:message toMessage:nil];
                [weakSelf definiteMessage:message bottom:nil];
            }
                //: break;
                break;
            //: default:
            default:
                //: return;
                return;
        }

    //: }];
    }];
}

//对图片尺寸进行压缩--
//: -(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
-(UIImage*)name:(UIImage*)image smartMessage:(CGSize)newSize
{
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);
    //: [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    //: UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (void)mediaShootPressed
- (void)beforeWhen
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchMediaFromCamera:^(NSString *path, UIImage *image) {
    [self.mediaFetcher theMediaBlue:^(NSString *path, UIImage *image) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if (image) {
        if (image) {
            //: message = [FFFMessageMaker msgWithImage:image];
            message = [ShouldMaker select:image];
        //: }else{
        }else{
            //: message = [FFFMessageMaker msgWithVideo:path];
            message = [ShouldMaker line:path];
        }
        //: [weakSelf sendMessage:message toMessage:nil];
        [weakSelf definiteMessage:message bottom:nil];
    //: }];
    }];
}

//: - (void)mediaLocationPressed
- (void)startPressed
{

}

//: - (void)onSendLocation:(MyUserKitLocationPoint *)locationPoint{
- (void)userAcross:(MyUserKitLocationPoint *)locationPoint{

}


//: - (void)onViewWillAppear
- (void)userAppear
{
    //fix bug: 竖屏进入会话界面，然后右上角进入群信息，再横屏，左上角返回，横屏的会话界面显示的就是竖屏时的大小
    //: [self cleanCache];
    [self scrubbedMessage];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self.layout reloadTable];
//    });

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)onViewDidDisappear
- (void)bubble
{
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message {
- (BOOL)value:(NIMMessage *)message {
    //: return YES;
    return YES;
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)mark:(void (^)(NSError *))handler
{
    //: [self.dataSource loadMessagePins:handler];
    [self.dataSource globulePins:handler];
}

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model
- (void)viewWith:(CleanDoing *)model
{
    //: [self.dataSource willDisplayMessageModel:model];
    [self.dataSource table:model];
}

//: #pragma mark - NIMSessionLayoutDelegate
#pragma mark - InsideDelegate
//: - (void)onRefresh
- (void)blockLight
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self loadMessages:^(NSArray *messages, NSError *error) {
    [self center:^(NSArray *messages, NSError *error) {
        //: [wself.layout layoutAfterRefresh];
        [wself.layout user];
        //: if (messages.count) {
        if (messages.count) {
            //: [wself insertMessages:messages];
            [wself managerMessages:messages];
        }
        //: if (messages.count)
        if (messages.count)
        {
            //: [wself checkReceipts:nil];
            [wself view:nil];
            //: [wself markRead:NO];
            [wself block:NO];
        }

        //: [wself refreshAllChatExtendDatasByMessages:messages];
        [wself than:messages];
    //: }];
    }];
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(thanItem)] && [self.sessionConfig thanItem];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self name];
        }
    }
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(thanItem)] && [self.sessionConfig thanItem];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self name];
        }
    }
}

//: - (void)playNextAudio
- (void)name
{
    //: NIMMessage *message = self.pendingAudioMessages.lastObject;
    NIMMessage *message = self.pendingAudioMessages.lastObject;
    //: if (self.pendingAudioMessages.count) {
    if (self.pendingAudioMessages.count) {
        //: [self.pendingAudioMessages removeLastObject];
        [self.pendingAudioMessages removeLastObject];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [[FFFKitAudioCenter instance] play:message];
            [[CommixCenter emptyDataTeam] centerPlay:message];
        //: });
        });
    }
}


//: #pragma mark - Private
#pragma mark - Private

//是否需要开启自动设置所有消息已读 ： 某些场景不需要自动设置消息已读，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldAutoMarkRead
- (BOOL)facility
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAutoMarkMessageRead)]) {
    if ([self.sessionConfig respondsToSelector:@selector(rearWindow)]) {
        //: should = ![self.sessionConfig disableAutoMarkMessageRead];
        should = ![self.sessionConfig rearWindow];
    }
    //: return should;
    return should;
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (KitFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[KitFetcher alloc] init];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//: - (void)addListener
- (void)fromLabel
{
    //声音的监听放在 viewWillApear 回调里，不在这里添加
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bambinoing:) name:UIApplicationDidBecomeActiveNotification object:nil];
    //: if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
        //: extern NSString *const k_labelMsg;
        extern NSString *const k_labelMsg;
        //: extern NSString *const kUserStr;
        extern NSString *const kUserStr;

        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:k_labelMsg object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nimTag:) name:k_labelMsg object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:kUserStr object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pictures:) name:kUserStr object:nil];
    }

    //: extern NSString *const noti_cellUrl;
    extern NSString *const noti_cellUrl;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:noti_cellUrl object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(quickses:) name:noti_cellUrl object:nil];
}

//: - (void)removeListenner
- (void)messageVoiceListenner
{
    //声音的监听放在 viewDidDisappear 回调里，不在这里移除
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)findRemainAudioMessages:(NIMMessage *)message
- (NSMutableArray *)circle:(NIMMessage *)message
{
    //: if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //如果这条音频消息被播放过了 或者这条消息是属于自己的消息，则不进行轮播
        //: return nil;
        return nil;
    }
    //: NSMutableArray *messages = [[NSMutableArray alloc] init];
    NSMutableArray *messages = [[NSMutableArray alloc] init];
    //: [self.dataSource.items enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.dataSource.title enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj isKindOfClass:[FFFMessageModel class]]) {
        if ([obj isKindOfClass:[CleanDoing class]]) {
            //: FFFMessageModel *model = (FFFMessageModel *)obj;
            CleanDoing *model = (CleanDoing *)obj;
            //: BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            //: if ([model.message.messageId isEqualToString:message.messageId])
            if ([model.message.messageId isEqualToString:message.messageId])
            {
                //: *stop = YES;
                *stop = YES;
            }
            //: else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            {
                //: [messages addObject:model.message];
                [messages addObject:model.message];
            }
        }
    //: }];
    }];
    //: return messages;
    return messages;
}


//: - (void)processChatroomMessageModels
- (void)read
{
    //: NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    //: if (pendingMessageCount == 0) {
    if (pendingMessageCount == 0) {
        //: return;
        return;
    }
    //: if ([self.layout canInsertChatroomMessages])
    if ([self.layout containerMessages])
    {
        //: static NSInteger USERMaxInsert = 2;
        static NSInteger USERMaxInsert = 2;
        //: NSArray *insert = nil;
        NSArray *insert = nil;
        //: NSRange range;
        NSRange range;
        //: if (pendingMessageCount > USERMaxInsert)
        if (pendingMessageCount > USERMaxInsert)
        {
            //: range = NSMakeRange(0, USERMaxInsert);
            range = NSMakeRange(0, USERMaxInsert);
        }
        //: else
        else
        {
            //: range = NSMakeRange(0, pendingMessageCount);
            range = NSMakeRange(0, pendingMessageCount);
        }
        //: insert = [self.pendingChatroomModels subarrayWithRange:range];
        insert = [self.pendingChatroomModels subarrayWithRange:range];
        //: [self.pendingChatroomModels removeObjectsInRange:range];
        [self.pendingChatroomModels removeObjectsInRange:range];
        //: NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        //: BOOL animated = leftPendingMessageCount== 0;
        BOOL animated = leftPendingMessageCount== 0;
        //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:insert];
        CropTitleResult *result = [self.dataSource infoWith:insert];
        //: [self.layout insert:result.indexpaths animated:animated];
        [self.layout green:result.indexpaths topOpen:animated];

        //聊天室消息最大保存消息量，超过这个消息量则把消息列表的前一半挪出内存。
        //: static NSInteger USERMaxChatroomMessageCount = 200;
        static NSInteger USERMaxChatroomMessageCount = 200;
        //: NSInteger count = self.dataSource.items.count;
        NSInteger count = self.dataSource.title.count;
        //: if (count > USERMaxChatroomMessageCount) {
        if (count > USERMaxChatroomMessageCount) {
            //: NSRange deleteRange = NSMakeRange(0, count/2);
            NSRange deleteRange = NSMakeRange(0, count/2);
            //: NSArray *delete = [self.dataSource deleteModels:deleteRange];
            NSArray *delete = [self.dataSource distance:deleteRange];
            //: [self.layout remove:delete];
            [self.layout paged:delete];
        }

        //: [self processChatroomMessageModels];
        [self read];
    }
    //: else
    else
    {
        //不能插入是为了保证界面流畅，比如滑动，此时暂停处理
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: NSTimeInterval delay = 1;
        NSTimeInterval delay = 1;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [weakSelf processChatroomMessageModels];
            [weakSelf read];
        //: });
        });
    }
}

//: #pragma mark - 聊天扩展相关
#pragma mark - 聊天扩展相关

//: - (void)refreshAllChatExtendDatasByMessage:(NIMMessage *)message
- (void)secret:(NIMMessage *)message
{
    //: FFFMessageModel *model = [self findMessageModel:message];
    CleanDoing *model = [self telegram:message];
    //: if (model)
    if (model)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self color:model media:nil];
    }
}

//: - (void)refreshAllChatExtendDatasByMessages:(NSArray<NIMMessage *> *)messages
- (void)than:(NSArray<NIMMessage *> *)messages
{
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: [self refreshAllChatExtendDatasByMessage:message];
        [self secret:message];
    }
}

//: - (void)refreshAllAfterFetchCommentsByMessages:(NSArray<NIMMessage *> *)messages
- (void)repel:(NSArray<NIMMessage *> *)messages
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
    [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
                                                  //: completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
                                                  completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
    {
        //: [weakSelf refreshAllChatExtendDatasByMessages:messages];
        [weakSelf than:messages];
    //: }];
    }];
}

//: - (void)refreshAllAfterFetchCommentsByModels:(NSArray<FFFMessageModel *> *)models
- (void)contentCreate:(NSArray<CleanDoing *> *)models
{
    //: NSMutableArray *messages = [NSMutableArray array];
    NSMutableArray *messages = [NSMutableArray array];
    //: for(FFFMessageModel *model in models)
    for(CleanDoing *model in models)
    {
        //: [messages addObject:model.message];
        [messages addObject:model.message];
    }

    //: [self refreshAllAfterFetchCommentsByMessages:messages];
    [self repel:messages];
}

//: - (void)refreshAllChatExtendDatasBySubModel:(FFFMessageModel *)model
- (void)independentImageSize:(CleanDoing *)model
                                 //: completion:(NIMSessionInteractorHandler)completion
                                 pastTotaleractorHandler:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self remote:message];
    //: FFFMessageModel *threadMessageModel = [self findMessageModel:threadMessage];
    CleanDoing *threadMessageModel = [self telegram:threadMessage];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self refreshAllChatExtendDatasByModel:threadMessageModel completion:completion];
        [self color:threadMessageModel media:completion];
    }
    //: else
    else
    {
       //: if (completion)
       if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)refreshAllChatExtendDatasByModel:(FFFMessageModel *)model
- (void)color:(CleanDoing *)model
                              //: completion:(NIMSessionInteractorHandler)completion
                              media:(NIMSessionInteractorHandler)completion

{

    // Thread & 被回复消息
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self loadThreadAndRepliedMessages:model completion:^(BOOL success, id result)
    [self soused:model event:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf partCell:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的子消息
    //: [self loadChildMessages:model completion:^(BOOL success, id result)
    [self tip:model view:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf partCell:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的快捷回复
    //: [self loadQuickComments:model completion:^(BOOL success, id result)
    [self messageTing:model signal:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf partCell:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];
}


//: - (void)refreshAllChatExtendDatasByModels:(NSArray<FFFMessageModel *> *)models
- (void)title:(NSArray<CleanDoing *> *)models
                               //: completion:(NIMSessionInteractorHandler)completion
                               by:(NIMSessionInteractorHandler)completion
{
    //: for (FFFMessageModel *model in models)
    for (CleanDoing *model in models)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self color:model media:nil];
    }
}

//: - (void)refreshQuickComments:(NIMMessage *)message
- (void)referImage:(NIMMessage *)message
                  //: completion:(NIMSessionInteractorHandler)completion
                  preface:(NIMSessionInteractorHandler)completion
{
   //: FFFMessageModel *model = [self findMessageModel:message];
   CleanDoing *model = [self telegram:message];
    //: if (model)
    if (model)
    {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self loadQuickComments:model completion:^(BOOL success, id result) {
        [self messageTing:model signal:^(BOOL success, id result) {
            //: [weakSelf uiReloadMessageCell:message];
            [weakSelf partCell:message];
            //: if (completion)
            if (completion)
            {
                //: completion(success, result);
                completion(success, result);
            }
        //: }];
        }];
    }
    //: else
    else
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)loadThreadAndRepliedMessages:(FFFMessageModel *)model
- (void)soused:(CleanDoing *)model
                          //: completion:(NIMSessionInteractorHandler)completion
                          event:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableRepliedContent || !message)
    if (!model.enableRepliedContent || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    // 父消息
    //: NIMMessage *threadMessage = nil;
    NIMMessage *threadMessage = nil;
    //: if (message.threadMessageId.length > 0)
    if (message.threadMessageId.length > 0)
    {
       //: threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       //: model.parentMessage = threadMessage;
       model.parentMessage = threadMessage;
        //: if (!threadMessage)
        if (!threadMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.threadMessageId;
            key.messageID = message.threadMessageId;
            //: key.fromAccount = message.threadMessageFrom;
            key.fromAccount = message.threadMessageFrom;
            //: key.toAccount = message.threadMessageTo;
            key.toAccount = message.threadMessageTo;
            //: key.serverID = message.threadMessageServerId;
            key.serverID = message.threadMessageServerId;
            //: key.timestamp = message.threadMessageTime;
            key.timestamp = message.threadMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (key.messageID.length == 0)
            if (key.messageID.length == 0)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self body:key fort:^(BOOL success, NIMMessage *result) {
                //: model.parentMessage = result;
                model.parentMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
        }
    }

    // 被回复消息
    //: NIMMessage *repliedMessage = nil;
    NIMMessage *repliedMessage = nil;
    //: if (message.repliedMessageId.length > 0)
    if (message.repliedMessageId.length > 0)
    {
       //: repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
       repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
                                                                        //: messageIds:@[message.repliedMessageId]] firstObject];
                                                                        messageIds:@[message.repliedMessageId]] firstObject];
        //: if (!repliedMessage)
        if (!repliedMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.repliedMessageId;
            key.messageID = message.repliedMessageId;
            //: key.fromAccount = message.repliedMessageFrom;
            key.fromAccount = message.repliedMessageFrom;
            //: key.toAccount = message.repliedMessageTo;
            key.toAccount = message.repliedMessageTo;
            //: key.serverID = message.repliedMessageServerId;
            key.serverID = message.repliedMessageServerId;
            //: key.timestamp = message.repliedMessageTime;
            key.timestamp = message.repliedMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (!key)
            if (!key)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self body:key fort:^(BOOL success, NIMMessage *result) {
                //: model.repliedMessage = result;
                model.repliedMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: model.repliedMessage = repliedMessage;
            model.repliedMessage = repliedMessage;
            //: if (completion)
            if (completion)
            {
                //: completion(YES, nil);
                completion(YES, nil);
            }
        }
    }
}

//: - (void)fetchMessageInfo:(NIMChatExtendBasicInfo *)info
- (void)body:(NIMChatExtendBasicInfo *)info
              //: completion:(NIMSessionInteractorHandler)completion
              fort:(NIMSessionInteractorHandler)completion
{
    //: if (!info)
    if (!info)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
    [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
                                                      //: syncToDB:YES
                                                      syncToDB:YES
                                                    //: completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
                                                    completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
    {
        //: if (error)
        if (error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
            //: return;
            return;
        }

        //: completion(YES, [result objectForKey:info]);
        completion(YES, [result objectForKey:info]);
    //: }];
    }];
}

//: - (void)loadChildMessages:(FFFMessageModel *)model
- (void)tip:(CleanDoing *)model
               //: completion:(NIMSessionInteractorHandler)completion
               view:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableSubMessages || !message)
    if (!model.enableSubMessages || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        //: model.childMessages = subMessages;
        model.childMessages = subMessages;
        //: model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion && subMessages.count > 0)
            if (completion && subMessages.count > 0)
            {
                //: completion(YES, subMessages);
                completion(YES, subMessages);
            }
        //: });
        });

    //: });
    });
}

//: - (void)loadQuickComments:(FFFMessageModel *)model
- (void)messageTing:(CleanDoing *)model
               //: completion:(NIMSessionInteractorHandler)completion
               signal:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableQuickComments || !message)
    if (!model.enableQuickComments || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: model.quickComments = result;
            model.quickComments = result;
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: model.emoticonsContainerSize = [FFFKitQuickCommentUtil containerSizeWithComments:result];
                model.emoticonsContainerSize = [ControlInside size:result];
            }
            //: else
            else
            {
                //: model.emoticonsContainerSize = CGSizeZero;
                model.emoticonsContainerSize = CGSizeZero;
            }
            //: if (error) {
            if (error) {
                //: completion(NO, nil);
                completion(NO, nil);
            //: } else {
            } else {
                //: if (result) {
                if (result) {
                    //: completion(YES, result);
                    completion(YES, result);
                //: } else {
                } else {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
            }
        }
    //: }];
    }];
}

//: - (void)uiReloadThreadMessageBySubMessage:(FFFMessageModel *)model
- (void)rebroadcast:(CleanDoing *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self remote:message];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self uiReloadMessageCell:threadMessage];
        [self partCell:threadMessage];
    }
}

//: - (void)uiReloadMessageCell:(NIMMessage *)message
- (void)partCell:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return;
        return;
    }
    //: FFFMessageModel *model = [self findMessageModel:message];
    CleanDoing *model = [self telegram:message];
    //: if (model)
    if (model)
    {
//        CropTitleResult *result = [self.dataSource updateMessageModel:model];
//        NSInteger index = [result.indexpaths.firstObject row];
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
//        [self safelyReloadRowAtIndexPath:indexPath];

        //: [self safelyReloadRowAtIndexPath:nil];
        [self text:nil];
    }
    //: return;
    return;
}


//: - (NIMMessage *)threadMessageOfMessage:(NIMMessage *)message
- (NIMMessage *)remote:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: NSString *messageID = message.threadMessageId;
    NSString *messageID = message.threadMessageId;
    //: if (messageID.length == 0)
    if (messageID.length == 0)
    {
        //: return nil;
        return nil;
    }
    //: return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
    return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
}

//: - (void)safelyReloadRowAtIndexPath:(NSIndexPath *)indexPath
- (void)text:(NSIndexPath *)indexPath
{
    //: if (self.dataSource.items.count != [self.layout numberOfRows]) {
    if (self.dataSource.title.count != [self.layout sheetRows]) {
        //: return;
        return;
    }

    //: if (indexPath) {
    if (indexPath) {
        // 修改批量未读消息的问题
        //: [self.layout update:indexPath];
        [self.layout afterView:indexPath];
    //: } else {
    } else {
        //: [self.layout reloadTable];
        [self.layout upsetLast];
    }
}


//: @end
@end
