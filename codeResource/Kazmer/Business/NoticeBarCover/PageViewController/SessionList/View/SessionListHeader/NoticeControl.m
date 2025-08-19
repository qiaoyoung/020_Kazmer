
#import <Foundation/Foundation.h>

@interface CornerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CornerData

+ (instancetype)sharedInstance {
    static CornerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CornerDataToCache:(Byte *)data {
    int fifty = data[0];
    Byte magnitude = data[1];
    int soap = data[2];
    for (int i = soap; i < soap + fifty; i++) {
        int value = data[i] - magnitude;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[soap + fifty] = 0;
    return data + soap;
}

- (NSString *)StringFromCornerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CornerDataToCache:data]];
}

//: icon_arrow
- (NSString *)kViaName {
    /* static */ NSString *kViaName = nil;
    if (!kViaName) {
        Byte value[] = {10, 13, 13, 124, 53, 32, 86, 162, 47, 62, 15, 26, 255, 118, 112, 124, 123, 108, 110, 127, 127, 124, 132, 132};
        kViaName = [self StringFromCornerData:value];
    }
    return kViaName;
}

//: icon_muti_clients
- (NSString *)dream_rnaValue {
    /* static */ NSString *dream_rnaValue = nil;
    if (!dream_rnaValue) {
        Byte value[] = {17, 12, 6, 215, 194, 210, 117, 111, 123, 122, 107, 121, 129, 128, 117, 107, 111, 120, 117, 113, 122, 128, 127, 231};
        dream_rnaValue = [self StringFromCornerData:value];
    }
    return dream_rnaValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeControl.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "NoticeControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"

//: @interface NTESMutiClientsHeaderView()
@interface NoticeControl()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation NoticeControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[[CornerData sharedInstance] dream_rnaValue]]];
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
        [_accessoryBtn setImage:[UIImage imageNamed:[[CornerData sharedInstance] kViaName]] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat m_directionControlMessage = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + m_directionControlMessage * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setNetIncomeColor:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat showEnableId = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat noti_indexUrl = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat show_rootTitle = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = showEnableId;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + noti_indexUrl;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - show_rootTitle;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end