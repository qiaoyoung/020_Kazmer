
#import <Foundation/Foundation.h>

typedef struct {
    Byte everythingOrigin;
    Byte *fatigueDeadline;
    unsigned int originStreak;
	int tableMuscle;
} StructAfterwardData;

@interface AfterwardData : NSObject

@end

@implementation AfterwardData

+ (Byte *)AfterwardDataToByte:(StructAfterwardData *)data {
    for (int i = 0; i < data->originStreak; i++) {
        data->fatigueDeadline[i] ^= data->everythingOrigin;
    }
    data->fatigueDeadline[data->originStreak] = 0;
	if (data->originStreak >= 1) {
		data->tableMuscle = data->fatigueDeadline[0];
	}
    return data->fatigueDeadline;
}

+ (NSString *)StringFromAfterwardData:(StructAfterwardData *)data {
    return [NSString stringWithUTF8String:(char *)[self AfterwardDataToByte:data]];
}

//: report_reasons7
+ (NSString *)mainFormatMsg {
    /* static */ NSString *mainFormatMsg = nil;
    if (!mainFormatMsg) {
        StructAfterwardData value = (StructAfterwardData){96, (Byte []){18, 5, 16, 15, 18, 20, 63, 18, 5, 1, 19, 15, 14, 19, 87, 178}, 15, 15};
        mainFormatMsg = [self StringFromAfterwardData:&value];
    }
    return mainFormatMsg;
}

//: icon_accessory_normal
+ (NSString *)dream_showId {
    /* static */ NSString *dream_showId = nil;
    if (!dream_showId) {
        StructAfterwardData value = (StructAfterwardData){97, (Byte []){8, 2, 14, 15, 62, 0, 2, 2, 4, 18, 18, 14, 19, 24, 62, 15, 14, 19, 12, 0, 13, 64}, 21, 192};
        dream_showId = [self StringFromAfterwardData:&value];
    }
    return dream_showId;
}

//: contact_tag_fragment_sure
+ (NSString *)k_primaryText {
    /* static */ NSString *k_primaryText = nil;
    if (!k_primaryText) {
        StructAfterwardData value = (StructAfterwardData){37, (Byte []){70, 74, 75, 81, 68, 70, 81, 122, 81, 68, 66, 122, 67, 87, 68, 66, 72, 64, 75, 81, 122, 86, 80, 87, 64, 38}, 25, 125};
        k_primaryText = [self StringFromAfterwardData:&value];
    }
    return k_primaryText;
}

//: report_reasons9
+ (NSString *)kCharterKey {
    /* static */ NSString *kCharterKey = nil;
    if (!kCharterKey) {
        StructAfterwardData value = (StructAfterwardData){230, (Byte []){148, 131, 150, 137, 148, 146, 185, 148, 131, 135, 149, 137, 136, 149, 223, 8}, 15, 42};
        kCharterKey = [self StringFromAfterwardData:&value];
    }
    return kCharterKey;
}

//: #5D5F66
+ (NSString *)dreamCloudUrl {
    /* static */ NSString *dreamCloudUrl = nil;
    if (!dreamCloudUrl) {
        StructAfterwardData value = (StructAfterwardData){27, (Byte []){56, 46, 95, 46, 93, 45, 45, 58}, 7, 136};
        dreamCloudUrl = [self StringFromAfterwardData:&value];
    }
    return dreamCloudUrl;
}

//: report_Tip
+ (NSString *)app_imageId {
    /* static */ NSString *app_imageId = nil;
    if (!app_imageId) {
        StructAfterwardData value = (StructAfterwardData){115, (Byte []){1, 22, 3, 28, 1, 7, 44, 39, 26, 3, 182}, 10, 201};
        app_imageId = [self StringFromAfterwardData:&value];
    }
    return app_imageId;
}

//: report_reasons6
+ (NSString *)main_closeMedalId {
    /* static */ NSString *main_closeMedalId = nil;
    if (!main_closeMedalId) {
        StructAfterwardData value = (StructAfterwardData){118, (Byte []){4, 19, 6, 25, 4, 2, 41, 4, 19, 23, 5, 25, 24, 5, 64, 157}, 15, 157};
        main_closeMedalId = [self StringFromAfterwardData:&value];
    }
    return main_closeMedalId;
}

//: contact_tag_fragment_cancel
+ (NSString *)dreamScramFormat {
    /* static */ NSString *dreamScramFormat = nil;
    if (!dreamScramFormat) {
        StructAfterwardData value = (StructAfterwardData){115, (Byte []){16, 28, 29, 7, 18, 16, 7, 44, 7, 18, 20, 44, 21, 1, 18, 20, 30, 22, 29, 7, 44, 16, 18, 29, 16, 22, 31, 64}, 27, 186};
        dreamScramFormat = [self StringFromAfterwardData:&value];
    }
    return dreamScramFormat;
}

