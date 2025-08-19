// __DEBUG__
// __CLOSE_PRINT__
//
//  SignView.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchInputProtocol.h"
#import "WatchInputProtocol.h"
//: #import "WatchSessionConfig.h"
#import "MessagePinImage.h"
//: #import "WatchInputToolBar.h"
#import "OldFrameView.h"
//: #import "WatchInputAtCache.h"
#import "TimeCache.h"

//: @class WatchInputMoreContainerView;
@class EdgePositionView;
//: @class WatchInputEmoticonContainerView;
@class SpecsView;
//: @class WatchReplyContentView;
@class AnswerView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol CloseDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)red:(CGFloat)inputHeight;

//: @end
@end

//: @interface WatchInputView : UIView
@interface SignView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) WatchInputToolBar *toolBar;
@property (strong, nonatomic) OldFrameView *toolBar;
//: @property (strong, nonatomic) WatchInputMoreContainerView *moreContainer;
@property (strong, nonatomic) EdgePositionView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) WatchReplyContentView *replyedContent;
@property (nonatomic, strong) AnswerView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) WatchInputAtCache *atCache;
@property (nonatomic, strong) TimeCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithLabelConfig:(CGRect)frame
                       //: config:(id<WatchSessionConfig>)config;
                       tool:(id<MessagePinImage>)config;

//: - (void)reset;
- (void)showImage;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)max:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<CloseDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setSignaling:(id<ShowKeyBar>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setSetThroughHoldingDevice:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)holderDisplay:(NSString*)placeHolder flushMessage:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)should:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)view:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)at:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)instalment:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)magnitude;

//: @end
@end
