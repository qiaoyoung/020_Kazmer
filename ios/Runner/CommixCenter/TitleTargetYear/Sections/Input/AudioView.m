
#import <Foundation/Foundation.h>

@interface ButDeployData : NSObject

+ (instancetype)sharedInstance;

//: sound_wave_%d
@property (nonatomic, copy) NSString *kTitle_substantiallyContent;

//: recording_bg
@property (nonatomic, copy) NSString *kTitle_steadValue;

//: #5D5F66
@property (nonatomic, copy) NSString *kContentLamString;

//: Releasetocancel
@property (nonatomic, copy) NSString *kName_painfulAnkleData;

//: recording_btn
@property (nonatomic, copy) NSString *kName_reparationValue;

//: #FF1C1C
@property (nonatomic, copy) NSString *kNameThinkString;

//: Releasetosend_swipeuptocancel
@property (nonatomic, copy) NSString *kContent_outfitString;

@end

@implementation ButDeployData

+ (instancetype)sharedInstance {
    static ButDeployData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ButDeployDataToCache:(Byte *)data {
    int serve = data[0];
    Byte multiplePorch = data[1];
    int netEstate = data[2];
    for (int i = netEstate; i < netEstate + serve; i++) {
        int value = data[i] - multiplePorch;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[netEstate + serve] = 0;
    return data + netEstate;
}

- (NSString *)StringFromButDeployData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ButDeployDataToCache:data]];
}

//: Releasetocancel
- (NSString *)kName_painfulAnkleData {
    if (!_kName_painfulAnkleData) {
        Byte value[] = {15, 24, 5, 131, 115, 106, 125, 132, 125, 121, 139, 125, 140, 135, 123, 121, 134, 123, 125, 132, 137};
        _kName_painfulAnkleData = [self StringFromButDeployData:value];
    }
    return _kName_painfulAnkleData;
}

//: recording_btn
- (NSString *)kName_reparationValue {
    if (!_kName_reparationValue) {
        Byte value[] = {13, 30, 9, 175, 54, 20, 138, 25, 214, 144, 131, 129, 141, 144, 130, 135, 140, 133, 125, 128, 146, 140, 30};
        _kName_reparationValue = [self StringFromButDeployData:value];
    }
    return _kName_reparationValue;
}

//: recording_bg
- (NSString *)kTitle_steadValue {
    if (!_kTitle_steadValue) {
        Byte value[] = {12, 74, 11, 38, 213, 94, 19, 229, 74, 148, 13, 188, 175, 173, 185, 188, 174, 179, 184, 177, 169, 172, 177, 236};
        _kTitle_steadValue = [self StringFromButDeployData:value];
    }
    return _kTitle_steadValue;
}

//: #5D5F66
- (NSString *)kContentLamString {
    if (!_kContentLamString) {
        Byte value[] = {7, 46, 7, 248, 175, 220, 227, 81, 99, 114, 99, 116, 100, 100, 58};
        _kContentLamString = [self StringFromButDeployData:value];
    }
    return _kContentLamString;
}

//: #FF1C1C
- (NSString *)kNameThinkString {
    if (!_kNameThinkString) {
        Byte value[] = {7, 57, 13, 203, 92, 177, 14, 86, 211, 214, 164, 244, 240, 92, 127, 127, 106, 124, 106, 124, 112};
        _kNameThinkString = [self StringFromButDeployData:value];
    }
    return _kNameThinkString;
}

//: Releasetosend_swipeuptocancel
- (NSString *)kContent_outfitString {
    if (!_kContent_outfitString) {
        Byte value[] = {29, 62, 6, 60, 236, 199, 144, 163, 170, 163, 159, 177, 163, 178, 173, 177, 163, 172, 162, 157, 177, 181, 167, 174, 163, 179, 174, 178, 173, 161, 159, 172, 161, 163, 170, 88};
        _kContent_outfitString = [self StringFromButDeployData:value];
    }
    return _kContent_outfitString;
}

