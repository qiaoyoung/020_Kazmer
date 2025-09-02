
#import <Foundation/Foundation.h>

@interface TowData : NSObject

@end

@implementation TowData

+ (NSData *)TowDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TowDataToCache:(Byte *)data {
    int airplaneItem = data[0];
    Byte suspicionGent = data[1];
    int targetCombat = data[2];
    for (int i = targetCombat; i < targetCombat + airplaneItem; i++) {
        int value = data[i] - suspicionGent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[targetCombat + airplaneItem] = 0;
    return data + targetCombat;
}

+ (NSString *)StringFromTowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TowDataToCache:data]];
}

//: friend_verify_avtivity_net_error
+ (NSString *)kTextWrapData {
    /* static */ NSString *kTextWrapData = nil;
    if (!kTextWrapData) {
		NSArray<NSNumber *> *origin = @[@32, @38, @13, @119, @123, @112, @51, @92, @168, @23, @123, @137, @167, @140, @152, @143, @139, @148, @138, @133, @156, @139, @152, @143, @140, @159, @133, @135, @156, @154, @143, @156, @143, @154, @159, @133, @148, @139, @154, @133, @139, @152, @152, @149, @152, @6];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextWrapData = [self StringFromTowData:value];
    }
    return kTextWrapData;
}

//: 00:00
+ (NSString *)kContent_stopString {
    /* static */ NSString *kContent_stopString = nil;
    if (!kContent_stopString) {
		NSArray<NSNumber *> *origin = @[@5, @56, @7, @48, @106, @39, @65, @104, @104, @114, @104, @104, @106];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_stopString = [self StringFromTowData:value];
    }
    return kContent_stopString;
}

//: ic_pic_save
+ (NSString *)kTitle_ethicEquivalentValue {
    /* static */ NSString *kTitle_ethicEquivalentValue = nil;
    if (!kTitle_ethicEquivalentValue) {
		NSArray<NSNumber *> *origin = @[@11, @50, @13, @221, @90, @206, @71, @85, @239, @161, @195, @242, @147, @155, @149, @145, @162, @155, @149, @145, @165, @147, @168, @151, @215];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_ethicEquivalentValue = [self StringFromTowData:value];
    }
    return kTitle_ethicEquivalentValue;
}

//: player_play
+ (NSString *)kTitleUmmName {
    /* static */ NSString *kTitleUmmName = nil;
    if (!kTitleUmmName) {
		NSArray<NSNumber *> *origin = @[@11, @8, @7, @21, @68, @248, @97, @120, @116, @105, @129, @109, @122, @103, @120, @116, @105, @129, @5];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleUmmName = [self StringFromTowData:value];
    }
    return kTitleUmmName;
}

//: ic_close_w
+ (NSString *)kTitleLearnValue {
    /* static */ NSString *kTitleLearnValue = nil;
    if (!kTitleLearnValue) {
		NSArray<NSNumber *> *origin = @[@10, @9, @7, @67, @104, @226, @76, @114, @108, @104, @108, @117, @120, @124, @110, @104, @128, @94];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleLearnValue = [self StringFromTowData:value];
    }
    return kTitleLearnValue;
}

//: 0.5x
+ (NSString *)kNameAppointedValue {
    /* static */ NSString *kNameAppointedValue = nil;
    if (!kNameAppointedValue) {
		NSArray<NSNumber *> *origin = @[@4, @77, @8, @55, @250, @99, @89, @51, @125, @123, @130, @197, @250];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameAppointedValue = [self StringFromTowData:value];
    }
    return kNameAppointedValue;
}

//: 播放失败
+ (NSString *)kName_sealWithRibbonString {
    /* static */ NSString *kName_sealWithRibbonString = nil;
    if (!kName_sealWithRibbonString) {
		NSArray<NSNumber *> *origin = @[@12, @85, @6, @133, @124, @173, @59, @231, @2, @59, @233, @19, @58, @249, @6, @61, @9, @250, @72];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_sealWithRibbonString = [self StringFromTowData:value];
    }
    return kName_sealWithRibbonString;
}

//: group_info_activity_update_failed
+ (NSString *)kText_assistanceName {
    /* static */ NSString *kText_assistanceName = nil;
    if (!kText_assistanceName) {
		NSArray<NSNumber *> *origin = @[@33, @35, @12, @91, @10, @222, @68, @107, @72, @206, @68, @253, @138, @149, @146, @152, @147, @130, @140, @145, @137, @146, @130, @132, @134, @151, @140, @153, @140, @151, @156, @130, @152, @147, @135, @132, @151, @136, @130, @137, @132, @140, @143, @136, @135, @77];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_assistanceName = [self StringFromTowData:value];
    }
    return kText_assistanceName;
}

