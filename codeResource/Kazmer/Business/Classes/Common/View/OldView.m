
#import <Foundation/Foundation.h>

@interface FreedInfoData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FreedInfoData

+ (instancetype)sharedInstance {
    static FreedInfoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FreedInfoDataToCache:(Byte *)data {
    int primaryAdd = data[0];
    int hunterSurgery = data[1];
    for (int i = 0; i < primaryAdd / 2; i++) {
        int begin = hunterSurgery + i;
        int end = hunterSurgery + primaryAdd - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[hunterSurgery + primaryAdd] = 0;
    return data + hunterSurgery;
}

- (NSString *)StringFromFreedInfoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FreedInfoDataToCache:data]];
}  

//: #5D5F66
- (NSString *)mainMatteMessage {
    /* static */ NSString *mainMatteMessage = nil;
    if (!mainMatteMessage) {
        Byte value[] = {7, 5, 34, 64, 134, 54, 54, 70, 53, 68, 53, 35, 111};
        mainMatteMessage = [self StringFromFreedInfoData:value];
    }
    return mainMatteMessage;
}

//: PrivacyPolicy.html
- (NSString *)dreamCedeMessage {
    /* static */ NSString *dreamCedeMessage = nil;
    if (!dreamCedeMessage) {
        Byte value[] = {18, 9, 46, 139, 42, 4, 227, 92, 16, 108, 109, 116, 104, 46, 121, 99, 105, 108, 111, 80, 121, 99, 97, 118, 105, 114, 80, 71};
        dreamCedeMessage = [self StringFromFreedInfoData:value];
    }
    return dreamCedeMessage;
}

//: #4B43DE
- (NSString *)noti_fiftyPath {
    /* static */ NSString *noti_fiftyPath = nil;
    if (!noti_fiftyPath) {
        Byte value[] = {7, 8, 214, 231, 245, 161, 81, 35, 69, 68, 51, 52, 66, 52, 35, 229};
        noti_fiftyPath = [self StringFromFreedInfoData:value];
    }
    return noti_fiftyPath;
}

//: agree
- (NSString *)k_muscleName {
    /* static */ NSString *k_muscleName = nil;
    if (!k_muscleName) {
        Byte value[] = {5, 8, 149, 159, 155, 211, 147, 24, 101, 101, 114, 103, 97, 54};
        k_muscleName = [self StringFromFreedInfoData:value];
    }
    return k_muscleName;
}

//: Privacy Policy
- (NSString *)appGuidanceMessage {
    /* static */ NSString *appGuidanceMessage = nil;
    if (!appGuidanceMessage) {
        Byte value[] = {14, 5, 133, 183, 244, 121, 99, 105, 108, 111, 80, 32, 121, 99, 97, 118, 105, 114, 80, 187};
        appGuidanceMessage = [self StringFromFreedInfoData:value];
    }
    return appGuidanceMessage;
}

//: reject
- (NSString *)noti_originInsistUrl {
    /* static */ NSString *noti_originInsistUrl = nil;
    if (!noti_originInsistUrl) {
        Byte value[] = {6, 10, 239, 136, 96, 81, 47, 173, 77, 28, 116, 99, 101, 106, 101, 114, 186};
        noti_originInsistUrl = [self StringFromFreedInfoData:value];
    }
    return noti_originInsistUrl;
}

//: ic_policy
- (NSString *)k_ligationKey {
    /* static */ NSString *k_ligationKey = nil;
    if (!k_ligationKey) {
        Byte value[] = {9, 11, 75, 148, 71, 154, 179, 45, 12, 183, 89, 121, 99, 105, 108, 111, 112, 95, 99, 105, 70};
        k_ligationKey = [self StringFromFreedInfoData:value];
    }
    return k_ligationKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONPrivacyPolicyView.h"
#import "OldView.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"

//: @interface ZMONPrivacyPolicyView ()<WKNavigationDelegate, WKUIDelegate>
@interface OldView ()<WKNavigationDelegate, WKUIDelegate>

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;

//: @end
@end

//: @implementation ZMONPrivacyPolicyView
@implementation OldView

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
        [self initTing];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initTing{
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

//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[OnName standardUserDefaults].yshref]];
//    [_webView loadRequest:request];


    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[EmptyTing intervalegrated] panoramicView] stringByAppendingPathComponent:[NSString stringWithFormat:[[FreedInfoData sharedInstance] dreamCedeMessage]]];
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
        _titleLabel.text = [[FreedInfoData sharedInstance] appGuidanceMessage];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_policy"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[FreedInfoData sharedInstance] k_ligationKey]]];
    }
    //: return _img;
    return _img;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationExit) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(exitLong) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor min:[[FreedInfoData sharedInstance] mainMatteMessage]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"reject"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[FreedInfoData sharedInstance] noti_originInsistUrl]] forState:UIControlStateNormal];
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

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(animationAgree) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(fileTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"agree"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[FreedInfoData sharedInstance] k_muscleName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[[FreedInfoData sharedInstance] noti_fiftyPath]];
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

//: - (void)animationExit
- (void)exitLong
{
    //: exit(0);
    exit(0);
}

//: - (void)animationAgree
- (void)fileTitle
{
    //: [NIMUserDefaults standardUserDefaults].yspop = @"1";
    [OnName user].yspop = @"1";
    //: [self animationClose];
    [self impendentImage];
}


//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)tapThan
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end