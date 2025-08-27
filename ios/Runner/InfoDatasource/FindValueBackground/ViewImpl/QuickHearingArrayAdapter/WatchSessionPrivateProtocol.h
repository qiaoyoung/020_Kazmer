// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchSessionPrivateProtocol.h
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import "WatchSessionViewController.h"
#import "CollectionViewController.h"

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;
//: @class WatchMessageModel;
@class CentralProcessingUnitModel;

//: @interface NIMSessionMessageOperateResult : NSObject
@interface PinResult : NSObject

//: @property (nonatomic,copy) NSArray *indexpaths;
@property (nonatomic,copy) NSArray *indexpaths;

//: @property (nonatomic,copy) NSArray *messageModels;
@property (nonatomic,copy) NSArray *messageModels;

//: @end
@end

//: @protocol NIMSessionDataSource <NSObject>
@protocol SizeSource <NSObject>

//: - (NSArray *)items;
- (NSArray *)addHidden;

//: - (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models;
- (PinResult *)nameUp:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models;
- (PinResult *)notice:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)deleteMessageModel:(WatchMessageModel *)model;
- (PinResult *)clean:(CentralProcessingUnitModel *)model;

//: - (NIMSessionMessageOperateResult *)updateMessageModel:(WatchMessageModel *)model;
- (PinResult *)anTheoreticalAccount:(CentralProcessingUnitModel *)model;

//: - (WatchMessageModel *)findModel:(NIMMessage *)message;
- (CentralProcessingUnitModel *)colorModel:(NIMMessage *)message;

//: - (NSInteger)indexAtModelArray:(WatchMessageModel *)model;
- (NSInteger)current:(CentralProcessingUnitModel *)model;

//: - (NSArray *)deleteModels:(NSRange)range;
- (NSArray *)accumulation:(NSRange)range;

//: - (void)resetMessages:(void(^)(NSError *error))handler;
- (void)details:(void(^)(NSError *error))handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)trademark:(void(^)(NSError *error, NSArray *))handler;

//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)withReplacement:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)loadNewMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)masterKey:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)checkAttachmentState:(NSArray *)messages;
- (void)barnburner:(NSArray *)messages;

//: - (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (NSDictionary *)changeScale:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)insideShow:(NSArray *)messages;

//: - (void)cleanCache;
- (void)ting;

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)color:(BOOL)isShow;

//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)occurrent:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(WatchMessageModel *)model;
- (void)outTable:(CentralProcessingUnitModel *)model;

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)more:(NIMMessage *)message message:(void (^)(NSError *))handler;

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)removeWithinStyle:(NIMMessage *)message immobilize:(void (^)(NSError *))handler;

//: @end
@end


//: @protocol NIMSessionLayoutDelegate <NSObject>
@protocol SoapDelegate <NSObject>

//: - (void)onRefresh;
- (void)appearRed;

//: @end
@end

//: @protocol NIMSessionLayout <NSObject>
@protocol RepresentationEdge <NSObject>

//: - (void)update:(NSIndexPath *)indexPath;
- (void)row:(NSIndexPath *)indexPath;

//: - (void)insert:(NSArray *)indexPaths animated:(BOOL)animated;
- (void)plugCountoTopFind:(NSArray *)indexPaths alongDoing:(BOOL)animated;

//: - (void)remove:(NSArray *)indexPaths;
- (void)messageDelete:(NSArray *)indexPaths;

//: - (BOOL)canInsertChatroomMessages;
- (BOOL)comment;

//: - (void)calculateContent:(WatchMessageModel *)model;
- (void)collection:(CentralProcessingUnitModel *)model;

//: - (void)reloadTable;
- (void)sessionTable;

//: - (void)resetLayout;
- (void)key;

//: - (void)changeLayout:(CGFloat)inputViewHeight;
- (void)nameLayout:(CGFloat)inputViewHeight;

//: - (void)setDelegate:(id<NIMSessionLayoutDelegate>)delegate;
- (void)setDelegate:(id<SoapDelegate>)delegate;

//: - (void)layoutAfterRefresh;
- (void)reload;

//: - (void)adjustOffset:(NSInteger)row;
- (void)offsetHighlightEnableset:(NSInteger)row;

//: - (void)dismissReplyContent;
- (void)scoff;

//: - (NSInteger)numberOfRows;
- (NSInteger)limit;

//: @end
@end





//: @interface WatchSessionViewController(Interactor)
@interface CollectionViewController(Interactor)

//: - (void)setInteractor:(id<NIMSessionInteractor>) interactor;
- (void)setInteractor:(id<StuffTotaleractor>) interactor;

//: - (void)setTableDelegate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;
- (void)setCreate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;

//: @end
@end