//: group_info_activity_update_success
+ (NSString *)kTitle_divineData {
    /* static */ NSString *kTitle_divineData = nil;
    if (!kTitle_divineData) {
		NSArray<NSNumber *> *origin = @[@34, @33, @9, @239, @210, @98, @226, @134, @207, @136, @147, @144, @150, @145, @128, @138, @143, @135, @144, @128, @130, @132, @149, @138, @151, @138, @149, @154, @128, @150, @145, @133, @130, @149, @134, @128, @148, @150, @132, @132, @134, @148, @148, @8];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_divineData = [self StringFromTowData:value];
    }
    return kTitle_divineData;
}

//: #66FFFDisplay
+ (NSString *)kName_hydraTitle {
    /* static */ NSString *kName_hydraTitle = nil;
    if (!kName_hydraTitle) {
		NSArray<NSNumber *> *origin = @[@9, @63, @5, @8, @9, @98, @117, @117, @133, @133, @133, @133, @133, @133, @65];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_hydraTitle = [self StringFromTowData:value];
    }
    return kName_hydraTitle;
}

//: player_push
+ (NSString *)kTextBraString {
    /* static */ NSString *kTextBraString = nil;
    if (!kTextBraString) {
		NSArray<NSNumber *> *origin = @[@11, @11, @10, @126, @255, @157, @243, @216, @217, @209, @123, @119, @108, @132, @112, @125, @106, @123, @128, @126, @115, @52];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextBraString = [self StringFromTowData:value];
    }
    return kTextBraString;
}

//: error
+ (NSString *)kTitle_denseData {
    /* static */ NSString *kTitle_denseData = nil;
    if (!kTitle_denseData) {
		NSArray<NSNumber *> *origin = @[@5, @38, @11, @250, @247, @80, @127, @85, @76, @249, @92, @139, @152, @152, @149, @152, @115];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_denseData = [self StringFromTowData:value];
    }
    return kTitle_denseData;
}

//: 1.5x
+ (NSString *)kTitle_moleData {
    /* static */ NSString *kTitle_moleData = nil;
    if (!kTitle_moleData) {
		NSArray<NSNumber *> *origin = @[@4, @67, @6, @248, @157, @211, @116, @113, @120, @187, @227];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_moleData = [self StringFromTowData:value];
    }
    return kTitle_moleData;
}

//: #fffDisplay
+ (NSString *)kText_basementValue {
    /* static */ NSString *kText_basementValue = nil;
    if (!kText_basementValue) {
		NSArray<NSNumber *> *origin = @[@7, @21, @11, @105, @158, @207, @107, @31, @33, @239, @115, @56, @123, @123, @123, @123, @123, @123, @248];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_basementValue = [self StringFromTowData:value];
    }
    return kText_basementValue;
}

//: ic_pic_share
+ (NSString *)kText_disturbData {
    /* static */ NSString *kText_disturbData = nil;
    if (!kText_disturbData) {
		NSArray<NSNumber *> *origin = @[@12, @31, @5, @94, @143, @136, @130, @126, @143, @136, @130, @126, @146, @135, @128, @145, @132, @80];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_disturbData = [self StringFromTowData:value];
    }
    return kText_disturbData;
}

