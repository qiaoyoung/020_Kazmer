
#import <Foundation/Foundation.h>

@interface FileData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FileData

//: sign_gold_title
- (NSString *)kTextRecentName {
    /* static */ NSString *kTextRecentName = nil;
    if (!kTextRecentName) {
		NSArray<NSString *> *origin = @[@"15", @"92", @"3", @"23", @"13", @"11", @"18", @"3", @"11", @"19", @"16", @"8", @"3", @"24", @"13", @"24", @"16", @"9", @"252"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRecentName = [self StringFromFileData:value];
    }
    return kTextRecentName;
}

+ (NSData *)FileDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (NSString *)StringFromFileData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FileDataToCache:data]];
}

//: home_syetem_sign_back
- (NSString *)kName_violationData {
    /* static */ NSString *kName_violationData = nil;
    if (!kName_violationData) {
		NSArray<NSString *> *origin = @[@"21", @"17", @"7", @"187", @"120", @"29", @"35", @"87", @"94", @"92", @"84", @"78", @"98", @"104", @"84", @"99", @"84", @"92", @"78", @"98", @"88", @"86", @"93", @"78", @"81", @"80", @"82", @"90", @"201"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_violationData = [self StringFromFileData:value];
    }
    return kName_violationData;
}

//: sign_keep_title
- (NSString *)kText_violenceName {
    /* static */ NSString *kText_violenceName = nil;
    if (!kText_violenceName) {
		NSArray<NSString *> *origin = @[@"15", @"53", @"5", @"143", @"114", @"62", @"52", @"50", @"57", @"42", @"54", @"48", @"48", @"59", @"42", @"63", @"52", @"63", @"55", @"48", @"11"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_violenceName = [self StringFromFileData:value];
    }
    return kText_violenceName;
}

//: home_system_sign_close
- (NSString *)kContentCivilianValue {
    /* static */ NSString *kContentCivilianValue = nil;
    if (!kContentCivilianValue) {
		NSArray<NSString *> *origin = @[@"22", @"44", @"7", @"160", @"70", @"50", @"114", @"60", @"67", @"65", @"57", @"51", @"71", @"77", @"71", @"72", @"57", @"65", @"51", @"71", @"61", @"59", @"66", @"51", @"55", @"64", @"67", @"71", @"57", @"190"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentCivilianValue = [self StringFromFileData:value];
    }
    return kContentCivilianValue;
}

//: dialog_sign_now
- (NSString *)kNameBridgeString {
    /* static */ NSString *kNameBridgeString = nil;
    if (!kNameBridgeString) {
		NSArray<NSString *> *origin = @[@"15", @"69", @"8", @"220", @"3", @"250", @"26", @"97", @"31", @"36", @"28", @"39", @"42", @"34", @"26", @"46", @"36", @"34", @"41", @"26", @"41", @"42", @"50", @"17"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameBridgeString = [self StringFromFileData:value];
    }
    return kNameBridgeString;
}

- (Byte *)FileDataToCache:(Byte *)data {
    int doingFrame = data[0];
    Byte fruitage = data[1];
    int raw = data[2];
    for (int i = raw; i < raw + doingFrame; i++) {
        int value = data[i] + fruitage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[raw + doingFrame] = 0;
    return data + raw;
}

//: #EE4A5C
- (NSString *)kNameMonthData {
    /* static */ NSString *kNameMonthData = nil;
    if (!kNameMonthData) {
		NSArray<NSString *> *origin = @[@"7", @"35", @"10", @"10", @"131", @"202", @"150", @"25", @"150", @"75", @"0", @"34", @"34", @"17", @"30", @"18", @"32", @"184"];
		NSData *data = [FileData FileDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameMonthData = [self StringFromFileData:value];
    }
    return kNameMonthData;
}

+ (instancetype)sharedInstance {
    static FileData *instance = nil;
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
//  LabelView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSystemSignNotificationSheet.h"
#import "LabelView.h"

//: @interface USERSystemSignNotificationSheet ()
@interface LabelView ()
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @end
@end

//: @implementation USERSystemSignNotificationSheet
@implementation LabelView

//: -(void)handleSingleTapFrom{
-(void)tapOn{
    //: [self dismissPicker];
    [self indexTing];
}

//: - (void)dismissPicker{
- (void)indexTing{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setComplete:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}


//: -(void)closeButtonClick{
-(void)cellMedia{
    //: [self dismissPicker];
    [self indexTing];
}

//: -(void)signButtonClick{
-(void)colorSelect{
    //: [self dismissPicker];
    [self indexTing];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signButtonClickDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(searchedHeight)]) {
        //: [self.delegate signButtonClickDelegate];
        [self.delegate searchedHeight];
    }
}

//: - (void)show{
- (void)canBy{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
        [self->_backView setComplete:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
    //: }];
    }];
}

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithCenter:(CGRect)frame with:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;
        CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];
        //: _backView.layer.cornerRadius = 8.2;
        _backView.layer.cornerRadius = 8.2;
        //: _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        //: _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        //: _backView.layer.shadowOpacity = 0.5;
        _backView.layer.shadowOpacity = 0.5;

        //: UIImageView *topImageView = [[UIImageView alloc] init];
        UIImageView *topImageView = [[UIImageView alloc] init];
        //: topImageView.userInteractionEnabled = YES;
        topImageView.userInteractionEnabled = YES;
        //: topImageView.image = [UIImage imageNamed:@"home_syetem_sign_back"];
        topImageView.image = [UIImage imageNamed:[[FileData sharedInstance] kName_violationData]];
        //: [_backView addSubview:topImageView];
        [_backView addSubview:topImageView];
        //: [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.width.mas_equalTo(_backView.mas_width);
            make.width.mas_equalTo(_backView.mas_width);
            //: make.height.mas_equalTo(_backView.mas_height);
            make.height.mas_equalTo(_backView.mas_height);
        //: }];
        }];


        //: UILabel *title_1 = [[UILabel alloc] init];
        UILabel *title_1 = [[UILabel alloc] init];
        //: title_1.textColor = [UIColor whiteColor];
        title_1.textColor = [UIColor whiteColor];
        //: title_1.font = [UIFont boldSystemFontOfSize:25];
        title_1.font = [UIFont boldSystemFontOfSize:25];
        //: title_1.textAlignment = NSTextAlignmentCenter;
        title_1.textAlignment = NSTextAlignmentCenter;
        //: title_1.text = [DisplayLanguageManager getTextWithKey:@"sign_gold_title"];
        title_1.text = [MakeManager cell:[[FileData sharedInstance] kTextRecentName]];
        //: [topImageView addSubview:title_1];
        [topImageView addSubview:title_1];
        //: [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(20);
            make.top.mas_offset(20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *title_2 = [[UILabel alloc] init];
        UILabel *title_2 = [[UILabel alloc] init];
        //: title_2.textColor = [UIColor whiteColor];
        title_2.textColor = [UIColor whiteColor];
        //: title_2.textAlignment = NSTextAlignmentCenter;
        title_2.textAlignment = NSTextAlignmentCenter;
        //: title_2.font = [UIFont boldSystemFontOfSize:15];
        title_2.font = [UIFont boldSystemFontOfSize:15];
        //: title_2.text = [DisplayLanguageManager getTextWithKey:@"sign_keep_title"];
        title_2.text = [MakeManager cell:[[FileData sharedInstance] kText_violenceName]];
        //: [topImageView addSubview:title_2];
        [topImageView addSubview:title_2];
        //: [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];




        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        //: closeButton.backgroundColor = [UIColor colorWithHexString:@"#EE4A5C"];
        closeButton.backgroundColor = [UIColor cell:[[FileData sharedInstance] kNameMonthData]];
        //: [closeButton setTitle:[DisplayLanguageManager getTextWithKey:@"dialog_sign_now"] forState:UIControlStateNormal];
        [closeButton setTitle:[MakeManager cell:[[FileData sharedInstance] kNameBridgeString]] forState:UIControlStateNormal];
        //: [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(signButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(colorSelect) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 18;
        closeButton.layer.cornerRadius = 18;
        //: closeButton.layer.borderColor = [UIColor colorWithHexString:@"#EE4A5C"].CGColor;
        closeButton.layer.borderColor = [UIColor cell:[[FileData sharedInstance] kNameMonthData]].CGColor;
        //: closeButton.layer.borderWidth = 1.4;
        closeButton.layer.borderWidth = 1.4;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];


        //: UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [close setImage:[UIImage imageNamed:@"home_system_sign_close"] forState:UIControlStateNormal];
        [close setImage:[UIImage imageNamed:[[FileData sharedInstance] kContentCivilianValue]] forState:UIControlStateNormal];
        //: [close addTarget:self action:@selector(closeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [close addTarget:self action:@selector(cellMedia) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:close];
        [self addSubview:close];
        //: [close mas_makeConstraints:^(MASConstraintMaker *make) {
        [close mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            //: make.width.mas_equalTo(34);
            make.width.mas_equalTo(34);
            //: make.height.mas_equalTo(34);
            make.height.mas_equalTo(34);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];



        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOn)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [self addGestureRecognizer:singleRecognizer];
        [self addGestureRecognizer:singleRecognizer];

    }
    //: return self;
    return self;
}

//: @end
@end
