
#import <Foundation/Foundation.h>

NSString *StringFromMediaValueData(Byte *data);


//: TikTok
Byte appOfCabinMsg[] = {2, 6, 58, 4, 142, 163, 165, 142, 169, 165, 44};

//: Kwai
Byte show_tableId[] = {51, 4, 73, 6, 149, 227, 148, 192, 170, 178, 77};

//: https://www.tiktok.com/foryou
Byte main_transformationData[] = {45, 29, 82, 11, 33, 22, 241, 252, 193, 167, 253, 186, 198, 198, 194, 197, 140, 129, 129, 201, 201, 201, 128, 198, 187, 189, 198, 193, 189, 128, 181, 193, 191, 129, 184, 193, 196, 203, 193, 199, 197};

//: Triller
Byte k_pictureMsg[] = {62, 7, 30, 8, 134, 102, 73, 148, 114, 144, 135, 138, 138, 131, 144, 44};

//: https://triller.co/m
Byte showRefreshPath[] = {91, 20, 28, 7, 90, 137, 86, 132, 144, 144, 140, 143, 86, 75, 75, 144, 142, 133, 136, 136, 129, 142, 74, 127, 139, 75, 137, 34};

//: estimatedProgress
Byte notiHateIdent[] = {80, 17, 84, 9, 58, 176, 35, 111, 202, 185, 199, 200, 189, 193, 181, 200, 185, 184, 164, 198, 195, 187, 198, 185, 199, 199, 247};

//: title
Byte appMinUrl[] = {23, 5, 54, 9, 164, 155, 234, 92, 127, 170, 159, 170, 162, 155, 98};

//: https://www.kwai.com/foryou
Byte mBarMsg[] = {52, 27, 51, 4, 155, 167, 167, 163, 166, 109, 98, 98, 170, 170, 170, 97, 158, 170, 148, 156, 97, 150, 162, 160, 98, 153, 162, 165, 172, 162, 168, 219};

//: #5D5F66
Byte userManName[] = {91, 7, 34, 10, 253, 171, 217, 154, 157, 122, 69, 87, 102, 87, 104, 88, 88, 39};

//: #875FFA
Byte main_companyShowerIdent[] = {89, 7, 37, 14, 172, 202, 179, 153, 133, 104, 171, 224, 208, 217, 72, 93, 92, 90, 107, 107, 102, 50};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectMakeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideoListViewController.h"
#import "SelectMakeViewController.h"
//: #import "NTESVideolistCollectionViewCell.h"
#import "EdgeReusableView.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>

//: @interface NTESVideoListViewController ()<WKNavigationDelegate,WKUIDelegate>
@interface SelectMakeViewController ()<WKNavigationDelegate,WKUIDelegate>

//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;
//: @property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) UIProgressView *progressView;

//: @property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) UICollectionView *collectionView;
//: @property (nonatomic,strong) NSArray *videosList;
@property (nonatomic,strong) NSArray *videosList;

//: @property (strong, nonatomic) UIButton *tikBtn;
@property (strong, nonatomic) UIButton *tikBtn;
//: @property (strong, nonatomic) UIButton *kwaiBtn;
@property (strong, nonatomic) UIButton *kwaiBtn;
//: @property (strong, nonatomic) UIButton *TrillerBtn;
@property (strong, nonatomic) UIButton *TrillerBtn;

//: @property (nonatomic,strong) NSString *urlString;
@property (nonatomic,strong) NSString *urlString;

//: @end
@end

//: @implementation NTESVideoListViewController
@implementation SelectMakeViewController

//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//
//    }
//    return self;
//}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
    self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];

    //: UIView *typeview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *typeview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