//: /  00:00
+ (NSString *)kName_dominantAddData {
    /* static */ NSString *kName_dominantAddData = nil;
    if (!kName_dominantAddData) {
		NSArray<NSNumber *> *origin = @[@8, @55, @3, @102, @87, @87, @103, @103, @113, @103, @103, @233];
		NSData *data = [TowData TowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_dominantAddData = [self StringFromTowData:value];
    }
    return kName_dominantAddData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowNameViewController.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERVideoViewController.h"
#import "RowNameViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERNavigationHandler.h"
#import "ToLabel.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "LYSlider.h"
#import "AdvertizeControl.h"
//: #import "UIImage+ComPress.h"
#import "UIImage+Red.h"
//: #import "ZMONCustomLoadingView.h"
#import "TopYearView.h"
//: #import "ZOMNForwardViewController.h"
#import "CrownViewController.h"

//: @interface USERVideoViewController ()<LYVideoPlayerDelegate>
@interface RowNameViewController ()<RowSizeDelegate>

//: @property (nonatomic,strong) USERVideoViewItem *item;
@property (nonatomic,strong) GrowingItem *item;
//: @property (nonatomic,strong) USERAVMoivePlayerController *avPlayer;
@property (nonatomic,strong) RefreshController *avPlayer;

//: @property (nonatomic,strong) UIButton *btnSave;
@property (nonatomic,strong) UIButton *btnSave;
//: @property (nonatomic,strong) UIButton *btnShare;
@property (nonatomic,strong) UIButton *btnShare;
//: @property (nonatomic,strong) UIButton *btnPlay;
@property (nonatomic,strong) UIButton *btnPlay;
//: @property (nonatomic,strong) UIButton *btnRate;
@property (nonatomic,strong) UIButton *btnRate;

//: @property (nonatomic, strong) UILabel *currentLabel; 
@property (nonatomic, strong) UILabel *currentLabel;//当前播放时间
//: @property (nonatomic, strong) UILabel *totalLabel; 
@property (nonatomic, strong) UILabel *totalLabel;//视频总时间
//: @property (nonatomic, strong) LYSlider *videoSlider; 
@property (nonatomic, strong) AdvertizeControl *videoSlider;//滑动条
//: @property (nonatomic, assign) NSInteger currentTime;
@property (nonatomic, assign) NSInteger currentTime;
//: @property (nonatomic, assign) NSInteger totalTime;
@property (nonatomic, assign) NSInteger totalTime;
//: @property (nonatomic, assign) CGFloat playValue; 
@property (nonatomic, assign) CGFloat playValue;//播放进度
//: @property (nonatomic, assign) CGFloat progress; 
@property (nonatomic, assign) CGFloat progress;//缓冲进度


//: @property (nonatomic,strong) UIImageView *imgPlay;
@property (nonatomic,strong) UIImageView *imgPlay;

//: @property (nonatomic,strong) UIProgressView *progres;
@property (nonatomic,strong) UIProgressView *progres;
//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture; 
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;//滑动手势

//: @property (strong, nonatomic) UISlider *progressSlider;
@property (strong, nonatomic) UISlider *progressSlider;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) TopYearView *loadingView;

//: @end
@end

//: @implementation USERVideoViewController
@implementation RowNameViewController
{
    //: CGPoint _startPoint; 
    CGPoint _startPoint; //手势滑动的起始点
    //: CGPoint _lastPoint; 
    CGPoint _lastPoint; //记录上次滑动的点
    //: BOOL _isStartPan; 
    BOOL _isStartPan; //记录手势开始滑动
    //: CGFloat _fastCurrentTime;
    CGFloat _fastCurrentTime;//记录当前快进快退的时间
}

//: - (instancetype)initWithVideoViewItem:(USERVideoViewItem *)item
- (instancetype)initWithShared:(GrowingItem *)item
{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self)
    if (self)
    {
        //: _item = item;
        _item = item;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [_avPlayer stop];
    [_avPlayer statusChild];
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //    [[NIMSDK sharedSDK].resourceManager cancelTask:_item.path];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
//    if (_avPlayer.playbackState == USERAVMoviePlaybackStatePlaying) {//不要调用.get方法，会过早的初始化播放器
//        [self topStatusUIHidden:YES];
//    }else{
//        [self topStatusUIHidden:NO];
//    }
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
//    if (![[self.navigationController viewControllers] containsObject: self])
//    {
//        [self topStatusUIHidden:NO];
//    }
}


//: - (void)viewDidDisappear:(BOOL)animated{
- (void)viewDidDisappear:(BOOL)animated{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.avPlayer pause];
    [self.avPlayer theLike];
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor blackColor];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+10, 24, 24);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+10, 24, 24);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_w"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[TowData kTitleLearnValue]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnShare = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnShare.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice comeDownSuperphylum]+10, 24, 24);
    //: [_btnShare setImage:[UIImage imageNamed:@"ic_pic_share"] forState:UIControlStateNormal];
    [_btnShare setImage:[UIImage imageNamed:[TowData kText_disturbData]] forState:UIControlStateNormal];
    //: [_btnShare addTarget:self action:@selector(onTouchshare) forControlEvents:UIControlEventTouchUpInside];
    [_btnShare addTarget:self action:@selector(datePull) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnShare];
    [self.view addSubview:_btnShare];

    //: _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice comeDownSuperphylum]+10, 24, 24);
    //: [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
    [_btnSave setImage:[UIImage imageNamed:[TowData kTitle_ethicEquivalentValue]] forState:UIControlStateNormal];
    //: [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnSave addTarget:self action:@selector(tagStatusBtn) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnSave];
    [self.view addSubview:_btnSave];




    //: UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [[UIScreen mainScreen] bounds].size.width, 49)];
    //: [self.view addSubview:btnView];
    [self.view addSubview:btnView];
    //: [self.view bringSubviewToFront:btnView];
    [self.view bringSubviewToFront:btnView];

    //: _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnPlay = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    _btnPlay.frame = CGRectMake(20, 4, 40, 40);
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_play"] forState:UIControlStateNormal];
    [_btnPlay setImage:[UIImage imageNamed:[TowData kTitleUmmName]] forState:UIControlStateNormal];
    //: [_btnPlay setImage:[UIImage imageNamed:@"player_push"] forState:UIControlStateSelected];
    [_btnPlay setImage:[UIImage imageNamed:[TowData kTextBraString]] forState:UIControlStateSelected];
    //: [_btnPlay addTarget:self action:@selector(onTap) forControlEvents:UIControlEventTouchUpInside];
    [_btnPlay addTarget:self action:@selector(psychologicalFeature) forControlEvents:UIControlEventTouchUpInside];
    //: [btnView addSubview:_btnPlay];
    [btnView addSubview:_btnPlay];

    //: [btnView addSubview:self.currentLabel];
    [btnView addSubview:self.currentLabel];
    //: self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);
    self.currentLabel.frame = CGRectMake(_btnPlay.right+10, 5, 40, 14);

    //: [btnView addSubview:self.totalLabel];
    [btnView addSubview:self.totalLabel];
    //: self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);
    self.totalLabel.frame = CGRectMake(self.currentLabel.right, 5, 80, 14);

