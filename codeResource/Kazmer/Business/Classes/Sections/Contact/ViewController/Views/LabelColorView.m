
#import <Foundation/Foundation.h>

NSString *StringFromInstalmentData(Byte *data);        


//: #F7F8FB
Byte kTextPlaceValue[] = {56, 7, 53, 9, 29, 133, 26, 199, 165, 238, 17, 2, 17, 3, 17, 13, 204};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelColorView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactTableHeader.h"
#import "LabelColorView.h"

//: @implementation USERContactTableHeader
@implementation LabelColorView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor cell:StringFromInstalmentData(kTextPlaceValue)];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textColor = [UIColor lightGrayColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(100);
            make.width.mas_equalTo(100);
            //: make.height.mas_equalTo(15);
            make.height.mas_equalTo(15);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: @end
@end




//: @implementation USERContactTableHeaderGroup
@implementation HeaderView

//: -(void)buttonClick:(UIButton *)sender{
-(void)currents:(UIButton *)sender{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(headerClickWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(itemBlue:)]) {
        //: [self.delegate headerClickWith:self.section];
        [self.delegate itemBlue:self.section];
    }
}

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor cell:StringFromInstalmentData(kTextPlaceValue)];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _arrowImageView = [[UIImageView alloc] init];
        _arrowImageView = [[UIImageView alloc] init];
        //: [self addSubview:_arrowImageView];
        [self addSubview:_arrowImageView];
        //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.width.mas_equalTo(14);
            make.width.mas_equalTo(14);
            //: make.height.mas_equalTo(8);
            make.height.mas_equalTo(8);
        //: }];
        }];

        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(currents:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:button];
        [self addSubview:button];
        //: [button mas_makeConstraints:^(MASConstraintMaker *make) {
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.bottom.mas_offset(0);
            make.bottom.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: @end
@end

Byte * InstalmentDataToCache(Byte *data) {
    int recordName = data[0];
    int last = data[1];
    Byte messageFile = data[2];
    int precaution = data[3];
    if (!recordName) return data + precaution;
    for (int i = precaution; i < precaution + last; i++) {
        int value = data[i] + messageFile;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[precaution + last] = 0;
    return data + precaution;
}

NSString *StringFromInstalmentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InstalmentDataToCache(data)];
}
