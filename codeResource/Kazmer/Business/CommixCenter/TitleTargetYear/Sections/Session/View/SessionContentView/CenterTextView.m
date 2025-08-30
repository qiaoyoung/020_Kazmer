// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterTextView.m
// Mortification
//
//  Created by chris on 15/1/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionImageContentView.h"
#import "CenterTextView.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayLoadProgressView.h"
#import "GatefoldView.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "UCZProgressView.h"
#import "UCZProgressView.h"

//: @interface DisplaySessionImageContentView()
@interface CenterTextView()

//: @property (nonatomic,strong,readwrite) YYAnimatedImageView * imageView;
@property (nonatomic,strong,readwrite) YYAnimatedImageView * imageView;

//: @property (nonatomic,strong) DisplayLoadProgressView * progressView;
@property (nonatomic,strong) GatefoldView * progressView;

//@property (nonatomic, strong) UCZProgressView *progressView;

//: @end
@end

//: @implementation DisplaySessionImageContentView
@implementation CenterTextView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[YYAnimatedImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[YYAnimatedImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor clearColor];
        _imageView.backgroundColor = [UIColor clearColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

//        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
//        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
////        self.progressView.showsText = YES;
////        self.progressView.tintColor = [KEKESkinColorManager shareInstance].skinColor;
//        [self addSubview:self.progressView];

        //: _progressView = [[DisplayLoadProgressView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        _progressView = [[GatefoldView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        //: _progressView.maxProgress = 1.0f;
        _progressView.maxProgress = 1.0f;
        //: [self addSubview:_progressView];
        [self addSubview:_progressView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(DisplayMessageModel *)data
- (void)from:(CleanDoing *)data
{
    //: [super refresh:data];
    [super from:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: NIMImageObject * imageObject = (NIMImageObject*)self.model.message.messageObject;
    NIMImageObject * imageObject = (NIMImageObject*)self.model.message.messageObject;

    //: if (imageObject.url.length > 0) {
    if (imageObject.url.length > 0) {
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        //: [imageObject setUploadURL:url];
        [imageObject setUploadURL:url];

        //: NSMutableDictionary *dic = [[DisplayConfig sharedConfig] Gdic];
        NSMutableDictionary *dic = [[ContextTeam mutual] Gdic];
        //: NSData *data = [dic objectForKey:self.model.message.messageId];
        NSData *data = [dic objectForKey:self.model.message.messageId];
        //: UIImage *images = [[UIImage alloc]initWithData:data];
        UIImage *images = [[UIImage alloc]initWithData:data];
//        [_imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:images ];

        // 加载图片
        //: [_imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:images options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        [_imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:images options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
            //: float progress = (float)receivedSize / (float)expectedSize;
            float progress = (float)receivedSize / (float)expectedSize;
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: self.progressView.hidden = NO;
                self.progressView.hidden = NO;
                //: [self updateProgress:progress];
                [self modify:progress];
            //: });
            });
        //: } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            // 加载完成后隐藏进度条
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: self.progressView.hidden = YES;
                self.progressView.hidden = YES;
            //: });
            });
        //: }];
        }];

    //: } else if (imageObject.thumbPath.length > 0) {
    } else if (imageObject.thumbPath.length > 0) {
        //: NSData *imageData = [[NSData alloc] initWithContentsOfFile:imageObject.thumbPath];
        NSData *imageData = [[NSData alloc] initWithContentsOfFile:imageObject.thumbPath];
        //: YYImage *image = [YYImage imageWithData:imageData scale:[UIScreen mainScreen].scale];
        YYImage *image = [YYImage imageWithData:imageData scale:[UIScreen mainScreen].scale];
        //: if (image != nil) {
        if (image != nil) {
            //: _imageView.image = image;
            _imageView.image = image;
        }
    //: } else {
    } else {
        //: [_imageView sd_setImageWithURL:[NSURL URLWithString:[imageObject.thumbUrl?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""]]];
        [_imageView sd_setImageWithURL:[NSURL URLWithString:[imageObject.thumbUrl?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""]]];
    }

    //: if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
    if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
        //: self.progressView.hidden = NO;
        self.progressView.hidden = NO;
        //: self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
        self.progressView.byLabel = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
    //: }else{
    }else{
        //: self.progressView.hidden = YES;
        self.progressView.hidden = YES;
    }
    //: NSLog(@"attachmentDownloadState:%ld",(long)self.model.message.attachmentDownloadState);
//    if (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading || self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload) {
//        self.progressView.hidden   = NO;
//        self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
//    }else{
//        self.progressView.hidden = YES;
//    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.device_width;
    CGFloat tableViewWidth = self.superview.device_width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model size:tableViewWidth];
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: _progressView.frame = self.bounds;
    _progressView.frame = self.bounds;

    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.imageView.bounds;
    maskLayer.frame = self.imageView.bounds;
    //: self.imageView.layer.mask = maskLayer;
    self.imageView.layer.mask = maskLayer;
}


//: - (void)onTouchUpInside:(id)sender
- (void)labelled:(id)sender
{
    //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
    ToiletKitSession *event = [[ToiletKitSession alloc] init];
    //: event.eventName = DisplayKitEventNameTapContent;
    event.eventName = userStateId;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate surprised:event];
}

//: - (void)updateProgress:(float)progress
- (void)modify:(float)progress
{
    //: if (progress > 1.0) {
    if (progress > 1.0) {
        //: progress = 1.0;
        progress = 1.0;
    }
    //: self.progressView.progress = progress;
    self.progressView.byLabel = progress;
}

//: @end
@end