//    [btnView addSubview:self.videoSlider];
//    self.videoSlider.frame = CGRectMake(15, 5, 3*width-30, 20);

    //: self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    self.progressSlider = [[UISlider alloc] initWithFrame:CGRectMake(_btnPlay.right+10, 20, [[UIScreen mainScreen] bounds].size.width-40-60, 30)];
    //: self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    self.progressSlider.minimumTrackTintColor = [UIColor whiteColor];
    //: self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
    self.progressSlider.maximumTrackTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];
//    self.progressSlider.thumbTintColor = ThemeColor;
    //: [self.progressSlider setThumbImage:[UIImage createImageWithColor:[UIColor colorWithHexString:@"#fffDisplay"] radius:3.0] forState:UIControlStateNormal];
    [self.progressSlider setThumbImage:[UIImage attributeRadius:[UIColor cell:[TowData kText_basementValue]] makeForInsideMode:3.0] forState:UIControlStateNormal];
    //: self.progressSlider.layer.cornerRadius = 3;
    self.progressSlider.layer.cornerRadius = 3;
    //: self.progressSlider.layer.masksToBounds = YES;
    self.progressSlider.layer.masksToBounds = YES;
    //: [btnView addSubview:self.progressSlider];
    [btnView addSubview:self.progressSlider];
    //: [self.progressSlider addTarget:self action:@selector(progressSliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.progressSlider addTarget:self action:@selector(hideDoing:) forControlEvents:UIControlEventValueChanged];

    //: self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnRate = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    _btnRate.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-44-20, 4, 44, 18);
    //: _btnRate.backgroundColor = [UIColor blackColor];
    _btnRate.backgroundColor = [UIColor blackColor];
    //: _btnRate.layer.cornerRadius = 9;
    _btnRate.layer.cornerRadius = 9;
    //: _btnRate.layer.borderColor = [UIColor colorWithHexString:@"#66FFFDisplay"].CGColor;
    _btnRate.layer.borderColor = [UIColor cell:[TowData kName_hydraTitle]].CGColor;
    //: _btnRate.layer.borderWidth = 1;
    _btnRate.layer.borderWidth = 1;
    //: [_btnRate addTarget:self action:@selector(handlerTheRate:) forControlEvents:UIControlEventTouchUpInside];
//    [_btnRate addTarget:self action:@selector(colorToRate:) forControlEvents:UIControlEventTouchUpInside];
    //: _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    _btnRate.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [_btnRate setTitleColor:[UIColor colorWithHexString:@"#fffDisplay"] forState:UIControlStateNormal];
    [_btnRate setTitleColor:[UIColor cell:[TowData kText_basementValue]] forState:UIControlStateNormal];
    //: [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
//    [_btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: [btnView addSubview:_btnRate];
    [btnView addSubview:_btnRate];


    //: if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.item.path]) {
        //: [self startPlay];
        [self morePlay];
    //: }else{
    }else{
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [self downLoadVideo:^(NSError *error) {
        [self nameDisable:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself startPlay];
                [wself morePlay];
            //: }else{
            }else{
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                [wself.view makeToast:[MakeManager cell:[TowData kTextWrapData]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    }

//    @weakify(self)
//    [self.avPlayer.player addPeriodicTimeObserverForInterval:CMTimeMakeWithSeconds(1, NSEC_PER_SEC)
//                                                      queue:NULL
//                                                 usingBlock:^(CMTime time) {
//        @strongify(self)
//        //进度 当前时间/总时间
//        CGFloat progress = CMTimeGetSeconds(self.avPlayer.player.currentItem.currentTime) / CMTimeGetSeconds(self.avPlayer.player.currentItem.duration);
//        //在这里截取播放进度并处理
//        self.progres.progress = progress;
//    }];
}

//: - (void)handlerTheRate:(UIButton *)sender
- (void)colorToRate:(UIButton *)sender
{

}

// 设置播放速率
//: - (void)setPlaybackRate:(float)rate {
- (void)setTapShow:(float)rate {
    //: if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
    if (self.avPlayer.player.currentItem.status == AVPlayerItemStatusReadyToPlay) {
        // iOS 10+ 推荐方式
        //: if (@available(iOS 10.0, *)) {
        if (@available(iOS 10.0, *)) {
            //: [self.avPlayer.player playImmediatelyAtRate:rate];
            [self.avPlayer.player playImmediatelyAtRate:rate];
        //: } else {
        } else {
            // iOS 10 以下方式
            //: self.avPlayer.player.rate = rate;
            self.avPlayer.player.rate = rate;
        }
    }
}

//: - (void)onTouchshare {
- (void)datePull {
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    CrownViewController *vc = [[CrownViewController alloc]init];
    //: vc.message = self.message;
    vc.message = self.message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)onTouchSaveBtn {
- (void)tagStatusBtn {

    //: PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    PHPhotoLibrary *photoLibrary = [PHPhotoLibrary sharedPhotoLibrary];
    //: [photoLibrary performChanges:^{
    [photoLibrary performChanges:^{
        //: [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:[NSURL
                                                                         //: fileURLWithPath:self.item.path]];
                                                                         fileURLWithPath:self.item.path]];
    //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: NSString *toast = (success)?[DisplayLanguageManager getTextWithKey:@"group_info_activity_update_success"] :[DisplayLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
            NSString *toast = (success)?[MakeManager cell:[TowData kTitle_divineData]] :[MakeManager cell:[TowData kText_assistanceName]];
            //: [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
        //: });
        });
    //: }];
    }];
}