//    typeview.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
//    typeview.layer.cornerRadius = 30;
//    typeview.userInteractionEnabled = YES;
    //: [self.view addSubview:typeview];
    [self.view addSubview:typeview];

    //: CGFloat spacing1 = 15;
    CGFloat spacing1 = 15;//行、列 间距
    //: int totalloc1 = 3;
    int totalloc1 = 3;//列数
    //: CGFloat appvieww1 = ([[UIScreen mainScreen] bounds].size.width - spacing1*4)/totalloc1;
    CGFloat appvieww1 = ([[UIScreen mainScreen] bounds].size.width - spacing1*4)/totalloc1;

    //: _tikBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _tikBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _tikBtn.frame = CGRectMake(spacing1, 7, appvieww1, 30);
    _tikBtn.frame = CGRectMake(spacing1, 7, appvieww1, 30);
    //: _tikBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _tikBtn.backgroundColor = [UIColor min:StringFromMediaValueData(main_companyShowerIdent)];
    //: _tikBtn.layer.cornerRadius = 15;
    _tikBtn.layer.cornerRadius = 15;
    //: _tikBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _tikBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_tikBtn setTitle:@"TikTok" forState:UIControlStateNormal];
    [_tikBtn setTitle:StringFromMediaValueData(appOfCabinMsg) forState:UIControlStateNormal];
    //: [_tikBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_tikBtn addTarget:self action:@selector(infoMore:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_tikBtn];
    [typeview addSubview:_tikBtn];

    //: _kwaiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _kwaiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _kwaiBtn.frame = CGRectMake(spacing1*2+appvieww1, 7, appvieww1, 30);
    _kwaiBtn.frame = CGRectMake(spacing1*2+appvieww1, 7, appvieww1, 30);
    //: _kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    _kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: _kwaiBtn.layer.cornerRadius = 15;
    _kwaiBtn.layer.cornerRadius = 15;
    //: _kwaiBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _kwaiBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_kwaiBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];
//    [_kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_kwaiBtn setTitle:@"Kwai" forState:UIControlStateNormal];
    [_kwaiBtn setTitle:StringFromMediaValueData(show_tableId) forState:UIControlStateNormal];
    //: [_kwaiBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_kwaiBtn addTarget:self action:@selector(infoMore:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_kwaiBtn];
    [typeview addSubview:_kwaiBtn];

    //: _TrillerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _TrillerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _TrillerBtn.frame = CGRectMake(spacing1*3+appvieww1*2, 7, appvieww1, 30);
    _TrillerBtn.frame = CGRectMake(spacing1*3+appvieww1*2, 7, appvieww1, 30);
    //: _TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    _TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: _TrillerBtn.layer.cornerRadius = 15;
    _TrillerBtn.layer.cornerRadius = 15;
    //: _TrillerBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _TrillerBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_TrillerBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];
    //: [_TrillerBtn setTitle:@"Triller" forState:UIControlStateNormal];
    [_TrillerBtn setTitle:StringFromMediaValueData(k_pictureMsg) forState:UIControlStateNormal];
    //: [_TrillerBtn addTarget:self action:@selector(handlerTopBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_TrillerBtn addTarget:self action:@selector(infoMore:) forControlEvents:UIControlEventTouchUpInside];
    //: [typeview addSubview:_TrillerBtn];
    [typeview addSubview:_TrillerBtn];

//    CGFloat spacing = 15;//行、列 间距
//    int totalloc = 2;//列数
//    CGFloat appvieww = (SCREEN_WIDTH - spacing*3)/totalloc;
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    flowLayout.itemSize = CGSizeMake(appvieww, appvieww*1.3 + 50);
//    CGFloat lineSpacing = 15;
//    flowLayout.minimumLineSpacing = 15;
//    flowLayout.minimumInteritemSpacing = lineSpacing;
//    flowLayout.sectionInset = UIEdgeInsetsMake(10, 5, 10, 5);
//
//    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT) collectionViewLayout:flowLayout];
//    self.collectionView.backgroundColor = [UIColor clearColor];
//    self.collectionView.dataSource = self;
//    self.collectionView.delegate = self;
//
////    [self.collectionView registerClass:[EdgeReusableView class] forCellWithReuseIdentifier:NSStringFromClass([EdgeReusableView class])];
//    [self.collectionView registerClass:[EdgeReusableView class] forCellWithReuseIdentifier:@"TZVideoCell"];
//    [self.view addSubview:self.collectionView];
//
//    [self.collectionView reloadData];

    //: self.urlString = @"https://www.tiktok.com/foryou";
    self.urlString = StringFromMediaValueData(main_transformationData);
    //: [self initUI];
    [self initWillUi];
    //: [self reloadWebView];
    [self to];

}

