
#import <Foundation/Foundation.h>

@interface VernalEquinoxData : NSObject

+ (instancetype)sharedInstance;

//: activity_register_next
@property (nonatomic, copy) NSString *kTitle_eyebrowName;

//: #52ACFC
@property (nonatomic, copy) NSString *kNameHouseJewelString;

//: register_avtivity3_nick
@property (nonatomic, copy) NSString *kContent_sharedString;

//: eeeeee
@property (nonatomic, copy) NSString *kName_posterString;

//: 输入不能为空
@property (nonatomic, copy) NSString *kNamePhotographyData;

@end

@implementation VernalEquinoxData

+ (instancetype)sharedInstance {
    static VernalEquinoxData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VernalEquinoxDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)VernalEquinoxDataToCache:(Byte *)data {
    int representative = data[0];
    Byte nessDeserve = data[1];
    int brownishYellowOff = data[2];
    for (int i = brownishYellowOff; i < brownishYellowOff + representative; i++) {
        int value = data[i] + nessDeserve;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[brownishYellowOff + representative] = 0;
    return data + brownishYellowOff;
}

- (NSString *)StringFromVernalEquinoxData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VernalEquinoxDataToCache:data]];
}

//: 输入不能为空
- (NSString *)kNamePhotographyData {
    if (!_kNamePhotographyData) {
		NSArray<NSNumber *> *origin = @[@18, @9, @12, @72, @202, @240, @144, @26, @123, @43, @141, @123, @223, @181, @138, @220, @124, @156, @219, @175, @132, @223, @122, @180, @219, @175, @177, @222, @160, @177, @25];
		NSData *data = [VernalEquinoxData VernalEquinoxDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNamePhotographyData = [self StringFromVernalEquinoxData:value];
    }
    return _kNamePhotographyData;
}

//: #52ACFC
- (NSString *)kNameHouseJewelString {
    if (!_kNameHouseJewelString) {
		NSArray<NSNumber *> *origin = @[@7, @15, @11, @223, @164, @21, @90, @29, @163, @149, @174, @20, @38, @35, @50, @52, @55, @52, @19];
		NSData *data = [VernalEquinoxData VernalEquinoxDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHouseJewelString = [self StringFromVernalEquinoxData:value];
    }
    return _kNameHouseJewelString;
}

//: register_avtivity3_nick
- (NSString *)kContent_sharedString {
    if (!_kContent_sharedString) {
		NSArray<NSNumber *> *origin = @[@23, @73, @8, @176, @218, @224, @61, @116, @41, @28, @30, @32, @42, @43, @28, @41, @22, @24, @45, @43, @32, @45, @32, @43, @48, @234, @22, @37, @32, @26, @34, @148];
		NSData *data = [VernalEquinoxData VernalEquinoxDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_sharedString = [self StringFromVernalEquinoxData:value];
    }
    return _kContent_sharedString;
}

//: activity_register_next
- (NSString *)kTitle_eyebrowName {
    if (!_kTitle_eyebrowName) {
		NSArray<NSNumber *> *origin = @[@22, @27, @10, @169, @170, @110, @124, @151, @225, @45, @70, @72, @89, @78, @91, @78, @89, @94, @68, @87, @74, @76, @78, @88, @89, @74, @87, @68, @83, @74, @93, @89, @221];
		NSData *data = [VernalEquinoxData VernalEquinoxDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_eyebrowName = [self StringFromVernalEquinoxData:value];
    }
    return _kTitle_eyebrowName;
}

//: eeeeee
- (NSString *)kName_posterString {
    if (!_kName_posterString) {
		NSArray<NSNumber *> *origin = @[@6, @42, @6, @188, @133, @253, @59, @59, @59, @59, @59, @59, @9];
		NSData *data = [VernalEquinoxData VernalEquinoxDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_posterString = [self StringFromVernalEquinoxData:value];
    }
    return _kName_posterString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WindowView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERInputNickNameWindowView.h"
#import "WindowView.h"

//: @interface USERInputNickNameWindowView ()
@interface WindowView ()

//: @end
@end

//: @implementation USERInputNickNameWindowView
@implementation WindowView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        //: self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);

        //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: disButton.frame = self.bounds;
        disButton.frame = self.bounds;
        //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [disButton addTarget:self action:@selector(indexTing) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:disButton];
        [self addSubview:disButton];


        //: UIView *backGroundView = [[UIView alloc] init];
        UIView *backGroundView = [[UIView alloc] init];
        //: backGroundView.backgroundColor = [UIColor whiteColor];
        backGroundView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:backGroundView];
        [self addSubview:backGroundView];
        //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.mas_equalTo(self);
            //: make.top.mas_equalTo(100);
            make.top.mas_equalTo(100);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            //: make.height.mas_equalTo(200);
            make.height.mas_equalTo(200);
        //: }];
        }];


        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont systemFontOfSize:16];
        titleLabel.font = [UIFont systemFontOfSize:16];
        //: titleLabel.textColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor blackColor];
        //: titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: [backGroundView addSubview:titleLabel];
        [backGroundView addSubview:titleLabel];
        //: _titleLabel = titleLabel;
        _titleLabel = titleLabel;
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(30);
            make.top.mas_offset(30);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_equalTo(-20);
            make.right.mas_equalTo(-20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _textField = [[UITextField alloc] init];
        _textField = [[UITextField alloc] init];
        //: _textField.placeholder = [DisplayLanguageManager getTextWithKey:@"register_avtivity3_nick"];
        _textField.placeholder = [MakeManager cell:[VernalEquinoxData sharedInstance].kContent_sharedString];
        //: [backGroundView addSubview:_textField];
        [backGroundView addSubview:_textField];
        //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UIView *lineView = [[UIView alloc] init];
        UIView *lineView = [[UIView alloc] init];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
        lineView.backgroundColor = [UIColor cell:[VernalEquinoxData sharedInstance].kName_posterString];
        //: [backGroundView addSubview:lineView];
        [backGroundView addSubview:lineView];
        //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(1.2);
            make.height.mas_equalTo(1.2);
        //: }];
        }];


        //: UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [knowButton setTitle:[DisplayLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [knowButton setTitle:[MakeManager cell:[VernalEquinoxData sharedInstance].kTitle_eyebrowName] forState:UIControlStateNormal];
        //: [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [knowButton addTarget:self action:@selector(knowButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [knowButton addTarget:self action:@selector(optionHouse) forControlEvents:UIControlEventTouchUpInside];
        //: knowButton.backgroundColor = [UIColor colorWithHexString:@"#52ACFC"];
        knowButton.backgroundColor = [UIColor cell:[VernalEquinoxData sharedInstance].kNameHouseJewelString];
        //: [backGroundView addSubview:knowButton];
        [backGroundView addSubview:knowButton];
        //: _dowmButton = knowButton;
        _dowmButton = knowButton;
        //: knowButton.layer.masksToBounds = YES;
        knowButton.layer.masksToBounds = YES;
        //: knowButton.layer.cornerRadius = 4;
        knowButton.layer.cornerRadius = 4;
        //: [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_offset(-20);
            make.right.mas_offset(-20);
            //: make.height.mas_equalTo(45);
            make.height.mas_equalTo(45);
        //: }];
        }];



