// __DEBUG__
// __CLOSE_PRINT__
//
//  ThoughtImageControl.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchKitEvent.h"
#import "CoverShowEvent.h"

//: typedef NS_ENUM (NSInteger, WatchSessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, WatchSessionMessageContentViewLayout){
    //: WatchSessionMessageContentViewLayoutAuto = 0, 
    WatchSessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: WatchSessionMessageContentViewLayoutLeft, 
    WatchSessionMessageContentViewLayoutLeft, //左边布局
    //: WatchSessionMessageContentViewLayoutRight, 
    WatchSessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol CypherOption <NSObject>

//: - (void)onCatchEvent:(WatchKitEvent *)event;
- (void)modelled:(CoverShowEvent *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)contenting:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)viewLength:(NIMMessage *)message container:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)bubbles:(NIMMessage *)message;


//: @end
@end

//: @class WatchMessageModel;
@class CentralProcessingUnitModel;

//: @interface WatchSessionMessageContentView : UIControl
@interface ThoughtImageControl : UIControl

//: @property (nonatomic,strong,readonly) WatchMessageModel *model;
@property (nonatomic,strong,readonly) CentralProcessingUnitModel *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) WatchSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) WatchSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<CypherOption> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initSumView;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(WatchMessageModel*)data;
- (void)lengthAt:(CentralProcessingUnitModel*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)searched:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)events:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)views:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)upPage:(UIControlState)state accountVisualisation:(BOOL)outgoing;

//: @end
@end