//: sound_wave_%d
- (NSString *)kTitle_substantiallyContent {
    if (!_kTitle_substantiallyContent) {
        Byte value[] = {13, 36, 13, 145, 183, 194, 181, 169, 74, 197, 65, 253, 176, 151, 147, 153, 146, 136, 131, 155, 133, 154, 137, 131, 73, 136, 183};
        _kTitle_substantiallyContent = [self StringFromButDeployData:value];
    }
    return _kTitle_substantiallyContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AudioView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/27.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayInputAudioView.h"
#import "AudioView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"

//: @interface DisplayInputAudioView()
@interface AudioView()

//: @property (nonatomic,strong) UIView *audioBgview;
@property (nonatomic,strong) UIView *audioBgview;

//: @property (nonatomic, strong) UIImageView *animationImageView;
@property (nonatomic, strong) UIImageView *animationImageView;
//@property (nonatomic, strong) UIImageView *soundwaveImageView;

//@property (nonatomic, strong) UIImageView *delImg;
//: @property (nonatomic, strong) UILabel *delLabel;
@property (nonatomic, strong) UILabel *delLabel;
//@property (nonatomic, strong) UIImageView *audioBtnBg;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;



//: @end
@end

//: @implementation DisplayInputAudioView
@implementation AudioView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ingatheringBy)];
         //: [self addGestureRecognizer:tapGesture];
         [self addGestureRecognizer:tapGesture];

        //: _audioBgview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220)];
        _audioBgview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220)];
//        _audioBgview.backgroundColor = [UIColor whiteColor];
//        if (@available(iOS 11.0, *)) {
//            _audioBgview.layer.cornerRadius = 16;
//            _audioBgview.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
//        }
        //: [self addSubview:_audioBgview];
        [self addSubview:_audioBgview];


        //: UIImageView *bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 220)];
        UIImageView *bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 220)];
        //: bgImg.contentMode = UIViewContentModeScaleAspectFill;
        bgImg.contentMode = UIViewContentModeScaleAspectFill;
        //: bgImg.image = [UIImage imageNamed:@"recording_bg"];
        bgImg.image = [UIImage imageNamed:[ButDeployData sharedInstance].kTitle_steadValue];
        //: [_audioBgview addSubview:bgImg];
        [_audioBgview addSubview:bgImg];



        //: _delLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 20)];
        _delLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: _delLabel.font = [UIFont systemFontOfSize:12];
        _delLabel.font = [UIFont systemFontOfSize:12];
        //: _delLabel.textColor = [UIColor colorWithHexString:@"#FF1C1C"];
        _delLabel.textColor = [UIColor cell:[ButDeployData sharedInstance].kNameThinkString];
        //: _delLabel.textAlignment = NSTextAlignmentCenter;
        _delLabel.textAlignment = NSTextAlignmentCenter;
        //: _delLabel.hidden = YES;
        _delLabel.hidden = YES;
        //: _delLabel.text = [DisplayLanguageManager getTextWithKey:@"Releasetocancel"];
        _delLabel.text = [MakeManager cell:[ButDeployData sharedInstance].kName_painfulAnkleData];
        //: [_audioBgview addSubview:_delLabel];
        [_audioBgview addSubview:_delLabel];

//        _delImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-17)/2, _delLabel.bottom+5, 17, 19)];
//        _delImg.image = [UIImage imageNamed:@"sound_del"];
//        _delImg.hidden = YES;
//        [_audioBgview addSubview:_delImg];

        //: _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 20)];
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: _tipLabel.font = [UIFont systemFontOfSize:12];
        _tipLabel.font = [UIFont systemFontOfSize:12];
        //: _tipLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _tipLabel.textColor = [UIColor cell:[ButDeployData sharedInstance].kContentLamString];
        //: _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
//        _tipLabel.text = @"手指上滑，取消发送".nim_localized;
        //: _tipLabel.text = [DisplayLanguageManager getTextWithKey:@"Releasetosend_swipeuptocancel"];
        _tipLabel.text = [MakeManager cell:[ButDeployData sharedInstance].kContent_outfitString];
        //: [_audioBgview addSubview:_tipLabel];
        [_audioBgview addSubview:_tipLabel];

