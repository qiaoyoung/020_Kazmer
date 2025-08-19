
#import <Foundation/Foundation.h>

@interface BidData : NSObject

@end

@implementation BidData

+ (Byte *)BidDataToCache:(Byte *)data {
    int duringMeat = data[0];
    Byte equallyMonth = data[1];
    int mushroomShapedCloud = data[2];
    for (int i = mushroomShapedCloud; i < mushroomShapedCloud + duringMeat; i++) {
        int value = data[i] + equallyMonth;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[mushroomShapedCloud + duringMeat] = 0;
    return data + mushroomShapedCloud;
}

+ (NSString *)StringFromBidData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BidDataToCache:data]];
}

//: ic_pic_share
+ (NSString *)m_normalOriginTitle {
    /* static */ NSString *m_normalOriginTitle = nil;
    if (!m_normalOriginTitle) {
        Byte value[] = {12, 53, 7, 161, 17, 240, 134, 52, 46, 42, 59, 52, 46, 42, 62, 51, 44, 61, 48, 41};
        m_normalOriginTitle = [self StringFromBidData:value];
    }
    return m_normalOriginTitle;
}

//: warm_prompt
+ (NSString *)show_tableFormat {
    /* static */ NSString *show_tableFormat = nil;
    if (!show_tableFormat) {
        Byte value[] = {11, 34, 11, 133, 53, 146, 51, 140, 59, 150, 153, 85, 63, 80, 75, 61, 78, 80, 77, 75, 78, 82, 28};
        show_tableFormat = [self StringFromBidData:value];
    }
    return show_tableFormat;
}

//: ic_pic_save
+ (NSString *)mTrainingTimeUrl {
    /* static */ NSString *mTrainingTimeUrl = nil;
    if (!mTrainingTimeUrl) {
        Byte value[] = {11, 66, 7, 37, 65, 188, 147, 39, 33, 29, 46, 39, 33, 29, 49, 31, 52, 35, 230};
        mTrainingTimeUrl = [self StringFromBidData:value];
    }
    return mTrainingTimeUrl;
}

//: tag_activity_set
+ (NSString *)app_terriblyMsg {
    /* static */ NSString *app_terriblyMsg = nil;
    if (!app_terriblyMsg) {
        Byte value[] = {16, 9, 5, 45, 72, 107, 88, 94, 86, 88, 90, 107, 96, 109, 96, 107, 112, 86, 106, 92, 107, 33};
        app_terriblyMsg = [self StringFromBidData:value];
    }
    return app_terriblyMsg;
}

//: group_info_activity_update_failed
+ (NSString *)user_fineName {
    /* static */ NSString *user_fineName = nil;
    if (!user_fineName) {
        Byte value[] = {33, 97, 3, 6, 17, 14, 20, 15, 254, 8, 13, 5, 14, 254, 0, 2, 19, 8, 21, 8, 19, 24, 254, 20, 15, 3, 0, 19, 4, 254, 5, 0, 8, 11, 4, 3, 243};
        user_fineName = [self StringFromBidData:value];
    }
    return user_fineName;
}

//: group_info_activity_update_success
+ (NSString *)main_isolationData {
    /* static */ NSString *main_isolationData = nil;
    if (!main_isolationData) {
        Byte value[] = {34, 94, 7, 227, 55, 143, 36, 9, 20, 17, 23, 18, 1, 11, 16, 8, 17, 1, 3, 5, 22, 11, 24, 11, 22, 27, 1, 23, 18, 6, 3, 22, 7, 1, 21, 23, 5, 5, 7, 21, 21, 95};
        main_isolationData = [self StringFromBidData:value];
    }
    return main_isolationData;
}

//: ic_close_w
+ (NSString *)show_armTitle {
    /* static */ NSString *show_armTitle = nil;
    if (!show_armTitle) {
        Byte value[] = {10, 15, 13, 52, 66, 133, 253, 41, 135, 189, 130, 8, 207, 90, 84, 80, 84, 93, 96, 100, 86, 80, 104, 253};
        show_armTitle = [self StringFromBidData:value];
    }
    return show_armTitle;
}

