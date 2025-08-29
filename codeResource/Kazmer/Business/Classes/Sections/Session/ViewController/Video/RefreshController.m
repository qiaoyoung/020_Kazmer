
#import <Foundation/Foundation.h>

@interface AdministerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AdministerData

+ (instancetype)sharedInstance {
    static AdministerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AdministerDataToCache:(Byte *)data {
    int despite = data[0];
    int nonProfitMaking = data[1];
    for (int i = 0; i < despite / 2; i++) {
        int begin = nonProfitMaking + i;
        int end = nonProfitMaking + despite - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[nonProfitMaking + despite] = 0;
    return data + nonProfitMaking;
}

- (NSString *)StringFromAdministerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AdministerDataToCache:data]];
}  

//: rate
- (NSString *)kContentKnowData {
    /* static */ NSString *kContentKnowData = nil;
    if (!kContentKnowData) {
        Byte value[] = {4, 9, 181, 241, 246, 42, 41, 103, 140, 101, 116, 97, 114, 10};
        kContentKnowData = [self StringFromAdministerData:value];
    }
    return kContentKnowData;
}

//: USERAVMoviePlayerPlaybackDidFinishNotification
- (NSString *)kText_senString {
    /* static */ NSString *kText_senString = nil;
    if (!kText_senString) {
        Byte value[] = {46, 9, 127, 23, 79, 98, 230, 88, 226, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 104, 115, 105, 110, 105, 70, 100, 105, 68, 107, 99, 97, 98, 121, 97, 108, 80, 114, 101, 121, 97, 108, 80, 101, 105, 118, 111, 77, 86, 65, 82, 69, 83, 85, 90};
        kText_senString = [self StringFromAdministerData:value];
    }
    return kText_senString;
}

//: playbackBufferFull
- (NSString *)kTitle_glanceString {
    /* static */ NSString *kTitle_glanceString = nil;
    if (!kTitle_glanceString) {
        Byte value[] = {18, 9, 77, 184, 136, 37, 98, 58, 63, 108, 108, 117, 70, 114, 101, 102, 102, 117, 66, 107, 99, 97, 98, 121, 97, 108, 112, 7};
        kTitle_glanceString = [self StringFromAdministerData:value];
    }
    return kTitle_glanceString;
}

//: AVMoviePlayer
- (NSString *)kContent_greetTapValue {
    /* static */ NSString *kContent_greetTapValue = nil;
    if (!kContent_greetTapValue) {
        Byte value[] = {13, 12, 163, 75, 248, 183, 123, 65, 116, 215, 240, 124, 114, 101, 121, 97, 108, 80, 101, 105, 118, 111, 77, 86, 65, 9};
        kContent_greetTapValue = [self StringFromAdministerData:value];
    }
    return kContent_greetTapValue;
}

//: USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey
- (NSString *)kTitle_overnightContent {
    /* static */ NSString *kTitle_overnightContent = nil;
    if (!kTitle_overnightContent) {
        Byte value[] = {51, 5, 131, 43, 220, 121, 101, 75, 111, 102, 110, 73, 114, 101, 115, 85, 110, 111, 115, 97, 101, 82, 104, 115, 105, 110, 105, 70, 100, 105, 68, 107, 99, 97, 98, 121, 97, 108, 80, 114, 101, 121, 97, 108, 80, 101, 105, 118, 111, 77, 86, 65, 82, 69, 83, 85, 107};
        kTitle_overnightContent = [self StringFromAdministerData:value];
    }
    return kTitle_overnightContent;
}

//: currentItem
- (NSString *)kText_assistanceData {
    /* static */ NSString *kText_assistanceData = nil;
    if (!kText_assistanceData) {
        Byte value[] = {11, 9, 19, 3, 39, 194, 141, 160, 128, 109, 101, 116, 73, 116, 110, 101, 114, 114, 117, 99, 188};
        kText_assistanceData = [self StringFromAdministerData:value];
    }
    return kText_assistanceData;
}

//: playbackBufferEmpty
- (NSString *)kTitlePlaceCastData {
    /* static */ NSString *kTitlePlaceCastData = nil;
    if (!kTitlePlaceCastData) {
        Byte value[] = {19, 6, 50, 93, 85, 68, 121, 116, 112, 109, 69, 114, 101, 102, 102, 117, 66, 107, 99, 97, 98, 121, 97, 108, 112, 167};
        kTitlePlaceCastData = [self StringFromAdministerData:value];
    }
    return kTitlePlaceCastData;
}

//: USERAVMoviePlayerPlaybackStateDidChangeNotification
- (NSString *)kTitle_retiredDeviceComeString {
    /* static */ NSString *kTitle_retiredDeviceComeString = nil;
    if (!kTitle_retiredDeviceComeString) {
        Byte value[] = {51, 4, 212, 195, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 101, 103, 110, 97, 104, 67, 100, 105, 68, 101, 116, 97, 116, 83, 107, 99, 97, 98, 121, 97, 108, 80, 114, 101, 121, 97, 108, 80, 101, 105, 118, 111, 77, 86, 65, 82, 69, 83, 85, 41};
        kTitle_retiredDeviceComeString = [self StringFromAdministerData:value];
    }
    return kTitle_retiredDeviceComeString;
}

//: USERAVMoviePlayerLoadStateDidChangeNotification
- (NSString *)kTextNumbReputationValue {
    /* static */ NSString *kTextNumbReputationValue = nil;
    if (!kTextNumbReputationValue) {
        Byte value[] = {47, 12, 9, 32, 239, 216, 86, 183, 207, 193, 166, 202, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 101, 103, 110, 97, 104, 67, 100, 105, 68, 101, 116, 97, 116, 83, 100, 97, 111, 76, 114, 101, 121, 97, 108, 80, 101, 105, 118, 111, 77, 86, 65, 82, 69, 83, 85, 94};
        kTextNumbReputationValue = [self StringFromAdministerData:value];
    }
    return kTextNumbReputationValue;
}

//: error
- (NSString *)kText_teachData {
    /* static */ NSString *kText_teachData = nil;
    if (!kText_teachData) {
        Byte value[] = {5, 10, 239, 214, 7, 197, 246, 130, 186, 190, 114, 111, 114, 114, 101, 6};
        kText_teachData = [self StringFromAdministerData:value];
    }
    return kText_teachData;
}

