
#import <Foundation/Foundation.h>

@interface KeepTrackData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation KeepTrackData

+ (instancetype)sharedInstance {
    static KeepTrackData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)KeepTrackDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)KeepTrackDataToCache:(Byte *)data {
    int proudGender = data[0];
    Byte bullEnd = data[1];
    int upToDatenessHopping = data[2];
    for (int i = upToDatenessHopping; i < upToDatenessHopping + proudGender; i++) {
        int value = data[i] - bullEnd;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[upToDatenessHopping + proudGender] = 0;
    return data + upToDatenessHopping;
}

- (NSString *)StringFromKeepTrackData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self KeepTrackDataToCache:data]];
}

//: icon_map
- (NSString *)kTitle_sellName {
    /* static */ NSString *kTitle_sellName = nil;
    if (!kTitle_sellName) {
		NSString *origin = @"0860090e4518f346dcc9c3cfcebfcdc1d068";
		NSData *data = [KeepTrackData KeepTrackDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_sellName = [self StringFromKeepTrackData:value];
    }
    return kTitle_sellName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowControl.m
// Mortification
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionLocationContentView.h"
#import "RowControl.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface DisplaySessionLocationContentView()
@interface RowControl()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation DisplaySessionLocationContentView
@implementation RowControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:[[KeepTrackData sharedInstance] kTitle_sellName]];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(DisplayMessageModel *)data
- (void)from:(CleanDoing *)data
{
    //: [super refresh:data];
    [super from:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: DisplayKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ManPull *setting = [[Mortification text].config toWith:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
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

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.device_width = self.device_width - 20;
    _titleLabel.device_width = self.device_width - 20;
    //: _titleLabel.device_height= 35.f;
    _titleLabel.device_height= 35.f;
    //: self.titleLabel.device_centerY = 90.f;
    self.titleLabel.device_centerY = 90.f;
    //: self.titleLabel.device_centerX = self.device_width * .5f;
    self.titleLabel.device_centerX = self.device_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.device_width;
    CGFloat tableViewWidth = self.superview.device_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model size:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end