//: - (void)handlerTopBtn:(UIButton *)sender
- (void)infoMore:(UIButton *)sender
{
    //: if(sender == self.tikBtn){
    if(sender == self.tikBtn){
        //: self.urlString = @"https://www.tiktok.com/foryou";
        self.urlString = StringFromMediaValueData(main_transformationData);
        //: self.tikBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.tikBtn.backgroundColor = [UIColor min:StringFromMediaValueData(main_companyShowerIdent)];
        //: [self.tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];

        //: self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];

    }
    //: else if (sender == self.kwaiBtn){
    else if (sender == self.kwaiBtn){
        //: self.urlString = @"https://www.kwai.com/foryou";
        self.urlString = StringFromMediaValueData(mBarMsg);
        //: self.kwaiBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.kwaiBtn.backgroundColor = [UIColor min:StringFromMediaValueData(main_companyShowerIdent)];
        //: [self.kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.tikBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];

        //: self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.TrillerBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.TrillerBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];
    }
    //: else if (sender == self.TrillerBtn){
    else if (sender == self.TrillerBtn){
        //: self.urlString = @"https://triller.co/m";
        self.urlString = StringFromMediaValueData(showRefreshPath);
        //: self.TrillerBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        self.TrillerBtn.backgroundColor = [UIColor min:StringFromMediaValueData(main_companyShowerIdent)];
        //: [self.TrillerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.TrillerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.kwaiBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.kwaiBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.kwaiBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];

        //: self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        self.tikBtn.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
        //: [self.tikBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [self.tikBtn setTitleColor:[UIColor min:StringFromMediaValueData(userManName)] forState:UIControlStateNormal];
    }

    //: [self reloadWebView];
    [self to];
}
//: - (void)dealloc {
- (void)dealloc {
    //: [_webView removeObserver:self forKeyPath:@"estimatedProgress"];
    [_webView removeObserver:self forKeyPath:StringFromMediaValueData(notiHateIdent)];
}

//: - (void)initUI{
- (void)initWillUi{

    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
//    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: config.allowsInlineMediaPlayback = YES;
    config.allowsInlineMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
//    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+2, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f)-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-2) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+2, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-(49.0f)-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-2) configuration:config];
    //: [self.view addSubview:_webView];
    [self.view addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;


    //: self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 2)];
    self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, 2)];
    //: self.progressView.backgroundColor = [UIColor clearColor];
    self.progressView.backgroundColor = [UIColor clearColor];
    //设置进度条的高度，下面这句代码表示进度条的宽度变为原来的1倍，高度变为原来的1.5倍.
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //: [self.view addSubview:self.progressView];
    [self.view addSubview:self.progressView];


//    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.top.mas_equalTo(self.view).mas_offset(SCREEN_TOP_HEIGHT+2);
//        make.right.mas_offset(0);
//        make.bottom.mas_offset(SCREEN_TABBAR_HEIGHT);
//    }];

//    [self.progressView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_offset(SCREEN_TOP_HEIGHT);
//        make.height.mas_equalTo(2);
//    }];

     //*3.添加KVO，WKWebView有一个属性estimatedProgress，就是当前网页加载的进度，所以监听这个属性。
    //: [_webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    [_webView addObserver:self forKeyPath:StringFromMediaValueData(notiHateIdent) options:NSKeyValueObservingOptionNew context:nil];
    //[_webView addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:NULL];

}

