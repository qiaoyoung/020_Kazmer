// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshController.h
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern NSString *const USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification;
extern NSString *const notiAspectName(NSString *value);
//: extern NSString *const USERAVMoviePlayerPlaybackDidFinishNotification;
extern NSString *const show_makeIdent(NSString *value);
//: extern NSString *const USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey;
extern NSString *const kResultData(NSString *value);
//: extern NSString *const USERAVMoviePlayerPlaybackStateDidChangeNotification;
extern NSString *const dream_modeStr(NSString *value);
//: extern NSString *const USERAVMoviePlayerLoadStateDidChangeNotification;
extern NSString *const app_minModelTitle(NSString *value);

//: typedef NS_ENUM(NSInteger, USERAVMoviePlaybackState) {
typedef NS_ENUM(NSInteger, USERAVMoviePlaybackState) {
    //: USERAVMoviePlaybackStateStopped,
    USERAVMoviePlaybackStateStopped,
    //: USERAVMoviePlaybackStatePlaying,
    USERAVMoviePlaybackStatePlaying,
    //: USERAVMoviePlaybackStatePaused,
    USERAVMoviePlaybackStatePaused,
    //: USERAVMoviePlaybackStateInterrupted,
    USERAVMoviePlaybackStateInterrupted,
    //: USERAVPMoviePlaybackStateSeekingForward,
    USERAVPMoviePlaybackStateSeekingForward,
    //: USERAVPMoviePlaybackStateSeekingBackward
    USERAVPMoviePlaybackStateSeekingBackward
//: };
};

//: typedef NS_OPTIONS(NSUInteger, USERAVMovieLoadState) {
typedef NS_OPTIONS(NSUInteger, USERAVMovieLoadState) {
    //: USERAVMovieLoadStateUnknown = 0,
    USERAVMovieLoadStateUnknown = 0,
    //: USERAVMovieLoadStatePlayable = 1 << 0,
    USERAVMovieLoadStatePlayable = 1 << 0,
    //: USERAVMovieLoadStatePlaythroughOK = 1 << 1, 
    USERAVMovieLoadStatePlaythroughOK = 1 << 1, // Playback will be automatically started in this state when shouldAutoplay is YES
    //: USERAVMovieLoadStateStalled = 1 << 2, 
    USERAVMovieLoadStateStalled = 1 << 2, // Playback will be automatically paused in this state, if started
//: };
};

//: typedef NS_ENUM(NSInteger, USERAVMovieScalingMode) {
typedef NS_ENUM(NSInteger, USERAVMovieScalingMode) {
    //: USERAVMovieScalingModeNone, 
    USERAVMovieScalingModeNone, // No scaling
    //: USERAVMovieScalingModeAspectFit, 
    USERAVMovieScalingModeAspectFit, // Uniform scale until one dimension fits
    //: USERAVMovieScalingModeAspectFill, 
    USERAVMovieScalingModeAspectFill, // Uniform scale until the movie fills the visible bounds. One dimension may have clipped contents
    //: USERAVMovieScalingModeFill 
    USERAVMovieScalingModeFill // Non-uniform scale. Both render dimensions will exactly match the visible bounds
//: };
};

//: typedef NS_OPTIONS(NSUInteger, USERAVMovieFinishReason) {
typedef NS_OPTIONS(NSUInteger, USERAVMovieFinishReason) {
    //: USERAVMovieFinishReasonPlaybackEnded,
    USERAVMovieFinishReasonPlaybackEnded,
    //: USERAVMovieFinishReasonPlaybackError,
    USERAVMovieFinishReasonPlaybackError,
    //: USERAVMovieFinishReasonUserExited
    USERAVMovieFinishReasonUserExited
//: };
};


//: @protocol LYVideoPlayerDelegate <NSObject>
@protocol RowSizeDelegate <NSObject>



// ------------------------- 回调一些视频信息 ---------------------------
/**
 @param totalTime 视频总长度（秒）
 */
//: - (void)videoPlayertotalTime:(NSInteger)totalTime;
- (void)rangeTitle:(NSInteger)totalTime;

/**
 @param currentTime 当前播放进度（秒）
 */
//: - (void)videoPlayercurrentTime:(NSInteger)currentTime;
- (void)shoulded:(NSInteger)currentTime;


//: @end
@end

//: @interface USERAVMoivePlayerController : NSObject
@interface RefreshController : NSObject

//: @property (nonatomic, weak) id <LYVideoPlayerDelegate> delegate;
@property (nonatomic, weak) id <RowSizeDelegate> delegate;

//: - (id)initWithContentURL:(NSURL *)aUrl;
- (id)initWithLinkTitle:(NSURL *)aUrl;

//: - (void)prepareToPlay;
- (void)sizeRecent;
//: - (void)play;
- (void)name;
//: - (void)pause;
- (void)theLike;
//: - (void)stop;
- (void)statusChild;

//: @property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayer *player;
//: @property(nonatomic, readonly) UIView *view;
@property(nonatomic, readonly) UIView *view;
//: @property(nonatomic, assign) NSTimeInterval currentPlaybackTime;
@property(nonatomic, assign) NSTimeInterval currentPlaybackTime;
//: @property(nonatomic, readonly) NSTimeInterval duration;
@property(nonatomic, readonly) NSTimeInterval duration;
//: @property(nonatomic, readonly) NSTimeInterval playableDuration;
@property(nonatomic, readonly) NSTimeInterval playableDuration;
//: @property(nonatomic, readonly) NSInteger bufferingProgress;
@property(nonatomic, readonly) NSInteger bufferingProgress;
//: @property(nonatomic, readonly) USERAVMoviePlaybackState playbackState;
@property(nonatomic, readonly) USERAVMoviePlaybackState playbackState;
//: @property(nonatomic, readonly) USERAVMovieLoadState loadState;
@property(nonatomic, readonly) USERAVMovieLoadState loadState;
//: @property(nonatomic, assign) USERAVMovieScalingMode scalingMode;
@property(nonatomic, assign) USERAVMovieScalingMode scalingMode;
//: @property(nonatomic, assign) float playbackRate;
@property(nonatomic, assign) float playbackRate;
//: @property(nonatomic, assign) float playbackVolume;
@property(nonatomic, assign) float playbackVolume;
//: @property(nonatomic, assign) BOOL shouldAutoplay;
@property(nonatomic, assign) BOOL shouldAutoplay;

/**
 @param toTime 从指定的时间开始播放（秒）
 */
//: - (void)seekToTimePlay:(float)toTime;
- (void)contentDoing:(float)toTime;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END