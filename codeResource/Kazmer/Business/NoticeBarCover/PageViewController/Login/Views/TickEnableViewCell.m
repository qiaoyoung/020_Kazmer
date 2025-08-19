
#import <Foundation/Foundation.h>

@interface EpicycleData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EpicycleData

+ (instancetype)sharedInstance {
    static EpicycleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EpicycleDataToCache:(Byte *)data {
    int remind = data[0];
    Byte predominate = data[1];
    int boom = data[2];
    for (int i = boom; i < boom + remind; i++) {
        int value = data[i] + predominate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[boom + remind] = 0;
    return data + boom;
}

- (NSString *)StringFromEpicycleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EpicycleDataToCache:data]];
}

//: mine_btn_right
- (NSString *)appSkiPath {
    /* static */ NSString *appSkiPath = nil;
    if (!appSkiPath) {
        Byte value[] = {14, 87, 7, 216, 208, 197, 111, 22, 18, 23, 14, 8, 11, 29, 23, 8, 27, 18, 16, 17, 29, 172};
        appSkiPath = [self StringFromEpicycleData:value];
    }
    return appSkiPath;
}

//: #3F3F3F
- (NSString *)mainGenetValue {
    /* static */ NSString *mainGenetValue = nil;
    if (!mainGenetValue) {
        Byte value[] = {7, 12, 6, 81, 80, 45, 23, 39, 58, 39, 58, 39, 58, 215};
        mainGenetValue = [self StringFromEpicycleData:value];
    }
    return mainGenetValue;
}

//: eeeeee
- (NSString *)m_yaStr {
    /* static */ NSString *m_yaStr = nil;
    if (!m_yaStr) {
        Byte value[] = {6, 21, 10, 148, 123, 78, 4, 100, 244, 150, 80, 80, 80, 80, 80, 80, 91};
        m_yaStr = [self StringFromEpicycleData:value];
    }
    return m_yaStr;
}

//: head_default
- (NSString *)show_amendmentName {
    /* static */ NSString *show_amendmentName = nil;
    if (!show_amendmentName) {
        Byte value[] = {12, 37, 6, 72, 64, 139, 67, 64, 60, 63, 58, 63, 64, 65, 60, 80, 71, 79, 163};
        show_amendmentName = [self StringFromEpicycleData:value];
    }
    return show_amendmentName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TickEnableViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistCustomCell.h"
#import "TickEnableViewCell.h"

//: @implementation NTESRegistCustomCell
@implementation TickEnableViewCell

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{


    //: CGFloat scale = 1.f;
    CGFloat scale = 1.f;

    //: if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
    if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
        //: scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
        scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
    }

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _titleLabel.textColor = [UIColor min:[[EpicycleData sharedInstance] mainGenetValue]];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(20*scale);
        make.top.mas_offset(20*scale);
        //: make.bottom.mas_offset(-20*scale);
        make.bottom.mas_offset(-20*scale);
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.width.mas_equalTo(100*scale);
        make.width.mas_equalTo(100*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];

    //: _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView = [[UIImageView alloc] init];
    //: _arrowImageView.image = [UIImage imageNamed:@"mine_btn_right"];
    _arrowImageView.image = [UIImage imageNamed:[[EpicycleData sharedInstance] appSkiPath]];
    //: [self addSubview:_arrowImageView];
    [self addSubview:_arrowImageView];
    //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
    //: }];
    }];


    //: _contentTextField = [[UITextField alloc] init];
    _contentTextField = [[UITextField alloc] init];
    //: _contentTextField.textAlignment = NSTextAlignmentRight;
    _contentTextField.textAlignment = NSTextAlignmentRight;
    //: _contentTextField.userInteractionEnabled = NO;
    _contentTextField.userInteractionEnabled = NO;
    //: [self addSubview:_contentTextField];
    [self addSubview:_contentTextField];
    //: [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50);
        make.right.mas_offset(-50);
        //: make.width.mas_equalTo(180*scale);
        make.width.mas_equalTo(180*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];


    //: _headerImageView = [[UIImageView alloc] init];
    _headerImageView = [[UIImageView alloc] init];
    //: _headerImageView.image = [UIImage imageNamed:@"head_default"];
    _headerImageView.image = [UIImage imageNamed:[[EpicycleData sharedInstance] show_amendmentName]];
    //: _headerImageView.backgroundColor = [UIColor clearColor];
    _headerImageView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_headerImageView];
    [self addSubview:_headerImageView];
    //: _headerImageView.layer.masksToBounds = YES;
    _headerImageView.layer.masksToBounds = YES;
    //: _headerImageView.layer.cornerRadius = 23*scale;
    _headerImageView.layer.cornerRadius = 23*scale;
    //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50*scale);
        make.right.mas_offset(-50*scale);
        //: make.width.mas_equalTo(46*scale);
        make.width.mas_equalTo(46*scale);
        //: make.height.mas_equalTo(46*scale);
        make.height.mas_equalTo(46*scale);
    //: }];
    }];



    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor min:[[EpicycleData sharedInstance] m_yaStr]];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.right.mas_offset(-25);
        make.right.mas_offset(-25);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];
}

//: @end
@end