//: - (void)reloadWebView{
- (void)to{

    /* 加载服务器url的方法*/
    //: NSString *urlString = _urlString;
    NSString *urlString = _urlString;
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];

}

//: #pragma mark - WKNavigationDelegate
#pragma mark - WKNavigationDelegate

/* 页面开始加载 */
//: - (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

    //: self.progressView.hidden = NO;
    self.progressView.hidden = NO;
    //开始加载网页的时候将progressView的Height恢复为1.5倍
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //防止progressView被网页挡住
    //: [self.view bringSubviewToFront:self.progressView];
    [self.view bringSubviewToFront:self.progressView];


}

/* 开始返回内容 */
//: - (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{

}

/* 页面加载完成 */
//: - (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 页面加载失败 */
//: - (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
- (void)option:(WKWebView *)webView video:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 在发送请求之前，决定是否跳转 */
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    //允许跳转
    //: decisionHandler(WKNavigationActionPolicyAllow);
    decisionHandler(WKNavigationActionPolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationActionPolicyCancel);

}

/* 在收到响应后，决定是否跳转 */
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{

    //: NSLog(@"%@",navigationResponse.response.URL.absoluteString);
    //允许跳转
    //: decisionHandler(WKNavigationResponsePolicyAllow);
    decisionHandler(WKNavigationResponsePolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationResponsePolicyCancel);
}


//: #pragma mark - 监听加载进度
#pragma mark - 监听加载进度

/*
 *4.在监听方法中获取网页加载的进度，并将进度赋给progressView.progress
 */

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {

    //: if (object == self.webView && [keyPath isEqualToString:@"title"]) {
    if (object == self.webView && [keyPath isEqualToString:StringFromMediaValueData(appMinUrl)]) {
//        self.navigationItem.title = self.webView.title;
//        [OnName standardUserDefaults].webViewTitle = self.webView.title;
    //: }else if (object == self.webView && [keyPath isEqualToString:@"estimatedProgress"]) {
    }else if (object == self.webView && [keyPath isEqualToString:StringFromMediaValueData(notiHateIdent)]) {
        //: CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        //: self.progressView.alpha = 1.0f;
        self.progressView.alpha = 1.0f;
        //: [self.progressView setProgress:newprogress animated:YES];
        [self.progressView setProgress:newprogress animated:YES];
        //: if (newprogress >= 1.0f) {
        if (newprogress >= 1.0f) {

            /*
             *添加一个简单的动画，将progressView的Height变为1.4倍
             *动画时长0.25s，延时0.3s后开始动画
             *动画结束后将progressView隐藏
             */
            //: __weak typeof (self)weakSelf = self;
            __weak typeof (self)weakSelf = self;
            //: [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
            [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
                //: weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
                weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: weakSelf.progressView.hidden = YES;
                weakSelf.progressView.hidden = YES;

            //: }];
            }];
        }

    //: } else {
    } else {
        //: [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }


}



//#pragma mark -- UICollectionViewDataSource
////返回分区个数
//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
//    return 1;
//}
////返回每个分区的item个数
//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return 10;
//}
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
////    EDLCerBrandList *model = self.brandList[indexPath.row];
//
//    EdgeReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TZVideoCell" forIndexPath:indexPath];
//
//
//    return cell;
//}
//
//#pragma mark -- UICollectionViewDelegate
//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
//
//}


//: @end
@end

Byte * MediaValueDataToCache(Byte *data) {
    int admit = data[0];
    int pipe = data[1];
    Byte medalContainer = data[2];
    int countimate = data[3];
    if (!admit) return data + countimate;
    for (int i = countimate; i < countimate + pipe; i++) {
        int value = data[i] - medalContainer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[countimate + pipe] = 0;
    return data + countimate;
}

NSString *StringFromMediaValueData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MediaValueDataToCache(data)];
}