//: - (void)downLoadVideo:(void(^)(NSError *error))handler{
- (void)nameDisable:(void(^)(NSError *error))handler{
//    [SVProgressHUD show];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
    [[NIMSDK sharedSDK].resourceManager download:self.item.url filepath:self.item.path progress:^(float progress) {
//        if (wself)
//        {
//            [SVProgressHUD showProgress:progress];
//        }
    //: } completion:^(NSError *error) {
    } completion:^(NSError *error) {
        //: if (wself) {
        if (wself) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView ingatheringBy];
            //: if (handler) {
            if (handler) {
                //: handler(error);
                handler(error);
            }
        }
    //: }];
    }];
}

//: - (void)videoPlayertotalTime:(NSInteger)totalTime
- (void)rangeTitle:(NSInteger)totalTime
{
    //: self.totalTime = totalTime;
    self.totalTime = totalTime;
    //: self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self timeFormatted:totalTime]];
    self.totalLabel.text = [NSString stringWithFormat:@"/  %@",[self insertDistance:totalTime]];
}

//: - (void)videoPlayercurrentTime:(NSInteger)currentTime
- (void)shoulded:(NSInteger)currentTime
{
    //: self.currentTime = currentTime;
    self.currentTime = currentTime;
    //: self.currentLabel.text = [self timeFormatted:currentTime];
    self.currentLabel.text = [self insertDistance:currentTime];
//    self.videoSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    //: self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;
    self.progressSlider.value = (CGFloat)currentTime/(CGFloat)self.totalTime;

}

//: - (void)progressSliderValueChanged:(UISlider *)sender {
- (void)hideDoing:(UISlider *)sender {
    //: CGFloat totime = sender.value * (CGFloat)self.totalTime;
    CGFloat totime = sender.value * (CGFloat)self.totalTime;
    //: [self.avPlayer seekToTimePlay:totime];
    [self.avPlayer contentDoing:totime];

//    CMTime newTime = CMTimeMakeWithSeconds(sender.value, NSEC_PER_SEC);
//    [self.avPlayer.player seekToTime:newTime completionHandler:^(BOOL finished) {
//        if (finished) {
//            [self.avPlayer play];
//        }
//    }];
}

//转换时间格式
//: - (NSString *)timeFormatted:(NSInteger)totalSeconds
- (NSString *)insertDistance:(NSInteger)totalSeconds
{
    //: NSInteger seconds = totalSeconds % 60;
    NSInteger seconds = totalSeconds % 60;
    //: NSInteger minutes = (totalSeconds / 60) % 60;
    NSInteger minutes = (totalSeconds / 60) % 60;

    //: return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
    return [NSString stringWithFormat:@"%02ld:%02ld",minutes, seconds];
}


//: - (void)startPlay{
- (void)morePlay{
    //: self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.avPlayer.view.frame = CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: [self.avPlayer prepareToPlay];
    [self.avPlayer sizeRecent];
    //: [self.view addSubview:self.avPlayer.view];
    [self.view addSubview:self.avPlayer.view];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlaybackComplete:)
                                             selector:@selector(streetSmart:)
                                                 //: name:USERAVMoviePlayerPlaybackDidFinishNotification
                                                 name:show_makeIdent(nil)
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(moviePlayStateChanged:)
                                             selector:@selector(colorationned:)
                                                 //: name:USERAVMoviePlayerPlaybackStateDidChangeNotification
                                                 name:dream_modeStr(nil)
                                               //: object:self.avPlayer];
                                               object:self.avPlayer];


//    CGRect bounds = self.avPlayer.view.bounds;
//    CGRect tapViewFrame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
//    UIView *tapView = [[UIView alloc]initWithFrame:tapViewFrame];
//    [tapView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
//    tapView.backgroundColor = [UIColor clearColor];
//    [self.avPlayer.view addSubview:tapView];
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTap:)];
//    [tapView  addGestureRecognizer:tap];
//    
//    [self.view addSubview:self.imgPlay];


}