//: USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification
- (NSString *)kName_privacyString {
    /* static */ NSString *kName_privacyString = nil;
    if (!kName_privacyString) {
        Byte value[] = {56, 11, 104, 100, 39, 229, 131, 64, 112, 244, 184, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 101, 103, 110, 97, 104, 67, 100, 105, 68, 121, 97, 108, 80, 111, 84, 100, 101, 114, 97, 112, 101, 114, 80, 115, 73, 107, 99, 97, 98, 121, 97, 108, 80, 97, 105, 100, 101, 77, 86, 65, 82, 69, 83, 85, 145};
        kName_privacyString = [self StringFromAdministerData:value];
    }
    return kName_privacyString;
}

//: current player item is nil
- (NSString *)kName_symbolData {
    /* static */ NSString *kName_symbolData = nil;
    if (!kName_symbolData) {
        Byte value[] = {26, 7, 166, 188, 195, 90, 206, 108, 105, 110, 32, 115, 105, 32, 109, 101, 116, 105, 32, 114, 101, 121, 97, 108, 112, 32, 116, 110, 101, 114, 114, 117, 99, 155};
        kName_symbolData = [self StringFromAdministerData:value];
    }
    return kName_symbolData;
}

//: playbackLikelyToKeepUp
- (NSString *)kContent_wheatRelieveEnableString {
    /* static */ NSString *kContent_wheatRelieveEnableString = nil;
    if (!kContent_wheatRelieveEnableString) {
        Byte value[] = {22, 5, 48, 51, 38, 112, 85, 112, 101, 101, 75, 111, 84, 121, 108, 101, 107, 105, 76, 107, 99, 97, 98, 121, 97, 108, 112, 245};
        kContent_wheatRelieveEnableString = [self StringFromAdministerData:value];
    }
    return kContent_wheatRelieveEnableString;
}

//: player item cancelled
- (NSString *)kText_chopData {
    /* static */ NSString *kText_chopData = nil;
    if (!kText_chopData) {
        Byte value[] = {21, 9, 150, 43, 227, 244, 168, 179, 80, 100, 101, 108, 108, 101, 99, 110, 97, 99, 32, 109, 101, 116, 105, 32, 114, 101, 121, 97, 108, 112, 189};
        kText_chopData = [self StringFromAdministerData:value];
    }
    return kText_chopData;
}

//: playable
- (NSString *)kText_cookingString {
    /* static */ NSString *kText_cookingString = nil;
    if (!kText_cookingString) {
        Byte value[] = {8, 12, 40, 136, 71, 93, 8, 192, 47, 224, 31, 39, 101, 108, 98, 97, 121, 97, 108, 112, 83};
        kText_cookingString = [self StringFromAdministerData:value];
    }
    return kText_cookingString;
}

//: loadedTimeRanges
- (NSString *)kTitleQuestClinicTextString {
    /* static */ NSString *kTitleQuestClinicTextString = nil;
    if (!kTitleQuestClinicTextString) {
        Byte value[] = {16, 3, 41, 115, 101, 103, 110, 97, 82, 101, 109, 105, 84, 100, 101, 100, 97, 111, 108, 10};
        kTitleQuestClinicTextString = [self StringFromAdministerData:value];
    }
    return kTitleQuestClinicTextString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshController.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERAVMoivePlayerController.h"
#import "RefreshController.h"
//: #import "USERAVPlayerView.h"
#import "YearTitleView.h"

//: static NSString *kErrorDomain = @"IJKAVMoviePlayer";
static NSString *mUseMessage = @"IJKAVMoviePlayer";
//: static const NSInteger kEC_CurrentPlayerItemIsNil = 5001;

static const NSInteger dream_orientationMessage (NSString *value) {
    if (value) {
        return  5001;
    }
    return  5001;
};
//: static const NSInteger kEC_PlayerItemCancelled = 5002;

static const NSInteger mainCommonMessage (NSString *value) {
    if (value) {
        return  5002;
    }
    return  5002;
};

//: static const float kMaxHighWaterMarkMilli = 15 * 1000;

static const float userOptionIdent (NSString *value) {
    if (value) {
        return  15 * 1000;
    }
    return  15 * 1000;
};

//: static void *KVO_AVPlayer_rate = &KVO_AVPlayer_rate;
static void *mainButtonTagColorTitle = &mainButtonTagColorTitle;
//: static void *KVO_AVPlayer_currentItem = &KVO_AVPlayer_currentItem;
static void *notiStatePath = &notiStatePath;
//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *app_topMessage = &app_topMessage;
//: static void *KVO_AVPlayerItem_loadedTimeRanges = &KVO_AVPlayerItem_loadedTimeRanges;
static void *show_formatText = &show_formatText;
//: static void *KVO_AVPlayerItem_playbackLikelyToKeepUp = &KVO_AVPlayerItem_playbackLikelyToKeepUp;
static void *mTitleFormat = &mTitleFormat;
//: static void *KVO_AVPlayerItem_playbackBufferFull = &KVO_AVPlayerItem_playbackBufferFull;
static void *mainArrowShouldUpKey = &mainArrowShouldUpKey;
//: static void *KVO_AVPlayerItem_playbackBufferEmpty = &KVO_AVPlayerItem_playbackBufferEmpty;
static void *main_infoIdent = &main_infoIdent;

//: NSString *const USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification =

NSString *const notiAspectName (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"session"];
    }
    return 
//: @"USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
[[AdministerData sharedInstance] kName_privacyString];
};
//: NSString *const USERAVMoviePlayerPlaybackDidFinishNotification =

NSString *const show_makeIdent (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"back"];
    }
    return 
//: @"USERAVMoviePlayerPlaybackDidFinishNotification";
[[AdministerData sharedInstance] kText_senString];
};
//: NSString *const USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey =

NSString *const kResultData (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"up"];
    }
    return 
//: @"USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
[[AdministerData sharedInstance] kTitle_overnightContent];
};
//: NSString *const USERAVMoviePlayerPlaybackStateDidChangeNotification =

