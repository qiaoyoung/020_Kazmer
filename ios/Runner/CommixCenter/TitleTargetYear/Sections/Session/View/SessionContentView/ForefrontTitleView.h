// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol TextUidelegate <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)titleInfo; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)mail; //重收消息
//: @end
@end

//: @interface DisplaySessionAudioContentView : DisplaySessionMessageContentView
@interface ForefrontTitleView : WithTopView

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable;//语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<TextUidelegate> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setVideo:(BOOL)isPlaying;

//: @end
@end
