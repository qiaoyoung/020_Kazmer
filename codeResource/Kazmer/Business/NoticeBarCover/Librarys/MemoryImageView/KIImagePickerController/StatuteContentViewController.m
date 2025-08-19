
#import <Foundation/Foundation.h>

@interface MindSimplyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MindSimplyData

+ (instancetype)sharedInstance {
    static MindSimplyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MindSimplyDataToCache:(Byte *)data {
    int originCrush = data[0];
    int regainStudy = data[1];
    for (int i = 0; i < originCrush / 2; i++) {
        int begin = regainStudy + i;
        int end = regainStudy + originCrush - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[regainStudy + originCrush] = 0;
    return data + regainStudy;
}

- (NSString *)StringFromMindSimplyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MindSimplyDataToCache:data]];
}  

//: back_white
- (NSString *)dream_cueName {
    /* static */ NSString *dream_cueName = nil;
    if (!dream_cueName) {
        Byte value[] = {10, 2, 101, 116, 105, 104, 119, 95, 107, 99, 97, 98, 126};
        dream_cueName = [self StringFromMindSimplyData:value];
    }
    return dream_cueName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteContentViewController.m
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImageCropperViewController.h"
#import "StatuteContentViewController.h"

//: @interface KIImageCropperViewController ()
@interface StatuteContentViewController ()

//: @end
@end

//: @implementation KIImageCropperViewController
@implementation StatuteContentViewController

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize {
- (id)initWithBench:(UIImage *)image fruitageLocation:(CGSize)cropSize {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _image = image;
        _image = image;
        //: _cropSize = cropSize;
        _cropSize = cropSize;
    }
    //: return self;
    return self;
}

//: - (void)loadView {
- (void)loadView {
    //: [super loadView];
    [super loadView];
    //: _imageCropperView = [[KIImageCropperView alloc] initWithFrame:CGRectMake(0,
    _imageCropperView = [[TimeModeView alloc] initWithFrame:CGRectMake(0,
                                                                             //: 0,
                                                                             0,
                                                                             //: CGRectGetWidth(self.view.bounds),
                                                                             CGRectGetWidth(self.view.bounds),
                                                                             //: CGRectGetHeight(self.view.bounds))];
                                                                             CGRectGetHeight(self.view.bounds))];
    //: [_imageCropperView setCropSize:_cropSize];
    [_imageCropperView setCropSize:_cropSize];
    //: [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    //: [self.view addSubview:_imageCropperView];
    [self.view addSubview:_imageCropperView];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    //: UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".nim_localized
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".messageWith
                                                                           //: style:UIBarButtonItemStylePlain
                                                                           style:UIBarButtonItemStylePlain
                                                                          //: target:self
                                                                          target:self
                                                                          //: action:@selector(croppedImage)];
                                                                          action:@selector(defendingTeam)];
    //: self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    //: rightBarButtonItem.tintColor = [UIColor whiteColor];
    rightBarButtonItem.tintColor = [UIColor whiteColor];

    //: [self setNavLeftItem:@selector(left) image:[UIImage imageNamed:@"back_white"] imageH:nil];
    [self color:@selector(nameKey) play:[UIImage imageNamed:[[MindSimplyData sharedInstance] dream_cueName]] frameDismiss_strong:nil];
}

//: - (void)left {
- (void)nameKey {
    //: [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [_imageCropperView setImage:_image];
    [_imageCropperView setImage:_image];
    //: [_imageCropperView setFrame:CGRectMake(0,
    [_imageCropperView setFrame:CGRectMake(0,
                                           //: 0,
                                           0,
                                           //: CGRectGetWidth(self.view.bounds),
                                           CGRectGetWidth(self.view.bounds),
                                           //: CGRectGetHeight(self.view.bounds))];
                                           CGRectGetHeight(self.view.bounds))];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];




}

//: - (void)setCroppedImage:(void(^)(UIImage *image))block {
- (void)setDefendingTeam:(void(^)(UIImage *image))block {
    //: if (_croppedImage != block) {
    if (_croppedImage != block) {
        //: _croppedImage = [block copy];
        _croppedImage = [block copy];
    }
}

//: - (void)croppedImage {
- (void)defendingTeam {
    //: [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    //: if (_croppedImage != nil) {
    if (_croppedImage != nil) {
        //: _croppedImage(_imageCropperView.croppedImage);
        _croppedImage(_imageCropperView.defendingTeam);
    }
}

//: - (void)didReceiveMemoryWarning {
- (void)didReceiveMemoryWarning {
    //: [super didReceiveMemoryWarning];
    [super didReceiveMemoryWarning];
}

//: @end
@end