NSString *const dream_modeStr (NSString *value) {
    if (value) {
        return [value.lowercaseString stringByAppendingString:@"user"];
    }
    return 
//: @"USERAVMoviePlayerPlaybackStateDidChangeNotification";
[[AdministerData sharedInstance] kTitle_retiredDeviceComeString];
};
//: NSString *const USERAVMoviePlayerLoadStateDidChangeNotification =

NSString *const app_minModelTitle (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"announcement"];
    }
    return 
//: @"USERAVMoviePlayerLoadStateDidChangeNotification";
[[AdministerData sharedInstance] kTextNumbReputationValue];
};

//: inline static BOOL isFloatZero(float value)
inline static BOOL emptyZero(float value)
{
    //: return fabsf(value) <= 0.00001f;
    return fabsf(value) <= 0.00001f;
}

//: static dispatch_once_t _readyToPlayToken;
static dispatch_once_t show_lastTitle;

//: @interface USERAVMoivePlayerController ()
@interface RefreshController ()
{
    //: BOOL _isPrerolling;
    BOOL _isPrerolling;
    //: BOOL _isSeeking;
    BOOL _isSeeking;
    //: BOOL _isError;
    BOOL _isError;
    //: BOOL _isCompleted;
    BOOL _isCompleted;
    //: BOOL _isShutdown;
    BOOL _isShutdown;

    //: BOOL _playbackLikelyToKeeyUp;
    BOOL _playbackLikelyToKeeyUp;
    //: BOOL _playbackBufferEmpty;
    BOOL _playbackBufferEmpty;
    //: BOOL _playbackBufferFull;
    BOOL _playbackBufferFull;
    //: BOOL _playingBeforeInterruption;
    BOOL _playingBeforeInterruption;

    //: NSTimeInterval _seekingTime;
    NSTimeInterval _seekingTime;
}
//: @property (nonatomic, strong) NSURL *playUrl;
@property (nonatomic, strong) NSURL *playUrl;
//: @property (nonatomic, strong) AVURLAsset *playAsset;
@property (nonatomic, strong) AVURLAsset *playAsset;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;

//: @property (nonatomic, strong) id timeObserve; 
@property (nonatomic, strong) id timeObserve;//监听播放进度

//: @property (nonatomic, strong) USERAVPlayerView *view;
@property (nonatomic, strong) YearTitleView *view;
//: @property (nonatomic, assign) NSInteger bufferingProgress;
@property (nonatomic, assign) NSInteger bufferingProgress;
//: @property (nonatomic, assign) BOOL isPreparedToPlay;
@property (nonatomic, assign) BOOL isPreparedToPlay;
//: @property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) NSTimeInterval duration;
//: @property (nonatomic, assign) NSTimeInterval playableDuration;
@property (nonatomic, assign) NSTimeInterval playableDuration;
//: @property (nonatomic, assign) USERAVMoviePlaybackState playbackState;
@property (nonatomic, assign) USERAVMoviePlaybackState playbackState;
//: @property (nonatomic, assign) USERAVMovieLoadState loadState;
@property (nonatomic, assign) USERAVMovieLoadState loadState;

//: @end
@end

//: @implementation USERAVMoivePlayerController
@implementation RefreshController

//: @synthesize currentPlaybackTime = _currentPlaybackTime;
@synthesize currentPlaybackTime = _currentPlaybackTime;

//: - (void)dealloc {
- (void)dealloc {
    //: [self shutdown];
    [self infoFile];
}

//: - (id)initWithContentURL:(NSURL *)aUrl {
- (id)initWithLinkTitle:(NSURL *)aUrl {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _scalingMode = USERAVMovieScalingModeAspectFit;
        _scalingMode = USERAVMovieScalingModeAspectFit;
        //: _playUrl = aUrl;
        _playUrl = aUrl;
        //: _view = [[USERAVPlayerView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _view = [[YearTitleView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        //: _isSeeking = NO;
        _isSeeking = NO;
        //: _isError = NO;
        _isError = NO;
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: _bufferingProgress = 0;
        _bufferingProgress = 0;
        //: _playbackLikelyToKeeyUp = NO;
        _playbackLikelyToKeeyUp = NO;
        //: _playbackBufferEmpty = YES;
        _playbackBufferEmpty = YES;
        //: _playbackBufferFull = NO;
        _playbackBufferFull = NO;
        //: _playbackRate = 1.0f;
        _playbackRate = 1.0f;
        //: _playbackVolume = 1.0f;
        _playbackVolume = 1.0f;
        //: _shouldAutoplay = YES;
        _shouldAutoplay = YES;
        //: [self setScreenOn:YES];
        [self setSession:YES];
        //: [self registerApplicationObservers];
        [self tool];
    }
    //: return self;
    return self;
}

//: - (void)prepareToPlay {
- (void)sizeRecent {
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    //: NSArray *requestedKeys = @[@"playable"];
    NSArray *requestedKeys = @[[[AdministerData sharedInstance] kText_cookingString]];

    //: _playAsset = asset;
    _playAsset = asset;
    //: [asset loadValuesAsynchronouslyForKeys:requestedKeys
    [asset loadValuesAsynchronouslyForKeys:requestedKeys
                         //: completionHandler:^{
                         completionHandler:^{
                             //: dispatch_async( dispatch_get_main_queue(), ^{
                             dispatch_async( dispatch_get_main_queue(), ^{
                                 //: [self didPrepareToPlayAsset:asset withKeys:requestedKeys];
                                 [self global:asset breadbox:requestedKeys];
                                 //: [self setPlaybackVolume:_playbackVolume];
                                 [self setPlaybackVolume:_playbackVolume];
                             //: });
                             });
                         //: }];
                         }];
}

//: - (void)play {
- (void)name {
    //: if (_isCompleted)
    if (_isCompleted)
    {
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: [_player seekToTime:kCMTimeZero];
        [_player seekToTime:kCMTimeZero];
    }
    //: [_player play];
    [_player play];
}

//: - (void)pause {
- (void)theLike {
    //: _isPrerolling = NO;
    _isPrerolling = NO;
    //: [_player pause];
    [_player pause];
}

