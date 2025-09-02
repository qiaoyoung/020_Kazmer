// __DEBUG__
// __CLOSE_PRINT__
//
//  WithTopView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayKitEvent.h"
#import "ToiletKitSession.h"

//: typedef NS_ENUM (NSInteger, DisplaySessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, DisplaySessionMessageContentViewLayout){
    //: DisplaySessionMessageContentViewLayoutAuto = 0, 
    DisplaySessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: DisplaySessionMessageContentViewLayoutLeft, 
    DisplaySessionMessageContentViewLayoutLeft, //左边布局
    //: DisplaySessionMessageContentViewLayoutRight, 
    DisplaySessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol TranslateDelegate <NSObject>

//: - (void)onCatchEvent:(DisplayKitEvent *)event;
- (void)surprised:(ToiletKitSession *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)buttonned:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)with:(NIMMessage *)message view:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)cut:(NIMMessage *)message;


//: @end
@end

//: @class DisplayMessageModel;
@class CleanDoing;

//: @interface DisplaySessionMessageContentView : UIControl
@interface WithTopView : UIControl

//: @property (nonatomic,strong,readonly) DisplayMessageModel *model;
@property (nonatomic,strong,readonly) CleanDoing *model;

//: @property (nonatomic,assign) DisplaySessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) DisplaySessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<TranslateDelegate> delegate;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)colorLength:(UIControlState)state label:(BOOL)outgoing;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)alonged:(id)sender;


/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initCrop;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)labelled:(id)sender;

/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)cannulised:(id)sender;


/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(DisplayMessageModel*)data;
- (void)from:(CleanDoing*)data;

//: @end
@end