//: #999999
+ (NSString *)dreamEaterShowId {
    /* static */ NSString *dreamEaterShowId = nil;
    if (!dreamEaterShowId) {
        StructAfterwardData value = (StructAfterwardData){101, (Byte []){70, 92, 92, 92, 92, 92, 92, 205}, 7, 153};
        dreamEaterShowId = [self StringFromAfterwardData:&value];
    }
    return dreamEaterShowId;
}

//: #333333
+ (NSString *)show_conventUrl {
    /* static */ NSString *show_conventUrl = nil;
    if (!show_conventUrl) {
        StructAfterwardData value = (StructAfterwardData){118, (Byte []){85, 69, 69, 69, 69, 69, 69, 190}, 7, 237};
        show_conventUrl = [self StringFromAfterwardData:&value];
    }
    return show_conventUrl;
}

//: report_Content
+ (NSString *)mainUreaFlowFormat {
    /* static */ NSString *mainUreaFlowFormat = nil;
    if (!mainUreaFlowFormat) {
        StructAfterwardData value = (StructAfterwardData){41, (Byte []){91, 76, 89, 70, 91, 93, 118, 106, 70, 71, 93, 76, 71, 93, 232}, 14, 180};
        mainUreaFlowFormat = [self StringFromAfterwardData:&value];
    }
    return mainUreaFlowFormat;
}

//: icon_accessory_selected
+ (NSString *)k_curIdent {
    /* static */ NSString *k_curIdent = nil;
    if (!k_curIdent) {
        StructAfterwardData value = (StructAfterwardData){110, (Byte []){7, 13, 1, 0, 49, 15, 13, 13, 11, 29, 29, 1, 28, 23, 49, 29, 11, 2, 11, 13, 26, 11, 10, 232}, 23, 116};
        k_curIdent = [self StringFromAfterwardData:&value];
    }
    return k_curIdent;
}

//: report_reasons10
+ (NSString *)app_shouldPath {
    /* static */ NSString *app_shouldPath = nil;
    if (!app_shouldPath) {
        StructAfterwardData value = (StructAfterwardData){192, (Byte []){178, 165, 176, 175, 178, 180, 159, 178, 165, 161, 179, 175, 174, 179, 241, 240, 40}, 16, 157};
        app_shouldPath = [self StringFromAfterwardData:&value];
    }
    return app_shouldPath;
}

//: #4B43DE
+ (NSString *)app_successName {
    /* static */ NSString *app_successName = nil;
    if (!app_successName) {
        StructAfterwardData value = (StructAfterwardData){26, (Byte []){57, 46, 88, 46, 41, 94, 95, 13}, 7, 169};
        app_successName = [self StringFromAfterwardData:&value];
    }
    return app_successName;
}

