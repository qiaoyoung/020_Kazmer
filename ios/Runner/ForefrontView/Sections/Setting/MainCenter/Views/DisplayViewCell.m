
#import <Foundation/Foundation.h>

typedef struct {
    Byte fantastic;
    Byte *commit;
    unsigned int gradePointAverageHardware;
} StructPullData;

@interface PullData : NSObject

@end

@implementation PullData

//: iPhone
+ (NSString *)kText_stepValue {
    /* static */ NSString *kText_stepValue = nil;
    if (!kText_stepValue) {
		NSString *origin = @"724B7374757E90";
		NSData *data = [PullData PullDataToData:origin];
        StructPullData value = (StructPullData){27, (Byte *)data.bytes, 6};
        kText_stepValue = [self StringFromPullData:&value];
    }
    return kText_stepValue;
}

//: systems
+ (NSString *)kText_selectedRecordModelTitle {
    /* static */ NSString *kText_selectedRecordModelTitle = nil;
    if (!kText_selectedRecordModelTitle) {
		NSString *origin = @"DBD1DBDCCDC5DBE5";
		NSData *data = [PullData PullDataToData:origin];
        StructPullData value = (StructPullData){168, (Byte *)data.bytes, 7};
        kText_selectedRecordModelTitle = [self StringFromPullData:&value];
    }
    return kText_selectedRecordModelTitle;
}

+ (Byte *)PullDataToByte:(StructPullData *)data {
    for (int i = 0; i < data->gradePointAverageHardware; i++) {
        data->commit[i] ^= data->fantastic;
    }
    data->commit[data->gradePointAverageHardware] = 0;
    return data->commit;
}

+ (NSData *)PullDataToData:(NSString *)value {
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

//: addtime
+ (NSString *)kTitleDisturbCurrentShallowString {
    /* static */ NSString *kTitleDisturbCurrentShallowString = nil;
    if (!kTitleDisturbCurrentShallowString) {
		NSString *origin = @"0E0B0B1B06020A99";
		NSData *data = [PullData PullDataToData:origin];
        StructPullData value = (StructPullData){111, (Byte *)data.bytes, 7};
        kTitleDisturbCurrentShallowString = [self StringFromPullData:&value];
    }
    return kTitleDisturbCurrentShallowString;
}

+ (NSString *)StringFromPullData:(StructPullData *)data {
    return [NSString stringWithUTF8String:(char *)[self PullDataToByte:data]];
}

//: telname
+ (NSString *)kText_colorValue {
    /* static */ NSString *kText_colorValue = nil;
    if (!kText_colorValue) {
		NSString *origin = @"54454C4E414D4522";
		NSData *data = [PullData PullDataToData:origin];
        StructPullData value = (StructPullData){32, (Byte *)data.bytes, 7};
        kText_colorValue = [self StringFromPullData:&value];
    }
    return kText_colorValue;
}

//: user_device_phone
+ (NSString *)kNameDeviceDenseData {
    /* static */ NSString *kNameDeviceDenseData = nil;
    if (!kNameDeviceDenseData) {
		NSString *origin = @"373127301D2627342B21271D322A2D2C2768";
		NSData *data = [PullData PullDataToData:origin];
        StructPullData value = (StructPullData){66, (Byte *)data.bytes, 17};
        kNameDeviceDenseData = [self StringFromPullData:&value];
    }
    return kNameDeviceDenseData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERDeviceListTableViewCell.h"
#import "DisplayViewCell.h"

//: @implementation USERDeviceListTableViewCell
@implementation DisplayViewCell

//: - (void)initSubviews{
- (void)initSendSubviews{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = [PullData kText_stepValue];
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
    _imageViewIcon.image = [UIImage imageNamed:[PullData kNameDeviceDenseData]];
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
    _timeLabel.text = [PullData kText_stepValue];
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
    _deveceVersion.text = [PullData kText_stepValue];
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
-(void)show:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information comment:[PullData kText_colorValue]];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information comment:[PullData kText_selectedRecordModelTitle]];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information comment:[PullData kTitleDisturbCurrentShallowString]];
}

//: @end
@end