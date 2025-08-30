// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorConfig.h
// Mortification
//
//  Created by amao on 8/12/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayMediaItem.h"
#import "CommingleItem.h"
//: #import "DisplayCellConfigDelegate.h"
#import "DisplayCellConfigDelegate.h"
//: #import "DisplayKitMessageProvider.h"
#import "LabelSessionProvider.h"
//: #import "DisplayInputBarItemType.h"
#import "DisplayInputBarItemType.h"
//: #import "DisplayInputEmoticonManager.h"
#import "IndexManager.h"

// __M_A_C_R_O__

//: @protocol DisplaySessionConfig <NSObject>
@protocol ColorConfig <NSObject>
//: @optional
@optional

/**
 *  输入按钮类型，请填入 DisplayInputBarItemType 枚举，按顺序排列。不实现则按默认排列。
 */
//: - (NSArray<NSNumber *> *)inputBarItemTypes;
- (NSArray<NSNumber *> *)positionShow;


/**
 *  可以显示在点击输入框“+”按钮之后的多媒体按钮
 */
//: - (NSArray<DisplayMediaItem *> *)mediaItems;
- (NSArray<CommingleItem *> *)cypherCell;

/**
 *  菜单选项
 */
//: - (NSArray<DisplayMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message;
- (NSArray<CommingleItem *> *)inputsed:(NIMMessage *)message;

/**
 *  菜单选项
 */
//: - (NSArray*)emotionItems;
- (NSArray*)max;

/**
 *  禁用贴图表情
 */
//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets;
- (NSArray<TitleDisplayCatalog *> *)deviceLeft;


/**
 *  是否禁用输入控件
 */
//: - (BOOL)disableInputView;
- (BOOL)changeUser;


/*
 *  是否禁用音频轮播
 */
//: - (BOOL)disableAutoPlayAudio;
- (BOOL)thanItem;

/**
 *  是否禁掉语音未读红点
 */
//: - (BOOL)disableAudioPlayedStatusIcon;
- (BOOL)upIcon;


/**
 *  是否禁用在贴耳的时候自动切换成听筒模式
 */
//: - (BOOL)disableProximityMonitor;
- (BOOL)showMonitor;


/**
 *  在进入会话的时候是否禁止自动去拿历史消息,默认打开
 */
//: - (BOOL)autoFetchWhenOpenSession;
- (BOOL)placeSession;

/**
 自动下载附件。（接收消息，刷新消息，自动拿历史消息时）
 */
//: - (BOOL)autoFetchAttachment;
- (BOOL)phaetonShadow;

/**
 *  会话页是否禁止显示新到的消息，用于显示消息历史的特定会话页，默认不禁止
 */
//: - (BOOL)disableReceiveNewMessages;
- (BOOL)tingOn;

/**
 *  是否需要处理已读回执
 *
 */
//: - (BOOL)shouldHandleReceipt;
- (BOOL)messageSize;

/**
 *  这次消息时候需要做已读回执的处理
 *
 *  @param message 消息
 *
 *  @return 是否需要
 */
//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message;
- (BOOL)notAction:(NIMMessage *)message;

/**
*  该条消息是否不允许选中
*
*  @param message 消息
*
*  @return 是否允许选中
*/
//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message;
- (BOOL)disabling:(NIMMessage *)message;

/**
 *  是否禁用进入会话自动标记会话已读，如果禁用，请自行调用 SDK markAllMessagesReadInSession 接口维护未读数。
 *
 */
//: - (BOOL)disableAutoMarkMessageRead;
- (BOOL)rearWindow;


/**
 *  输入框是否禁用 @ 功能
 *
 */
//: - (BOOL)disableAt;
- (BOOL)labelAt;

/**
 *  录音类型
 *
 *  @return 录音类型
 */
//: - (NIMAudioType)recordType;
- (NIMAudioType)beSecond;

/**
 *  消息数据提供器
 *
 *  @return 消息数据提供者，如果不实现则读取本地聊天记录
 */
//: - (id<DisplayKitMessageProvider>)messageDataProvider;
- (id<LabelSessionProvider>)contentView;

/**
 *  会话聊天背景更换接口
 */
//: - (UIImage *)sessionBackgroundImage;
- (UIImage *)afterBy;

/**
 *  @return 是否显示回复内容
 */
//: - (BOOL)needShowReplyContent;
- (BOOL)shadowContent;

/**
 *  @return 是否显示快捷回复
 */
//: - (BOOL)needShowQuickComments;
- (BOOL)moreBar;

/**
 *  @return 是否显示Pin
 */
//: - (BOOL)shouldShowPinContent;
- (BOOL)circleLocation;

/**
 *  @return 返回thread 父消息
 */
//: - (NIMMessage *)threadMessage;
- (NIMMessage *)messageMode;

/**
 *  设置 thread消息
 */
//: - (void)setThreadMessage:(NIMMessage *)message;
- (void)setMessageMode:(NIMMessage *)message;
/**
 *  清空 thread消息
 */
//: - (void)cleanThreadMessage;
- (void)threadClose;

/**
 *  @return 发完一条消息后是否清空thead 消息
 */
//: - (BOOL)clearThreadMessageAfterSent;
- (BOOL)untilMediaSent;

//: @end
@end