//: - (void)stop {
- (void)statusChild {
    //: [_player pause];
    [_player pause];
    //: [self setScreenOn:NO];
    [self setSession:NO];
    //: _isCompleted = YES;
    _isCompleted = YES;
}

//: - (BOOL)isPlaying
- (BOOL)straddlePlaying
{
    //: if (!isFloatZero(_player.rate)) {
    if (!emptyZero(_player.rate)) {
        //: return YES;
        return YES;
    //: } else {
    } else {
        //: if (_isPrerolling) {
        if (_isPrerolling) {
            //: return YES;
            return YES;
        //: } else {
        } else {
            //: return NO;
            return NO;
        }
    }
}

//: - (void)shutdown {
- (void)infoFile {
    //: _isShutdown = YES;
    _isShutdown = YES;
    //: [self stop];
    [self statusChild];

    //: if (_playerItem != nil) {
    if (_playerItem != nil) {
        //: [_playerItem cancelPendingSeeks];
        [_playerItem cancelPendingSeeks];
    }
    //: if (self.timeObserve) {
    if (self.timeObserve) {
        //: [self.player removeTimeObserver:self.timeObserve];
        [self.player removeTimeObserver:self.timeObserve];
        //: self.timeObserve = nil;
        self.timeObserve = nil;
    }

    //: [self removeItemKeyValueObservers];
    [self inputObservers];
    //: [self removePlayerKeyValueObservers];
    [self sizeValue];
    //: [self unregisterApplicationObservers];
    [self model];

    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
}

//: - (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
- (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return;
        return;

    //: _seekingTime = aCurrentPlaybackTime;
    _seekingTime = aCurrentPlaybackTime;
    //: _isSeeking = YES;
    _isSeeking = YES;
    //: _bufferingProgress = 0;
    _bufferingProgress = 0;
    //: [self didPlaybackStateChange];
    [self showAdministrativeDivision];
    //: [self didLoadStateChange];
    [self title];
    //: if (_isPrerolling) {
    if (_isPrerolling) {
        //: [_player pause];
        [_player pause];
    }

    //: [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
    [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
      //: completionHandler:^(BOOL finished) {
      completionHandler:^(BOOL finished) {
          //: dispatch_async(dispatch_get_main_queue(), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
              //: _isSeeking = NO;
              _isSeeking = NO;
              //: if (_isPrerolling) {
              if (_isPrerolling) {
                  //: [_player play];
                  [_player play];
              }
              //: [self didPlaybackStateChange];
              [self showAdministrativeDivision];
              //: [self didLoadStateChange];
              [self title];
          //: });
          });
      //: }];
      }];
}

//: - (NSTimeInterval)currentPlaybackTime
- (NSTimeInterval)currentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return 0.0f;
        return 0.0f;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return _seekingTime;
        return _seekingTime;

    //: return CMTimeGetSeconds([_player currentTime]);
    return CMTimeGetSeconds([_player currentTime]);
}

//: - (USERAVMoviePlaybackState)playbackState
- (USERAVMoviePlaybackState)playbackState
{
    //: if (!_player)
    if (!_player)
        //: return USERAVMoviePlaybackStateStopped;
        return USERAVMoviePlaybackStateStopped;

    //: USERAVMoviePlaybackState mpState = USERAVMoviePlaybackStateStopped;
    USERAVMoviePlaybackState mpState = USERAVMoviePlaybackStateStopped;
    //: if (_isCompleted) {
    if (_isCompleted) {
        //: mpState = USERAVMoviePlaybackStateStopped;
        mpState = USERAVMoviePlaybackStateStopped;
    //: } else if (_isSeeking) {
    } else if (_isSeeking) {
        //: mpState = USERAVPMoviePlaybackStateSeekingForward;
        mpState = USERAVPMoviePlaybackStateSeekingForward;
    //: } else if ([self isPlaying]) {
    } else if ([self straddlePlaying]) {
        //: mpState = USERAVMoviePlaybackStatePlaying;
        mpState = USERAVMoviePlaybackStatePlaying;
    //: } else {
    } else {
        //: mpState = USERAVMoviePlaybackStatePaused;
        mpState = USERAVMoviePlaybackStatePaused;
    }
    //: return mpState;
    return mpState;
}

//: - (USERAVMovieLoadState)loadState
- (USERAVMovieLoadState)loadState
{
    //: if (_player == nil)
    if (_player == nil)
        //: return USERAVMovieLoadStateUnknown;
        return USERAVMovieLoadStateUnknown;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return USERAVMovieLoadStateStalled;
        return USERAVMovieLoadStateStalled;

    //: AVPlayerItem *playerItem = [_player currentItem];
    AVPlayerItem *playerItem = [_player currentItem];
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return USERAVMovieLoadStateUnknown;
        return USERAVMovieLoadStateUnknown;

    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !emptyZero(_player.rate)) {
        //: return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
        return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferFull]) {
    } else if ([playerItem isPlaybackBufferFull]) {
        //: return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
        return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackLikelyToKeepUp]) {
    } else if ([playerItem isPlaybackLikelyToKeepUp]) {
        //: return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
        return USERAVMovieLoadStatePlayable | USERAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferEmpty]) {
    } else if ([playerItem isPlaybackBufferEmpty]) {
        //: return USERAVMovieLoadStateStalled;
        return USERAVMovieLoadStateStalled;
    //: } else {
    } else {
        //: return USERAVMovieLoadStateUnknown;
        return USERAVMovieLoadStateUnknown;
    }
}

//: -(void)setPlaybackRate:(float)playbackRate
-(void)setPlaybackRate:(float)playbackRate
{
    //: _playbackRate = playbackRate;
    _playbackRate = playbackRate;
    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !emptyZero(_player.rate)) {
        //: _player.rate = _playbackRate;
        _player.rate = _playbackRate;
    }
}

