
#import <Foundation/Foundation.h>

typedef struct {
    Byte magnitudeelligence;
    Byte *violent;
    unsigned int cipher;
	int queryed;
	int commitTo;
} StructModelShallowData;

@interface ModelShallowData : NSObject

@end

@implementation ModelShallowData

+ (Byte *)ModelShallowDataToByte:(StructModelShallowData *)data {
    for (int i = 0; i < data->cipher; i++) {
        data->violent[i] ^= data->magnitudeelligence;
    }
    data->violent[data->cipher] = 0;
	if (data->cipher >= 2) {
		data->queryed = data->violent[0];
		data->commitTo = data->violent[1];
	}
    return data->violent;
}

+ (NSString *)StringFromModelShallowData:(StructModelShallowData *)data {
    return [NSString stringWithUTF8String:(char *)[self ModelShallowDataToByte:data]];
}

//: btn_right
+ (NSString *)kContent_modelData {
    /* static */ NSString *kContent_modelData = nil;
    if (!kContent_modelData) {
        StructModelShallowData value = (StructModelShallowData){70, (Byte []){36, 50, 40, 25, 52, 47, 33, 46, 50, 241}, 9, 138, 44};
        kContent_modelData = [self StringFromModelShallowData:&value];
    }
    return kContent_modelData;
}

//: #3F3F3F
+ (NSString *)kText_immigrantData {
    /* static */ NSString *kText_immigrantData = nil;
    if (!kText_immigrantData) {
        StructModelShallowData value = (StructModelShallowData){38, (Byte []){5, 21, 96, 21, 96, 21, 96, 143}, 7, 111, 21};
        kText_immigrantData = [self StringFromModelShallowData:&value];
    }
    return kText_immigrantData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpgradeViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSafetySetingCell.h"
#import "UpgradeViewCell.h"

//: @implementation USERSafetySetingCell
@implementation UpgradeViewCell

//: - (void)initSubviews{
- (void)initSendSubviews{
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
    _topLabel.textColor = [UIColor cell:[ModelShallowData kText_immigrantData]];
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
    arrowImage.image = [UIImage imageNamed:[ModelShallowData kContent_modelData]];
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