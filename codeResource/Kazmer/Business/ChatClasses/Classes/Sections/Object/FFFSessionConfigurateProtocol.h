// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFSessionConfigurateProtocol.h
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"

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
@protocol SessionDisplay <NSObject>

//: - (void)didFetchMessageData;
- (void)oldWith;

//: - (void)didRefreshMessageData;
- (void)restoreWithinData;

//: - (void)didPullUpMessageData;
- (void)textMessage;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol TitleTotaleractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)activity:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)definiteMessage:(NIMMessage *)message bottom:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)memoryImage:(NIMMessage *)message choose:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)year:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          showCompletion:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         itemTap:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)of:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)state:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             at:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)pressDownEnable:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              my:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             outInfo:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)fastPress:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          speedy:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             instance:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)image:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)managerMessages:(NSArray *)messages;

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message;
- (CleanDoing *)valueInfo:(NIMMessage *)message;

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message;
- (CleanDoing *)date:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)pictureMessage:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)object:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)textDevice;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)block:(BOOL)needMarkDataModel;

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message;
- (CleanDoing *)telegram:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)messageSize;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)view:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)cellMessages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)center:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)info:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)turnIndex:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)value:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)mark:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)viewWith:(CleanDoing *)model;

//排版接口

//: - (void)resetLayout;
- (void)publication;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)option:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)scrubbedMessage;

//: - (void)pullUp;
- (void)attract;

//按钮响应接口
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel;
- (void)record:(CleanDoing *)messageModel;

//: - (void)mediaPicturePressed;
- (void)tingName;

//: - (void)mediaShootPressed;
- (void)beforeWhen;

//: - (void)mediaLocationPressed;
- (void)startPressed;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)userAppear;

//: - (void)onViewDidDisappear;
- (void)bubble;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)mark;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setMark:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setMessage:(NIMMessage *)message;

//: @end
@end