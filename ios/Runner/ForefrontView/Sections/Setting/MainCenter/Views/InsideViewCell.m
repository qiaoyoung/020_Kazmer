
#import <Foundation/Foundation.h>

@interface MoleData : NSObject

+ (instancetype)sharedInstance;

//: back_white
@property (nonatomic, copy) NSString *kText_viewContent;

//: user_avatar
@property (nonatomic, copy) NSString *kTextShoppingString;

//: avatar
@property (nonatomic, copy) NSString *kTitle_violationNutValue;

//: #DF7055
@property (nonatomic, copy) NSString *kTitleSharedContent;

//: words
@property (nonatomic, copy) NSString *kTitle_targetString;

//: count
@property (nonatomic, copy) NSString *kText_reservationValue;

//: icon_redpackage_top
@property (nonatomic, copy) NSString *kTitleStepData;

//: user_nickname
@property (nonatomic, copy) NSString *kTitle_lastString;

//: amount
@property (nonatomic, copy) NSString *kTitle_cropSendString;

//: %@个红包，共%@元
@property (nonatomic, copy) NSString *kContent_grayData;

//: user_redpackage_prise
@property (nonatomic, copy) NSString *kNameConsumptionData;

//: #F1F1F1
@property (nonatomic, copy) NSString *kTitleWithName;

//: createtime
@property (nonatomic, copy) NSString *kTextDenseData;

//: nickname
@property (nonatomic, copy) NSString *kName_dataValue;

@end

@implementation MoleData

