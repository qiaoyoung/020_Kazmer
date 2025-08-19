
#import <Foundation/Foundation.h>

@interface ThanksData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ThanksData

+ (instancetype)sharedInstance {
    static ThanksData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ThanksDataToCache:(Byte *)data {
    int memberTemp = data[0];
    int flue = data[1];
    for (int i = 0; i < memberTemp / 2; i++) {
        int begin = flue + i;
        int end = flue + memberTemp - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[flue + memberTemp] = 0;
    return data + flue;
}

- (NSString *)StringFromThanksData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ThanksDataToCache:data]];
}  

//: icon_receiver_voice_playing_002
- (NSString *)appWholeUrl {
    /* static */ NSString *appWholeUrl = nil;
    if (!appWholeUrl) {
        Byte value[] = {31, 9, 9, 59, 184, 176, 89, 185, 59, 50, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 42};
        appWholeUrl = [self StringFromThanksData:value];
    }
    return appWholeUrl;
}

//: icon_receiver_voice_playing_007
- (NSString *)show_matchKey {
    /* static */ NSString *show_matchKey = nil;
    if (!show_matchKey) {
        Byte value[] = {31, 10, 68, 234, 61, 19, 244, 18, 100, 194, 55, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 20};
        show_matchKey = [self StringFromThanksData:value];
    }
    return show_matchKey;
}

//: icon_voice_play_b
- (NSString *)noti_haveMessage {
    /* static */ NSString *noti_haveMessage = nil;
    if (!noti_haveMessage) {
        Byte value[] = {17, 4, 71, 113, 98, 95, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 110, 111, 99, 105, 203};
        noti_haveMessage = [self StringFromThanksData:value];
    }
    return noti_haveMessage;
}

//: icon_receiver_voice_playing_005
- (NSString *)k_martKey {
    /* static */ NSString *k_martKey = nil;
    if (!k_martKey) {
        Byte value[] = {31, 9, 120, 143, 128, 166, 101, 241, 75, 53, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 157};
        k_martKey = [self StringFromThanksData:value];
    }
    return k_martKey;
}

//: icon_voice_plus_b
- (NSString *)m_despiteFormat {
    /* static */ NSString *m_despiteFormat = nil;
    if (!m_despiteFormat) {
        Byte value[] = {17, 2, 98, 95, 115, 117, 108, 112, 95, 101, 99, 105, 111, 118, 95, 110, 111, 99, 105, 170};
        m_despiteFormat = [self StringFromThanksData:value];
    }
    return m_despiteFormat;
}

//: icon_receiver_voice_playing_008
- (NSString *)userQueenData {
    /* static */ NSString *userQueenData = nil;
    if (!userQueenData) {
        Byte value[] = {31, 6, 193, 204, 54, 186, 56, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 86};
        userQueenData = [self StringFromThanksData:value];
    }
    return userQueenData;
}

//: icon_receiver_voice_playing_010
- (NSString *)showSymbolicSurelyValue {
    /* static */ NSString *showSymbolicSurelyValue = nil;
    if (!showSymbolicSurelyValue) {
        Byte value[] = {31, 11, 96, 219, 154, 119, 83, 15, 113, 67, 140, 48, 49, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 106};
        showSymbolicSurelyValue = [self StringFromThanksData:value];
    }
    return showSymbolicSurelyValue;
}

//: icon_receiver_voice_playing_006
- (NSString *)k_cornData {
    /* static */ NSString *k_cornData = nil;
    if (!k_cornData) {
        Byte value[] = {31, 10, 49, 20, 55, 233, 70, 135, 251, 53, 54, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 126};
        k_cornData = [self StringFromThanksData:value];
    }
    return k_cornData;
}

//: icon_receiver_voice_playing_w
- (NSString *)user_fiftyTitle {
    /* static */ NSString *user_fiftyTitle = nil;
    if (!user_fiftyTitle) {
        Byte value[] = {29, 2, 119, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 252};
        user_fiftyTitle = [self StringFromThanksData:value];
    }
    return user_fiftyTitle;
}

//: icon_receiver_voice_playing_009
- (NSString *)dream_amendmentTitle {
    /* static */ NSString *dream_amendmentTitle = nil;
    if (!dream_amendmentTitle) {
        Byte value[] = {31, 2, 57, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 182};
        dream_amendmentTitle = [self StringFromThanksData:value];
    }
    return dream_amendmentTitle;
}

