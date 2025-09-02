//
//  NIMModifyMessageParams.h
//  NIMSDK
//
//  Created by 陈吉力 on 2025/8/18.
//  Copyright © 2025 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NIMMessageObject;

@class NIMMessageAntispamConfig;
@class NIMMessageRouteConfig;
@class NIMMessagePushConfig;

NS_ASSUME_NONNULL_BEGIN

@interface NIMModifyMessageParams : NSObject
/// 消息子类型，默认0
@property (nonatomic, assign) NSInteger subType;
/// 消息内容
@property (nonatomic, copy, nullable) NSString *text;
/// 消息附属附件。根据消息类型继承实现
@property (nonatomic, strong, nullable) id<NIMMessageObject> attachment;
/// 消息服务端扩展，必须是Json 字符串
@property (nonatomic, copy, nullable) NSString *serverExtension;
/// 反垃圾相关配置
@property (nonatomic, strong, nullable) NIMMessageAntispamConfig *antispamConfig;
/// 路由抄送相关配置
@property (nonatomic, strong, nullable) NIMMessageRouteConfig *routeConfig;
/// 推送相关配置
@property (nonatomic, strong, nullable) NIMMessagePushConfig *pushConfig;
///是否启用本地反垃圾
///     只针对文本消息生效
///     发送消息时候，如果改字段为true，文本消息则走本地反垃圾检测，检测后返回V2NIMClientAntispamOperateType，
///     返回0，直接发送该消息
///     返回1，发送替换后的文本消息
///     返回2，消息发送失败， 返回本地错误码
///     返回3，消息正常发送，由服务端拦截
@property (nonatomic, assign) BOOL clientAntispamEnabled;
/// 本地反垃圾命中后替换的文本
///     clientAntispamEnabled为true， 且需要替换时必填
@property (nonatomic, copy, nullable) NSString *clientAntispamReplace;
@end

/// 消息推送设置
@interface NIMMessagePushConfig : NSObject <NSCopying>
/// 是否需要推送消息。YES：需要，NO：不需要，默认YES
@property(nonatomic,assign,readwrite) BOOL pushEnabled;
/// 是否需要推送消息发送者昵称。YES：需要，NO：不需要，默认YES
@property(nonatomic,assign,readwrite) BOOL pushNickEnabled;
/// 推送文本
@property(nullable,nonatomic,strong,readwrite) NSString *pushContent;
/// 推送数据
@property(nullable,nonatomic,strong,readwrite) NSString *pushPayload;
/// 是否强制推送，忽略用户消息提醒相关设置
@property(nonatomic,assign,readwrite) BOOL forcePush;
/// 强制推送文案，只消息类型有效
@property(nullable,nonatomic,strong,readwrite) NSString *forcePushContent;
/// 强制推送目标账号列表
@property(nullable,nonatomic,strong,readwrite) NSArray<NSString *> *forcePushAccountIds;

@end

@interface NIMMessageRouteConfig : NSObject <NSCopying>
/// 是否需要路由消息。YES：需要，NO：不需要，默认YES
@property(nonatomic,assign,readwrite) BOOL routeEnabled;
/// 环境变量，用于指向不同的抄送，第三方回调等配置
@property(nullable,nonatomic,strong,readwrite) NSString *routeEnvironment;
@end

/// 消息反垃圾设置
@interface NIMMessageAntispamConfig : NSObject <NSCopying>
/// 指定是否需要过安全通（对于已开通安全通的用户有效，默认消息都会走安全通，如果对单条消息设置 enable 为false，则此消息不会走安全通）。
/// true：需要，
/// false：不需要
/// 该字段为true，其他字段才生效
@property(nonatomic, assign, readwrite) BOOL antispamEnabled;
/// 指定易盾业务id，而不使用云信后台配置的
@property(nullable,nonatomic,strong,readwrite) NSString *antispamBusinessId;
/// 自定义消息中需要反垃圾的内容（仅当消息类型为自定义消息时有效）
@property(nullable,nonatomic,strong,readwrite) NSString *antispamCustomMessage;
/// 易盾反作弊（辅助检测数据），json格式，限制长度1024
@property(nullable,nonatomic,strong,readwrite) NSString *antispamCheating;
/// 易盾反垃圾（增强检测数据），json格式，限制长度1024
@property(nullable,nonatomic,strong,readwrite) NSString *antispamExtension;
@end

NS_ASSUME_NONNULL_END

