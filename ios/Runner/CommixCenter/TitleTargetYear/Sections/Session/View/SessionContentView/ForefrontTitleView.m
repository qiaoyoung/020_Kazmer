
#import <Foundation/Foundation.h>

@interface DesireData : NSObject

@end

@implementation DesireData

+ (NSData *)DesireDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)DesireDataToCache:(Byte *)data {
    int artiDen = data[0];
    Byte wood = data[1];
    int story = data[2];
    for (int i = story; i < story + artiDen; i++) {
        int value = data[i] + wood;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[story + artiDen] = 0;
    return data + story;
}

+ (NSString *)StringFromDesireData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DesireDataToCache:data]];
}

//: icon_receiver_voice_playing_009
+ (NSString *)kContent_sellValue {
    /* static */ NSString *kContent_sellValue = nil;
    if (!kContent_sellValue) {
		NSString *origin = @"1F4D04191C16222112251816181C2918251229221C161812231F142C1C211A12E3E3EC3E";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_sellValue = [self StringFromDesireData:value];
    }
    return kContent_sellValue;
}

//: icon_receiver_voice_playing_008
+ (NSString *)kContent_bronzeMerelyOverallData {
    /* static */ NSString *kContent_bronzeMerelyOverallData = nil;
    if (!kContent_bronzeMerelyOverallData) {
		NSString *origin = @"1F5904A1100A161506190C0A0C101D0C19061D16100A0C061713082010150E06D7D7DF8D";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_bronzeMerelyOverallData = [self StringFromDesireData:value];
    }
    return kContent_bronzeMerelyOverallData;
}

//: icon_receiver_voice_playing_002
+ (NSString *)kTitleSpringDenData {
    /* static */ NSString *kTitleSpringDenData = nil;
    if (!kTitleSpringDenData) {
		NSString *origin = @"1F560490130D1918091C0F0D0F13200F1C092019130D0F091A160B2313181109DADADC8C";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSpringDenData = [self StringFromDesireData:value];
    }
    return kTitleSpringDenData;
}

//: icon_voice_plus_b
+ (NSString *)kTitle_broadcastSingThereData {
    /* static */ NSString *kTitle_broadcastSingThereData = nil;
    if (!kTitle_broadcastSingThereData) {
		NSString *origin = @"110909B51D0BDCC170605A6665566D66605A5C5667636C6A565903";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_broadcastSingThereData = [self StringFromDesireData:value];
    }
    return kTitle_broadcastSingThereData;
}

//: icon_receiver_voice_playing_w
+ (NSString *)kTextKitchenContent {
    /* static */ NSString *kTextKitchenContent = nil;
    if (!kTextKitchenContent) {
		NSString *origin = @"1D5607F177C08D130D1918091C0F0D0F13200F1C092019130D0F091A160B2313181109217B";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextKitchenContent = [self StringFromDesireData:value];
    }
    return kTextKitchenContent;
}

//: icon_receiver_voice_playing_004
+ (NSString *)kText_fragSellerAtString {
    /* static */ NSString *kText_fragSellerAtString = nil;
    if (!kText_fragSellerAtString) {
		NSString *origin = @"1F5E054BD50B05111001140705070B1807140118110B050701120E031B0B100901D2D2D6B8";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_fragSellerAtString = [self StringFromDesireData:value];
    }
    return kText_fragSellerAtString;
}

//: icon_receiver_voice_playing_003
+ (NSString *)kContent_retireWhereasAirplaneData {
    /* static */ NSString *kContent_retireWhereasAirplaneData = nil;
    if (!kContent_retireWhereasAirplaneData) {
		NSString *origin = @"1F0F0D33828B23292525F753865A54605F50635654565A6756635067605A545650615D526A5A5F58502121249C";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_retireWhereasAirplaneData = [self StringFromDesireData:value];
    }
    return kContent_retireWhereasAirplaneData;
}

//: icon_receiver_voice_playing
+ (NSString *)kText_showName {
    /* static */ NSString *kText_showName = nil;
    if (!kText_showName) {
		NSString *origin = @"1B070D2C82A668EE2A37BC0AB8625C6867586B5E5C5E626F5E6B586F68625C5E5869655A72626760B9";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_showName = [self StringFromDesireData:value];
    }
    return kText_showName;
}

//: icon_receiver_voice_playing_001
+ (NSString *)kContent_finValue {
    /* static */ NSString *kContent_finValue = nil;
    if (!kContent_finValue) {
		NSString *origin = @"1F140A7D53FCD7F6E747554F5B5A4B5E514F515562515E4B625B554F514B5C584D65555A534B1C1C1DC4";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_finValue = [self StringFromDesireData:value];
    }
    return kContent_finValue;
}

//: icon_receiver_voice_playing_006
+ (NSString *)kName_messageForeignerValue {
    /* static */ NSString *kName_messageForeignerValue = nil;
    if (!kName_messageForeignerValue) {
		NSString *origin = @"1F350A18E522A0616811342E3A392A3D302E303441303D2A413A342E302A3B372C443439322AFBFB014B";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_messageForeignerValue = [self StringFromDesireData:value];
    }
    return kName_messageForeignerValue;
}

//: icon_receiver_voice_playing_010
+ (NSString *)kContent_deployYoursString {
    /* static */ NSString *kContent_deployYoursString = nil;
    if (!kContent_deployYoursString) {
		NSString *origin = @"1F1E0DCE1DB27B57225321028F4B45515041544745474B5847544158514B454741524E435B4B50494112131233";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_deployYoursString = [self StringFromDesireData:value];
    }
    return kContent_deployYoursString;
}

