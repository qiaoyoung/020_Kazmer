// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchSessionConfigurateProtocol.h
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol CounteractorName <NSObject>

//: - (void)didFetchMessageData;
- (void)onExist;

//: - (void)didRefreshMessageData;
- (void)textMessage;

//: - (void)didPullUpMessageData;
- (void)userCell;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol StuffTotaleractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)gamut:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)immobilise:(NIMMessage *)message send:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)independent:(NIMMessage *)message cutCompletion:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)by:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          inscription:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         ironed:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)info:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)heritageCompletion:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             data:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)disk:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              combineMediaMaxTing:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             size:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)spy:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          with:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             activity:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)input:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)quickShared:(NSArray *)messages;

//: - (WatchMessageModel *)updateMessage:(NIMMessage *)message;
- (CentralProcessingUnitModel *)mortalLink:(NIMMessage *)message;

//: - (WatchMessageModel *)deleteMessage:(NIMMessage *)message;
- (CentralProcessingUnitModel *)full:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)bubble:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)modeOrigin:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)provider;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)readByDate:(BOOL)needMarkDataModel;

//: - (WatchMessageModel *)findMessageModel:(NIMMessage *)message;
- (CentralProcessingUnitModel *)towardMessage:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)shouldOrReceipt;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)bar:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)messages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)filing:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)pastMessage:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)text:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)lifeStyle:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)house:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(WatchMessageModel *)model;
- (void)everyLast:(CentralProcessingUnitModel *)model;

//排版接口

//: - (void)resetLayout;
- (void)cell;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)soap:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)randomEnable;

//: - (void)pullUp;
- (void)on;

//按钮响应接口
//: - (void)mediaAudioPressed:(WatchMessageModel *)messageModel;
- (void)mentalRepresentation:(CentralProcessingUnitModel *)messageModel;

//: - (void)mediaPicturePressed;
- (void)button;

//: - (void)mediaShootPressed;
- (void)shootNumber;

//: - (void)mediaLocationPressed;
- (void)value;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)stud;

//: - (void)onViewDidDisappear;
- (void)view;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)nameThread;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setNameThread:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setReferenceMessage:(NIMMessage *)message;

//: @end
@end