//: -(void)setPlaybackVolume:(float)playbackVolume
-(void)setPlaybackVolume:(float)playbackVolume
{
    //: _playbackVolume = playbackVolume;
    _playbackVolume = playbackVolume;
    //: if (_player != nil && _player.volume != playbackVolume) {
    if (_player != nil && _player.volume != playbackVolume) {
        //: _player.volume = playbackVolume;
        _player.volume = playbackVolume;
    }
    //: BOOL muted = fabs(playbackVolume) < 1e-6;
    BOOL muted = fabs(playbackVolume) < 1e-6;
    //: if (_player != nil && _player.muted != muted) {
    if (_player != nil && _player.muted != muted) {
        //: _player.muted = muted;
        _player.muted = muted;
    }
}

//: - (void)setScalingMode: (USERAVMovieScalingMode) aScalingMode
- (void)setScalingMode: (USERAVMovieScalingMode) aScalingMode
{
    //: USERAVMovieScalingMode newScalingMode = aScalingMode;
    USERAVMovieScalingMode newScalingMode = aScalingMode;
    //: switch (aScalingMode) {
    switch (aScalingMode) {
        //: case USERAVMovieScalingModeNone:
        case USERAVMovieScalingModeNone:
            //: [_view setContentMode:UIViewContentModeCenter];
            [_view setContentMode:UIViewContentModeCenter];
            //: break;
            break;
        //: case USERAVMovieScalingModeAspectFit:
        case USERAVMovieScalingModeAspectFit:
            //: [_view setContentMode:UIViewContentModeScaleAspectFit];
            [_view setContentMode:UIViewContentModeScaleAspectFit];
            //: break;
            break;
        //: case USERAVMovieScalingModeAspectFill:
        case USERAVMovieScalingModeAspectFill:
            //: [_view setContentMode:UIViewContentModeScaleAspectFill];
            [_view setContentMode:UIViewContentModeScaleAspectFill];
            //: break;
            break;
        //: case USERAVMovieScalingModeFill:
        case USERAVMovieScalingModeFill:
            //: [_view setContentMode:UIViewContentModeScaleToFill];
            [_view setContentMode:UIViewContentModeScaleToFill];
            //: break;
            break;
        //: default:
        default:
            //: newScalingMode = _scalingMode;
            newScalingMode = _scalingMode;
    }
    //: _scalingMode = newScalingMode;
    _scalingMode = newScalingMode;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)setScreenOn: (BOOL)on
- (void)setSession: (BOOL)on
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [UIApplication sharedApplication].idleTimerDisabled = YES;
        [UIApplication sharedApplication].idleTimerDisabled = YES;
    //: });
    });
}

//: - (void)didPrepareToPlayAsset:(AVURLAsset *)asset withKeys:(NSArray *)requestedKeys
- (void)global:(AVURLAsset *)asset breadbox:(NSArray *)requestedKeys
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: for (NSString *thisKey in requestedKeys)
    for (NSString *thisKey in requestedKeys)
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        //: if (keyStatus == AVKeyValueStatusFailed)
        if (keyStatus == AVKeyValueStatusFailed)
        {
            //: [self assetFailedToPrepareForPlayback:error];
            [self hale:error];
            //: return;
            return;
        //: } else if (keyStatus == AVKeyValueStatusCancelled) {
        } else if (keyStatus == AVKeyValueStatusCancelled) {
            // TODO [AVAsset cancelLoading]
            //: error = [self createErrorWithCode:kEC_PlayerItemCancelled
            error = [self manager:mainCommonMessage(nil)
                                  //: description:@"player item cancelled"
                                  find_strong:[[AdministerData sharedInstance] kText_chopData]
                                       //: reason:nil];
                                       contentAdd:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self hale:error];
            //: return;
            return;
        }
    }

    //: if (!asset.playable)
    if (!asset.playable)
    {
        //: NSError *assetCannotBePlayedError = [NSError errorWithDomain:@"AVMoviePlayer"
        NSError *assetCannotBePlayedError = [NSError errorWithDomain:[[AdministerData sharedInstance] kContent_greetTapValue]
                                                                //: code:0
                                                                code:0
                                                            //: userInfo:nil];
                                                            userInfo:nil];

        //: [self assetFailedToPrepareForPlayback:assetCannotBePlayedError];
        [self hale:assetCannotBePlayedError];
        //: return;
        return;
    }

    //player item
    //: [self setupPlayerItem:asset];
    [self arrayFrame:asset];

    //player
    //: [self setupPlayer];
    [self grandmaster];

    //: _isCompleted = NO;
    _isCompleted = NO;

    //: if (_player.currentItem != _playerItem){
    if (_player.currentItem != _playerItem){
        //: [_player replaceCurrentItemWithPlayerItem:_playerItem];
        [_player replaceCurrentItemWithPlayerItem:_playerItem];
    }
}

//: - (void)setupPlayerItem:(AVURLAsset *)asset {
- (void)arrayFrame:(AVURLAsset *)asset {
    //: [self unregisterPlayerItemNoticationObservers];
    [self manageressObservers];
    //: [self removeItemKeyValueObservers];
    [self inputObservers];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [self addItemKeyValueObservers];
    [self listing];
    //: [self registerPlayerItemNoticationObservers];
    [self sitting];
}

//: - (void)setupPlayer {
- (void)grandmaster {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: [self addPlayerKeyValueObservers];
        [self chessPlayerFor];

        //监听播放进度
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
            //: CGFloat current = CMTimeGetSeconds(time);
            CGFloat current = CMTimeGetSeconds(time);
            //: CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            //: _duration = current;
            _duration = current;

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayertotalTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(rangeTitle:)]) {
                //: [weakSelf.delegate videoPlayertotalTime:total];
                [weakSelf.delegate rangeTitle:total];
            }

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayercurrentTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(shoulded:)]) {
                //: [weakSelf.delegate videoPlayercurrentTime:current];
                [weakSelf.delegate shoulded:current];
            }
    //
    ////        /***** 这里是比较蛋疼的，当拖动滑块到没有缓冲的地方并且没有开始播放时，也会走到这里 *************/
    ////        if (weakSelf.isCanToGetLocalTime) {
    ////            weakSelf.localTime = [weakSelf getLocalTime];
    ////        }
    //        NSInteger timeNow = [weakSelf getLocalTime];
    //        if (timeNow - weakSelf.localTime > 1.5) {
    //            [weakSelf delegateDidEndBuffer];
    //            weakSelf.isCanToGetLocalTime = YES;
    //        }
        //: }];
        }];
    }
}

