
#import <Foundation/Foundation.h>

@interface AudienceData : NSObject

@end

@implementation AudienceData

+ (Byte *)AudienceDataToCache:(Byte *)data {
    int couplePointe = data[0];
    int failure = data[1];
    for (int i = 0; i < couplePointe / 2; i++) {
        int begin = failure + i;
        int end = failure + couplePointe - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[failure + couplePointe] = 0;
    return data + failure;
}

+ (NSString *)StringFromAudienceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AudienceDataToCache:data]];
}  

//: V:|-0-[_progressView]-0-|
+ (NSString *)main_operationMessage {
    /* static */ NSString *main_operationMessage = nil;
    if (!main_operationMessage) {
        Byte value[] = {25, 4, 206, 17, 124, 45, 48, 45, 93, 119, 101, 105, 86, 115, 115, 101, 114, 103, 111, 114, 112, 95, 91, 45, 48, 45, 124, 58, 86, 57};
        main_operationMessage = [self StringFromAudienceData:value];
    }
    return main_operationMessage;
}

//: H:|-0-[_progressView]-0-|
+ (NSString *)mValueMsg {
    /* static */ NSString *mValueMsg = nil;
    if (!mValueMsg) {
        Byte value[] = {25, 9, 40, 73, 85, 154, 244, 243, 186, 124, 45, 48, 45, 93, 119, 101, 105, 86, 115, 115, 101, 114, 103, 111, 114, 112, 95, 91, 45, 48, 45, 124, 58, 72, 198};
        mValueMsg = [self StringFromAudienceData:value];
    }
    return mValueMsg;
}

//: #A148FF
+ (NSString *)dreamPointId {
    /* static */ NSString *dreamPointId = nil;
    if (!dreamPointId) {
        Byte value[] = {7, 5, 117, 255, 138, 70, 70, 56, 52, 49, 65, 35, 222};
        dreamPointId = [self StringFromAudienceData:value];
    }
    return dreamPointId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeTingView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoadProgressView.h"
#import "MakeTingView.h"

//: @implementation FFFLoadProgressView
@implementation MakeTingView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: if (self) {
    if (self) {
        //: _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        //: [self addSubview:_maskView];
        [self addSubview:_maskView];

//        _progressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _progressLabel.backgroundColor = [UIColor clearColor];
//        _progressLabel.font = [UIFont systemFontOfSize:16];
//        _progressLabel.textColor = [UIColor whiteColor];
//        [self addSubview:_progressLabel];
//
//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        [self addSubview:_activity];

        //: self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        //: self.progressView.backgroundColor = [UIColor clearColor];
        self.progressView.backgroundColor = [UIColor clearColor];
        //: self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        //: self.progressView.showsText = YES;
        self.progressView.showsText = YES;
        //: self.progressView.tintColor = [UIColor colorWithHexString:@"#A148FF"];
        self.progressView.tintColor = [UIColor min:[AudienceData dreamPointId]];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[NoticeHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[AudienceData main_operationMessage] options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[AudienceData mValueMsg] options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)on:(CGRect)maskRect viewTitle:(UIImageView*)messageContentImageView
{
    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.frame = maskRect;
    maskLayer.frame = maskRect;
    //: maskLayer.contentsGravity = kCAGravityResize;
    maskLayer.contentsGravity = kCAGravityResize;


    //: messageContentImageView.layer.mask = maskLayer;
    messageContentImageView.layer.mask = maskLayer;
    //: messageContentImageView.layer.masksToBounds = YES;
    messageContentImageView.layer.masksToBounds = YES;
}
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _maskView.frame = self.bounds;
    _maskView.frame = self.bounds;

//    CGFloat activityHeight = CGRectGetHeight(_activity.bounds);
//    CGSize  size = [_progressLabel.text sizeWithAttributes:@{NSFontAttributeName:_progressLabel.font}];
//
//    CGFloat progressHeight = size.height;
//
//    CGFloat totalHeight = activityHeight;
//    if (progressHeight) {
//        totalHeight += kPadding + size.height;
//    }
//
//    CGFloat y = (CGRectGetHeight(self.bounds) - totalHeight)/2.0;
//    _activity.center = CGPointMake(CGRectGetMidX(self.bounds), y+CGRectGetMidY(_activity.bounds));
//
//    _progressLabel.bounds = CGRectMake(0, 0, size.width, size.height);
//    _progressLabel.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMaxY(_activity.frame) + kPadding + size.height/2.0);


    //: CGRect frame = self.bounds;
    CGRect frame = self.bounds;
    //: frame.origin.x = frame.origin.x - 4;
    frame.origin.x = frame.origin.x - 4;
    //: frame.origin.y = frame.origin.y - 4;
    frame.origin.y = frame.origin.y - 4;
    //: frame.size.width = frame.size.width + 12;
    frame.size.width = frame.size.width + 12;
    //: frame.size.height = frame.size.height + 8;
    frame.size.height = frame.size.height + 8;
    //: [self maskBubbleImageView:frame markImageView:_maskView];
    [self on:frame viewTitle:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setMaxBackProgress:(CGFloat)progress {
    //: if (progress > self.maxProgress) {
    if (progress > self.maxProgress) {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(self.maxProgress*100)];
//        [_activity stopAnimating];
    //: }else if (progress <= 0) {
    }else if (progress <= 0) {
//        _progressLabel.text = @"0%";
//        [_activity startAnimating];
    //: }else {
    }else {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
//        [_activity startAnimating];
        //: self.progressView.progress = progress;
        self.progressView.progress = progress;
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: @end
@end