//: setting_privacy
+ (NSString *)notiParishUrl {
    /* static */ NSString *notiParishUrl = nil;
    if (!notiParishUrl) {
        Byte value[] = {15, 26, 8, 102, 182, 1, 224, 103, 89, 75, 90, 90, 79, 84, 77, 69, 86, 88, 79, 92, 71, 73, 95, 194};
        notiParishUrl = [self StringFromBidData:value];
    }
    return notiParishUrl;
}

//: contact_tag_fragment_cancel
+ (NSString *)noti_riotName {
    /* static */ NSString *noti_riotName = nil;
    if (!noti_riotName) {
        Byte value[] = {27, 68, 13, 101, 223, 242, 188, 183, 180, 12, 40, 183, 57, 31, 43, 42, 48, 29, 31, 48, 27, 48, 29, 35, 27, 34, 46, 29, 35, 41, 33, 42, 48, 27, 31, 29, 42, 31, 33, 40, 94};
        noti_riotName = [self StringFromBidData:value];
    }
    return noti_riotName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableWorldViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/2.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONGalleryImgViewController.h"
#import "TableWorldViewController.h"
//: #import "UIImageView+WebCache.h"
#import "UIImageView+WebCache.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "WatchKitAuthorizationTool.h"
#import "ButtonTool.h"
//: #import <SDWebImageFLPlugin/SDWebImageFLPlugin.h>
#import <SDWebImageFLPlugin/SDWebImageFLPlugin.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "YasicClipAreaLayer.h"
#import "FindShapeLayer.h"
//: #import "TKImageView.h"
#import "PinView.h"
//: #import "ZMONCustomLoadingView.h"
#import "QueryStubView.h"
//: #import "ZOMNForwardViewController.h"
#import "EmptyViewController.h"

//: @implementation NTESGalleryItem
@implementation SoleText

//: @end
@end

//: @interface ZMONGalleryImgViewController ()
@interface TableWorldViewController ()

//: @property (nonatomic, strong) UIImageView *cropimage;
@property (nonatomic, strong) UIImageView *cropimage;
//: @property (nonatomic, strong) UIView *cropView;
@property (nonatomic, strong) UIView *cropView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UIImageView *ImageView;
@property (nonatomic,strong) UIImageView *ImageView;

//: @property (nonatomic,strong) UIButton *btnCut;
@property (nonatomic,strong) UIButton *btnCut;
//: @property (nonatomic,strong) UIButton *btnOut;
@property (nonatomic,strong) UIButton *btnOut;
//: @property (nonatomic,strong) UIButton *btnIn;
@property (nonatomic,strong) UIButton *btnIn;
//: @property (nonatomic,strong) UIButton *btnSave;
@property (nonatomic,strong) UIButton *btnSave;

//: @property (nonatomic,assign) BOOL isCut;
@property (nonatomic,assign) BOOL isCut;

// 裁剪区域属性
//: @property(assign, nonatomic) CGFloat cropAreaX;
@property(assign, nonatomic) CGFloat cropAreaX;
//: @property(assign, nonatomic) CGFloat cropAreaY;
@property(assign, nonatomic) CGFloat cropAreaY;
//: @property(assign, nonatomic) CGFloat cropAreaWidth;
@property(assign, nonatomic) CGFloat cropAreaWidth;
//: @property(assign, nonatomic) CGFloat cropAreaHeight;
@property(assign, nonatomic) CGFloat cropAreaHeight;

//: @property(nonatomic, assign) CGFloat clipHeight;
@property(nonatomic, assign) CGFloat clipHeight;
//: @property(nonatomic, assign) CGFloat clipWidth;
@property(nonatomic, assign) CGFloat clipWidth;

//PinView
//: @property (nonatomic, strong) TKImageView *tkImageView;
@property (nonatomic, strong) PinView *tkImageView;
//
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) QueryStubView *loadingView;
//: @end
@end

//: @implementation ZMONGalleryImgViewController
@implementation TableWorldViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
//    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:self.imageURL]];
//    [SVProgressHUD show];

//    _hud = [ImageProgressView showNoticeTo:self.view animated:YES];
//    _hud.center = CGPointMake(self.view.width*0.5, self.view.height*0.5);

