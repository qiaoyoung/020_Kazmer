// __DEBUG__
// __CLOSE_PRINT__
//
//  ContextInputView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFInputProtocol.h"
#import "FFFInputProtocol.h"
//: #import "FFFSessionConfig.h"
#import "ColorConfig.h"
//: #import "FFFInputToolBar.h"
#import "ResultCommentView.h"
//: #import "FFFInputAtCache.h"
#import "LabelSizeImage.h"

//: @class FFFInputMoreContainerView;
@class MaxAtView;
//: @class FFFInputEmoticonContainerView;
@class MakeNameView;
//: @class FFFReplyContentView;
@class BookView;



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
@protocol PathFlip <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)shoulded:(CGFloat)inputHeight;

//: @end
@end

//: @interface FFFInputView : UIView
@interface ContextInputView : UIView

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (strong, nonatomic) FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic) MaxAtView *moreContainer;

//: @property (nonatomic, strong) FFFInputAtCache *atCache;
@property (nonatomic, strong) LabelSizeImage *atCache;
//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;
//: @property (nonatomic, strong) FFFReplyContentView *replyedContent;
@property (nonatomic, strong) BookView *replyedContent;

//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (strong, nonatomic) FFFInputToolBar *toolBar;
@property (strong, nonatomic) ResultCommentView *toolBar;

//: - (void)addAtItems:(NSArray *)contacts;
- (void)showItems:(NSArray *)contacts;


//: - (void)updateVoicePower:(float)power;
- (void)power:(float)power;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithTing:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config;
                       play:(id<ColorConfig>)config;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setLocationApp:(NSString*)placeHolder;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)pageName:(NIMMessage *)message;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)canStatus:(NIMInputStatus)status;
//: - (void)dismissReplyedContent;
- (void)text;

//: - (void)reset;
- (void)nameAll;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)soap:(NSString*)placeHolder titleDisableBefore:(UIColor *)placeholderColor;
//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setValue:(id<PullDelegate>)actionDelegate;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)voice:(NSTimeInterval)time;
//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<PathFlip>)delegate;

//: @end
@end