//: #F1F1F1
- (NSString *)kTitleWithName {
    if (!_kTitleWithName) {
		NSArray<NSString *> *origin = @[@"7", @"52", @"4", @"184", @"87", @"122", @"101", @"122", @"101", @"122", @"101", @"103"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleWithName = [self StringFromMoleData:value];
    }
    return _kTitleWithName;
}

//: user_nickname
- (NSString *)kTitle_lastString {
    if (!_kTitle_lastString) {
		NSArray<NSString *> *origin = @[@"13", @"80", @"4", @"71", @"197", @"195", @"181", @"194", @"175", @"190", @"185", @"179", @"187", @"190", @"177", @"189", @"181", @"137"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_lastString = [self StringFromMoleData:value];
    }
    return _kTitle_lastString;
}

+ (NSData *)MoleDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: amount
- (NSString *)kTitle_cropSendString {
    if (!_kTitle_cropSendString) {
		NSArray<NSString *> *origin = @[@"6", @"15", @"5", @"186", @"60", @"112", @"124", @"126", @"132", @"125", @"131", @"27"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_cropSendString = [self StringFromMoleData:value];
    }
    return _kTitle_cropSendString;
}

//: createtime
- (NSString *)kTextDenseData {
    if (!_kTextDenseData) {
		NSArray<NSString *> *origin = @[@"10", @"42", @"9", @"204", @"121", @"160", @"159", @"111", @"157", @"141", @"156", @"143", @"139", @"158", @"143", @"158", @"147", @"151", @"143", @"88"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextDenseData = [self StringFromMoleData:value];
    }
    return _kTextDenseData;
}

//: %@个红包，共%@元
- (NSString *)kContent_grayData {
    if (!_kContent_grayData) {
		NSArray<NSString *> *origin = @[@"22", @"73", @"10", @"131", @"163", @"238", @"24", @"131", @"76", @"153", @"110", @"137", @"45", @"1", @"243", @"48", @"3", @"235", @"46", @"213", @"206", @"56", @"5", @"213", @"46", @"206", @"250", @"110", @"137", @"46", @"206", @"204", @"32"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_grayData = [self StringFromMoleData:value];
    }
    return _kContent_grayData;
}

//: user_redpackage_prise
- (NSString *)kNameConsumptionData {
    if (!_kNameConsumptionData) {
		NSArray<NSString *> *origin = @[@"21", @"84", @"7", @"5", @"217", @"36", @"147", @"201", @"199", @"185", @"198", @"179", @"198", @"185", @"184", @"196", @"181", @"183", @"191", @"181", @"187", @"185", @"179", @"196", @"198", @"189", @"199", @"185", @"10"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameConsumptionData = [self StringFromMoleData:value];
    }
    return _kNameConsumptionData;
}

//: words
- (NSString *)kTitle_targetString {
    if (!_kTitle_targetString) {
		NSArray<NSString *> *origin = @[@"5", @"4", @"5", @"147", @"184", @"123", @"115", @"118", @"104", @"119", @"205"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_targetString = [self StringFromMoleData:value];
    }
    return _kTitle_targetString;
}

//: avatar
- (NSString *)kTitle_violationNutValue {
    if (!_kTitle_violationNutValue) {
		NSArray<NSString *> *origin = @[@"6", @"72", @"5", @"80", @"212", @"169", @"190", @"169", @"188", @"169", @"186", @"142"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_violationNutValue = [self StringFromMoleData:value];
    }
    return _kTitle_violationNutValue;
}

//: #DF7055
- (NSString *)kTitleSharedContent {
    if (!_kTitleSharedContent) {
		NSArray<NSString *> *origin = @[@"7", @"19", @"13", @"68", @"158", @"78", @"220", @"244", @"142", @"153", @"142", @"114", @"154", @"54", @"87", @"89", @"74", @"67", @"72", @"72", @"217"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSharedContent = [self StringFromMoleData:value];
    }
    return _kTitleSharedContent;
}

//: count
- (NSString *)kText_reservationValue {
    if (!_kText_reservationValue) {
		NSArray<NSString *> *origin = @[@"5", @"65", @"8", @"13", @"167", @"234", @"123", @"71", @"164", @"176", @"182", @"175", @"181", @"24"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_reservationValue = [self StringFromMoleData:value];
    }
    return _kText_reservationValue;
}

//: back_white
- (NSString *)kText_viewContent {
    if (!_kText_viewContent) {
		NSArray<NSString *> *origin = @[@"10", @"45", @"11", @"19", @"89", @"135", @"69", @"23", @"8", @"40", @"30", @"143", @"142", @"144", @"152", @"140", @"164", @"149", @"150", @"161", @"146", @"99"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_viewContent = [self StringFromMoleData:value];
    }
    return _kText_viewContent;
}

- (NSString *)StringFromMoleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MoleDataToCache:data]];
}

//: icon_redpackage_top
- (NSString *)kTitleStepData {
    if (!_kTitleStepData) {
		NSArray<NSString *> *origin = @[@"19", @"84", @"5", @"65", @"95", @"189", @"183", @"195", @"194", @"179", @"198", @"185", @"184", @"196", @"181", @"183", @"191", @"181", @"187", @"185", @"179", @"200", @"195", @"196", @"133"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleStepData = [self StringFromMoleData:value];
    }
    return _kTitleStepData;
}

- (Byte *)MoleDataToCache:(Byte *)data {
    int nonsolidColor = data[0];
    Byte everViolation = data[1];
    int jv = data[2];
    for (int i = jv; i < jv + nonsolidColor; i++) {
        int value = data[i] - everViolation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[jv + nonsolidColor] = 0;
    return data + jv;
}

+ (instancetype)sharedInstance {
    static MoleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: nickname
- (NSString *)kName_dataValue {
    if (!_kName_dataValue) {
		NSArray<NSString *> *origin = @[@"8", @"1", @"8", @"104", @"22", @"115", @"229", @"91", @"111", @"106", @"100", @"108", @"111", @"98", @"110", @"102", @"195"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_dataValue = [self StringFromMoleData:value];
    }
    return _kName_dataValue;
}

//: user_avatar
- (NSString *)kTextShoppingString {
    if (!_kTextShoppingString) {
		NSArray<NSString *> *origin = @[@"11", @"92", @"6", @"219", @"88", @"143", @"209", @"207", @"193", @"206", @"187", @"189", @"210", @"189", @"208", @"189", @"206", @"17"];
		NSData *data = [MoleData MoleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextShoppingString = [self StringFromMoleData:value];
    }
    return _kTextShoppingString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsideViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRedpackageDetailCell.h"
#import "InsideViewCell.h"

//: @implementation USERRedpackageDetailCell
@implementation InsideViewCell

//: -(void)backButtonClick{
-(void)click{

}

//: - (void)initSubviews{
- (void)initSendSubviews{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor cell:[MoleData sharedInstance].kTitleSharedContent];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice comeDownSuperphylum] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:[MoleData sharedInstance].kTitleStepData];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice comeDownSuperphylum]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:[MoleData sharedInstance].kText_viewContent] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice comeDownSuperphylum]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)show:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information comment:[MoleData sharedInstance].kTitle_lastString];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information comment:[MoleData sharedInstance].kTitle_targetString];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information comment:[MoleData sharedInstance].kTextShoppingString]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information comment:[MoleData sharedInstance].kText_reservationValue];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information comment:[MoleData sharedInstance].kTitle_cropSendString];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[MoleData sharedInstance].kContent_grayData,count,amount];

}

//: @end
@end







//: @implementation USERRedpackageDetailListCell
@implementation ShouldViewCell

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)show:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information comment:[MoleData sharedInstance].kTitle_violationNutValue]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information comment:[MoleData sharedInstance].kName_dataValue];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information comment:[MoleData sharedInstance].kTextDenseData];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information comment:[MoleData sharedInstance].kTitle_cropSendString]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}
//: -(void)initSubviews{
-(void)initSendSubviews{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor cell:[MoleData sharedInstance].kTitleWithName];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:[MoleData sharedInstance].kNameConsumptionData];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}

//: @end
@end