//    NSBundle *bundle = [ButtonKit sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:@"emoji_1" ofType:@"gif" inDirectory:@"Emoji"]];
////    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
////
////    [SVProgressHUD showImage:gif status:nil];
//    if (imageData) {
//        [SVProgressHUD showCustomGif:imageData];
//    }
    //: [self.loadingView animationShow];
    [self.loadingView canUser];
    //: [self loadImage];
    [self red];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
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
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+10, 24, 24);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_w"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BidData show_armTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _btnIn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnIn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnIn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnIn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24, [UIDevice tingHeight]+10, 24, 24);
    //: [_btnIn setImage:[UIImage imageNamed:@"ic_pic_share"] forState:UIControlStateNormal];
    [_btnIn setImage:[UIImage imageNamed:[BidData m_normalOriginTitle]] forState:UIControlStateNormal];
    //: [_btnIn addTarget:self action:@selector(onTouchshare) forControlEvents:UIControlEventTouchUpInside];
    [_btnIn addTarget:self action:@selector(childComment) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnIn];
    [self.view addSubview:_btnIn];

    //: _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice vg_statusBarHeight]+10, 24, 24);
    _btnSave.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-24-15-24, [UIDevice tingHeight]+10, 24, 24);
    //: [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
    [_btnSave setImage:[UIImage imageNamed:[BidData mTrainingTimeUrl]] forState:UIControlStateNormal];
    //: [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
    [_btnSave addTarget:self action:@selector(beView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_btnSave];
    [self.view addSubview:_btnSave];


//    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-UITabbarHeight)];
//    self.scrollView.showsVerticalScrollIndicator = NO;
//    self.scrollView.showsHorizontalScrollIndicator = NO;
//    [self.view addSubview:self.scrollView];

    //: _ImageView = [[UIImageView alloc]init];
    _ImageView = [[UIImageView alloc]init];
    //: _ImageView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]));
    _ImageView.frame = CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight]));
    //: _ImageView.contentMode = UIViewContentModeScaleAspectFit;
    _ImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: [self.view addSubview:_ImageView];
    [self.view addSubview:_ImageView];