//        _soundwaveImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 40, SCREEN_WIDTH-40, 147)];
//        _soundwaveImageView.image = [UIImage imageNamed:@"sound_wave"];
//        [_audioBgview addSubview:_soundwaveImageView];


        // 创建UIImageView
            //: self.animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 60, [[UIScreen mainScreen] bounds].size.width-40, 80)];
            self.animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 60, [[UIScreen mainScreen] bounds].size.width-40, 80)];
            //: [_audioBgview addSubview:self.animationImageView];
            [_audioBgview addSubview:self.animationImageView];

            // 创建UIImage数组，用于帧动画
            //: NSMutableArray<UIImage *> *animationFrames = [NSMutableArray array];
            NSMutableArray<UIImage *> *animationFrames = [NSMutableArray array];

            // 添加帧到数组中
            //: for (int i = 0; i <= 12; i++) { 
            for (int i = 0; i <= 12; i++) { //
                //: NSString *imageName = [NSString stringWithFormat:@"sound_wave_%d", i];
                NSString *imageName = [NSString stringWithFormat:[ButDeployData sharedInstance].kTitle_substantiallyContent, i];
                //: UIImage *image = [UIImage imageNamed:imageName];
                UIImage *image = [UIImage imageNamed:imageName];
                //: if (image) {
                if (image) {
                    //: [animationFrames addObject:image];
                    [animationFrames addObject:image];
                }
            }

            // 设置动画帧
            //: self.animationImageView.animationImages = animationFrames;
            self.animationImageView.animationImages = animationFrames;
            //: self.animationImageView.animationDuration = 1.0; 
            self.animationImageView.animationDuration = 1.0; // 设置动画持续时间
            //: self.animationImageView.animationRepeatCount = 0; 
            self.animationImageView.animationRepeatCount = 0; // 无限循环

        //: self.recordPhase = AudioRecordPhaseEnd;
        self.recordPhase = AudioRecordPhaseEnd;



//        _audioBtnBg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-80)/2, 75, 80, 80)];
//        _audioBtnBg.backgroundColor = [UIColor whiteColor];
//        _audioBtnBg.image = [UIImage imageNamed:@"recording_bg_circle"];
//        [_audioBgview addSubview:_audioBtnBg];

        //: _audioButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _audioButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _audioButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-65)/2, 80, 80, 80);
        _audioButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-65)/2, 80, 80, 80);
        //: _audioButton.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1];
        _audioButton.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1];
        //: _audioButton.layer.cornerRadius = 40;
        _audioButton.layer.cornerRadius = 40;
        //: _audioButton.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        _audioButton.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        //: _audioButton.layer.shadowOffset = CGSizeMake(0,8);
        _audioButton.layer.shadowOffset = CGSizeMake(0,8);
        //: _audioButton.layer.shadowOpacity = 1;
        _audioButton.layer.shadowOpacity = 1;
        //: _audioButton.layer.shadowRadius = 32;
        _audioButton.layer.shadowRadius = 32;
        //: [_audioButton setImage:[UIImage imageNamed:@"recording_btn"]
        [_audioButton setImage:[UIImage imageNamed:[ButDeployData sharedInstance].kName_reparationValue]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
//        [_audioButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
        [_audioButton addTarget:self action:@selector(globaling:) forControlEvents:UIControlEventTouchDown];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
        [_audioButton addTarget:self action:@selector(alongForInside:) forControlEvents:UIControlEventTouchDragInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
        [_audioButton addTarget:self action:@selector(immobilized:) forControlEvents:UIControlEventTouchDragOutside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
        [_audioButton addTarget:self action:@selector(withs:) forControlEvents:UIControlEventTouchUpInside];
        //: [_audioButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
        [_audioButton addTarget:self action:@selector(taped:) forControlEvents:UIControlEventTouchUpOutside];
        //: [_audioBgview addSubview:_audioButton];
        [_audioBgview addSubview:_audioButton];

    }
    //: return self;
    return self;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setView:(id<PullDelegate>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}


//: -(void)onClicked:(UIButton *)sender{
-(void)asText:(UIButton *)sender{

}
//: - (void)onTouchRecordBtnDown:(id)sender {
- (void)globaling:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
    // 启动动画
    //: [self.animationImageView startAnimating];
    [self.animationImageView startAnimating];
//    _delImg.hidden = NO;
    //: _delLabel.hidden = NO;
    _delLabel.hidden = NO;
    //: _tipLabel.hidden = YES;
    _tipLabel.hidden = YES;
//    _soundwaveImageView.hidden = YES;
//    _audioBtnBg.frame = CGRectMake((SCREEN_WIDTH-100)/2, 65, 100, 100);
}
//: - (void)onTouchRecordBtnUpInside:(id)sender {
- (void)withs:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;

    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
//    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
//    _soundwaveImageView.hidden = NO;
//    _audioBtnBg.frame = CGRectMake((SCREEN_WIDTH-80)/2, 75, 80, 80);
}
//: - (void)onTouchRecordBtnUpOutside:(id)sender {
- (void)taped:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
//    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
//    _soundwaveImageView.hidden = NO;
//    _audioBtnBg.frame = CGRectMake((SCREEN_WIDTH-80)/2, 75, 80, 80);
}

