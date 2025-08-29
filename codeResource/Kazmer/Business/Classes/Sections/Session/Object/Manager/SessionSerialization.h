// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionSerialization.h
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class USERMessageSerializationInfo;
@class ResultTargetPraise;

//: typedef void(^USERMessageEncodeResult)(NSError * _Nullable error, USERMessageSerializationInfo * _Nullable info);
typedef void(^USERMessageEncodeResult)(NSError * _Nullable error, ResultTargetPraise * _Nullable info);
//: typedef void(^USERMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);
typedef void(^USERMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);

//: @interface USERMessageSerialization : NSObject
@interface SessionSerialization : NSObject

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)compass:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       encodeContent:(BOOL)encrypt
      //: password:(NSString *)password
      encodeTo:(NSString *)password
    //: completion:(USERMessageEncodeResult)completion;
    statusSend:(USERMessageEncodeResult)completion;

//: - (void)decode:(NSString *)filePath
- (void)styleCompletion:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       should:(BOOL)encrypt
      //: password:(NSString *)password
      encrypt:(NSString *)password
    //: completion:(USERMessageDecodeResult)completion;
    recordCompletion:(USERMessageDecodeResult)completion;

//: @end
@end

//: @interface USERMessageSerializationInfo : NSObject
@interface ResultTargetPraise : NSObject

//: @property (nonatomic, copy) NSString *password;
@property (nonatomic, copy) NSString *password;

//: @property (nonatomic, assign) BOOL compressed;
@property (nonatomic, assign) BOOL compressed;

//: @property (nonatomic, assign) BOOL encrypted;
@property (nonatomic, assign) BOOL encrypted;

//: @property (nonatomic, copy) NSString *md5;
@property (nonatomic, copy) NSString *md5;

//: @property (nonatomic, copy) NSString *filePath;
@property (nonatomic, copy) NSString *filePath;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END