//    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT-UITabbarHeight, SCREEN_WIDTH, 49)];
//    [self.view addSubview:btnView];
//    [self.view bringSubviewToFront:btnView];
//    
//    CGFloat width = SCREEN_WIDTH/4;
//    
//    _btnCut = [UIButton buttonWithType:UIButtonTypeCustom];
//    _btnCut.frame = CGRectMake((width-36)/2, 6, 36, 36);
//    [_btnCut setImage:[UIImage imageNamed:@"ic_pic_cut"] forState:UIControlStateNormal];
//    [_btnCut addTarget:self action:@selector(onTouchCutBtn) forControlEvents:UIControlEventTouchUpInside];
//    [btnView addSubview:_btnCut];
//    
//    _btnOut = [UIButton buttonWithType:UIButtonTypeCustom];
//    _btnOut.frame = CGRectMake((width-36)/2+width, 6, 36, 36);
//    [_btnOut setImage:[UIImage imageNamed:@"ic_pic_zoomout"] forState:UIControlStateNormal];
//    [_btnOut addTarget:self action:@selector(onTouchOutBtn) forControlEvents:UIControlEventTouchUpInside];
//    [btnView addSubview:_btnOut];
//    
//    
//    _btnIn = [UIButton buttonWithType:UIButtonTypeCustom];
//    _btnIn.frame = CGRectMake((width-36)/2+width*2, 6, 36, 36);
//    [_btnIn setImage:[UIImage imageNamed:@"ic_pic_zoomin"] forState:UIControlStateNormal];
//    [_btnIn addTarget:self action:@selector(onTouchInBtn) forControlEvents:UIControlEventTouchUpInside];
//    [btnView addSubview:_btnIn];
//    
//    _btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
//    _btnSave.frame = CGRectMake((width-36)/2+width*3, 6, 36, 36);
//    [_btnSave setImage:[UIImage imageNamed:@"ic_pic_save"] forState:UIControlStateNormal];
//    [_btnSave addTarget:self action:@selector(onTouchSaveBtn) forControlEvents:UIControlEventTouchUpInside];
//    [btnView addSubview:_btnSave];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;

}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setUpTKImageView:(UIImage *)picImg{
- (void)setTo:(UIImage *)picImg{

    //: _tkImageView.toCropImage = picImg;
    _tkImageView.toCropImage = picImg;//待裁剪的图片。
    //: _tkImageView.showMidLines = YES;
    _tkImageView.showMidLines = YES;//是否需要显示每条边中间的线，这条中间线支持拖动手势。
    //: _tkImageView.needScaleCrop = YES;
    _tkImageView.needScaleCrop = YES;//是否需要缩放裁剪。
    //: _tkImageView.showCrossLines = NO;
    _tkImageView.showCrossLines = NO;//是否显示裁剪框内的交叉线。
    //: _tkImageView.cornerBorderInImage = NO;
    _tkImageView.cornerBorderInImage = NO;//裁剪边框的四个角是否可以超出图片显示。
    //: _tkImageView.cropAreaCornerWidth = 22;
    _tkImageView.cropAreaCornerWidth = 22;//设置裁剪边框四个角的宽度，这里指角的横边的长度。
    //: _tkImageView.cropAreaCornerHeight = 22;
    _tkImageView.cropAreaCornerHeight = 22;//设置裁剪边框四个角的高度，这里指角的竖边的长度。
    //: _tkImageView.minSpace = 30;
    _tkImageView.minSpace = 30;//相邻角之间的最小距离。
    //: _tkImageView.cropAreaCornerLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaCornerLineColor = [UIColor whiteColor];//设置裁剪边框四个角的颜色。
    //: _tkImageView.cropAreaBorderLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaBorderLineColor = [UIColor whiteColor];//设置裁剪边框的颜色。
    //: _tkImageView.cropAreaCornerLineWidth = 3;
    _tkImageView.cropAreaCornerLineWidth = 3;//设置裁剪边框四个角的线宽。
    //: _tkImageView.cropAreaBorderLineWidth = 2;
    _tkImageView.cropAreaBorderLineWidth = 2;//设置裁剪边框的线宽。
    //: _tkImageView.cropAreaMidLineWidth = 20;
    _tkImageView.cropAreaMidLineWidth = 20;//裁剪边框每条边中间线的长度。
    //: _tkImageView.cropAreaMidLineHeight = 6;
    _tkImageView.cropAreaMidLineHeight = 6;//裁剪边框每条边中间线的线宽。
    //: _tkImageView.cropAreaMidLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaMidLineColor = [UIColor whiteColor];//裁剪边框每条边中间线的颜色。
    //: _tkImageView.cropAreaCrossLineColor = [UIColor whiteColor];
    _tkImageView.cropAreaCrossLineColor = [UIColor whiteColor];//裁剪框内交叉线的颜色。
    //: _tkImageView.cropAreaCrossLineWidth = 4;
    _tkImageView.cropAreaCrossLineWidth = 4;//裁剪框内交叉线的宽度。
    //: _tkImageView.initialScaleFactor = 1;
    _tkImageView.initialScaleFactor = 1;//初始化比例因子
    //: _tkImageView.cropAspectRatio = [@(4.0/3.0) floatValue];
    _tkImageView.cropAspectRatio = [@(4.0/3.0) floatValue];//设置裁剪框的宽高比。

}

//: - (void)onTouchCutBtn{
- (void)stripped{

    //: UIImage *yyImage = [self imageWithPath:self.imagePath];
    UIImage *yyImage = [self streetSmartName:self.imagePath];
    //: self.isCut = YES;
    self.isCut = YES;

//    [self showCapturedPhoto:yyImage];

    //tkimage
    //: [self.view addSubview:self.tkImageView];
    [self.view addSubview:self.tkImageView];
    //: self.tkImageView.hidden = NO;
    self.tkImageView.hidden = NO;
    //: [self setUpTKImageView:yyImage];
    [self setTo:yyImage];

    //: self.btnCut.hidden = YES;
    self.btnCut.hidden = YES;
    //: self.btnOut.hidden = YES;
    self.btnOut.hidden = YES;
    //: self.btnIn.hidden = YES;
    self.btnIn.hidden = YES;

//    CloseViewController *controller = [[CloseViewController alloc] initWithImage:yyImage];
//        controller.delegate = self;
//        [[self navigationController] pushViewController:controller animated:YES];

}

// 拍照完成后显示照片并添加圆形裁剪框
//: - (void)showCapturedPhoto:(UIImage *)photo {
- (void)redBy:(UIImage *)photo {
    //: _cropimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49)-(44.0f + [UIDevice vg_statusBarHeight]))];
    _cropimage = [[UIImageView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49)-(44.0f + [UIDevice tingHeight]))];
    //: _cropimage.contentMode = UIViewContentModeScaleAspectFit;
    _cropimage.contentMode = UIViewContentModeScaleAspectFit;
    //: _cropimage.image = photo;
    _cropimage.image = photo;
    //: [self.view addSubview:_cropimage];
    [self.view addSubview:_cropimage];

    // 添加圆形裁剪框
    //: CGFloat diameter = ((self.view.bounds.size.width) < (self.view.bounds.size.height) ? (self.view.bounds.size.width) : (self.view.bounds.size.height)) * 0.8; 
    CGFloat diameter = ((self.view.bounds.size.width) < (self.view.bounds.size.height) ? (self.view.bounds.size.width) : (self.view.bounds.size.height)) * 0.8; // 圆形裁剪框直径
    //: _cropView = [[UIView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - diameter) / 2, (self.view.bounds.size.height - diameter) / 2, diameter, diameter)];
    _cropView = [[UIView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - diameter) / 2, (self.view.bounds.size.height - diameter) / 2, diameter, diameter)];
