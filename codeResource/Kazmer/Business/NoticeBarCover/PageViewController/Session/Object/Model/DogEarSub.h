// __DEBUG__
// __CLOSE_PRINT__
//
//  DogEarSub.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESMessageModel;
@class TitleMessageModel;
//: @class NTESMultiRetweetAttachment;
@class ShowImageEvent;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMergeMessageDataSource : NSObject
@interface DogEarSub : NSObject

//: @property (nonatomic, strong) NSMutableArray<NTESMessageModel *> *items;
@property (nonatomic, strong) NSMutableArray<TitleMessageModel *> *items;

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)page:(ShowImageEvent *)attachment
                    //: completion:(void (^)(NSString *msg))complete;
                    pressed:(void (^)(NSString *msg))complete;

//: - (NSIndexPath * _Nullable)updateMessage:(NIMMessage *)message;
- (NSIndexPath * _Nullable)birdSEyeViewKey:(NIMMessage *)message;

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message;
- (TitleMessageModel *)exist:(NIMMessage *)message;

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages;
- (NSMutableArray<TitleMessageModel *> *)tapAdd:(NSMutableArray <NIMMessage *> *)messages;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END