//        UIImageView *bgimage = [[UIImageView alloc] init];
//        bgimage.userInteractionEnabled = YES;
//        bgimage.image = [UIImage imageNamed:@"mine_opinipn_bgimage"];
//        [self addSubview:bgimage];
//        [bgimage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.mas_equalTo(254);
//            make.height.mas_equalTo(278);
//            make.centerY.mas_equalTo(self);
//            make.centerX.mas_equalTo(self);
//        }];
//
//        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setImage:[UIImage imageNamed:@"mine_opinipn_close"] forState:UIControlStateNormal];
//        [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
//        [bgimage addSubview:closeBtn];
//        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(bgimage);
//            make.top.mas_equalTo(bgimage);
//            make.width.mas_equalTo(50);
//            make.height.mas_equalTo(50);
//        }];






    }
    //: return self;
    return self;
}

//: -(void)closeBtnClick{
-(void)last{
    //: [self dismissPicker];
    [self indexTing];
}

//: -(void)knowButtonClick{
-(void)optionHouse{

    //: if (_textField.text.length <= 0) {
    if (_textField.text.length <= 0) {
        //: [SVProgressHUD showMessage:@"输入不能为空".nim_localized];
        [SVProgressHUD firstTeam:[VernalEquinoxData sharedInstance].kNamePhotographyData.disable];
        //: return;
        return;
    }

    //: if (_block) {
    if (_block) {
        //: _block(_textField.text);
        _block(_textField.text);
    }
    //: [self dismissPicker];
    [self indexTing];
}

//: - (void)show{
- (void)decoy{
    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];
}

//: - (void)dismissPicker{
- (void)indexTing{

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];

}

//: -(void)clickKnowButton:(KnowBlock)block{
-(void)instanceButton:(KnowBlock)block{
    //: _block = block;
    _block = block;
}


//: @end
@end
