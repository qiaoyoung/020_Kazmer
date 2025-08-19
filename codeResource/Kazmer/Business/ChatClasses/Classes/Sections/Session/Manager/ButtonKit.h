// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonKit.h
// ButtonKit
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFLanguageManager.h"
#import "PaintedNaturalLanguageTo.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitInfo.h"
#import "TingMessage.h"
//: #import "FFFMediaItem.h"            //多媒体面板对象
#import "InfoMakeBar.h"            //多媒体面板对象
//: #import "FFFMessageModel.h"         //message Wrapper
#import "CentralProcessingUnitModel.h"         //message Wrapper
//: #import "FFFKitMessageProvider.h"
#import "ValueOld.h"
//: #import "FFFCellConfig.h"           //message cell配置协议
#import "FFFCellConfig.h"           //message cell配置协议
//: #import "FFFInputProtocol.h"        //输入框回调
#import "FFFInputProtocol.h"        //输入框回调
//: #import "FFFKitDataProvider.h"      //APP内容提供器
#import "ToProvider.h"      //APP内容提供器
//: #import "FFFMessageCellProtocol.h"  //message cell事件回调
#import "FFFMessageCellProtocol.h"  //message cell事件回调
//: #import "FFFSessionConfig.h"        //会话页面配置
#import "MessagePinImage.h"        //会话页面配置
//: #import "FFFKitEvent.h"             //点击事件封装类
#import "CoverShowEvent.h"             //点击事件封装类
//: #import "FFFCellLayoutConfig.h"
#import "PinFrame.h"
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "FFFKitConfig.h"
#import "ShowConfig.h"
//: #import "FFFSessionViewController.h"
#import "CollectionViewController.h"
//: #import "FFFSessionListViewController.h"
#import "WeltanschauungViewController.h"
//: #import "FFFKitIndependentModeExtraInfo.h"
#import "CloseInfo.h"
//: #import "FFFChatUIManagerProtocol.h"
#import "FFFChatUIManagerProtocol.h"
//: #import "FFFCollectionViewLeftAlignedLayout.h"
#import "ButtonFlowLayout.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "NameUtilPath.h"

//: extern double NIMKitVersionNumber;
extern double k_objectBlockTitle;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char k_secondTitle[];

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
@interface ButtonKit : NSObject

//: + (instancetype)sharedKit;
+ (instancetype)sheerOption;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig;
- (void)secretMargin:(PinFrame *)layoutConfig;

/**
 *  返回当前的排版配置
 */
//: - (id<FFFCellLayoutConfig>)layoutConfig;
- (id<PinFrame>)layoutConfig;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) FFFKitConfig *config;
@property (nonatomic,strong) ShowConfig *config;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<FFFKitDataProvider> provider;
@property (nonatomic,strong) id<ToProvider> provider;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 ToProvider ( InputImpl ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) FFFKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) CloseInfo *independentModeExtraInfo;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<FFFChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<ZoneUimanager> chatUIManager;

/**
 *  NIMKit表情资源所在的 bundle 名称。
 */
//: @property (nonatomic, copy) NSBundle *emoticonBundle;
@property (nonatomic, copy) NSBundle *emoticonBundle;

/**
 *  NIMKit语言所在Bundle, 启动的时候根据系统语言会选择对应的语言包，后面用户可替换
 */
//: @property (nonatomic, strong) NSBundle * languageBundle;
@property (nonatomic, strong) NSBundle * languageBundle;

/**
 *  NIMKit语言所在Table，默认 language
 */
//: @property (nonatomic, copy) NSString * languageTable;
@property (nonatomic, copy) NSString * languageTable;

/**
 *  NIMKit语言所在Table，默认 获取系统语言
 */
//: @property (nonatomic, copy) NSString * defaultLanguage;
@property (nonatomic, copy) NSString * defaultLanguage;

/**
 *  用户信息变更通知接口
 *
 *  @param userIds 用户 id 集合
 */
//: - (void)notfiyUserInfoChanged:(NSArray *)userIds;
- (void)manager:(NSArray *)userIds;

/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)reply:(NSString *)teamId device:(NIMKitTeamType)type;


/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)withType:(NSString *)teamId mainTeamType:(NIMKitTeamType)type;

/**
 *  返回用户信息
 */
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (TingMessage *)past:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option;
                    skinColour_strong:(CoverTingContent *)option;

/**
 *  返回群信息
 */
//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (TingMessage *)pressMedia:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option;
                    sizeOption:(CoverTingContent *)option;

/**
 *  返回群信息
 */
//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (TingMessage *)tiddler:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option;
                         ting:(CoverTingContent *)option;

/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)buttons:(NIMMessage *)message;

//: @end
@end