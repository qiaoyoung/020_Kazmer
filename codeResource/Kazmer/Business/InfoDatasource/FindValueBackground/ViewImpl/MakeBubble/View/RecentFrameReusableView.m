
#import <Foundation/Foundation.h>

@interface ResponseData : NSObject

+ (instancetype)sharedInstance;

//: icon_avatar_del
@property (nonatomic, copy) NSString *appDeerUrl;

//: Group_Me
@property (nonatomic, copy) NSString *app_bronzeData;

@end

@implementation ResponseData

+ (instancetype)sharedInstance {
    static ResponseData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ResponseDataToCache:(Byte *)data {
    int quire = data[0];
    Byte developerMedium = data[1];
    int messageChange = data[2];
    for (int i = messageChange; i < messageChange + quire; i++) {
        int value = data[i] - developerMedium;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[messageChange + quire] = 0;
    return data + messageChange;
}

- (NSString *)StringFromResponseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ResponseDataToCache:data]];
}

//: Group_Me
- (NSString *)app_bronzeData {
    if (!_app_bronzeData) {
        Byte value[] = {8, 81, 3, 152, 195, 192, 198, 193, 176, 158, 182, 105};
        _app_bronzeData = [self StringFromResponseData:value];
    }
    return _app_bronzeData;
}

//: icon_avatar_del
- (NSString *)appDeerUrl {
    if (!_appDeerUrl) {
        Byte value[] = {15, 14, 10, 224, 179, 88, 210, 25, 71, 55, 119, 113, 125, 124, 109, 111, 132, 111, 130, 111, 128, 109, 114, 115, 122, 183};
        _appDeerUrl = [self StringFromResponseData:value];
    }
    return _appDeerUrl;
}

@end

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
//: #import "WatchCardHeaderCell.h"
#import "RecentFrameReusableView.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "WatchTeamHelper.h"
#import "MakeBubble.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"

//: @interface WatchCardHeaderCell()
@interface RecentFrameReusableView()

//: @property (nonatomic,strong) id<WatchKitCardHeaderData> data;
@property (nonatomic,strong) id<WatchKitCardHeaderData> data;

//: @end
@end

//: @implementation WatchCardHeaderCell
@implementation RecentFrameReusableView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[WatchAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[RecordControl alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
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
        [_removeBtn setImage:[UIImage imageNamed:[ResponseData sharedInstance].appDeerUrl] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(saving:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<WatchKitCardHeaderData>)data{
- (void)accountingData:(id<WatchKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView message:url state:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(secretted:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [WatchLanguageManager getTextWithKey:@"Group_Me"];
        showName = [PaintedNaturalLanguageTo exhibit:[ResponseData sharedInstance].app_bronzeData];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [WatchTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [MakeBubble streetwiseType:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)secretted:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(timeTitle:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate timeTitle:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)saving:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(willed:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate willed:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end
