
#import <Foundation/Foundation.h>

@interface RehabData : NSObject

+ (instancetype)sharedInstance;

//: user_profile_avtivity_remove_friend
@property (nonatomic, copy) NSString *m_producerFormat;

//: #4B43DE
@property (nonatomic, copy) NSString *k_changeMarkName;

//: #5D5F66
@property (nonatomic, copy) NSString *k_porterUrl;

//: report_next_select_delete
@property (nonatomic, copy) NSString *dream_commentMediaShowStr;

//: delete
@property (nonatomic, copy) NSString *k_evaluateId;

//: YES
@property (nonatomic, copy) NSString *mGuidanceStr;

//: #333333
@property (nonatomic, copy) NSString *kSuccessPropertyData;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *dream_speculationValue;

@end

@implementation RehabData

+ (instancetype)sharedInstance {
    static RehabData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RehabDataToCache:(Byte *)data {
    int cabin = data[0];
    int valueLoser = data[1];
    for (int i = 0; i < cabin / 2; i++) {
        int begin = valueLoser + i;
        int end = valueLoser + cabin - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[valueLoser + cabin] = 0;
    return data + valueLoser;
}

- (NSString *)StringFromRehabData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RehabDataToCache:data]];
}  

//: report_next_select_delete
- (NSString *)dream_commentMediaShowStr {
    if (!_dream_commentMediaShowStr) {
        Byte value[] = {25, 7, 97, 190, 244, 11, 246, 101, 116, 101, 108, 101, 100, 95, 116, 99, 101, 108, 101, 115, 95, 116, 120, 101, 110, 95, 116, 114, 111, 112, 101, 114, 255};
        _dream_commentMediaShowStr = [self StringFromRehabData:value];
    }
    return _dream_commentMediaShowStr;
}

//: YES
- (NSString *)mGuidanceStr {
    if (!_mGuidanceStr) {
        Byte value[] = {3, 5, 32, 95, 104, 83, 69, 89, 64};
        _mGuidanceStr = [self StringFromRehabData:value];
    }
    return _mGuidanceStr;
}

//: user_profile_avtivity_remove_friend
- (NSString *)m_producerFormat {
    if (!_m_producerFormat) {
        Byte value[] = {35, 3, 252, 100, 110, 101, 105, 114, 102, 95, 101, 118, 111, 109, 101, 114, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 11};
        _m_producerFormat = [self StringFromRehabData:value];
    }
    return _m_producerFormat;
}

//: contact_tag_fragment_cancel
- (NSString *)dream_speculationValue {
    if (!_dream_speculationValue) {
        Byte value[] = {27, 6, 130, 98, 145, 236, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 47};
        _dream_speculationValue = [self StringFromRehabData:value];
    }
    return _dream_speculationValue;
}

//: delete
- (NSString *)k_evaluateId {
    if (!_k_evaluateId) {
        Byte value[] = {6, 11, 249, 59, 172, 35, 15, 255, 230, 222, 123, 101, 116, 101, 108, 101, 100, 203};
        _k_evaluateId = [self StringFromRehabData:value];
    }
    return _k_evaluateId;
}

//: #333333
- (NSString *)kSuccessPropertyData {
    if (!_kSuccessPropertyData) {
        Byte value[] = {7, 11, 121, 63, 196, 13, 22, 248, 244, 66, 118, 51, 51, 51, 51, 51, 51, 35, 5};
        _kSuccessPropertyData = [self StringFromRehabData:value];
    }
    return _kSuccessPropertyData;
}

//: #4B43DE
- (NSString *)k_changeMarkName {
    if (!_k_changeMarkName) {
        Byte value[] = {7, 7, 198, 108, 50, 181, 40, 69, 68, 51, 52, 66, 52, 35, 95};
        _k_changeMarkName = [self StringFromRehabData:value];
    }
    return _k_changeMarkName;
}

//: #5D5F66
- (NSString *)k_porterUrl {
    if (!_k_porterUrl) {
        Byte value[] = {7, 11, 205, 78, 127, 248, 132, 4, 245, 175, 201, 54, 54, 70, 53, 68, 53, 35, 244};
        _k_porterUrl = [self StringFromRehabData:value];
    }
    return _k_porterUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarTimeView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "BarTimeView.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"

//: @interface ZMONReportDeleteView ()
@interface BarTimeView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONReportDeleteView
@implementation BarTimeView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initAnTap];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initAnTap{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor min:[RehabData sharedInstance].kSuccessPropertyData];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WatchLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [PaintedNaturalLanguageTo exhibit:[RehabData sharedInstance].dream_commentMediaShowStr];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)showAnimation
- (void)sessionAlready
{
    //: [self animationClose];
    [self impendentImage];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([RehabData sharedInstance].mGuidanceStr);
}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [WatchLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[RehabData sharedInstance].m_producerFormat];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(impendentImage) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor min:[RehabData sharedInstance].k_porterUrl] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[RehabData sharedInstance].dream_speculationValue] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(sessionAlready) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[RehabData sharedInstance].k_evaluateId] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[RehabData sharedInstance].k_changeMarkName];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)ting
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end
