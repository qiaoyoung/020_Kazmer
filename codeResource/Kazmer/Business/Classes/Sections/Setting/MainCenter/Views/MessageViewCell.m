
#import <Foundation/Foundation.h>

NSString *StringFromHonorData(Byte *data);        


//: systems
Byte app_strangePath[] = {8, 7, 38, 7, 170, 104, 35, 77, 83, 77, 78, 63, 71, 77, 205};

//: telname
Byte kNowhereDestinationPath[] = {6, 7, 71, 12, 227, 107, 65, 109, 85, 128, 228, 77, 45, 30, 37, 39, 26, 38, 30, 223};

//: user_device_phone
Byte m_shouldValue[] = {42, 17, 56, 12, 69, 37, 49, 170, 51, 171, 229, 143, 61, 59, 45, 58, 39, 44, 45, 62, 49, 43, 45, 39, 56, 48, 55, 54, 45, 238};

//: addtime
Byte showUreaFormat[] = {3, 7, 31, 5, 122, 66, 69, 69, 85, 74, 78, 70, 247};

//: iPhone
Byte kTwistMessage[] = {51, 6, 9, 6, 7, 75, 96, 71, 95, 102, 101, 92, 13};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "MessageViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation MessageViewCell

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = StringFromHonorData(kTwistMessage);
    //: _deviceName.font = [UIFont systemFontOfSize:16];
    _deviceName.font = [UIFont systemFontOfSize:16];
    //: _deviceName.textColor = [UIColor blackColor];
    _deviceName.textColor = [UIColor blackColor];
    //: [self addSubview:_deviceName];
    [self addSubview:_deviceName];
    //: [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _imageViewIcon = [[UIImageView alloc] init];
    _imageViewIcon = [[UIImageView alloc] init];
    //: _imageViewIcon.image = [UIImage imageNamed:@"user_device_phone"];
    _imageViewIcon.image = [UIImage imageNamed:StringFromHonorData(m_shouldValue)];
    //: [self addSubview:_imageViewIcon];
    [self addSubview:_imageViewIcon];
    //: [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);

    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.text = @"iPhone";
    _timeLabel.text = StringFromHonorData(kTwistMessage);
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: _timeLabel.textAlignment = NSTextAlignmentRight;
    _timeLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _deveceVersion = [[UILabel alloc] init];
    _deveceVersion = [[UILabel alloc] init];
    //: _deveceVersion.text = @"iPhone";
    _deveceVersion.text = StringFromHonorData(kTwistMessage);
    //: _deveceVersion.font = [UIFont systemFontOfSize:14];
    _deveceVersion.font = [UIFont systemFontOfSize:14];
    //: _deveceVersion.textAlignment = NSTextAlignmentRight;
    _deveceVersion.textAlignment = NSTextAlignmentRight;
    //: _deveceVersion.textColor = [UIColor lightGrayColor];
    _deveceVersion.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_deveceVersion];
    [self addSubview:_deveceVersion];
    //: [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.bottom.mas_offset(-15);
        make.bottom.mas_offset(-15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];
}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)showInformation:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information record:StringFromHonorData(kNowhereDestinationPath)];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information record:StringFromHonorData(app_strangePath)];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information record:StringFromHonorData(showUreaFormat)];
}

//: @end
@end

Byte * HonorDataToCache(Byte *data) {
    int suggest = data[0];
    int reticulum = data[1];
    Byte cloud = data[2];
    int sendNumberellectual = data[3];
    if (!suggest) return data + sendNumberellectual;
    for (int i = sendNumberellectual; i < sendNumberellectual + reticulum; i++) {
        int value = data[i] + cloud;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sendNumberellectual + reticulum] = 0;
    return data + sendNumberellectual;
}

NSString *StringFromHonorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HonorDataToCache(data)];
}
