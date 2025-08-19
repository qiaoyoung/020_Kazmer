
#import <Foundation/Foundation.h>

@interface ThermonuclearData : NSObject

@end

@implementation ThermonuclearData

+ (Byte *)ThermonuclearDataToCache:(Byte *)data {
    int suspect = data[0];
    Byte employFateAtmosphere = data[1];
    int headRepresent = data[2];
    for (int i = headRepresent; i < headRepresent + suspect; i++) {
        int value = data[i] + employFateAtmosphere;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[headRepresent + suspect] = 0;
    return data + headRepresent;
}

+ (NSString *)StringFromThermonuclearData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ThermonuclearDataToCache:data]];
}

//: icon_file
+ (NSString *)show_pillTitle {
    /* static */ NSString *show_pillTitle = nil;
    if (!show_pillTitle) {
        Byte value[] = {9, 54, 7, 60, 251, 68, 238, 51, 45, 57, 56, 41, 48, 51, 54, 47, 3};
        show_pillTitle = [self StringFromThermonuclearData:value];
    }
    return show_pillTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  RectoView.m
//  NIM
//
//  Created by chris on 15/4/21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionFileTransContentView.h"
#import "RectoView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface FFFSessionFileTransContentView()
@interface RectoView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *sizeLabel;
@property (nonatomic,strong) UILabel *sizeLabel;

//: @property (nonatomic,strong) UIProgressView *progressView;
@property (nonatomic,strong) UIProgressView *progressView;

//: @property (nonatomic,strong) UIView *bkgView;
@property (nonatomic,strong) UIView *bkgView;

//: @end
@end

//: @implementation FFFSessionFileTransContentView
@implementation RectoView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _bkgView = [[UIView alloc]initWithFrame:CGRectZero];
        _bkgView = [[UIView alloc]initWithFrame:CGRectZero];
        //: _bkgView.userInteractionEnabled = NO;
        _bkgView.userInteractionEnabled = NO;
        //: _bkgView.backgroundColor = [UIColor whiteColor];
        _bkgView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_bkgView];
        [self addSubview:_bkgView];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: UIImage * image = [UIImage imageNamed:@"icon_file"];
        UIImage * image = [UIImage imageNamed:[ThermonuclearData show_pillTitle]];
        //: _imageView.image = image;
        _imageView.image = image;
        //: [_imageView sizeToFit];
        [_imageView sizeToFit];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

        //: _sizeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _sizeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _sizeLabel.textColor = [UIColor lightGrayColor];
        _sizeLabel.textColor = [UIColor lightGrayColor];
        //: [self addSubview:_sizeLabel];
        [self addSubview:_sizeLabel];

        //: _progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        _progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        //: _progressView.progress = 0.0f;
        _progressView.progress = 0.0f;
        //: [self addSubview:_progressView];
        [self addSubview:_progressView];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)lengthAt:(CentralProcessingUnitModel *)data{
    //: [super refresh:data];
    [super lengthAt:data];
    //: NIMFileObject *fileObject = (NIMFileObject *)self.model.message.messageObject;
    NIMFileObject *fileObject = (NIMFileObject *)self.model.message.messageObject;

    //: self.titleLabel.font = [[MyUserKit sharedKit].config setting:data.message].font;
    self.titleLabel.font = [[ButtonKit sheerOption].config date:data.message].font;
    //: self.titleLabel.text = fileObject.displayName;
    self.titleLabel.text = fileObject.displayName;
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: self.sizeLabel.font = [[MyUserKit sharedKit].config setting:data.message].font;
    self.sizeLabel.font = [[ButtonKit sheerOption].config date:data.message].font;
    //: long long size = fileObject.fileLength/1024;
    long long size = fileObject.fileLength/1024;
    //: self.sizeLabel.text = [NSString stringWithFormat:@"%lldKB",size?: 1LL];
    self.sizeLabel.text = [NSString stringWithFormat:@"%lldKB",size?: 1LL];
    //: [self.sizeLabel sizeToFit];
    [self.sizeLabel sizeToFit];

    //: if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
    if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
        //: self.progressView.hidden = NO;
        self.progressView.hidden = NO;
        //: self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
        self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
    //: }else{
    }else{
        //: self.progressView.hidden = YES;
        self.progressView.hidden = YES;
    }
}



