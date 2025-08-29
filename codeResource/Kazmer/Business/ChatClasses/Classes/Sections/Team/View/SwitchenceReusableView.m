
#import <Foundation/Foundation.h>

NSString *StringFromGrowData(Byte *data);


//: Group_Me
Byte kTitleWordData[] = {96, 8, 9, 6, 19, 76, 80, 123, 120, 126, 121, 104, 86, 110, 115};

//: icon_avatar_del
Byte kNameReputationString[] = {79, 15, 88, 14, 222, 226, 61, 34, 231, 219, 242, 201, 91, 111, 193, 187, 199, 198, 183, 185, 206, 185, 204, 185, 202, 183, 188, 189, 196, 142};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardHeaderCell.h"
#import "SwitchenceReusableView.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "FFFTeamHelper.h"
#import "MaxHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"

//: @interface FFFCardHeaderCell()
@interface SwitchenceReusableView()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<HalogenComment> data;

//: @end
@end

//: @implementation FFFCardHeaderCell
@implementation SwitchenceReusableView

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.device_centerX = self.device_width * .5f;
    self.imageView.device_centerX = self.device_width * .5f;
    //: self.titleLabel.device_width = self.device_width + 10;
    self.titleLabel.device_width = self.device_width + 10;
    //: self.titleLabel.device_bottom = self.device_height;
    self.titleLabel.device_bottom = self.device_height;
    //: self.titleLabel.device_centerX = self.device_width * .5f;
    self.titleLabel.device_centerX = self.device_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.device_bottom = self.imageView.device_bottom;
    self.roleImageView.device_bottom = self.imageView.device_bottom;
    //: self.roleImageView.device_right = self.imageView.device_right;
    self.roleImageView.device_right = self.imageView.device_right;
    //: self.removeBtn.device_right = self.device_width;
    self.removeBtn.device_right = self.device_width;

}

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data{
- (void)crop:(id<HalogenComment>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.texts];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView past:url display:data.theoreticalAccount];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(heliograms:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.secret;
    //: if ([data isMyUserId]) {
    if ([data inputId]) {
        //: showName = [FFFLanguageManager getTextWithKey:@"Group_Me"];
        showName = [MakeManager cell:StringFromGrowData(kTitleWordData)];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [FFFTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [MaxHelper tip:data.underSession];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[MemoryImageControl alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromGrowData(kNameReputationString)] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(indicatorred:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)indicatorred:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(lines:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate lines:self];
    }
}

//: - (void)onSelected:(id)sender{
- (void)heliograms:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(withs:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate withs:self];
    }
}

//: @end
@end

Byte * GrowDataToCache(Byte *data) {
    int author = data[0];
    int waistInspireDate = data[1];
    Byte urge = data[2];
    int axJoin = data[3];
    if (!author) return data + axJoin;
    for (int i = axJoin; i < axJoin + waistInspireDate; i++) {
        int value = data[i] - urge;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[axJoin + waistInspireDate] = 0;
    return data + axJoin;
}

NSString *StringFromGrowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GrowDataToCache(data)];
}
