// __DEBUG__
// __CLOSE_PRINT__
//
//  UserLabelMan.h
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//部分API提供了额外的选项，如删除消息会有是否删除会话的选项,为了测试方便提供配置参数
//上层开发只需要按照策划需求选择一种适合自己项目的选项即可，这个设置只是为了方便测试不同的case下API的正确性

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface USERBundleSetting : NSObject
@interface UserLabelMan : NSObject

//: - (BOOL)enableTeamAPNsForce; 
- (BOOL)titleTag; //群消息强制推送

/// 禁用 traceroute
//: - (BOOL)disableTraceroute;
- (BOOL)locationTraceroute;

//: - (BOOL)removeSessionWhenDeleteMessages; 
- (BOOL)to; //删除消息时是否同时删除会话项

//: - (NSString *)ipv6DefaultLink; 
- (NSString *)edge; // IPv6默认Link地址

//: + (instancetype)sharedConfig;
+ (instancetype)user;
//: - (NSUInteger)localRecordVideoKbps; 
- (NSUInteger)worker; //本地录制视频码率

//: - (BOOL)enableSdkRemoteRender; 
- (BOOL)emptyName; //内部渲染开关

//: - (BOOL)enableAPNsPrefix; 
- (BOOL)month; //推送允许带昵称

//: - (BOOL)serverRecordWhiteboardData; 
- (BOOL)text; //服务器录制白板数据

//: - (BOOL)exceptionLogUploadEnabled; 
- (BOOL)language; //允许异常错误码下日志上吧

//: - (BOOL)enableLocalAnti; 
- (BOOL)model; //本地反垃圾开关

//: - (BOOL)serverRecordHost; 
- (BOOL)host; //服务端录制主讲人

//: - (BOOL)startWithBackCamera; 
- (BOOL)rollUpAlong; //使用后置摄像头开始视频通话

//: - (BOOL)needVerifyForFriend; 
- (BOOL)imageOf; //添加好友是否需要验证

//: - (BOOL)enableAudioSessionReset; 
- (BOOL)heliogram; //允许MediaManager内部重置

//: - (BOOL)autoRemoveRemoteSession; 
- (BOOL)successSession; //删除会话时是不是也同时删除服务器会话 (防止漫游)

//: - (NIMRSAPaddingMode)rsaPaddingMode; 
- (NIMRSAPaddingMode)menuShow; // RSA Padding算法

//: - (BOOL)isIgnoreRevokeMessageCount;
- (BOOL)limit;

//: - (BOOL)usingAmr; 
- (BOOL)recordAlbum; //使用amr作为录音

//: - (BOOL)useSocks; 
- (BOOL)socksCount; //是否使用socks5代理

//: - (BOOL)isDeleteMsgFromServer;
- (BOOL)remove;

//: - (NSInteger)customClientType;
- (NSInteger)pin;

//: - (NSString *)messageEnv; 
- (NSString *)click; //环境变量，用于指向不同的抄送、第三方回调等配置

//: - (NSInteger)ignoreMessageType;
- (NSInteger)length;

//: - (NSString *)customAPNsType; 
- (NSString *)containerBy; // 自定义推送类型

//: - (BOOL)autoRemoveSnapMessage; 
- (BOOL)table; //阅后即焚消息在看完后是否删除

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages; 
- (BOOL)location; //同步云消息到本地时是否创建最近会话

//: - (NSUInteger)socks5RTSType; 
- (NSUInteger)changeAction; //白板socks5类型

//: - (BOOL)useRTSSocks; 
- (BOOL)childTing; //白板是否使用socks5代理

//: - (NSString *)socks5Addr; 
- (NSString *)pressed; //socks5地址

//: - (UIViewContentMode)videochatRemoteVideoContentMode; 
- (UIViewContentMode)fromMode; //对端画面的填充模式

//: - (NSString *)socksPassword; 
- (NSString *)roundFrame; //密码

//: - (BOOL)enableSyncWhenFetchRemoteMessages; 
- (BOOL)globalAction; //拉取云消息时是否需要存储到本地

//: - (NSString *)socks5RTSAddr; 
- (NSString *)frameIn; //白板socks5地址

//: - (BOOL)localSearchOrderByTimeDesc; 
- (BOOL)red; //本地搜索消息顺序 YES表示按时间戳逆序搜索,NO表示按照时间戳顺序搜索