//: - (void)moviePlaybackComplete: (NSNotification *)aNotification
- (void)streetSmart: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: [self topStatusUIHidden:NO];
        [self tableHidden:NO];
        //: NSDictionary *notificationUserInfo = [aNotification userInfo];
        NSDictionary *notificationUserInfo = [aNotification userInfo];
        //: NSNumber *resultValue = [notificationUserInfo objectForKey:USERAVMoviePlayerPlaybackDidFinishReasonUserInfoKey];
        NSNumber *resultValue = [notificationUserInfo objectForKey:kResultData(nil)];
        //: USERAVMovieFinishReason reason = [resultValue intValue];
        USERAVMovieFinishReason reason = [resultValue intValue];
        //: if (reason == USERAVMovieFinishReasonPlaybackError)
        if (reason == USERAVMovieFinishReasonPlaybackError)
        {
            //: NSError *mediaPlayerError = [notificationUserInfo objectForKey:@"error"];
            NSError *mediaPlayerError = [notificationUserInfo objectForKey:[TowData kTitle_denseData]];
            //: NSString *errorTip = [NSString stringWithFormat:@"%@: %@", @"播放失败".user_localized, [mediaPlayerError localizedDescription]];
            NSString *errorTip = [NSString stringWithFormat:@"%@: %@", [TowData kName_sealWithRibbonString].nominate, [mediaPlayerError localizedDescription]];
            //: [self.view makeToast:errorTip
            [self.view makeToast:errorTip
                        //: duration:2
                        duration:2
                        //: position:CSToastPositionCenter];
                        position:CSToastPositionCenter];
        }
    }

}

//: - (void)moviePlayStateChanged: (NSNotification *)aNotification
- (void)colorationned: (NSNotification *)aNotification
{
    //: if (self.avPlayer == aNotification.object)
    if (self.avPlayer == aNotification.object)
    {
        //: switch (self.avPlayer.playbackState)
        switch (self.avPlayer.playbackState)
        {
            //: case USERAVMoviePlaybackStatePlaying:
            case USERAVMoviePlaybackStatePlaying:
                //: [self topStatusUIHidden:YES];
                [self tableHidden:YES];
                //: break;
                break;
            //: case USERAVMoviePlaybackStatePaused:
            case USERAVMoviePlaybackStatePaused:
            //: case USERAVMoviePlaybackStateStopped:
            case USERAVMoviePlaybackStateStopped:
            //: case USERAVMoviePlaybackStateInterrupted:
            case USERAVMoviePlaybackStateInterrupted:
                //: [self topStatusUIHidden:NO];
                [self tableHidden:NO];
            //: case USERAVPMoviePlaybackStateSeekingBackward:
            case USERAVPMoviePlaybackStateSeekingBackward:
            //: case USERAVPMoviePlaybackStateSeekingForward:
            case USERAVPMoviePlaybackStateSeekingForward:
                //: break;
                break;
        }

    }
}

//: - (void)topStatusUIHidden:(BOOL)isHidden
- (void)tableHidden:(BOOL)isHidden
{
//    self.imgPlay.hidden = isHidden;
    //: self.btnPlay.selected = isHidden;
    self.btnPlay.selected = isHidden;
}

//: - (void)onTap
- (void)psychologicalFeature
{
    //: [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    [self.btnRate setTitle:@"1x" forState:UIControlStateNormal];
    //: switch (self.avPlayer.playbackState)
    switch (self.avPlayer.playbackState)
    {
        //: case USERAVMoviePlaybackStatePlaying:
        case USERAVMoviePlaybackStatePlaying:
            //: [self.avPlayer pause];
            [self.avPlayer theLike];
            //: break;
            break;
        //: case USERAVMoviePlaybackStatePaused:
        case USERAVMoviePlaybackStatePaused:
        //: case USERAVMoviePlaybackStateStopped:
        case USERAVMoviePlaybackStateStopped:
        //: case USERAVMoviePlaybackStateInterrupted:
        case USERAVMoviePlaybackStateInterrupted:
            //: [self.avPlayer play];
            [self.avPlayer name];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (USERAVMoivePlayerController *)avPlayer {
- (RefreshController *)avPlayer {
    //: if (!_avPlayer) {
    if (!_avPlayer) {
        //: _avPlayer = [[USERAVMoivePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:self.item.path]];
        _avPlayer = [[RefreshController alloc] initWithLinkTitle:[NSURL fileURLWithPath:self.item.path]];
        //: _avPlayer.delegate = self;
        _avPlayer.delegate = self;
        //: _avPlayer.scalingMode = USERAVMovieScalingModeAspectFill;
        _avPlayer.scalingMode = USERAVMovieScalingModeAspectFill;
    }
    //: return _avPlayer;
    return _avPlayer;
}

//: - (UIImageView *)imgPlay{
- (UIImageView *)imgPlay{
    //: if(!_imgPlay){
    if(!_imgPlay){
        //: _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
        _imgPlay = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-80)/2, ([[UIScreen mainScreen] bounds].size.height-80)/2, 80, 80)];
//        _imgPlay.center = self.view.center;
        //: _imgPlay.image = [UIImage imageNamed:@"player_push"];
        _imgPlay.image = [UIImage imageNamed:[TowData kTextBraString]];
        //: _imgPlay.hidden = YES;
        _imgPlay.hidden = YES;
    }
    //: return _imgPlay;
    return _imgPlay;
}