//: icon_receiver_voice_playing_005
+ (NSString *)kContentSwimmingValue {
    /* static */ NSString *kContentSwimmingValue = nil;
    if (!kContentSwimmingValue) {
		NSString *origin = @"1F020ADBCF5EF060786B67616D6C5D70636163677463705D746D6761635D6E6A5F77676C655D2E2E334A";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSwimmingValue = [self StringFromDesireData:value];
    }
    return kContentSwimmingValue;
}

//: icon_voice_play_b
+ (NSString *)kTitle_raspValue {
    /* static */ NSString *kTitle_raspValue = nil;
    if (!kTitle_raspValue) {
		NSString *origin = @"1154050E6B150F1B1A0B221B150F110B1C180D250B0E4F";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_raspValue = [self StringFromDesireData:value];
    }
    return kTitle_raspValue;
}

//: icon_receiver_voice_playing_007
+ (NSString *)kTextUltimateString {
    /* static */ NSString *kTextUltimateString = nil;
    if (!kTextUltimateString) {
		NSString *origin = @"1F560D6834CF8D0FD9D3BBD30D130D1918091C0F0D0F13200F1C092019130D0F091A160B2313181109DADAE111";
		NSData *data = [DesireData DesireDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextUltimateString = [self StringFromDesireData:value];
    }
    return kTextUltimateString;
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
//: #import "DisplaySessionAudioContentView.h"
#import "ForefrontTitleView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "DisplayKitAudioCenter.h"
#import "CommixCenter.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Mortification.h"

//: @interface DisplaySessionAudioContentView()<NIMMediaManagerDelegate>
@interface ForefrontTitleView()<NIMMediaManagerDelegate>

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

//: @implementation DisplaySessionAudioContentView
@implementation ForefrontTitleView

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self froth];
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
- (void)setVideo:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
        //: [self.voiceImageViewleft startAnimating];
        [self.voiceImageViewleft startAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[DesireData kTitle_broadcastSingThereData]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayView.image = [UIImage imageNamed:[DesireData kTitle_broadcastSingThereData]];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
        //: [self.voiceImageViewleft stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[DesireData kTitle_raspValue]];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayView.image = [UIImage imageNamed:[DesireData kTitle_raspValue]];
    }
}

//: - (void)addVoiceView{
- (void)froth{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];


    //: _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[DesireData kTitle_raspValue]]];
    //: [self addSubview:_voicePlayViewleft];
    [self addSubview:_voicePlayViewleft];
    //: _voicePlayViewleft.hidden = YES;
    _voicePlayViewleft.hidden = YES;
    //: _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[DesireData kTitle_raspValue]]];
    //: [self addSubview:_voicePlayView];
    [self addSubview:_voicePlayView];
    //: _voicePlayView.hidden = YES;
    _voicePlayView.hidden = YES;

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    UIImage *image = [UIImage imageNamed:[DesireData kTextKitchenContent]];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames = @[[DesireData kContent_finValue],[DesireData kTitleSpringDenData],[DesireData kContent_retireWhereasAirplaneData],[DesireData kText_fragSellerAtString],[DesireData kContentSwimmingValue],[DesireData kName_messageForeignerValue],[DesireData kTextUltimateString],[DesireData kContent_bronzeMerelyOverallData],[DesireData kContent_sellValue],[DesireData kContent_deployYoursString]];
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
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[DesireData kText_showName]]];
    //: NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames2 = @[[DesireData kContent_finValue],[DesireData kTitleSpringDenData],[DesireData kContent_retireWhereasAirplaneData],[DesireData kText_fragSellerAtString],[DesireData kContentSwimmingValue],[DesireData kName_messageForeignerValue],[DesireData kTextUltimateString],[DesireData kContent_bronzeMerelyOverallData],[DesireData kContent_sellValue],[DesireData kContent_deployYoursString]];
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

//: - (void)refresh:(DisplayMessageModel *)data {
- (void)from:(CleanDoing *)data {
    //: [super refresh:data];
    [super from:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: DisplayKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ManPull *setting = [[Mortification text].config toWith:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;
    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setVideo:self.rewrite];
    //: [self refreshBackground:data];
    [self transparencyDistance:data];
}

//: - (void)refreshBackground:(DisplayMessageModel *)data
- (void)transparencyDistance:(CleanDoing *)data
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
        //: case DisplaySessionMessageContentViewLayoutLeft: {
        case DisplaySessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            //: self.voiceImageViewleft.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             //: _durationLabel.right = self.width - contentInsets.right * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case DisplaySessionMessageContentViewLayoutRight: {
        case DisplaySessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            //: self.voiceImageView.right = self.width - contentInsets.right * 2;
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            //: _durationLabel.left = contentInsets.left;
            _durationLabel.left = contentInsets.left;
            //: break;
            break;
        }
        //: case DisplaySessionMessageContentViewLayoutAuto:
        case DisplaySessionMessageContentViewLayoutAuto:
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
        //: case DisplaySessionMessageContentViewLayoutLeft:
        case DisplaySessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case DisplaySessionMessageContentViewLayoutRight:
        case DisplaySessionMessageContentViewLayoutRight:
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
-(void)labelled:(id)sender
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
            [self page];
        }

        //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
        ToiletKitSession *event = [[ToiletKitSession alloc] init];
        //: event.eventName = DisplayKitEventNameTapAudio;
        event.eventName = app_successDoingceMsg;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate surprised:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.rewrite && [self.audioUIDelegate respondsToSelector:@selector(titleInfo)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate titleInfo];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self page];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self page];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)page
{
    //: [self setPlaying:NO];
    [self setVideo:NO];
}

//: - (BOOL)isPlaying
- (BOOL)rewrite
{
    //: BOOL play = [DisplayKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [CommixCenter emptyDataTeam].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
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
