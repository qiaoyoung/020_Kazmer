
#import <Foundation/Foundation.h>

typedef struct {
    Byte aircraftTeam;
    Byte *errorHeavily;
    unsigned int crawSculpture;
	int button;
	int pullUpShort;
} StructOfAllTimeData;

@interface OfAllTimeData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *kText_mainString;

//: #3F3F3F
@property (nonatomic, copy) NSString *kTextDateString;

//: mine_btn_right
@property (nonatomic, copy) NSString *kNameMonthString;

//: eeeeee
@property (nonatomic, copy) NSString *kName_reservationValue;

@end

@implementation OfAllTimeData

//: eeeeee
- (NSString *)kName_reservationValue {
    if (!_kName_reservationValue) {
		NSString *origin = @"e0e0e0e0e0e040";
		NSData *data = [OfAllTimeData OfAllTimeDataToData:origin];
        StructOfAllTimeData value = (StructOfAllTimeData){133, (Byte *)data.bytes, 6, 186, 168};
        _kName_reservationValue = [self StringFromOfAllTimeData:&value];
    }
    return _kName_reservationValue;
}

+ (NSData *)OfAllTimeDataToData:(NSString *)value {
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

//: mine_btn_right
- (NSString *)kNameMonthString {
    if (!_kNameMonthString) {
		NSString *origin = @"80848388b28f9983b29f848a859984";
		NSData *data = [OfAllTimeData OfAllTimeDataToData:origin];
        StructOfAllTimeData value = (StructOfAllTimeData){237, (Byte *)data.bytes, 14, 221, 126};
        _kNameMonthString = [self StringFromOfAllTimeData:&value];
    }
    return _kNameMonthString;
}

//: #3F3F3F
- (NSString *)kTextDateString {
    if (!_kTextDateString) {
		NSString *origin = @"776712671267128d";
		NSData *data = [OfAllTimeData OfAllTimeDataToData:origin];
        StructOfAllTimeData value = (StructOfAllTimeData){84, (Byte *)data.bytes, 7, 224, 23};
        _kTextDateString = [self StringFromOfAllTimeData:&value];
    }
    return _kTextDateString;
}

- (Byte *)OfAllTimeDataToByte:(StructOfAllTimeData *)data {
    for (int i = 0; i < data->crawSculpture; i++) {
        data->errorHeavily[i] ^= data->aircraftTeam;
    }
    data->errorHeavily[data->crawSculpture] = 0;
	if (data->crawSculpture >= 2) {
		data->button = data->errorHeavily[0];
		data->pullUpShort = data->errorHeavily[1];
	}
    return data->errorHeavily;
}

- (NSString *)StringFromOfAllTimeData:(StructOfAllTimeData *)data {
    return [NSString stringWithUTF8String:(char *)[self OfAllTimeDataToByte:data]];
}

//: head_default
- (NSString *)kText_mainString {
    if (!_kText_mainString) {
		NSString *origin = @"939e9a9fa49f9e9d9a8e978f19";
		NSData *data = [OfAllTimeData OfAllTimeDataToData:origin];
        StructOfAllTimeData value = (StructOfAllTimeData){251, (Byte *)data.bytes, 12, 58, 126};
        _kText_mainString = [self StringFromOfAllTimeData:&value];
    }
    return _kText_mainString;
}

+ (instancetype)sharedInstance {
    static OfAllTimeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRegistCustomCell.h"
#import "LabelViewCell.h"

//: @implementation USERRegistCustomCell
@implementation LabelViewCell

//: - (void)initSubviews{
- (void)initSendSubviews{


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
    _titleLabel.textColor = [UIColor cell:[OfAllTimeData sharedInstance].kTextDateString];
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
    _arrowImageView.image = [UIImage imageNamed:[OfAllTimeData sharedInstance].kNameMonthString];
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
    _headerImageView.image = [UIImage imageNamed:[OfAllTimeData sharedInstance].kText_mainString];
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
    lineView.backgroundColor = [UIColor cell:[OfAllTimeData sharedInstance].kName_reservationValue];
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