//: - (UILabel *)currentLabel{
- (UILabel *)currentLabel{
    //: if (!_currentLabel) {
    if (!_currentLabel) {
        //: _currentLabel = [[UILabel alloc] init];
        _currentLabel = [[UILabel alloc] init];
        //: _currentLabel.text = @"00:00";
        _currentLabel.text = [TowData kContent_stopString];
        //: _currentLabel.textColor = [UIColor whiteColor];
        _currentLabel.textColor = [UIColor whiteColor];
//        _currentLabel.textAlignment = NSTextAlignmentLeft;
        //: _currentLabel.font = [UIFont systemFontOfSize:12];
        _currentLabel.font = [UIFont systemFontOfSize:12];
    }
    //: return _currentLabel;
    return _currentLabel;
}
//: - (UILabel *)totalLabel{
- (UILabel *)totalLabel{
    //: if (!_totalLabel) {
    if (!_totalLabel) {
        //: _totalLabel = [[UILabel alloc] init];
        _totalLabel = [[UILabel alloc] init];
        //: _totalLabel.text = @"/  00:00";
        _totalLabel.text = [TowData kName_dominantAddData];
        //: _totalLabel.textColor = [UIColor whiteColor];
        _totalLabel.textColor = [UIColor whiteColor];
        //: _totalLabel.font = [UIFont systemFontOfSize:12];
        _totalLabel.font = [UIFont systemFontOfSize:12];
//        _totalLabel.textAlignment = NSTextAlignmentRight;
    }
    //: return _totalLabel;
    return _totalLabel;
}

//: - (LYSlider *)videoSlider{
- (AdvertizeControl *)videoSlider{
    //: if (!_videoSlider) {
    if (!_videoSlider) {
        //: _videoSlider = [[LYSlider alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];
        _videoSlider = [[AdvertizeControl alloc] initWithFrame:CGRectMake(0, 0, 3*([[UIScreen mainScreen] bounds].size.width/4), 20)];

//        //设置滑块图片样式
        // 1 通过颜色创建 Image
        //: UIImage *normalImage = [UIImage createImageWithColor:[UIColor colorWithHexString:@"#fffDisplay"] radius:7.0];
        UIImage *normalImage = [UIImage attributeRadius:[UIColor cell:[TowData kText_basementValue]] makeForInsideMode:7.0];

        //        UIView *normalImageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 8, 8)];
        //        normalImageView.layer.cornerRadius = 1;
        //        normalImageView.layer.masksToBounds = YES;
        //        normalImageView.backgroundColor = [UIColor whiteColor];
        //        UIImage *normalImage = [UIImage creatImageWithView:normalImageView];

//        // 2 通过view 创建 Image
//        UIView *highlightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 12, 12)];
//        highlightView.layer.cornerRadius = 6;
//        highlightView.layer.masksToBounds = YES;
//        highlightView.backgroundColor = [UIColor redColor];
//        UIImage *highlightImage = [UIImage creatImageWithView:highlightView];

        //: [_videoSlider setThumbImage:normalImage forState:UIControlStateNormal];
        [_videoSlider center:normalImage end:UIControlStateNormal];
//        [_videoSlider setThumbImage:highlightImage forState:UIControlStateHighlighted];

//        _videoSlider.trackColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2];//轨道的颜色
//        _videoSlider.bufferColor = RGB_COLOR_String(@"#fffDisplay");//缓冲的颜色
//        _videoSlider.thumbValueColor = RGB_COLOR_String(@"#fffDisplay");///播放进度的颜色
        ///
        //: _videoSlider.trackHeight = 6;
        _videoSlider.trackHeight = 6;
        //: _videoSlider.thumbVisibleSize = 14;
        _videoSlider.thumbVisibleSize = 14;//设置滑块（可见的）大小

//        [_videoSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];//正在拖动
//        [_videoSlider addTarget:self action:@selector(sliderTouchEnd:) forControlEvents:UIControlEventEditingDidEnd];//拖动结束
        //: [_videoSlider addGestureRecognizer:self.panGesture];
        [_videoSlider addGestureRecognizer:self.panGesture];

//        [self.bottomView addSubview:_videoSlider];
    }
    //: return _videoSlider;
    return _videoSlider;
}