//    _cropView.layer.cornerRadius = diameter / 2; // 设置为圆形
    //: _cropView.layer.borderWidth = 2.0;
    _cropView.layer.borderWidth = 2.0;
    //: _cropView.layer.borderColor = [UIColor whiteColor].CGColor;
    _cropView.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _cropView.clipsToBounds = YES; 
    _cropView.clipsToBounds = YES; // 裁剪子视图
    //: [self.view addSubview:_cropView];
    [self.view addSubview:_cropView];

    // 添加拖动手势
    //: UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(tapSend:)];
    //: [_cropView addGestureRecognizer:panGesture];
    [_cropView addGestureRecognizer:panGesture];


//    self.cropView.layer.sublayers = nil;
//    FindShapeLayer * layer = [[FindShapeLayer alloc] init];
//
//    CGRect cropframe = CGRectMake(self.cropAreaX, self.cropAreaY, self.cropAreaWidth, self.cropAreaHeight);
//    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.cropView.frame cornerRadius:0];
//    UIBezierPath * cropPath = [UIBezierPath bezierPathWithRect:cropframe];
//    [path appendPath:cropPath];
//    layer.path = path.CGPath;
//
//    layer.fillRule = kCAFillRuleEvenOdd;
//    layer.fillColor = [[UIColor blackColor] CGColor];
//    layer.opacity = 0.5;
//
//    layer.frame = self.cropView.bounds;
//    [layer setCropAreaLeft:self.cropAreaX CropAreaTop:self.cropAreaY CropAreaRight:self.cropAreaX + self.cropAreaWidth CropAreaBottom:self.cropAreaY + self.cropAreaHeight];
//    [self.cropView.layer addSublayer:layer];
//    [self.view bringSubviewToFront:self.cropView];

}

// 处理拖动手势
//: - (void)handlePan:(UIPanGestureRecognizer *)gesture {
- (void)tapSend:(UIPanGestureRecognizer *)gesture {
    //: CGPoint translation = [gesture translationInView:self.view];
    CGPoint translation = [gesture translationInView:self.view];
    //: CGPoint newCenter = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);
    CGPoint newCenter = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);

    // 确保裁剪框不超出屏幕范围
    //: CGFloat halfWidth = gesture.view.frame.size.width / 2.0;
    CGFloat halfWidth = gesture.view.frame.size.width / 2.0;
    //: CGFloat halfHeight = gesture.view.frame.size.height / 2.0;
    CGFloat halfHeight = gesture.view.frame.size.height / 2.0;
    //: newCenter.x = ((halfWidth) > (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))) ? (halfWidth) : (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))));
    newCenter.x = ((halfWidth) > (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))) ? (halfWidth) : (((self.view.bounds.size.width - halfWidth) < (newCenter.x) ? (self.view.bounds.size.width - halfWidth) : (newCenter.x))));
    //: newCenter.y = ((halfHeight) > (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))) ? (halfHeight) : (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))));
    newCenter.y = ((halfHeight) > (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))) ? (halfHeight) : (((self.view.bounds.size.height - halfHeight) < (newCenter.y) ? (self.view.bounds.size.height - halfHeight) : (newCenter.y))));

    //: gesture.view.center = newCenter;
    gesture.view.center = newCenter;
    //: [gesture setTranslation:CGPointZero inView:self.view];
    [gesture setTranslation:CGPointZero inView:self.view];
}

