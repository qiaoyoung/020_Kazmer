
#import <Foundation/Foundation.h>

@interface PosteriorData : NSObject

+ (instancetype)sharedInstance;

//: icon_arrow
@property (nonatomic, copy) NSString *kTitle_onName;

//: icon_muti_clients
@property (nonatomic, copy) NSString *kTitleSuggestData;

@end

@implementation PosteriorData

- (Byte *)PosteriorDataToCache:(Byte *)data {
    int titleDisturb = data[0];
    Byte sumact = data[1];
    int frameNim = data[2];
    for (int i = frameNim; i < frameNim + titleDisturb; i++) {
        int value = data[i] - sumact;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[frameNim + titleDisturb] = 0;
    return data + frameNim;
}

+ (NSData *)PosteriorDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (instancetype)sharedInstance {
    static PosteriorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: icon_muti_clients
- (NSString *)kTitleSuggestData {
    if (!_kTitleSuggestData) {
		NSArray<NSString *> *origin = @[@"17", @"31", @"4", @"181", @"136", @"130", @"142", @"141", @"126", @"140", @"148", @"147", @"136", @"126", @"130", @"139", @"136", @"132", @"141", @"147", @"146", @"231"];
		NSData *data = [PosteriorData PosteriorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSuggestData = [self StringFromPosteriorData:value];
    }
    return _kTitleSuggestData;
}

//: icon_arrow
- (NSString *)kTitle_onName {
    if (!_kTitle_onName) {
		NSArray<NSString *> *origin = @[@"10", @"84", @"11", @"94", @"78", @"197", @"1", @"33", @"45", @"250", @"41", @"189", @"183", @"195", @"194", @"179", @"181", @"198", @"198", @"195", @"203", @"101"];
		NSData *data = [PosteriorData PosteriorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_onName = [self StringFromPosteriorData:value];
    }
    return _kTitle_onName;
}

- (NSString *)StringFromPosteriorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PosteriorDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MutiDisplayPanoramicViewButton.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMutiClientsHeaderView.h"
#import "MutiDisplayPanoramicViewButton.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"

//: @interface USERMutiClientsHeaderView()
@interface MutiDisplayPanoramicViewButton()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation USERMutiClientsHeaderView
@implementation MutiDisplayPanoramicViewButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[PosteriorData sharedInstance].kTitleSuggestData]];
        //: [self addSubview:_icon];
        [self addSubview:_icon];

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        //: _label.font = [UIFont boldSystemFontOfSize:14.f];
        _label.font = [UIFont boldSystemFontOfSize:14.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_arrow"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[PosteriorData sharedInstance].kTitle_onName] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: #pragma mark - USERSessionListHeaderView
#pragma mark - USERSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setView:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat TextPadding = 17.f;
CGFloat user_targetKey = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + user_targetKey * 2);
}


//: CGFloat IconLeft = 10.f;
CGFloat dream_keyFormat = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat dreamMemberMsg = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat app_nameValueFormat = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = dream_keyFormat;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + dreamMemberMsg;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - app_nameValueFormat;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end