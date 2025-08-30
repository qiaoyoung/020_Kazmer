// __DEBUG__
// __CLOSE_PRINT__
//
//  Mortification.h
// Mortification
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayLanguageManager.h"
#import "MakeManager.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayKitInfo.h"
#import "CancelTeamCorner.h"
//: #import "DisplayMediaItem.h"            //多媒体面板对象
#import "CommingleItem.h"            //多媒体面板对象
//: #import "DisplayMessageModel.h"         //message Wrapper
#import "CleanDoing.h"         //message Wrapper
//: #import "DisplayKitMessageProvider.h"
#import "LabelSessionProvider.h"
//: #import "DisplayCellConfig.h"           //message cell配置协议
#import "DisplayCellConfig.h"           //message cell配置协议
//: #import "DisplayInputProtocol.h"        //输入框回调
#import "DisplayInputProtocol.h"        //输入框回调
//: #import "DisplayKitDataProvider.h"      //APP内容提供器
#import "DisplayProvider.h"      //APP内容提供器
//: #import "DisplayMessageCellProtocol.h"  //message cell事件回调
#import "DisplayMessageCellProtocol.h"  //message cell事件回调
//: #import "DisplaySessionConfig.h"        //会话页面配置
#import "ColorConfig.h"        //会话页面配置
//: #import "DisplayKitEvent.h"             //点击事件封装类
#import "ToiletKitSession.h"             //点击事件封装类
//: #import "DisplayCellLayoutConfig.h"
#import "CellManWith.h"
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"
//: #import "DisplayKitConfig.h"
#import "MessageAtAdd.h"
//: #import "DisplaySessionViewController.h"
#import "ReplyViewController.h"
//: #import "DisplaySessionListViewController.h"
#import "PullViewController.h"
//: #import "DisplayKitIndependentModeExtraInfo.h"
#import "BigInfo.h"
//: #import "DisplayChatUIManagerProtocol.h"
#import "DisplayChatUIManagerProtocol.h"
//: #import "DisplayCollectionViewLeftAlignedLayout.h"
#import "TagCellViewLayout.h"
//: #import "DisplayKitQuickCommentUtil.h"
#import "ControlInside.h"

//: extern double NIMKitVersionNumber;
extern double main_oldKey;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char dreamColorShowStr[];

// In this header, you should import all the public headers of your framework using statements like #import <NIMKit/PublicHeader.h>



/**
 *  基础Model
 */




/**
 *  协议
 */
/**
 *  消息cell的视觉模板
 */


/**
 *  UI 配置器
 */


/**
 *  会话页
 */


/**
 *  会话列表页
 */


/*
 *  独立聊天室模式下需注入的信息
 */



/**
 * 聊天常用UI方法
 */


/**
 * 快捷评论
 */



//: @interface MyUserKit : NSObject
@interface Mortification : NSObject

/**
 *  返回当前的排版配置
 */
//: - (id<DisplayCellLayoutConfig>)layoutConfig;
- (id<CellManWith>)layoutConfig;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(DisplayCellLayoutConfig *)layoutConfig;
- (void)pressBlueConfig:(CellManWith *)layoutConfig;

/**
 *  用户信息变更通知接口
 *
 *  @param userIds 用户 id 集合
 */
//: - (void)notfiyUserInfoChanged:(NSArray *)userIds;
- (void)big:(NSArray *)userIds;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<DisplayKitDataProvider> provider;
@property (nonatomic,strong) id<DisplayProvider> provider;

/**
 *  NIMKit表情资源所在的 bundle 名称。
 */
//: @property (nonatomic, copy) NSBundle *emoticonBundle;
@property (nonatomic, copy) NSBundle *emoticonBundle;

/**
 *  NIMKit语言所在Table，默认 language
 */
//: @property (nonatomic, copy) NSString * languageTable;
@property (nonatomic, copy) NSString * languageTable;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) DisplayKitConfig *config;
@property (nonatomic,strong) MessageAtAdd *config;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 DisplayProvider ( CommentTopIndex ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) DisplayKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) BigInfo *independentModeExtraInfo;

/**
 *  NIMKit语言所在Table，默认 获取系统语言
 */
//: @property (nonatomic, copy) NSString * defaultLanguage;
@property (nonatomic, copy) NSString * defaultLanguage;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<DisplayChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<TextAt> chatUIManager;

/**
 *  NIMKit语言所在Bundle, 启动的时候根据系统语言会选择对应的语言包，后面用户可替换
 */
//: @property (nonatomic, strong) NSBundle * languageBundle;
@property (nonatomic, strong) NSBundle * languageBundle;

/**
 *  返回群信息
 */
//: - (DisplayKitInfo *)infoBySuperTeam:(NSString *)teamId
- (CancelTeamCorner *)cellList:(NSString *)teamId
                         //: option:(DisplayKitInfoFetchOption *)option;
                         view:(CellClean *)option;
/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)withContent:(NSString *)teamId nail:(NIMKitTeamType)type;


/**
 *  返回用户信息
 */
//: - (DisplayKitInfo *)infoByUser:(NSString *)userId
- (CancelTeamCorner *)tingVoice:(NSString *)userId
                    //: option:(DisplayKitInfoFetchOption *)option;
                    keepingOption:(CellClean *)option;
//: + (instancetype)sharedKit;
+ (instancetype)text;


/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)cells:(NIMMessage *)message;


/**
 *  返回群信息
 */
//: - (DisplayKitInfo *)infoByTeam:(NSString *)teamId
- (CancelTeamCorner *)ability:(NSString *)teamId
                    //: option:(DisplayKitInfoFetchOption *)option;
                    naturalEvent_strong:(CellClean *)option;

/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)notifyObjectType:(NSString *)teamId sessionBeforeTeamType:(NIMKitTeamType)type;

//: @end
@end
