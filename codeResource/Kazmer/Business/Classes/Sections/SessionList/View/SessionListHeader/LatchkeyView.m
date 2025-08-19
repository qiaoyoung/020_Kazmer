
#import <Foundation/Foundation.h>

typedef struct {
    Byte colorImageRegnant;
    Byte *textMembership;
    unsigned int drinkFishing;
	int twistGenet;
	int potAdmit;
	int book;
} StructScramData;

@interface ScramData : NSObject

@end

@implementation ScramData

+ (Byte *)ScramDataToByte:(StructScramData *)data {
    for (int i = 0; i < data->drinkFishing; i++) {
        data->textMembership[i] ^= data->colorImageRegnant;
    }
    data->textMembership[data->drinkFishing] = 0;
	if (data->drinkFishing >= 3) {
		data->twistGenet = data->textMembership[0];
		data->potAdmit = data->textMembership[1];
		data->book = data->textMembership[2];
	}
    return data->textMembership;
}

+ (NSString *)StringFromScramData:(StructScramData *)data {
    return [NSString stringWithUTF8String:(char *)[self ScramDataToByte:data]];
}

//: sign_gold_title
+ (NSString *)main_minFormat {
    /* static */ NSString *main_minFormat = nil;
    if (!main_minFormat) {
        StructScramData value = (StructScramData){107, (Byte []){24, 2, 12, 5, 52, 12, 4, 7, 15, 52, 31, 2, 31, 7, 14, 58}, 15, 106, 99, 250};
        main_minFormat = [self StringFromScramData:&value];
    }
    return main_minFormat;
}

//: home_syetem_sign_back
+ (NSString *)notiThreshPointFormat {
    /* static */ NSString *notiThreshPointFormat = nil;
    if (!notiThreshPointFormat) {
        StructScramData value = (StructScramData){84, (Byte []){60, 59, 57, 49, 11, 39, 45, 49, 32, 49, 57, 11, 39, 61, 51, 58, 11, 54, 53, 55, 63, 199}, 21, 65, 221, 222};
        notiThreshPointFormat = [self StringFromScramData:&value];
    }
    return notiThreshPointFormat;
}

//: dialog_sign_now
+ (NSString *)showCountMessage {
    /* static */ NSString *showCountMessage = nil;
    if (!showCountMessage) {
        StructScramData value = (StructScramData){150, (Byte []){242, 255, 247, 250, 249, 241, 201, 229, 255, 241, 248, 201, 248, 249, 225, 31}, 15, 13, 131, 36};
        showCountMessage = [self StringFromScramData:&value];
    }
    return showCountMessage;
}

//: home_system_sign_close
+ (NSString *)dreamIsolateColorContent {
    /* static */ NSString *dreamIsolateColorContent = nil;
    if (!dreamIsolateColorContent) {
        StructScramData value = (StructScramData){127, (Byte []){23, 16, 18, 26, 32, 12, 6, 12, 11, 26, 18, 32, 12, 22, 24, 17, 32, 28, 19, 16, 12, 26, 37}, 22, 153, 164, 90};
        dreamIsolateColorContent = [self StringFromScramData:&value];
    }
    return dreamIsolateColorContent;
}

//: #EE4A5C
+ (NSString *)showEmployName {
    /* static */ NSString *showEmployName = nil;
    if (!showEmployName) {
        StructScramData value = (StructScramData){10, (Byte []){41, 79, 79, 62, 75, 63, 73, 78}, 7, 234, 132, 142};
        showEmployName = [self StringFromScramData:&value];
    }
    return showEmployName;
}

//: sign_keep_title
+ (NSString *)notiMessageKeyName {
    /* static */ NSString *notiMessageKeyName = nil;
    if (!notiMessageKeyName) {
        StructScramData value = (StructScramData){147, (Byte []){224, 250, 244, 253, 204, 248, 246, 246, 227, 204, 231, 250, 231, 255, 246, 201}, 15, 71, 226, 132};
        notiMessageKeyName = [self StringFromScramData:&value];
    }
    return notiMessageKeyName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  LatchkeyView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemSignNotificationSheet.h"
#import "LatchkeyView.h"

//: @interface NTESSystemSignNotificationSheet ()
@interface LatchkeyView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @end
@end

//: @implementation NTESSystemSignNotificationSheet
@implementation LatchkeyView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithTapBy:(CGRect)frame betweenWith:(NSDictionary *)dictionary{

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
        topImageView.image = [UIImage imageNamed:[ScramData notiThreshPointFormat]];
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
        //: title_1.text = [FFFLanguageManager getTextWithKey:@"sign_gold_title"];
        title_1.text = [PaintedNaturalLanguageTo exhibit:[ScramData main_minFormat]];
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
        //: title_2.text = [FFFLanguageManager getTextWithKey:@"sign_keep_title"];
        title_2.text = [PaintedNaturalLanguageTo exhibit:[ScramData notiMessageKeyName]];
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
        closeButton.backgroundColor = [UIColor min:[ScramData showEmployName]];
        //: [closeButton setTitle:[FFFLanguageManager getTextWithKey:@"dialog_sign_now"] forState:UIControlStateNormal];
        [closeButton setTitle:[PaintedNaturalLanguageTo exhibit:[ScramData showCountMessage]] forState:UIControlStateNormal];
        //: [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(signButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(tingText) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 18;
        closeButton.layer.cornerRadius = 18;
        //: closeButton.layer.borderColor = [UIColor colorWithHexString:@"#EE4A5C"].CGColor;
        closeButton.layer.borderColor = [UIColor min:[ScramData showEmployName]].CGColor;
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
        [close setImage:[UIImage imageNamed:[ScramData dreamIsolateColorContent]] forState:UIControlStateNormal];
        //: [close addTarget:self action:@selector(closeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [close addTarget:self action:@selector(handleView) forControlEvents:UIControlEventTouchUpInside];
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
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(optionColor)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [self addGestureRecognizer:singleRecognizer];
        [self addGestureRecognizer:singleRecognizer];

    }
    //: return self;
    return self;
}

//: -(void)signButtonClick{
-(void)tingText{
    //: [self dismissPicker];
    [self untilSearched];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signButtonClickDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeDelegate)]) {
        //: [self.delegate signButtonClickDelegate];
        [self.delegate changeDelegate];
    }
}


//: -(void)closeButtonClick{
-(void)handleView{
    //: [self dismissPicker];
    [self untilSearched];
}

//: -(void)handleSingleTapFrom{
-(void)optionColor{
    //: [self dismissPicker];
    [self untilSearched];
}

//: - (void)show{
- (void)user{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
        [self->_backView setModelSearchion:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)untilSearched{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setModelSearchion:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: @end
@end