//: icon_receiver_voice_playing_001
- (NSString *)k_isolateFormePath {
    /* static */ NSString *k_isolateFormePath = nil;
    if (!k_isolateFormePath) {
        Byte value[] = {31, 10, 150, 239, 39, 24, 254, 134, 130, 93, 49, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 14};
        k_isolateFormePath = [self StringFromThanksData:value];
    }
    return k_isolateFormePath;
}

//: icon_receiver_voice_playing_003
- (NSString *)showLanceMsg {
    /* static */ NSString *showLanceMsg = nil;
    if (!showLanceMsg) {
        Byte value[] = {31, 11, 90, 20, 110, 235, 148, 242, 53, 15, 229, 51, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 181};
        showLanceMsg = [self StringFromThanksData:value];
    }
    return showLanceMsg;
}

//: icon_receiver_voice_playing_004
- (NSString *)kHeavilyTitle {
    /* static */ NSString *kHeavilyTitle = nil;
    if (!kHeavilyTitle) {
        Byte value[] = {31, 8, 108, 40, 93, 227, 81, 49, 52, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 141};
        kHeavilyTitle = [self StringFromThanksData:value];
    }
    return kHeavilyTitle;
}

//: icon_receiver_voice_playing
- (NSString *)app_asideName {
    /* static */ NSString *app_asideName = nil;
    if (!app_asideName) {
        Byte value[] = {27, 6, 57, 231, 234, 236, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 147};
        app_asideName = [self StringFromThanksData:value];
    }
    return app_asideName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionAudioContentView.h"
#import "ColorControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "WatchKitAudioCenter.h"
#import "UserMax.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+ButtonKit.h"

//: @interface WatchSessionAudioContentView()<NIMMediaManagerDelegate>
@interface ColorControl()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageView;
//: @property (nonatomic,strong) UIImageView *voiceImageViewleft;
@property (nonatomic,strong) UIImageView *voiceImageViewleft;

//: @property (nonatomic,strong) UIImageView *voicePlayView;
@property (nonatomic,strong) UIImageView *voicePlayView;
//: @property (nonatomic,strong) UIImageView *voicePlayViewleft;
@property (nonatomic,strong) UIImageView *voicePlayViewleft;

//: @property (nonatomic,strong) UILabel *durationLabel;
@property (nonatomic,strong) UILabel *durationLabel;

//: @end
@end

//: @implementation WatchSessionAudioContentView
@implementation ColorControl

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self toView];
        //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)setPlaying:(BOOL)isPlaying
- (void)setDead:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
        //: [self.voiceImageViewleft startAnimating];
        [self.voiceImageViewleft startAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[[ThanksData sharedInstance] m_despiteFormat]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayView.image = [UIImage imageNamed:[[ThanksData sharedInstance] m_despiteFormat]];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
        //: [self.voiceImageViewleft stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[[ThanksData sharedInstance] noti_haveMessage]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayView.image = [UIImage imageNamed:[[ThanksData sharedInstance] noti_haveMessage]];
    }
}