//: report_reasons8
+ (NSString *)m_scramId {
    /* static */ NSString *m_scramId = nil;
    if (!m_scramId) {
        StructAfterwardData value = (StructAfterwardData){253, (Byte []){143, 152, 141, 146, 143, 137, 162, 143, 152, 156, 142, 146, 147, 142, 197, 35}, 15, 130};
        m_scramId = [self StringFromAfterwardData:&value];
    }
    return m_scramId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TranslateShowView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONTranslateView.h"
#import "TranslateShowView.h"

//: @interface ZMONTranslateView ()
@interface TranslateShowView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;

//: @property (nonatomic,strong) NSArray *selectButtons;
@property (nonatomic,strong) NSArray *selectButtons;
//: @property (nonatomic,assign) NSInteger index;
@property (nonatomic,assign) NSInteger index;

//: @end
@end

//: @implementation ZMONTranslateView
@implementation TranslateShowView

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
        [self initSound];

        //: self.selectButtons = @[[FFFLanguageManager getTextWithKey:@"report_reasons7"],[FFFLanguageManager getTextWithKey:@"report_reasons8"],[FFFLanguageManager getTextWithKey:@"report_reasons9"],[FFFLanguageManager getTextWithKey:@"report_reasons10"],[FFFLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[PaintedNaturalLanguageTo exhibit:[AfterwardData mainFormatMsg]],[PaintedNaturalLanguageTo exhibit:[AfterwardData m_scramId]],[PaintedNaturalLanguageTo exhibit:[AfterwardData kCharterKey]],[PaintedNaturalLanguageTo exhibit:[AfterwardData app_shouldPath]],[PaintedNaturalLanguageTo exhibit:[AfterwardData main_closeMedalId]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initSound{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    //: labsub.font = [UIFont systemFontOfSize:12.f];
    labsub.font = [UIFont systemFontOfSize:12.f];
    //: labsub.textColor = [UIColor colorWithHexString:@"#999999"];
    labsub.textColor = [UIColor min:[AfterwardData dreamEaterShowId]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [FFFLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [PaintedNaturalLanguageTo exhibit:[AfterwardData app_imageId]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[AfterwardData mainUreaFlowFormat]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)handleReason:(UIButton *)sender
- (void)toses:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if(sender.selected){
    if(sender.selected){
        //: self.index = sender.tag;
        self.index = sender.tag;
    }

}

//: - (UIView *)buttonBox
- (UIView *)buttonBox
{
    //: if(!_buttonBox){
    if(!_buttonBox){
        //: _buttonBox = [[UIView alloc]init];
        _buttonBox = [[UIView alloc]init];

        //: UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn1 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn1 addTarget:self action:@selector(toses:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn1 setImage:[UIImage imageNamed:[AfterwardData dream_showId]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[AfterwardData k_curIdent]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[FFFLanguageManager getTextWithKey:@"report_reasons7"] forState:UIControlStateNormal];
        [Btn1 setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData mainFormatMsg]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor min:[AfterwardData show_conventUrl]] forState:UIControlStateNormal];
        //: Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn1];
        [_buttonBox addSubview:Btn1];
        //: Btn1.tag = 0;
        Btn1.tag = 0;


        //: UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn2 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn2 addTarget:self action:@selector(toses:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn2 setImage:[UIImage imageNamed:[AfterwardData dream_showId]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[AfterwardData k_curIdent]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[FFFLanguageManager getTextWithKey:@"report_reasons8"] forState:UIControlStateNormal];
        [Btn2 setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData m_scramId]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor min:[AfterwardData show_conventUrl]] forState:UIControlStateNormal];
        //: Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn2];
        [_buttonBox addSubview:Btn2];
        //: Btn2.tag = 1;
        Btn2.tag = 1;

        //: UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn3 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn3 addTarget:self action:@selector(toses:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn3 setImage:[UIImage imageNamed:[AfterwardData dream_showId]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[AfterwardData k_curIdent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[FFFLanguageManager getTextWithKey:@"report_reasons9"] forState:UIControlStateNormal];
        [Btn3 setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData kCharterKey]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor min:[AfterwardData show_conventUrl]] forState:UIControlStateNormal];
        //: Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn3.tag = 2;
        Btn3.tag = 2;

        //: UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn4 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn4 addTarget:self action:@selector(toses:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn4 setImage:[UIImage imageNamed:[AfterwardData dream_showId]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[AfterwardData k_curIdent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[FFFLanguageManager getTextWithKey:@"report_reasons10"] forState:UIControlStateNormal];
        [Btn4 setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData app_shouldPath]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor min:[AfterwardData show_conventUrl]] forState:UIControlStateNormal];
        //: Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn4.tag = 3;
        Btn4.tag = 3;

        //: UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn5 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn5 addTarget:self action:@selector(toses:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn5 setImage:[UIImage imageNamed:[AfterwardData dream_showId]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[AfterwardData k_curIdent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[FFFLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn5 setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData main_closeMedalId]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor min:[AfterwardData show_conventUrl]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
    }
    //: return _buttonBox;
    return _buttonBox;
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
        [_closeBtn setTitleColor:[UIColor min:[AfterwardData dreamCloudUrl]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData dreamScramFormat]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[AfterwardData k_primaryText]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[AfterwardData app_successName]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}
//- (UIButton *)closeBtn {
//    if (!_closeBtn) {
//        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
//        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _closeBtn.layer.borderWidth = 0.5;
//        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
//        _closeBtn.layer.cornerRadius = 10;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
//    }
//    return _closeBtn;
//}
//
//- (UIButton *)sureBtn {
//    if (!_sureBtn) {
//        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
//        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//        [_sureBtn setTitle:LangKey(@"contact_tag_fragment_sure") forState:UIControlStateNormal];
//        _sureBtn.backgroundColor = ThemeColor;
//        _sureBtn.layer.cornerRadius = 10;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;
//        
//    }
//    return _sureBtn;
//}

//: - (void)handleSubmit
- (void)rangeOff
{
    //: [self animationClose];
    [self impendentImage];
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];

    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitContentButton:)]) {
    if ([self.delegate respondsToSelector:@selector(images:)]) {
        //: [self.delegate didTouchSubmitContentButton:self.selectButtons[self.index]];
        [self.delegate images:self.selectButtons[self.index]];
    }


}


//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)press
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end