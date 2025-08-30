
#import <Foundation/Foundation.h>

@interface ForgeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ForgeData

+ (instancetype)sharedInstance {
    static ForgeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ForgeDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ForgeDataToCache:(Byte *)data {
    int silk = data[0];
    Byte ironFirmly = data[1];
    int yoursWord = data[2];
    for (int i = yoursWord; i < yoursWord + silk; i++) {
        int value = data[i] - ironFirmly;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[yoursWord + silk] = 0;
    return data + yoursWord;
}

- (NSString *)StringFromForgeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ForgeDataToCache:data]];
}

//: #5D5F66
- (NSString *)kTitle_riceData {
    /* static */ NSString *kTitle_riceData = nil;
    if (!kTitle_riceData) {
		NSArray<NSString *> *origin = @[@"7", @"91", @"10", @"242", @"110", @"102", @"163", @"77", @"162", @"80", @"126", @"144", @"159", @"144", @"161", @"145", @"145", @"215"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_riceData = [self StringFromForgeData:value];
    }
    return kTitle_riceData;
}

//: agree
- (NSString *)kNameDevoteText {
    /* static */ NSString *kNameDevoteText = nil;
    if (!kNameDevoteText) {
		NSArray<NSString *> *origin = @[@"5", @"91", @"9", @"186", @"103", @"41", @"74", @"12", @"189", @"188", @"194", @"205", @"192", @"192", @"4"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDevoteText = [self StringFromForgeData:value];
    }
    return kNameDevoteText;
}

//: reject
- (NSString *)kTextProgressValue {
    /* static */ NSString *kTextProgressValue = nil;
    if (!kTextProgressValue) {
		NSArray<NSString *> *origin = @[@"6", @"89", @"3", @"203", @"190", @"195", @"190", @"188", @"205", @"121"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextProgressValue = [self StringFromForgeData:value];
    }
    return kTextProgressValue;
}

//: ic_policy
- (NSString *)kTitle_sellData {
    /* static */ NSString *kTitle_sellData = nil;
    if (!kTitle_sellData) {
		NSArray<NSString *> *origin = @[@"9", @"60", @"9", @"151", @"95", @"126", @"194", @"179", @"234", @"165", @"159", @"155", @"172", @"171", @"168", @"165", @"159", @"181", @"239"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_sellData = [self StringFromForgeData:value];
    }
    return kTitle_sellData;
}

//: Privacy Policy
- (NSString *)kTitleSurelyCeilingData {
    /* static */ NSString *kTitleSurelyCeilingData = nil;
    if (!kTitleSurelyCeilingData) {
		NSArray<NSString *> *origin = @[@"14", @"5", @"3", @"85", @"119", @"110", @"123", @"102", @"104", @"126", @"37", @"85", @"116", @"113", @"110", @"104", @"126", @"6"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSurelyCeilingData = [self StringFromForgeData:value];
    }
    return kTitleSurelyCeilingData;
}

//: #4B43DE
- (NSString *)kTitleHoweverData {
    /* static */ NSString *kTitleHoweverData = nil;
    if (!kTitleHoweverData) {
		NSArray<NSString *> *origin = @[@"7", @"38", @"8", @"23", @"110", @"253", @"42", @"99", @"73", @"90", @"104", @"90", @"89", @"106", @"107", @"19"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleHoweverData = [self StringFromForgeData:value];
    }
    return kTitleHoweverData;
}

//: PrivacyPolicy.html
- (NSString *)kText_singString {
    /* static */ NSString *kText_singString = nil;
    if (!kText_singString) {
		NSArray<NSString *> *origin = @[@"18", @"39", @"8", @"245", @"169", @"65", @"196", @"68", @"119", @"153", @"144", @"157", @"136", @"138", @"160", @"119", @"150", @"147", @"144", @"138", @"160", @"85", @"143", @"155", @"148", @"147", @"227"];
		NSData *data = [ForgeData ForgeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_singString = [self StringFromForgeData:value];
    }
    return kText_singString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeggarMyNeighbourPolicyView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONPrivacyPolicyView.h"
#import "BeggarMyNeighbourPolicyView.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: @interface ZMONPrivacyPolicyView ()<WKNavigationDelegate, WKUIDelegate>
@interface BeggarMyNeighbourPolicyView ()<WKNavigationDelegate, WKUIDelegate>

//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;

//: @end
@end

//: @implementation ZMONPrivacyPolicyView
@implementation BeggarMyNeighbourPolicyView

//: - (void)animationShow
- (void)bmi
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_policy"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[ForgeData sharedInstance] kTitle_sellData]]];
    }
    //: return _img;
    return _img;
}





//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initStateOn];

    }
    //: return self;
    return self;
}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = @"Privacy Policy";
        _titleLabel.text = [[ForgeData sharedInstance] kTitleSurelyCeilingData];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)animationExit
- (void)saneBlock
{
    //: exit(0);
    exit(0);
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationExit) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(saneBlock) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor cell:[[ForgeData sharedInstance] kTitle_riceData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"reject"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[ForgeData sharedInstance] kTextProgressValue]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (void)animationAgree
- (void)questionMin
{
    //: [NIMUserDefaults standardUserDefaults].yspop = @"1";
    [TableContext name].yspop = @"1";
    //: [self animationClose];
    [self ingatheringBy];
}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}


//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(animationAgree) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(questionMin) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"agree"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[[ForgeData sharedInstance] kNameDevoteText]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[[ForgeData sharedInstance] kTitleHoweverData]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)initUI{
- (void)initStateOn{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.titleLabel];
//    self.titleLabel.frame = CGRectMake(20, 20, 200, 20);




    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    //: config.selectionGranularity = WKSelectionGranularityDynamic;
    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
    //: preferences.javaScriptCanOpenWindowsAutomatically = NO;
    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    //: _webView.layer.cornerRadius = 12;
    _webView.layer.cornerRadius = 12;
    //: _webView.backgroundColor = [UIColor clearColor];
    _webView.backgroundColor = [UIColor clearColor];
    //: _webView.scrollView.backgroundColor = [UIColor clearColor];
    _webView.scrollView.backgroundColor = [UIColor clearColor];
    //: _webView.opaque = NO;
    _webView.opaque = NO;
    //: [_box addSubview:_webView];
    [_box addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;

//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[TableContext standardUserDefaults].yshref]];
//    [_webView loadRequest:request];


    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[PersonShould commonKey] info] stringByAppendingPathComponent:[NSString stringWithFormat:[[ForgeData sharedInstance] kText_singString]]];
    //: NSString *path = htmlFilePath;
    NSString *path = htmlFilePath;
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        //: path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
        path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
    }
    //: NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [NSURL fileURLWithPath:path];
    //: NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];



//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(SCREEN_WIDTH-40-60, 20, 40, 40);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);
    self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);

}

//: @end
@end