//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model indicator:tableViewWidth];
    //: CGRect bkgViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    CGRect bkgViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    //: self.bkgView.frame = bkgViewFrame;
    self.bkgView.frame = bkgViewFrame;

    //: CGFloat fileTransMessageIconLeft = 15.f;
    CGFloat fileTransMessageIconLeft = 15.f;
    //: CGFloat fileTransMessageSizeTitleRight = 15.f;
    CGFloat fileTransMessageSizeTitleRight = 15.f;
    //: CGFloat fileTransMessageTitleLeft = 90.f;
    CGFloat fileTransMessageTitleLeft = 90.f;
    //: CGFloat fileTransMessageTitleTop = 25.f;
    CGFloat fileTransMessageTitleTop = 25.f;
    //: CGFloat fileTransMessageSizeTitleBottom = 15.f;
    CGFloat fileTransMessageSizeTitleBottom = 15.f;
    //: CGFloat fileTransMessageProgressTop = 75.f;
    CGFloat fileTransMessageProgressTop = 75.f;
    //: CGFloat fileTransMessageProgressLeft = 90.f;
    CGFloat fileTransMessageProgressLeft = 90.f;
    //: CGFloat fileTransMessageProgressRight = 20.f;
    CGFloat fileTransMessageProgressRight = 20.f;

    //: self.imageView.nim_left = fileTransMessageIconLeft;
    self.imageView.nim_left = fileTransMessageIconLeft;
    //: self.imageView.nim_centerY = self.nim_height * .5f;
    self.imageView.nim_centerY = self.nim_height * .5f;

    //: if (self.nim_width < fileTransMessageTitleLeft + self.titleLabel.nim_width + fileTransMessageSizeTitleRight) {
    if (self.nim_width < fileTransMessageTitleLeft + self.titleLabel.nim_width + fileTransMessageSizeTitleRight) {
        //: self.titleLabel.nim_width = self.nim_width - fileTransMessageTitleLeft - fileTransMessageSizeTitleRight;
        self.titleLabel.nim_width = self.nim_width - fileTransMessageTitleLeft - fileTransMessageSizeTitleRight;
    }
    //: self.titleLabel.nim_left = fileTransMessageTitleLeft;
    self.titleLabel.nim_left = fileTransMessageTitleLeft;
    //: self.titleLabel.nim_top = fileTransMessageTitleTop;
    self.titleLabel.nim_top = fileTransMessageTitleTop;

    //: self.sizeLabel.nim_right = self.nim_width - fileTransMessageSizeTitleRight;
    self.sizeLabel.nim_right = self.nim_width - fileTransMessageSizeTitleRight;
    //: self.sizeLabel.nim_bottom = self.nim_height - fileTransMessageSizeTitleBottom;
    self.sizeLabel.nim_bottom = self.nim_height - fileTransMessageSizeTitleBottom;

    //: self.progressView.nim_top = fileTransMessageProgressTop;
    self.progressView.nim_top = fileTransMessageProgressTop;
    //: self.progressView.nim_width = self.nim_width - fileTransMessageProgressLeft - fileTransMessageProgressRight;
    self.progressView.nim_width = self.nim_width - fileTransMessageProgressLeft - fileTransMessageProgressRight;
    //: self.progressView.nim_left = fileTransMessageProgressLeft;
    self.progressView.nim_left = fileTransMessageProgressLeft;

    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.bkgView.bounds;
    maskLayer.frame = self.bkgView.bounds;
    //: self.bkgView.layer.mask = maskLayer;
    self.bkgView.layer.mask = maskLayer;
}


//: - (void)onTouchUpInside:(id)sender
- (void)searched:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    CoverShowEvent *event = [[CoverShowEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = appCommentStr;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate modelled:event];
}

//: - (void)updateProgress:(float)progress
- (void)will:(float)progress
{
    //: if (progress > 1.0) {
    if (progress > 1.0) {
        //: progress = 1.0;
        progress = 1.0;
    }
    //: self.progressView.progress = progress;
    self.progressView.progress = progress;
}

//: @end
@end