//: - (void)assetFailedToPrepareForPlayback:(NSError *)error
- (void)hale:(NSError *)error
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:error];
    [self before:error];
}

//: - (void)didPlaybackStateChange
- (void)showAdministrativeDivision
{
    //: if (_playbackState != self.playbackState) {
    if (_playbackState != self.playbackState) {
        //: _playbackState = self.playbackState;
        _playbackState = self.playbackState;
        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:USERAVMoviePlayerPlaybackStateDidChangeNotification
         postNotificationName:dream_modeStr(nil)
         //: object:self];
         object:self];
    }
}

//: - (void)didLoadStateChange
- (void)title
{
    //: [[NSNotificationCenter defaultCenter]
    [[NSNotificationCenter defaultCenter]
     //: postNotificationName:USERAVMoviePlayerLoadStateDidChangeNotification
     postNotificationName:app_minModelTitle(nil)
     //: object:self];
     object:self];
}

//: - (void)fetchLoadStateFromItem:(AVPlayerItem*)playerItem
- (void)imageIcon:(AVPlayerItem*)playerItem
{
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return;
        return;

    //: _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    //: _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    //: _playbackBufferFull = playerItem.isPlaybackBufferFull;
    _playbackBufferFull = playerItem.isPlaybackBufferFull;
}

//: - (void)didPlayableDurationUpdate
- (void)durationAcross
{
    //: NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    //: int playableDurationMilli = (int)(self.playableDuration * 1000);
    int playableDurationMilli = (int)(self.playableDuration * 1000);
    //: int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);
    int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);

    //: int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    //: if (bufferedDurationMilli > 0) {
    if (bufferedDurationMilli > 0) {
        //: self.bufferingProgress = bufferedDurationMilli * 100 / kMaxHighWaterMarkMilli;
        self.bufferingProgress = bufferedDurationMilli * 100 / userOptionIdent(nil);

        //: if (self.bufferingProgress > 100) {
        if (self.bufferingProgress > 100) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (self.bufferingProgress > 100) {
                if (self.bufferingProgress > 100) {
                    //: if ([self isPlaying]) {
                    if ([self straddlePlaying]) {
                        //: _player.rate = _playbackRate;
                        _player.rate = _playbackRate;
                    }
                }
            //: });
            });
        }
    }

    //: NSLog(@"KVO_AVPlayerItem_loadedTimeRanges: %d / %d\n",
          //: bufferedDurationMilli,
          bufferedDurationMilli,
          //: (int)kMaxHighWaterMarkMilli);
          (int)userOptionIdent(nil));
}

//拖动
//: - (void)seekToTimePlay:(float)toTime{
- (void)contentDoing:(float)toTime{

    //: if (self.player) {
    if (self.player) {
//        [self.player pause];

        //: __weak typeof(self) weak_self = self;
        __weak typeof(self) weak_self = self;
        //: [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
        [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
            //: __strong typeof(weak_self) strong_self = weak_self;
            __strong typeof(weak_self) strong_self = weak_self;
            //: if (!strong_self) return;
            if (!strong_self) return;
//            [strong_self play];
        //: }];
        }];
    }
}

//: - (void)playerItemFailedToPlayToEndTime:(NSNotification *)notification
- (void)customTime:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:[notification.userInfo objectForKey:@"error"]];
    [self before:[notification.userInfo objectForKey:[[AdministerData sharedInstance] kText_teachData]]];
}

//: - (void)playerItemDidReachEnd:(NSNotification *)notification
- (void)pulled:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: _isCompleted = YES;
    _isCompleted = YES;

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self showAdministrativeDivision];
        //: [self didLoadStateChange];
        [self title];
        //: [self setScreenOn:NO];
        [self setSession:NO];

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:USERAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:show_makeIdent(nil)
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(USERAVMovieFinishReasonPlaybackEnded)
                    kResultData(nil): @(USERAVMovieFinishReasonPlaybackEnded)
                    //: }];
                    }];
    //: });
    });
}


//: #pragma mark app state changed
#pragma mark app state changed

//: - (void)registerApplicationObservers
- (void)tool
{
    //: NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(audioSessionInterrupt:)
                             selector:@selector(mailTotalerrupt:)
                                 //: name:AVAudioSessionInterruptionNotification
                                 name:AVAudioSessionInterruptionNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidBecomeActive)
                             selector:@selector(stormCentre)
                                 //: name:UIApplicationDidBecomeActiveNotification
                                 name:UIApplicationDidBecomeActiveNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidEnterBackground)
                             selector:@selector(jobCell)
                                 //: name:UIApplicationDidEnterBackgroundNotification
                                 name:UIApplicationDidEnterBackgroundNotification
                               //: object:nil];
                               object:nil];
}

//: - (void)unregisterApplicationObservers
- (void)model
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)registerPlayerItemNoticationObservers {
- (void)sitting {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemDidReachEnd:)
                                             selector:@selector(pulled:)
                                                 //: name:AVPlayerItemDidPlayToEndTimeNotification
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemFailedToPlayToEndTime:)
                                             selector:@selector(customTime:)
                                                 //: name:AVPlayerItemFailedToPlayToEndTimeNotification
                                                 name:AVPlayerItemFailedToPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];
}

//: - (void)unregisterPlayerItemNoticationObservers {
- (void)manageressObservers {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    //: name:nil
                                                    name:nil
                                                  //: object:_playerItem];
                                                  object:_playerItem];
}