//: - (ZMONCustomLoadingView *)loadingView
- (TopYearView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
        _loadingView = [[TopYearView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-(49.0f))];
    }
    //: return _loadingView;
    return _loadingView;
}


//: #pragma mark - Event
#pragma mark - Event
//: - (void)sliderValueChange:(LYSlider *)slider{
- (void)locationView:(AdvertizeControl *)slider{

//    _sliderIsTouching = YES;
//    self.currentLabel.text = [self timeFormatted:slider.value * self.totalTime];
//    [self startHideControlTimer];
}
//: - (void)sliderTouchEnd:(LYSlider *)slider{
- (void)stepEnd:(AdvertizeControl *)slider{

//    if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//        [_delegate videoControl:self didPlayToTime:slider.value * self.totalTime];
//    }
//    _sliderIsTouching = NO;
//    [self startHideControlTimer];
    //: NSLog(@"12345678");
    //: NSLog(@"%f",slider.value);
    //: [self.avPlayer seekToTimePlay: slider.value];
    [self.avPlayer contentDoing: slider.value];
}

//: - (UIPanGestureRecognizer *)panGesture{
- (UIPanGestureRecognizer *)panGesture{
    //: if (!_panGesture) {
    if (!_panGesture) {
        //: _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureTouch:)];
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(customing:)];
    }
    //: return _panGesture;
    return _panGesture;
}
//: - (void)panGestureTouch:(UIPanGestureRecognizer *)panGestureTouch{
- (void)customing:(UIPanGestureRecognizer *)panGestureTouch{
    //: CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    CGPoint touPoint = [panGestureTouch translationInView:self.videoSlider];
    //: static int changeXorY = 0; 
    static int changeXorY = 0; //0:X:进度   1:Y：音量

    //: if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
    if (panGestureTouch.state == UIGestureRecognizerStateBegan) {
        //: _startPoint = touPoint;
        _startPoint = touPoint;
        //: _lastPoint = touPoint;
        _lastPoint = touPoint;
        //: _isStartPan = YES;
        _isStartPan = YES;
        //: _fastCurrentTime = self.currentTime;
        _fastCurrentTime = self.currentTime;
        //: changeXorY = 0;
        changeXorY = 0;
    //: }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
    }else if (panGestureTouch.state == UIGestureRecognizerStateChanged){
        //: CGFloat change_X = touPoint.x - _startPoint.x;
        CGFloat change_X = touPoint.x - _startPoint.x;
        //: CGFloat change_Y = touPoint.y - _startPoint.y;
        CGFloat change_Y = touPoint.y - _startPoint.y;

        //: if (_isStartPan) {
        if (_isStartPan) {

            //: if (fabs(change_X) > fabs(change_Y)) {
            if (fabs(change_X) > fabs(change_Y)) {
                //: changeXorY = 0;
                changeXorY = 0;
            //: }else{
            }else{
                //: changeXorY = 1;
                changeXorY = 1;
            }
            //: _isStartPan = NO;
            _isStartPan = NO;
        }
        //: if (changeXorY == 0) {
        if (changeXorY == 0) {//进度


            //: if (touPoint.x - _lastPoint.x >= 1) {
            if (touPoint.x - _lastPoint.x >= 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime += 1;
                _fastCurrentTime += 1;
                //: if (_fastCurrentTime > self.totalTime) {
                if (_fastCurrentTime > self.totalTime) {
                    //: _fastCurrentTime = self.totalTime;
                    _fastCurrentTime = self.totalTime;
                }
            }
            //: if (touPoint.x - _lastPoint.x <= - 1) {
            if (touPoint.x - _lastPoint.x <= - 1) {
                //: _lastPoint = touPoint;
                _lastPoint = touPoint;
                //: _fastCurrentTime -= 1;
                _fastCurrentTime -= 1;
                //: if (_fastCurrentTime < 0) {
                if (_fastCurrentTime < 0) {
                    //: _fastCurrentTime = 0;
                    _fastCurrentTime = 0;
                }
            }

//            NSString *currentTimeString = [self timeFormatted:(int)_fastCurrentTime];
//            NSString *totalTimeString = [self timeFormatted:(int)self.totalTime];
//            self.fastTimeLabel.text = [NSString stringWithFormat:@"%@/%@",currentTimeString,totalTimeString];

        }

    //: }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){
    }else if (panGestureTouch.state == UIGestureRecognizerStateEnded){

        //: if (changeXorY == 0) {
        if (changeXorY == 0) {
//            if (_delegate && [_delegate respondsToSelector:@selector(videoControl:didPlayToTime:)]) {
//                [_delegate videoControl:self didPlayToTime:_fastCurrentTime];
//            }

            //: [self.avPlayer seekToTimePlay:_fastCurrentTime];
            [self.avPlayer contentDoing:_fastCurrentTime];
        }
//        [self startHideControlTimer];
    }
}

//: @end
@end


//: @implementation USERVideoViewItem
@implementation GrowingItem
//: @end
@end
