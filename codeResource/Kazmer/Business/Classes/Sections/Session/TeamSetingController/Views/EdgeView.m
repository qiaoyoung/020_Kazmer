
#import <Foundation/Foundation.h>

typedef struct {
    Byte ofMembership;
    Byte *respire;
    unsigned int bringHome;
	int weepExtra;
	int transformationFlow;
} StructWindowEnvelopeData;

@interface WindowEnvelopeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WindowEnvelopeData

+ (instancetype)sharedInstance {
    static WindowEnvelopeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WindowEnvelopeDataToByte:(StructWindowEnvelopeData *)data {
    for (int i = 0; i < data->bringHome; i++) {
        data->respire[i] ^= data->ofMembership;
    }
    data->respire[data->bringHome] = 0;
	if (data->bringHome >= 2) {
		data->weepExtra = data->respire[0];
		data->transformationFlow = data->respire[1];
	}
    return data->respire;
}

- (NSString *)StringFromWindowEnvelopeData:(StructWindowEnvelopeData *)data {
    return [NSString stringWithUTF8String:(char *)[self WindowEnvelopeDataToByte:data]];
}

//: 999999
- (NSString *)notiItemMessage {
    /* static */ NSString *notiItemMessage = nil;
    if (!notiItemMessage) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){56, (Byte []){1, 1, 1, 1, 1, 1, 215}, 6, 106, 80};
        notiItemMessage = [self StringFromWindowEnvelopeData:&value];
    }
    return notiItemMessage;
}

//: warm_prompt
- (NSString *)mKeyTitle {
    /* static */ NSString *mKeyTitle = nil;
    if (!mKeyTitle) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){128, (Byte []){247, 225, 242, 237, 223, 240, 242, 239, 237, 240, 244, 162}, 11, 93, 175};
        mKeyTitle = [self StringFromWindowEnvelopeData:&value];
    }
    return mKeyTitle;
}

//: #5D5F66
- (NSString *)userCommentClubValueFormat {
    /* static */ NSString *userCommentClubValueFormat = nil;
    if (!userCommentClubValueFormat) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){106, (Byte []){73, 95, 46, 95, 44, 92, 92, 216}, 7, 248, 232};
        userCommentClubValueFormat = [self StringFromWindowEnvelopeData:&value];
    }
    return userCommentClubValueFormat;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamStrengthenId {
    /* static */ NSString *dreamStrengthenId = nil;
    if (!dreamStrengthenId) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){147, (Byte []){240, 252, 253, 231, 242, 240, 231, 204, 231, 242, 244, 204, 245, 225, 242, 244, 254, 246, 253, 231, 204, 240, 242, 253, 240, 246, 255, 11}, 27, 99, 185};
        dreamStrengthenId = [self StringFromWindowEnvelopeData:&value];
    }
    return dreamStrengthenId;
}

//: #FF483D
- (NSString *)app_garlicText {
    /* static */ NSString *app_garlicText = nil;
    if (!app_garlicText) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){212, (Byte []){247, 146, 146, 224, 236, 231, 144, 131}, 7, 49, 32};
        app_garlicText = [self StringFromWindowEnvelopeData:&value];
    }
    return app_garlicText;
}

//: contact_tag_fragment_sure
- (NSString *)noti_scaleData {
    /* static */ NSString *noti_scaleData = nil;
    if (!noti_scaleData) {
        StructWindowEnvelopeData value = (StructWindowEnvelopeData){104, (Byte []){11, 7, 6, 28, 9, 11, 28, 55, 28, 9, 15, 55, 14, 26, 9, 15, 5, 13, 6, 28, 55, 27, 29, 26, 13, 182}, 25, 67, 228};
        noti_scaleData = [self StringFromWindowEnvelopeData:&value];
    }
    return noti_scaleData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EdgeView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "EdgeView.h"

//: @interface ZMONAlartView ()
@interface EdgeView ()

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

//: @implementation ZMONAlartView
@implementation EdgeView

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
        [self initShareMore];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initShareMore{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    //: tip.textColor = [UIColor blackColor];
    tip.textColor = [UIColor blackColor];
    //: tip.textAlignment = NSTextAlignmentCenter;
    tip.textAlignment = NSTextAlignmentCenter;
    //: tip.text = [FFFLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [PaintedNaturalLanguageTo exhibit:[[WindowEnvelopeData sharedInstance] mKeyTitle]];
    //: [_box addSubview:tip];
    [_box addSubview:tip];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);


}

//: - (void)reloadWithTitlename:(NSString *)name
- (void)daySize:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)rangeOff{

    //: [self endEditing:YES];
    [self endEditing:YES];
    //: self.speiceBackBlock(@"");
    self.speiceBackBlock(@"");

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"999999"];
        _titleLabel.textColor = [UIColor min:[[WindowEnvelopeData sharedInstance] notiItemMessage]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
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
        [_closeBtn setTitleColor:[UIColor min:[[WindowEnvelopeData sharedInstance] userCommentClubValueFormat]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[WindowEnvelopeData sharedInstance] dreamStrengthenId]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(rangeOff) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[WindowEnvelopeData sharedInstance] noti_scaleData]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor min:[[WindowEnvelopeData sharedInstance] app_garlicText]];
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
- (void)reply
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end