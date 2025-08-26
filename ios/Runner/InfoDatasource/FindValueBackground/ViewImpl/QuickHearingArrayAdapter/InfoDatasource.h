// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoDatasource.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchKitMessageProvider.h"
#import "ValueOld.h"
//: #import "WatchSessionConfig.h"
#import "MessagePinImage.h"

//: @class WatchMessageModel;
@class CentralProcessingUnitModel;

//: @interface WatchSessionMsgDatasource : NSObject
@interface InfoDatasource : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithConfig:(NIMSession*)session
                         //: config:(id<WatchSessionConfig>)sessionConfig;
                         max:(id<MessagePinImage>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<WatchSessionConfig>sessionConfig;
@property (nonatomic, weak) id<MessagePinImage>sessionConfig;

//: - (NSInteger)indexAtModelArray:(WatchMessageModel*)model;
- (NSInteger)title:(CentralProcessingUnitModel*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)getTo:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)dateBar:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)maxWindow:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)alter:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)address:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(WatchMessageModel *)model;
- (void)barTagModel:(CentralProcessingUnitModel *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)message:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)searchModels:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(WatchMessageModel*)model;
- (NSArray<NSNumber *> *)onModel:(CentralProcessingUnitModel*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)tapKey:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)phoneMessageCallback:(NIMMessage *)message exist:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)prolusion:(NIMMessage *)message domain:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)twentyFourHours;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)show:(BOOL)isShow;

//: @end
@end
