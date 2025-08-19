
#import <Foundation/Foundation.h>

typedef struct {
    Byte consultant;
    Byte *distinctive;
    unsigned int rumenPlace;
	int terriblyImage;
	int markBoomUp;
} StructDuringSkyData;

@interface DuringSkyData : NSObject

+ (instancetype)sharedInstance;

//: user_avatar
@property (nonatomic, copy) NSString *main_strangeValue;

//: #F1F1F1
@property (nonatomic, copy) NSString *main_ployValue;

//: user_redpackage_prise
@property (nonatomic, copy) NSString *show_pressedFormat;

//: avatar
@property (nonatomic, copy) NSString *mainSimplyValue;

//: count
@property (nonatomic, copy) NSString *k_evaluateMessage;

//: createtime
@property (nonatomic, copy) NSString *showLanceEvolveName;

//: user_nickname
@property (nonatomic, copy) NSString *dreamShouldValue;

//: #DF7055
@property (nonatomic, copy) NSString *notiScaleIdent;

//: icon_redpackage_top
@property (nonatomic, copy) NSString *main_destinationMsg;

//: nickname
@property (nonatomic, copy) NSString *notiSkiUreaName;

//: %@个红包，共%@元
@property (nonatomic, copy) NSString *dreamRegnantPath;

//: words
@property (nonatomic, copy) NSString *appDuringUrl;

//: amount
@property (nonatomic, copy) NSString *userEconomistFormat;

//: back_white
@property (nonatomic, copy) NSString *notiMaxPath;

@end

@implementation DuringSkyData