//: - (void)audioSessionInterrupt:(NSNotification *)notification
- (void)mailTotalerrupt:(NSNotification *)notification
{
    //: int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    //: switch (reason) {
    switch (reason) {
        //: case AVAudioSessionInterruptionTypeBegan: {
        case AVAudioSessionInterruptionTypeBegan: {
            //: switch (self.playbackState) {
            switch (self.playbackState) {
                //: case USERAVMoviePlaybackStatePaused:
                case USERAVMoviePlaybackStatePaused:
                //: case USERAVMoviePlaybackStateStopped:
                case USERAVMoviePlaybackStateStopped:
                    //: _playingBeforeInterruption = NO;
                    _playingBeforeInterruption = NO;
                    //: break;
                    break;
                //: default:
                default:
                    //: _playingBeforeInterruption = YES;
                    _playingBeforeInterruption = YES;
                    //: break;
                    break;
            }
            //: [self pause];
            [self theLike];
            //: break;
            break;
        }
        //: case AVAudioSessionInterruptionTypeEnded: {
        case AVAudioSessionInterruptionTypeEnded: {
            //: if (_playingBeforeInterruption) {
            if (_playingBeforeInterruption) {
                //: [self play];
                [self name];
            }
            //: break;
            break;
        }
    }
}

//: - (void)applicationDidBecomeActive
- (void)stormCentre
{
    //: [_view setPlayer:_player];
    [_view setPlayer:_player];
}

//: - (void)applicationDidEnterBackground
- (void)jobCell
{
    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
    //: if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        //: if ([self isPlaying]) {
        if ([self straddlePlaying]) {
            //: dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
                //: [self play];
                [self name];
            //: });
            });
        }
    }
}

//: #pragma mark KVO
#pragma mark KVO

//: - (void)addPlayerKeyValueObservers {
- (void)chessPlayerFor {
    //: [_player addObserver:self
    [_player addObserver:self
                  //: forKeyPath:@"currentItem"
                  forKeyPath:[[AdministerData sharedInstance] kText_assistanceData]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayer_currentItem];
                     context:notiStatePath];


    //: [_player addObserver:self
    [_player addObserver:self
              //: forKeyPath:@"rate"
              forKeyPath:[[AdministerData sharedInstance] kContentKnowData]
                 //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 //: context:KVO_AVPlayer_rate];
                 context:mainButtonTagColorTitle];
}

//: - (void)removePlayerKeyValueObservers {
- (void)sizeValue {
    //: [_player removeObserver:self forKeyPath:@"currentItem" context:KVO_AVPlayer_currentItem];
    [_player removeObserver:self forKeyPath:[[AdministerData sharedInstance] kText_assistanceData] context:notiStatePath];
    //: [_player removeObserver:self forKeyPath:@"rate" context:KVO_AVPlayer_rate];
    [_player removeObserver:self forKeyPath:[[AdministerData sharedInstance] kContentKnowData] context:mainButtonTagColorTitle];
}

//: - (void)addItemKeyValueObservers {
- (void)listing {
    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"status"
                  forKeyPath:@"status"
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_state];
                     context:app_topMessage];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"loadedTimeRanges"
                  forKeyPath:[[AdministerData sharedInstance] kTitleQuestClinicTextString]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_loadedTimeRanges];
                     context:show_formatText];


    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackLikelyToKeepUp"
                  forKeyPath:[[AdministerData sharedInstance] kContent_wheatRelieveEnableString]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
                     context:mTitleFormat];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferEmpty"
                  forKeyPath:[[AdministerData sharedInstance] kTitlePlaceCastData]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferEmpty];
                     context:main_infoIdent];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferFull"
                  forKeyPath:[[AdministerData sharedInstance] kTitle_glanceString]
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferFull];
                     context:mainArrowShouldUpKey];
}

//: - (void)removeItemKeyValueObservers {
- (void)inputObservers {
    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:@"status" context:app_topMessage];
    //: [_playerItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:KVO_AVPlayerItem_loadedTimeRanges];
    [_playerItem removeObserver:self forKeyPath:[[AdministerData sharedInstance] kTitleQuestClinicTextString] context:show_formatText];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
    [_playerItem removeObserver:self forKeyPath:[[AdministerData sharedInstance] kContent_wheatRelieveEnableString] context:mTitleFormat];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:KVO_AVPlayerItem_playbackBufferEmpty];
    [_playerItem removeObserver:self forKeyPath:[[AdministerData sharedInstance] kTitlePlaceCastData] context:main_infoIdent];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:KVO_AVPlayerItem_playbackBufferFull];
    [_playerItem removeObserver:self forKeyPath:[[AdministerData sharedInstance] kTitle_glanceString] context:mainArrowShouldUpKey];
}