// 确认裁剪并执行裁剪操作
//: - (void)confirmCrop {
- (void)inputCrop {
    //: CGRect cropRect = [self.view convertRect:_cropView.frame toView:_cropimage];
    CGRect cropRect = [self.view convertRect:_cropView.frame toView:_cropimage];
    //: UIGraphicsBeginImageContextWithOptions(_cropimage.bounds.size, NO, 0);
    UIGraphicsBeginImageContextWithOptions(_cropimage.bounds.size, NO, 0);
    //: UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:cropRect];
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:cropRect];
    //: [path addClip];
    [path addClip];
    //: [_cropimage.image drawInRect:_cropimage.bounds];
    [_cropimage.image drawInRect:_cropimage.bounds];
    //: UIImage *croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    // 在这里使用裁剪后的照片 croppedImage
    //: UIImageWriteToSavedPhotosAlbum(croppedImage, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    UIImageWriteToSavedPhotosAlbum(croppedImage, self, @selector(text:backgroundColor:find:), NULL);

}


//- (void)CloseViewController:(CloseViewController *)controller didFinishCroppingImage:(UIImage *)croppedImage{
//
//   self.ImageView.image = croppedImage;
//   [[self navigationController] popViewControllerAnimated:NO];
//}
//- (void)ImageCropViewControllerDidCancel:(CloseViewController *)controller{
//    UIImage *image = [self imageWithPath:self.imagePath];
//    self.ImageView.image = image;
//    [[self navigationController] popViewControllerAnimated:NO];
//}

//: - (void)onTouchOutBtn{
- (void)outSessionBtn{
    //: CGRect frame = self.ImageView.frame;
    CGRect frame = self.ImageView.frame;

    //: frame.size.width-=40;
    frame.size.width-=40;
    //: frame.size.height-=40;
    frame.size.height-=40;
//    frame.origin.x-=10;
//    frame.origin.y-=10;
    //: self.ImageView.frame = frame;
    self.ImageView.frame = frame;
    //: self.scrollView.contentSize = frame.size;
    self.scrollView.contentSize = frame.size;

}
//: - (void)onTouchInBtn {
- (void)row {
    //: CGRect frame = self.ImageView.frame;
    CGRect frame = self.ImageView.frame;


    //: frame.size.width+=40;
    frame.size.width+=40;
    //: frame.size.height+=40;
    frame.size.height+=40;
//    frame.origin.x+=10;
//    frame.origin.y+=10;
    //: self.ImageView.frame = frame;
    self.ImageView.frame = frame;
    //: self.scrollView.contentSize = frame.size;
    self.scrollView.contentSize = frame.size;

}
//: - (void)onTouchshare {
- (void)childComment {
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    EmptyViewController *vc = [[EmptyViewController alloc]init];
    //: vc.message = self.message;
    vc.message = self.message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)onTouchSaveBtn {
- (void)beView {

//    if(_isCut){
////        [self confirmCrop];
//        
//        //tk
//        UIImage *image = [_tkImageView currentCroppedImage];
//        // 在这里使用裁剪后的照片 croppedImage
//        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
//        self.tkImageView.hidden = YES;
//        self.btnCut.hidden = NO;
//        self.btnOut.hidden = NO;
//        self.btnIn.hidden = NO;
//        
//    }else{
        //: UIImage *image = [self imageWithPath:self.imagePath];
        UIImage *image = [self streetSmartName:self.imagePath];
        //: [WatchKitAuthorizationTool requestPhotoLibraryAuthorization:^(WatchKitAuthorizationStatus status) {
        [ButtonTool closeColor:^(WatchKitAuthorizationStatus status) {
            //: switch (status) {
            switch (status) {
                //: case WatchKitAuthorizationStatusAuthorized:
                case WatchKitAuthorizationStatusAuthorized:
                    //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
                    UIImageWriteToSavedPhotosAlbum(image, self, @selector(text:backgroundColor:find:), NULL);
                    //: break;
                    break;
                //: default:
                default:
                    //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"setting_privacy"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[BidData notiParishUrl]] duration:2.0 position:CSToastPositionCenter];
                    //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[BidData show_tableFormat]] message:[PaintedNaturalLanguageTo exhibit:[BidData notiParishUrl]] preferredStyle:UIAlertControllerStyleAlert];
                    //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BidData noti_riotName]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    //: }])];
                    }])];
                    //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[BidData app_terriblyMsg]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                        //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                        if( [[UIApplication sharedApplication] canOpenURL:url]) {
                            //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                        }
                    //: }])];
                    }])];
                    //: [self presentViewController:alertControl animated:YES completion:nil];
                    [self presentViewController:alertControl animated:YES completion:nil];

                    //: break;
                    break;
            }
        //: }];
        }];