//: - (BOOL)enableRotate; 
- (BOOL)center; //支持旋转(仅组件部分，其他部分可能会显示不正常，谨慎开启)

//: - (BOOL)fileQuickTransferEnabled; 
- (BOOL)tableArray; //文件快传开关

//: - (BOOL)enableRevokeMsgPostscript;
- (BOOL)electPostscript;

//: - (BOOL)dropTableWhenDeleteMessages; 
- (BOOL)name; //删除消息的同时是否删除消息表

//: - (NSInteger)chatroomRetryCount; 
- (NSInteger)component; //进聊天室重试次数

//: - (BOOL)serverRecordVideo; 
- (BOOL)input; //服务器录制视频

//: - (NIMSymEncryptionType)SymEncryptionType; 
- (NIMSymEncryptionType)encryption; //非对称加密类型

//: - (NSString *)socksRTSUsername; 
- (NSString *)doing; //白板用户名

//: - (BOOL)isDeleteMsgFromDB;
- (BOOL)place;

//: #pragma mark - 网络通话和白板
#pragma mark - 网络通话和白板
//: - (BOOL)serverRecordAudio; 
- (BOOL)record; //服务器录制语音

//: - (NIMAsymEncryptionType)AsymEncryptionType; 
- (NIMAsymEncryptionType)nearValueView; //非对称加密类型

//: - (BOOL)autoRemoveAlias; 
- (BOOL)aLaCarte; //删除好友的同时删除备注

//: - (NIMLinkAddressType)LbsLinkAddressType; 
- (NIMLinkAddressType)item; //lbs返回的link地址类型

//: - (int)serverRecordMode; 
- (int)button; //服务端录制模式

//: - (BOOL)autoDeactivateAudioSession; 
- (BOOL)enable; //自动结束AudioSession

//: - (NSString *)ipv4DefaultLink; 
- (NSString *)inputLast; // IPv4默认Link地址

//: - (BOOL)videochatAutoRotateRemoteVideo; 
- (BOOL)count; //自动旋转视频聊天远端画面

//: - (BOOL)preferHDAudio; 
- (BOOL)terminal; //期望高清语音

//: - (BOOL)fileDownloadTokenEnabled; 
- (BOOL)nameDismiss; //文件下载权限控制

//: - (BOOL)animatedImageThumbnailEnabled; 
- (BOOL)timeCustom; //支持动图缩略图

//: - (NSInteger)maximumLogDays; 
- (NSInteger)maximal; //日志最大存在天数

//: - (NSUInteger)localRecordVideoQuality; 
- (NSUInteger)voiceOverRemove; //本地录制视频分辨率

//: - (NSString *)socksUsername; 
- (NSString *)username; //用户名

//: - (BOOL)asyncLoadRecentSessionEnabled; 
- (BOOL)upClosed; //是否开启异步读取最近会话

//: - (NSUInteger)videoMaxEncodeKbps; 
- (NSUInteger)nameKbps; //最大发送视频编码码率

//: - (BOOL)enablePullSubMessagesFromServer;
- (BOOL)signaling;

//: - (BOOL)disableProximityMonitor; 
- (BOOL)showMonitor; //贴耳的时候是否需要自动切换成听筒模式

//: - (NSString *)socksRTSPassword; 
- (NSString *)beggarMyNeighbourPolicy; //白板密码

//: - (BOOL)voiceDetect; 
- (BOOL)option; //语音检测开关

//: - (NSArray *)ignoreTeamNotificationTypes; 
- (NSArray *)showTypes; //需要忽略的群通知类型

//: - (BOOL)showFps; 
- (BOOL)lightOnFps; //是否显示Fps

//: - (BOOL)audioDenoise; 
- (BOOL)at; //降噪开关

//: - (NSUInteger )socks5Type; 
- (NSUInteger )temp; //socks5类型

//: - (BOOL)countTeamNotification; 
- (BOOL)findTingFile; //是否将群通知计入未读

//: - (BOOL)enableSyncStickTopSessionInfos;
- (BOOL)sortMessage;

//: - (BOOL)autoFetchAttachment; 
- (BOOL)phaetonShadow; //自动下载附件。（接收消息，刷新消息，自动拿历史消息时）

//: @end
@end