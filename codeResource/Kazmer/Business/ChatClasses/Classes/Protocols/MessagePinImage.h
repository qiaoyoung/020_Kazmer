// __DEBUG__
// __CLOSE_PRINT__
//
//  MessagePinImage.h
// ButtonKit
//
//  Created by amao on 8/12/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchMediaItem.h"
#import "InfoMakeBar.h"
//: #import "WatchCellConfig.h"
#import "WatchCellConfig.h"
//: #import "WatchKitMessageProvider.h"
#import "ValueOld.h"
//: #import "WatchInputBarItemType.h"
#import "WatchInputBarItemType.h"
//: #import "WatchInputEmoticonManager.h"
#import "TitleToManager.h"

// __M_A_C_R_O__

//: @protocol WatchSessionConfig <NSObject>
@protocol MessagePinImage <NSObject>
//: @optional
@optional

/**
 *  输入按钮类型，请填入 WatchInputBarItemType 枚举，按顺序排列。不实现则按默认排列。
 */
//: - (NSArray<NSNumber *> *)inputBarItemTypes;
- (NSArray<NSNumber *> *)typesAppear;


/**
 *  可以显示在点击输入框“+”按钮之后的多媒体按钮
 */
//: - (NSArray<WatchMediaItem *> *)mediaItems;
- (NSArray<InfoMakeBar *> *)compartmentState;

/**
 *  菜单选项
 */
//: - (NSArray<WatchMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message;
- (NSArray<InfoMakeBar *> *)tableOfTextsToInscription:(NIMMessage *)message;

/**
 *  菜单选项
 */
//: - (NSArray*)emotionItems;
- (NSArray*)anagram;

/**
 *  禁用贴图表情
 */
//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets;
- (NSArray<BottomCatalog *> *)labelCharlets;


/**
 *  是否禁用输入控件
 */
//: - (BOOL)disableInputView;
- (BOOL)enableText;


/*
 *  是否禁用音频轮播
 */
//: - (BOOL)disableAutoPlayAudio;
- (BOOL)appAt;

/**
 *  是否禁掉语音未读红点
 */
//: - (BOOL)disableAudioPlayedStatusIcon;
- (BOOL)colorTitle;


/**
 *  是否禁用在贴耳的时候自动切换成听筒模式
 */
//: - (BOOL)disableProximityMonitor;
- (BOOL)atShow;


/**
 *  在进入会话的时候是否禁止自动去拿历史消息,默认打开
 */
//: - (BOOL)autoFetchWhenOpenSession;
- (BOOL)referNameSession;

/**
 自动下载附件。（接收消息，刷新消息，自动拿历史消息时）
 */
//: - (BOOL)autoFetchAttachment;
- (BOOL)valueAttachment;

/**
 *  会话页是否禁止显示新到的消息，用于显示消息历史的特定会话页，默认不禁止
 */
//: - (BOOL)disableReceiveNewMessages;
- (BOOL)ofSelected;

/**
 *  是否需要处理已读回执
 *
 */
//: - (BOOL)shouldHandleReceipt;
- (BOOL)shouldOrReceipt;

/**
 *  这次消息时候需要做已读回执的处理
 *
 *  @param message 消息
 *
 *  @return 是否需要
 */
//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message;
- (BOOL)tabling:(NIMMessage *)message;

/**
*  该条消息是否不允许选中
*
*  @param message 消息
*
*  @return 是否允许选中
*/
//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message;
- (BOOL)barMessage:(NIMMessage *)message;

/**
 *  是否禁用进入会话自动标记会话已读，如果禁用，请自行调用 SDK markAllMessagesReadInSession 接口维护未读数。
 *
 */
//: - (BOOL)disableAutoMarkMessageRead;
- (BOOL)restrainUnder;


/**
 *  输入框是否禁用 @ 功能
 *
 */
//: - (BOOL)disableAt;
- (BOOL)disableCount;

/**
 *  录音类型
 *
 *  @return 录音类型
 */
//: - (NIMAudioType)recordType;
- (NIMAudioType)tableFrom;

/**
 *  消息数据提供器
 *
 *  @return 消息数据提供者，如果不实现则读取本地聊天记录
 */
//: - (id<WatchKitMessageProvider>)messageDataProvider;
- (id<ValueOld>)bubbleBy;

/**
 *  会话聊天背景更换接口
 */
//: - (UIImage *)sessionBackgroundImage;
- (UIImage *)sub;

/**
 *  @return 是否显示回复内容
 */
//: - (BOOL)needShowReplyContent;
- (BOOL)vocalisationMode;

/**
 *  @return 是否显示快捷回复
 */
//: - (BOOL)needShowQuickComments;
- (BOOL)managerComments;

/**
 *  @return 是否显示Pin
 */
//: - (BOOL)shouldShowPinContent;
- (BOOL)messageIn;

/**
 *  @return 返回thread 父消息
 */
//: - (NIMMessage *)threadMessage;
- (NIMMessage *)circleMessage;

/**
 *  设置 thread消息
 */
//: - (void)setThreadMessage:(NIMMessage *)message;
- (void)setCircleMessage:(NIMMessage *)message;
/**
 *  清空 thread消息
 */
//: - (void)cleanThreadMessage;
- (void)messageCell;

/**
 *  @return 发完一条消息后是否清空thead 消息
 */
//: - (BOOL)clearThreadMessageAfterSent;
- (BOOL)mySent;

//: @end
@end