//: - (void)onTouchRecordBtnDragInside:(id)sender {
- (void)alongForInside:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;

}
//: - (void)onTouchRecordBtnDragOutside:(id)sender {
- (void)immobilized:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
    // 停止动画
    //: [self.animationImageView stopAnimating];
    [self.animationImageView stopAnimating];
//    _delImg.hidden = YES;
    //: _delLabel.hidden = YES;
    _delLabel.hidden = YES;
    //: _tipLabel.hidden = NO;
    _tipLabel.hidden = NO;
//    _soundwaveImageView.hidden = NO;
//    _audioBtnBg.frame = CGRectMake((SCREEN_WIDTH-80)/2, 75, 80, 80);
}

//: - (void)setRecordPhase:(NIMAudioRecordPhase)recordPhase {
- (void)setRecordPhase:(NIMAudioRecordPhase)recordPhase {
    //: NIMAudioRecordPhase prevPhase = _recordPhase;
    NIMAudioRecordPhase prevPhase = _recordPhase;
    //: _recordPhase = recordPhase;
    _recordPhase = recordPhase;
    //: if(prevPhase == AudioRecordPhaseEnd) {
    if(prevPhase == AudioRecordPhaseEnd) {
        //: if(AudioRecordPhaseStart == _recordPhase) {
        if(AudioRecordPhaseStart == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onStartRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(bedFor)]) {
                //: [_actionDelegate onStartRecording];
                [_actionDelegate bedFor];
            }
        }
    //: } else if (prevPhase == AudioRecordPhaseStart || prevPhase == AudioRecordPhaseRecording) {
    } else if (prevPhase == AudioRecordPhaseStart || prevPhase == AudioRecordPhaseRecording) {
        //: if (AudioRecordPhaseEnd == _recordPhase) {
        if (AudioRecordPhaseEnd == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onStopRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(recordingSession)]) {
                //: [_actionDelegate onStopRecording];
                [_actionDelegate recordingSession];
            }
        }
    //: } else if (prevPhase == AudioRecordPhaseCancelling) {
    } else if (prevPhase == AudioRecordPhaseCancelling) {
        //: if(AudioRecordPhaseEnd == _recordPhase) {
        if(AudioRecordPhaseEnd == _recordPhase) {
            //: if ([_actionDelegate respondsToSelector:@selector(onCancelRecording)]) {
            if ([_actionDelegate respondsToSelector:@selector(magnitudePress)]) {
                //: [_actionDelegate onCancelRecording];
                [_actionDelegate magnitudePress];
            }
        }
    }
}

//: - (void)setConfig:(id<DisplaySessionConfig>)config
- (void)setConfig:(id<ColorConfig>)config
{
    //: _config = config;
    _config = config;
}


//: - (void)animationClose
- (void)ingatheringBy
{
//    self.hidden = YES;
    //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-220, [[UIScreen mainScreen] bounds].size.width, 220);
    self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-220, [[UIScreen mainScreen] bounds].size.width, 220);
        //: [UIView animateWithDuration:0.3f
        [UIView animateWithDuration:0.3f
                         //: animations:^{
                         animations:^{

            //: self.alpha = 0.0;
            self.alpha = 0.0;
            //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220);
            self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220);
                         }
                         //: completion:nil];
                         completion:nil];
}

//: - (void)animationShow
- (void)keep
{
//    self.hidden = NO;
    //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220);
    self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 220);

        //: [UIView animateWithDuration:0.3 animations:^{
        [UIView animateWithDuration:0.3 animations:^{
             //: self.alpha = 1.0;
             self.alpha = 1.0;
            //: self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-220, [[UIScreen mainScreen] bounds].size.width, 220);
            self.audioBgview.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-220, [[UIScreen mainScreen] bounds].size.width, 220);

        //: } completion:nil];
        } completion:nil];



}

//: @end
@end
