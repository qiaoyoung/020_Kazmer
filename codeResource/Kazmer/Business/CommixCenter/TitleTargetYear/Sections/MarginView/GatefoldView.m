
#import <Foundation/Foundation.h>

typedef struct {
    Byte brushNessCivilian;
    Byte *principle;
    unsigned int instantlyOutfit;
	int safetyNous;
	int promptAdvocate;
} StructLoopData;

@interface LoopData : NSObject

+ (instancetype)sharedInstance;

//: V:|-0-[_progressView]-0-|
@property (nonatomic, copy) NSString *kText_distributeData;

//: #A148FF
@property (nonatomic, copy) NSString *kText_fishName;

//: H:|-0-[_progressView]-0-|
@property (nonatomic, copy) NSString *kNameToothText;

@end

@implementation LoopData

+ (instancetype)sharedInstance {
    static LoopData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LoopDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)LoopDataToByte:(StructLoopData *)data {
    for (int i = 0; i < data->instantlyOutfit; i++) {
        data->principle[i] ^= data->brushNessCivilian;
    }
    data->principle[data->instantlyOutfit] = 0;
	if (data->instantlyOutfit >= 2) {
		data->safetyNous = data->principle[0];
		data->promptAdvocate = data->principle[1];
	}
    return data->principle;
}

- (NSString *)StringFromLoopData:(StructLoopData *)data {
    return [NSString stringWithUTF8String:(char *)[self LoopDataToByte:data]];
}

//: #A148FF
- (NSString *)kText_fishName {
    if (!_kText_fishName) {
		NSArray<NSString *> *origin = @[@"11", @"105", @"25", @"28", @"16", @"110", @"110", @"125"];
		NSData *data = [LoopData LoopDataToData:origin];
        StructLoopData value = (StructLoopData){40, (Byte *)data.bytes, 7, 191, 224};
        _kText_fishName = [self StringFromLoopData:&value];
    }
    return _kText_fishName;
}

//: H:|-0-[_progressView]-0-|
- (NSString *)kNameToothText {
    if (!_kNameToothText) {
		NSArray<NSString *> *origin = @[@"240", @"130", @"196", @"149", @"136", @"149", @"227", @"231", @"200", @"202", @"215", @"223", @"202", @"221", @"203", @"203", @"238", @"209", @"221", @"207", @"229", @"149", @"136", @"149", @"196", @"169"];
		NSData *data = [LoopData LoopDataToData:origin];
        StructLoopData value = (StructLoopData){184, (Byte *)data.bytes, 25, 83, 168};
        _kNameToothText = [self StringFromLoopData:&value];
    }
    return _kNameToothText;
}

//: V:|-0-[_progressView]-0-|
- (NSString *)kText_distributeData {
    if (!_kText_distributeData) {
		NSArray<NSString *> *origin = @[@"218", @"182", @"240", @"161", @"188", @"161", @"215", @"211", @"252", @"254", @"227", @"235", @"254", @"233", @"255", @"255", @"218", @"229", @"233", @"251", @"209", @"161", @"188", @"161", @"240", @"252"];
		NSData *data = [LoopData LoopDataToData:origin];
        StructLoopData value = (StructLoopData){140, (Byte *)data.bytes, 25, 102, 22};
        _kText_distributeData = [self StringFromLoopData:&value];
    }
    return _kText_distributeData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GatefoldView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayLoadProgressView.h"
#import "GatefoldView.h"

//: @implementation DisplayLoadProgressView
@implementation GatefoldView

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
        self.progressView.tintColor = [UIColor cell:[LoopData sharedInstance].kText_fishName];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[ColorHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[LoopData sharedInstance].kText_distributeData options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[LoopData sharedInstance].kNameToothText options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)with:(CGRect)maskRect monthSize:(UIImageView*)messageContentImageView
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
    [self with:frame monthSize:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setByLabel:(CGFloat)progress {
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
