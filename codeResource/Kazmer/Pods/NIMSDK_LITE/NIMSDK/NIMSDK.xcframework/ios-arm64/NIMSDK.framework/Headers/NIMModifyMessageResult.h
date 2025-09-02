//
//  NIMModifyMessageResult.h
//  NIMSDK
//
//  Created by 陈吉力 on 2025/8/18.
//  Copyright © 2025 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NIMMessage;
@class NIMClientAntispamResult;

NS_ASSUME_NONNULL_BEGIN
@interface NIMModifyMessageResult: NSObject
/// 修改成功后的消息体
@property (nonatomic,readonly,strong,nullable) NIMMessage *message;
/// 如果此错误码为非200，表示修改消息失败（比如触发了云端反垃圾），此时修改成功后的消息体返回为null
@property (nonatomic,assign) NSInteger errorCode;
/// 云端反垃圾返回的结果
@property (nonatomic,readonly,copy,nullable) NSString *antispamResult;
/// 客户端本地反垃圾结果
@property (nonatomic,readonly,strong,nullable) NIMClientAntispamResult *clientAntispamResult;

@end

NS_ASSUME_NONNULL_END