//: - (void)addVoiceView{
- (void)toView{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];


    //: _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[ThanksData sharedInstance] noti_haveMessage]]];
    //: [self addSubview:_voicePlayViewleft];
    [self addSubview:_voicePlayViewleft];
    //: _voicePlayViewleft.hidden = YES;
    _voicePlayViewleft.hidden = YES;
    //: _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[ThanksData sharedInstance] noti_haveMessage]]];
    //: [self addSubview:_voicePlayView];
    [self addSubview:_voicePlayView];
    //: _voicePlayView.hidden = YES;
    _voicePlayView.hidden = YES;

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    UIImage *image = [UIImage imageNamed:[[ThanksData sharedInstance] user_fiftyTitle]];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames = @[[[ThanksData sharedInstance] k_isolateFormePath],[[ThanksData sharedInstance] appWholeUrl],[[ThanksData sharedInstance] showLanceMsg],[[ThanksData sharedInstance] kHeavilyTitle],[[ThanksData sharedInstance] k_martKey],[[ThanksData sharedInstance] k_cornData],[[ThanksData sharedInstance] show_matchKey],[[ThanksData sharedInstance] userQueenData],[[ThanksData sharedInstance] dream_amendmentTitle],[[ThanksData sharedInstance] showSymbolicSurelyValue]];
    //: NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    //: for (NSString * animateName in animateNames) {
    for (NSString * animateName in animateNames) {
        //: UIImage * animateImage = [UIImage imageNamed:animateName];
        UIImage * animateImage = [UIImage imageNamed:animateName];
        //: [animationImages addObject:animateImage];
        [animationImages addObject:animateImage];
    }
    //: _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationImages = animationImages;
    //: _voiceImageView.animationDuration = 1.0;
    _voiceImageView.animationDuration = 1.0;
    //: [self addSubview:_voiceImageView];
    [self addSubview:_voiceImageView];
    //: _voiceImageView.hidden = YES;
    _voiceImageView.hidden = YES;

    //: _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_receiver_voice_playing"]];
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[[ThanksData sharedInstance] app_asideName]]];
    //: NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames2 = @[[[ThanksData sharedInstance] k_isolateFormePath],[[ThanksData sharedInstance] appWholeUrl],[[ThanksData sharedInstance] showLanceMsg],[[ThanksData sharedInstance] kHeavilyTitle],[[ThanksData sharedInstance] k_martKey],[[ThanksData sharedInstance] k_cornData],[[ThanksData sharedInstance] show_matchKey],[[ThanksData sharedInstance] userQueenData],[[ThanksData sharedInstance] dream_amendmentTitle],[[ThanksData sharedInstance] showSymbolicSurelyValue]];
    //: NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    //: for (NSString *animateName2 in animateNames2) {
    for (NSString *animateName2 in animateNames2) {
        //: UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        //: [animationImages2 addObject:animateImage2];
        [animationImages2 addObject:animateImage2];
    }
    //: _voiceImageViewleft.animationImages = animationImages2;
    _voiceImageViewleft.animationImages = animationImages2;
    //: _voiceImageViewleft.animationDuration = 1.0;
    _voiceImageViewleft.animationDuration = 1.0;
    //: [self addSubview:_voiceImageViewleft];
    [self addSubview:_voiceImageViewleft];
    //: _voiceImageViewleft.hidden = YES;
    _voiceImageViewleft.hidden = YES;

    //: _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _durationLabel.backgroundColor = [UIColor clearColor];
    _durationLabel.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_durationLabel];
    [self addSubview:_durationLabel];

}

//: - (void)refresh:(WatchMessageModel *)data {
- (void)lengthAt:(CentralProcessingUnitModel *)data {
    //: [super refresh:data];
    [super lengthAt:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: WatchKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;
    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setDead:self.backgroundPlaying];
    //: [self refreshBackground:data];
    [self disable:data];
}