+ (instancetype)sharedInstance {
    static DuringSkyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DuringSkyDataToByte:(StructDuringSkyData *)data {
    for (int i = 0; i < data->rumenPlace; i++) {
        data->distinctive[i] ^= data->consultant;
    }
    data->distinctive[data->rumenPlace] = 0;
	if (data->rumenPlace >= 2) {
		data->terriblyImage = data->distinctive[0];
		data->markBoomUp = data->distinctive[1];
	}
    return data->distinctive;
}

- (NSString *)StringFromDuringSkyData:(StructDuringSkyData *)data {
    return [NSString stringWithUTF8String:(char *)[self DuringSkyDataToByte:data]];
}

//: createtime
- (NSString *)showLanceEvolveName {
    if (!_showLanceEvolveName) {
        StructDuringSkyData value = (StructDuringSkyData){224, (Byte []){131, 146, 133, 129, 148, 133, 148, 137, 141, 133, 191}, 10, 134, 4};
        _showLanceEvolveName = [self StringFromDuringSkyData:&value];
    }
    return _showLanceEvolveName;
}

//: count
- (NSString *)k_evaluateMessage {
    if (!_k_evaluateMessage) {
        StructDuringSkyData value = (StructDuringSkyData){223, (Byte []){188, 176, 170, 177, 171, 215}, 5, 4, 190};
        _k_evaluateMessage = [self StringFromDuringSkyData:&value];
    }
    return _k_evaluateMessage;
}

//: #F1F1F1
- (NSString *)main_ployValue {
    if (!_main_ployValue) {
        StructDuringSkyData value = (StructDuringSkyData){52, (Byte []){23, 114, 5, 114, 5, 114, 5, 168}, 7, 172, 216};
        _main_ployValue = [self StringFromDuringSkyData:&value];
    }
    return _main_ployValue;
}

//: #DF7055
- (NSString *)notiScaleIdent {
    if (!_notiScaleIdent) {
        StructDuringSkyData value = (StructDuringSkyData){127, (Byte []){92, 59, 57, 72, 79, 74, 74, 92}, 7, 30, 70};
        _notiScaleIdent = [self StringFromDuringSkyData:&value];
    }
    return _notiScaleIdent;
}

//: user_avatar
- (NSString *)main_strangeValue {
    if (!_main_strangeValue) {
        StructDuringSkyData value = (StructDuringSkyData){65, (Byte []){52, 50, 36, 51, 30, 32, 55, 32, 53, 32, 51, 26}, 11, 151, 153};
        _main_strangeValue = [self StringFromDuringSkyData:&value];
    }
    return _main_strangeValue;
}

//: back_white
- (NSString *)notiMaxPath {
    if (!_notiMaxPath) {
        StructDuringSkyData value = (StructDuringSkyData){89, (Byte []){59, 56, 58, 50, 6, 46, 49, 48, 45, 60, 50}, 10, 181, 158};
        _notiMaxPath = [self StringFromDuringSkyData:&value];
    }
    return _notiMaxPath;
}

//: nickname
- (NSString *)notiSkiUreaName {
    if (!_notiSkiUreaName) {
        StructDuringSkyData value = (StructDuringSkyData){102, (Byte []){8, 15, 5, 13, 8, 7, 11, 3, 121}, 8, 30, 125};
        _notiSkiUreaName = [self StringFromDuringSkyData:&value];
    }
    return _notiSkiUreaName;
}

//: words
- (NSString *)appDuringUrl {
    if (!_appDuringUrl) {
        StructDuringSkyData value = (StructDuringSkyData){32, (Byte []){87, 79, 82, 68, 83, 86}, 5, 2, 126};
        _appDuringUrl = [self StringFromDuringSkyData:&value];
    }
    return _appDuringUrl;
}

//: amount
- (NSString *)userEconomistFormat {
    if (!_userEconomistFormat) {
        StructDuringSkyData value = (StructDuringSkyData){140, (Byte []){237, 225, 227, 249, 226, 248, 63}, 6, 46, 80};
        _userEconomistFormat = [self StringFromDuringSkyData:&value];
    }
    return _userEconomistFormat;
}

//: avatar
- (NSString *)mainSimplyValue {
    if (!_mainSimplyValue) {
        StructDuringSkyData value = (StructDuringSkyData){43, (Byte []){74, 93, 74, 95, 74, 89, 215}, 6, 170, 248};
        _mainSimplyValue = [self StringFromDuringSkyData:&value];
    }
    return _mainSimplyValue;
}

//: icon_redpackage_top
- (NSString *)main_destinationMsg {
    if (!_main_destinationMsg) {
        StructDuringSkyData value = (StructDuringSkyData){135, (Byte []){238, 228, 232, 233, 216, 245, 226, 227, 247, 230, 228, 236, 230, 224, 226, 216, 243, 232, 247, 207}, 19, 153, 74};
        _main_destinationMsg = [self StringFromDuringSkyData:&value];
    }
    return _main_destinationMsg;
}

//: %@个红包，共%@元
- (NSString *)dreamRegnantPath {
    if (!_dreamRegnantPath) {
        StructDuringSkyData value = (StructDuringSkyData){243, (Byte []){214, 179, 23, 75, 89, 20, 73, 81, 22, 127, 118, 28, 79, 127, 22, 118, 66, 214, 179, 22, 118, 112, 139}, 22, 173, 80};
        _dreamRegnantPath = [self StringFromDuringSkyData:&value];
    }
    return _dreamRegnantPath;
}

//: user_redpackage_prise
- (NSString *)show_pressedFormat {
    if (!_show_pressedFormat) {
        StructDuringSkyData value = (StructDuringSkyData){63, (Byte []){74, 76, 90, 77, 96, 77, 90, 91, 79, 94, 92, 84, 94, 88, 90, 96, 79, 77, 86, 76, 90, 68}, 21, 211, 127};
        _show_pressedFormat = [self StringFromDuringSkyData:&value];
    }
    return _show_pressedFormat;
}

//: user_nickname
- (NSString *)dreamShouldValue {
    if (!_dreamShouldValue) {
        StructDuringSkyData value = (StructDuringSkyData){243, (Byte []){134, 128, 150, 129, 172, 157, 154, 144, 152, 157, 146, 158, 150, 223}, 13, 183, 4};
        _dreamShouldValue = [self StringFromDuringSkyData:&value];
    }
    return _dreamShouldValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelEventView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "ModelEventView.h"

//: @implementation NTESRedpackageDetailCell
@implementation ModelEventView

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor min:[DuringSkyData sharedInstance].notiScaleIdent];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice tingHeight] + 10);
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
    imageBack.image = [UIImage imageNamed:[DuringSkyData sharedInstance].main_destinationMsg];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice tingHeight]);
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
    [_backButton setImage:[UIImage imageNamed:[DuringSkyData sharedInstance].notiMaxPath] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice tingHeight]);
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
-(void)showInformation:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information record:[DuringSkyData sharedInstance].dreamShouldValue];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information record:[DuringSkyData sharedInstance].appDuringUrl];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information record:[DuringSkyData sharedInstance].main_strangeValue]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information record:[DuringSkyData sharedInstance].k_evaluateMessage];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information record:[DuringSkyData sharedInstance].userEconomistFormat];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[DuringSkyData sharedInstance].dreamRegnantPath,count,amount];

}

//: -(void)backButtonClick{
-(void)scaleValue{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation EdgeViewCell

//: -(void)initSubviews{
-(void)initChiaroscuroQuick{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor min:[DuringSkyData sharedInstance].main_ployValue];
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
    _praiseImage.image = [UIImage imageNamed:[DuringSkyData sharedInstance].show_pressedFormat];
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
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)showInformation:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information record:[DuringSkyData sharedInstance].mainSimplyValue]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information record:[DuringSkyData sharedInstance].notiSkiUreaName];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information record:[DuringSkyData sharedInstance].showLanceEvolveName];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information record:[DuringSkyData sharedInstance].userEconomistFormat]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end