//: - (void)observeValueForKeyPath:(NSString*)path
- (void)observeValueForKeyPath:(NSString*)path
                      //: ofObject:(id)object
                      ofObject:(id)object
                        //: change:(NSDictionary*)change
                        change:(NSDictionary*)change
                       //: context:(void*)context
                       context:(void*)context
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: if (context == KVO_AVPlayerItem_state)
    if (context == app_topMessage)
    {
        /* AVPlayerItem "status" property value observer. */
        //: AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        //: switch (status)
        switch (status)
        {
            //: case AVPlayerItemStatusUnknown:
            case AVPlayerItemStatusUnknown:
            {
                /* Indicates that the status of the player is not yet known because
                 it has not tried to load new media resources for playback */
            }
                //: break;
                break;

            //: case AVPlayerItemStatusReadyToPlay:
            case AVPlayerItemStatusReadyToPlay:
            {
                /* Once the AVPlayerItem becomes ready to play, i.e.
                 [playerItem status] == AVPlayerItemStatusReadyToPlay,
                 its duration can be fetched from the item. */
                //: _dispatch_once(&_readyToPlayToken, ^{
                _dispatch_once(&show_lastTitle, ^{
                    //: [_view setPlayer:_player];
                    [_view setPlayer:_player];

                    //: self.isPreparedToPlay = YES;
                    self.isPreparedToPlay = YES;
                    //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    //: NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    //: if (duration <= 0)
                    if (duration <= 0)
                        //: self.duration = 0.0f;
                        self.duration = 0.0f;
                    //: else
                    else
                        //: self.duration = duration;
                        self.duration = duration;

                    //: [[NSNotificationCenter defaultCenter]
                    [[NSNotificationCenter defaultCenter]
                     //: postNotificationName:USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification
                     postNotificationName:
//: @"USERAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
[[AdministerData sharedInstance] kName_privacyString]
                     //: object:self];
                     object:self];

                    //: if (_shouldAutoplay)
                    if (_shouldAutoplay)
                        //: [_player play];
                        [_player play];
                //: });
                });
            }
                //: break;
                break;

            //: case AVPlayerItemStatusFailed:
            case AVPlayerItemStatusFailed:
            {
                //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                AVPlayerItem *playerItem = (AVPlayerItem *)object;
                //: [self assetFailedToPrepareForPlayback:playerItem.error];
                [self hale:playerItem.error];
            }
                //: break;
                break;
        }

        //: [self didPlaybackStateChange];
        [self showAdministrativeDivision];
    }
    //: else if (context == KVO_AVPlayerItem_loadedTimeRanges)
    else if (context == show_formatText)
    {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
        if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
            //: NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            //: CMTime currentTime = [_player currentTime];
            CMTime currentTime = [_player currentTime];

            //: BOOL foundRange = NO;
            BOOL foundRange = NO;
            //: CMTimeRange aTimeRange = {0};
            CMTimeRange aTimeRange = {0};

            //: if (timeRangeArray.count) {
            if (timeRangeArray.count) {
                //: aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                //: if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                    //: foundRange = YES;
                    foundRange = YES;
                }
            }

            //: if (foundRange) {
            if (foundRange) {
                //: CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                //: NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                //: if (playableDuration > 0) {
                if (playableDuration > 0) {
                    //: self.playableDuration = playableDuration;
                    self.playableDuration = playableDuration;
                    //: [self didPlayableDurationUpdate];
                    [self durationAcross];
                }
            }
        }
        //: else
        else
        {
            //: self.playableDuration = 0;
            self.playableDuration = 0;
        }
    }
    //: else if (context == KVO_AVPlayerItem_playbackLikelyToKeepUp) {
    else if (context == mTitleFormat) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackLikelyToKeepUp: %@\n", playerItem.isPlaybackLikelyToKeepUp ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self imageIcon:playerItem];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferEmpty) {
    else if (context == main_infoIdent) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferEmpty: %@\n", isPlaybackBufferEmpty ? @"YES" : @"NO");
        //: if (isPlaybackBufferEmpty)
        if (isPlaybackBufferEmpty)
            //: _isPrerolling = YES;
            _isPrerolling = YES;
        //: [self fetchLoadStateFromItem:playerItem];
        [self imageIcon:playerItem];
        //: [self didLoadStateChange];
        [self title];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferFull) {
    else if (context == mainArrowShouldUpKey) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferFull: %@\n", playerItem.isPlaybackBufferFull ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self imageIcon:playerItem];
        //: [self didLoadStateChange];
        [self title];
    }
    //: else if (context == KVO_AVPlayer_rate)
    else if (context == mainButtonTagColorTitle)
    {
        //: if (_player != nil && !isFloatZero(_player.rate))
        if (_player != nil && !emptyZero(_player.rate))
            //: _isPrerolling = NO;
            _isPrerolling = NO;
        /* AVPlayer "rate" property value observer. */
        //: [self didPlaybackStateChange];
        [self showAdministrativeDivision];
        //: [self didLoadStateChange];
        [self title];
    }
    //: else if (context == KVO_AVPlayer_currentItem)
    else if (context == notiStatePath)
    {
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        /* AVPlayer "currentItem" property observer.
         Called when the AVPlayer replaceCurrentItemWithPlayerItem:
         replacement will/did occur. */
        //: AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];
        AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];

        /* Is the new player item null? */
        //: if (newPlayerItem == (id)[NSNull null])
        if (newPlayerItem == (id)[NSNull null])
        {
            //: NSError *error = [self createErrorWithCode:kEC_CurrentPlayerItemIsNil
            NSError *error = [self manager:dream_orientationMessage(nil)
                                           //: description:@"current player item is nil"
                                           find_strong:[[AdministerData sharedInstance] kName_symbolData]
                                                //: reason:nil];
                                                contentAdd:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self hale:error];
        }
        //: else /|* Replacement of player currentItem has occurred *|/
        else /* Replacement of player currentItem has occurred */
        {
            //: [_view setPlayer:_player];
            [_view setPlayer:_player];

            //: [self didPlaybackStateChange];
            [self showAdministrativeDivision];
            //: [self didLoadStateChange];
            [self title];
        }
    }
    //: else
    else
    {
        //: [super observeValueForKeyPath:path ofObject:object change:change context:context];
        [super observeValueForKeyPath:path ofObject:object change:change context:context];
    }
}


//: #pragma mark - Error
#pragma mark - Error
//: - (void)onError:(NSError *)error
- (void)before:(NSError *)error
{
    //: _isError = YES;
    _isError = YES;

    //: __block NSError *blockError = error;
    __block NSError *blockError = error;

    //: NSLog(@"AVPlayer: onError\n");
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self showAdministrativeDivision];
        //: [self didLoadStateChange];
        [self title];
        //: [self setScreenOn:NO];
        [self setSession:NO];

        //: if (blockError == nil) {
        if (blockError == nil) {
            //: blockError = [[NSError alloc] init];
            blockError = [[NSError alloc] init];
        }

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:USERAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:show_makeIdent(nil)
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(USERAVMovieFinishReasonPlaybackError),
                    kResultData(nil): @(USERAVMovieFinishReasonPlaybackError),
                    //: @"error": blockError
                    [[AdministerData sharedInstance] kText_teachData]: blockError
                    //: }];
                    }];
    //: });
    });
}

//: - (NSError*)createErrorWithCode: (NSInteger)code
- (NSError*)manager: (NSInteger)code
                    //: description: (NSString*)description
                    find_strong: (NSString*)description
                         //: reason: (NSString*)reason
                         contentAdd: (NSString*)reason
{
    //: NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    //: errorDict[NSLocalizedDescriptionKey] = description;
    errorDict[NSLocalizedDescriptionKey] = description;
    //: errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    //: NSError *error = [NSError errorWithDomain:kErrorDomain
    NSError *error = [NSError errorWithDomain:mUseMessage
                                         //: code:code
                                         code:code
                                     //: userInfo:errorDict];
                                     userInfo:errorDict];
    //: return error;
    return error;
}

//: @end
@end
//: __SAVE__ ignore_string [401.4,772.7,676.6,447.4,1291.12,229.2]