//: - (void)refreshBackground:(WatchMessageModel *)data
- (void)disable:(CentralProcessingUnitModel *)data
{
    //: if (data.shouldShowLeft)
    if (data.shouldShowLeft)
    {
        //: _voiceImageViewleft.hidden = NO;
        _voiceImageViewleft.hidden = NO;
        //: _voiceImageView.hidden = YES;
        _voiceImageView.hidden = YES;
        //: _voicePlayViewleft.hidden = NO;
        _voicePlayViewleft.hidden = NO;
        //: _voicePlayView.hidden = YES;
        _voicePlayView.hidden = YES;
    }
    //: else
    else
    {
//        _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        //: _voiceImageViewleft.hidden = YES;
        _voiceImageViewleft.hidden = YES;
        //: _voiceImageView.hidden = NO;
        _voiceImageView.hidden = NO;
        //: _voicePlayViewleft.hidden = YES;
        _voicePlayViewleft.hidden = YES;
        //: _voicePlayView.hidden = NO;
        _voicePlayView.hidden = NO;
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case WatchSessionMessageContentViewLayoutLeft: {
        case WatchSessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            //: self.voiceImageViewleft.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             //: _durationLabel.right = self.width - contentInsets.right * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case WatchSessionMessageContentViewLayoutRight: {
        case WatchSessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            //: self.voiceImageView.right = self.width - contentInsets.right * 2;
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            //: _durationLabel.left = contentInsets.left;
            _durationLabel.left = contentInsets.left;
            //: break;
            break;
        }
        //: case WatchSessionMessageContentViewLayoutAuto:
        case WatchSessionMessageContentViewLayoutAuto:
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
//                _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);


                //: self.voicePlayView.left = contentInsets.left;
                self.voicePlayView.left = contentInsets.left;
                //: self.voiceImageView.left = self.voicePlayView.right+10;
                self.voiceImageView.left = self.voicePlayView.right+10;
                //: _durationLabel.left = self.voiceImageView.right+10;
                _durationLabel.left = self.voiceImageView.right+10;

            //: } else {
            } else {
//                _voiceImageView.transform = CGAffineTransformIdentity;
//               self.voiceImageView.left = contentInsets.left;

                //: self.voicePlayViewleft.left = contentInsets.left;
                self.voicePlayViewleft.left = contentInsets.left;
                //: self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                //: _durationLabel.left = self.voiceImageViewleft.right+10;
                _durationLabel.left = self.voiceImageViewleft.right+10;
            }
            //: break;
            break;
        }
    }
    //: _voiceImageView.width = 62;
    _voiceImageView.width = 62;
    //: _voiceImageView.height = 18;
    _voiceImageView.height = 18;
    //: _voiceImageView.centerY = self.height * .5f;
    _voiceImageView.centerY = self.height * .5f;

    //: _voiceImageViewleft.width = 62;
    _voiceImageViewleft.width = 62;
    //: _voiceImageViewleft.height = 18;
    _voiceImageViewleft.height = 18;
    //: _voiceImageViewleft.centerY = self.height * .5f;
    _voiceImageViewleft.centerY = self.height * .5f;

    //: _voicePlayView.width = 16;
    _voicePlayView.width = 16;
    //: _voicePlayView.height = 16;
    _voicePlayView.height = 16;
    //: _voicePlayView.centerY = self.height * .5f;
    _voicePlayView.centerY = self.height * .5f;

    //: _voicePlayViewleft.width = 16;
    _voicePlayViewleft.width = 16;
    //: _voicePlayViewleft.height = 16;
    _voicePlayViewleft.height = 16;
    //: _voicePlayViewleft.centerY = self.height * .5f;
    _voicePlayViewleft.centerY = self.height * .5f;

    //: _durationLabel.centerY = _voiceImageView.centerY;
    _durationLabel.centerY = _voiceImageView.centerY;

    //: CGFloat backgroundWidth = 0;
    CGFloat backgroundWidth = 0;
    //: CGFloat backgroundLeft = 0;
    CGFloat backgroundLeft = 0;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case WatchSessionMessageContentViewLayoutLeft:
        case WatchSessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case WatchSessionMessageContentViewLayoutRight:
        case WatchSessionMessageContentViewLayoutRight:
            {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            }
            //: break;
            break;
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            //: } else {
            } else {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        }
    }
    //: _audioBackgroundView.size = CGSizeMake(backgroundWidth,
    _audioBackgroundView.size = CGSizeMake(backgroundWidth,
                                               //: self.height - 4);
                                               self.height - 4);
    //: _audioBackgroundView.left = backgroundLeft;
    _audioBackgroundView.left = backgroundLeft;
    //: _audioBackgroundView.top = 2;
    _audioBackgroundView.top = 2;
}

//: -(void)onTouchUpInside:(id)sender
-(void)searched:(id)sender
{
    //: if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        //: || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           //: error:nil];
                                                           error:nil];
        //: return;
        return;
    }
    //: if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {

        //: if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            //: [self stopPlayingUI];
            [self option];
        }

        //: WatchKitEvent *event = [[WatchKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = WatchKitEventNameTapAudio;
        event.eventName = m_originalMsg;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate modelled:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.backgroundPlaying && [self.audioUIDelegate respondsToSelector:@selector(titleName)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate titleName];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self option];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self option];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)option
{
    //: [self setPlaying:NO];
    [self setDead:NO];
}

//: - (BOOL)isPlaying
- (BOOL)backgroundPlaying
{
    //: BOOL play = [WatchKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [UserMax messageEmpty].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    //: return play;
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

//: @end
@end