//    }


}

//: - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
- (void)text:(UIImage *)image backgroundColor:(NSError *)error find:(void *)contextInfo
{
    //: NSString *toast = (!image || error)?[WatchLanguageManager getTextWithKey:@"group_info_activity_update_success"] :[WatchLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
    NSString *toast = (!image || error)?[PaintedNaturalLanguageTo exhibit:[BidData main_isolationData]] :[PaintedNaturalLanguageTo exhibit:[BidData user_fineName]];
    //: [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
    [self.view makeToast:toast duration:2.0 position:CSToastPositionCenter];
}



//: - (void)loadImage
- (void)red
{
//    UIEdgeInsets insets = UIEdgeInsetsZero;
//    self.scrollView.contentSize = CGSizeMake(self.scrollView.width - insets.left - insets.right,
//                                             self.scrollView.height - insets.top - insets.bottom);


    //: if ([[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
    {
        //: [self setupImageWithPath:self.imagePath];
        [self totalernalRepresentation:self.imagePath];
    }
    //: else
    else
    {
        //: typeof(self) weakSelf = self;
        typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:self.imageURL filepath:self.imagePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:self.imageURL filepath:self.imagePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error || ![[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
            if (error || ![[NSFileManager defaultManager] fileExistsAtPath:self.imagePath])
            {
                //: return;
                return;
            }

            //: [weakSelf setupImageWithPath:weakSelf.imagePath];
            [weakSelf totalernalRepresentation:weakSelf.imagePath];
        //: }];
        }];
    }


}

//: - (void)setupImageWithPath:(NSString *)path
- (void)totalernalRepresentation:(NSString *)path
{
    //: UIImage *yyImage = [self imageWithPath:path];
    UIImage *yyImage = [self streetSmartName:path];
    //: self.ImageView.image = yyImage;
    self.ImageView.image = yyImage;

//    [SVProgressHUD dismiss];
//    [_hud removeFromSuperview];
    //: [self.loadingView animationClose];
    [self.loadingView impendentImage];
}

//: - (UIImage *)imageWithPath:(NSString *)path
- (UIImage *)streetSmartName:(NSString *)path
{
    //: if (path.length == 0 || ![[NSFileManager defaultManager] fileExistsAtPath:path])
    if (path.length == 0 || ![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        //: return nil;
        return nil;
    }

    //: NSData *imageData = [[NSData alloc] initWithContentsOfFile:path];
    NSData *imageData = [[NSData alloc] initWithContentsOfFile:path];
//    YYImage *yyImage = [YYImage imageWithData:imageData
//                                        scale:UIScreen.mainScreen.scale];
    //: UIImage *yyImage = [UIImage imageWithData: imageData];
    UIImage *yyImage = [UIImage imageWithData: imageData];

    //: return yyImage;
    return yyImage;
}

//: - (TKImageView *)tkImageView
- (PinView *)tkImageView
{
    //: if(!_tkImageView){
    if(!_tkImageView){
        //: _tkImageView = [[TKImageView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
        _tkImageView = [[PinView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-(({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49))];
    }
    //: return _tkImageView;
    return _tkImageView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (QueryStubView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
        _loadingView = [[QueryStubView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-(49.0f))];
    }
    //: return _loadingView;
    return _loadingView;
}


//: @end
@end
