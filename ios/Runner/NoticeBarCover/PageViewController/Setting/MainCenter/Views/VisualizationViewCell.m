
#import <Foundation/Foundation.h>

@interface StyleCenterData : NSObject

+ (instancetype)sharedInstance;

//: #3F3F3F
@property (nonatomic, copy) NSString *showSalmonId;

//: btn_right
@property (nonatomic, copy) NSString *dreamNecessaryTitle;

@end

@implementation StyleCenterData

+ (instancetype)sharedInstance {
    static StyleCenterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StyleCenterDataToCache:(Byte *)data {
    int petition = data[0];
    int stoneThanks = data[1];
    for (int i = 0; i < petition / 2; i++) {
        int begin = stoneThanks + i;
        int end = stoneThanks + petition - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[stoneThanks + petition] = 0;
    return data + stoneThanks;
}

- (NSString *)StringFromStyleCenterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StyleCenterDataToCache:data]];
}  

//: btn_right
- (NSString *)dreamNecessaryTitle {
    if (!_dreamNecessaryTitle) {
        Byte value[] = {9, 7, 28, 29, 235, 208, 135, 116, 104, 103, 105, 114, 95, 110, 116, 98, 216};
        _dreamNecessaryTitle = [self StringFromStyleCenterData:value];
    }
    return _dreamNecessaryTitle;
}

//: #3F3F3F
- (NSString *)showSalmonId {
    if (!_showSalmonId) {
        Byte value[] = {7, 8, 67, 174, 86, 51, 118, 182, 70, 51, 70, 51, 70, 51, 35, 57};
        _showSalmonId = [self StringFromStyleCenterData:value];
    }
    return _showSalmonId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualizationViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingCell.h"
#import "VisualizationViewCell.h"

//: @implementation NTESSafetySetingCell
@implementation VisualizationViewCell

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGround = [[UIView alloc] init];
    UIView *backGround = [[UIView alloc] init];
    //: backGround.backgroundColor = [UIColor whiteColor];
    backGround.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:backGround];
    [self addSubview:backGround];
    //: backGround.layer.masksToBounds = YES;
    backGround.layer.masksToBounds = YES;
    //: backGround.layer.cornerRadius = 5;
    backGround.layer.cornerRadius = 5;
    //: [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];




    //: _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self addSubview:_buttonTop];
    [self addSubview:_buttonTop];
    //: [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
    [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];



    //: _topLabel = [[UILabel alloc] init];
    _topLabel = [[UILabel alloc] init];
    //: _topLabel.font = [UIFont systemFontOfSize:16];
    _topLabel.font = [UIFont systemFontOfSize:16];
    //: _topLabel.text = @"";
    _topLabel.text = @"";
    //: _topLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _topLabel.textColor = [UIColor min:[StyleCenterData sharedInstance].showSalmonId];
    //: [_buttonTop addSubview:_topLabel];
    [_buttonTop addSubview:_topLabel];
    //: [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(300);
        make.width.mas_equalTo(300);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];


    //: UIImageView *arrowImage = [[UIImageView alloc] init];
    UIImageView *arrowImage = [[UIImageView alloc] init];
    //: arrowImage.image = [UIImage imageNamed:@"btn_right"];
    arrowImage.image = [UIImage imageNamed:[StyleCenterData sharedInstance].dreamNecessaryTitle];
    //: [_buttonTop addSubview:arrowImage];
    [_buttonTop addSubview:arrowImage];
    //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);

    //: }];
    }];

}


//: @end
@end