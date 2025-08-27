
#import <Foundation/Foundation.h>
typedef struct {
    Byte totalimateScale;
    Byte *bubbleAmendment;
    unsigned int combinationShoot;
    Byte heavy;
	int combination;
} AmendmentData;

NSString *StringFromAmendmentData(AmendmentData *data);


//: #4B43DE
AmendmentData kDeerUrl = (AmendmentData){65, (Byte []){98, 117, 3, 117, 114, 5, 4, 83}, 7, 184, 98};

//: sex_woman
AmendmentData mPotTitle = (AmendmentData){2, (Byte []){113, 103, 122, 93, 117, 109, 111, 99, 108, 1}, 9, 197, 32};

//: sex_man
AmendmentData user_cartChangeMessage = (AmendmentData){253, (Byte []){142, 152, 133, 162, 144, 156, 147, 245}, 7, 193, 116};

//: friend_info_activity_nv
AmendmentData m_repairEvolveId = (AmendmentData){191, (Byte []){217, 205, 214, 218, 209, 219, 224, 214, 209, 217, 208, 224, 222, 220, 203, 214, 201, 214, 203, 198, 224, 209, 201, 61}, 23, 212, 146};

//: contact_tag_fragment_cancel
AmendmentData kOnMsg = (AmendmentData){253, (Byte []){158, 146, 147, 137, 156, 158, 137, 162, 137, 156, 154, 162, 155, 143, 156, 154, 144, 152, 147, 137, 162, 158, 156, 147, 158, 152, 145, 7}, 27, 184, 50};

//: sex_unknow
AmendmentData user_porterMessage = (AmendmentData){41, (Byte []){90, 76, 81, 118, 92, 71, 66, 71, 70, 94, 70}, 10, 188, 190};

//: #000000
AmendmentData userCountellectualData = (AmendmentData){210, (Byte []){241, 226, 226, 226, 226, 226, 226, 236}, 7, 196, 141};

//: friend_info_activity_nan
AmendmentData user_producerIdent = (AmendmentData){61, (Byte []){91, 79, 84, 88, 83, 89, 98, 84, 83, 91, 82, 98, 92, 94, 73, 84, 75, 84, 73, 68, 98, 83, 92, 83, 132}, 24, 243, 53};

//: #fffWatch
AmendmentData dreamSimplyMsg = (AmendmentData){143, (Byte []){172, 233, 233, 233, 233, 233, 233, 212}, 7, 246, 1};

//: user_info_avtivity_keep
AmendmentData showMinBarreStr = (AmendmentData){155, (Byte []){238, 232, 254, 233, 196, 242, 245, 253, 244, 196, 250, 237, 239, 242, 237, 242, 239, 226, 196, 240, 254, 254, 235, 251}, 23, 247, 72};

//: #5D5F66
AmendmentData app_amendmentMsg = (AmendmentData){12, (Byte []){47, 57, 72, 57, 74, 58, 58, 58}, 7, 207, 180};

//: ic_btn_accept
AmendmentData k_timeMessage = (AmendmentData){230, (Byte []){143, 133, 185, 132, 146, 136, 185, 135, 133, 133, 131, 150, 146, 150}, 13, 242, 46};

//: friend_info_activity_xu
AmendmentData user_titleId = (AmendmentData){163, (Byte []){197, 209, 202, 198, 205, 199, 252, 202, 205, 197, 204, 252, 194, 192, 215, 202, 213, 202, 215, 218, 252, 219, 214, 38}, 23, 186, 104};

//: activity_friend_info_sex
AmendmentData notiBarUrl = (AmendmentData){224, (Byte []){129, 131, 148, 137, 150, 137, 148, 153, 191, 134, 146, 137, 133, 142, 132, 191, 137, 142, 134, 143, 191, 147, 133, 152, 166}, 24, 223, 131};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleSexView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetSexView.h"
#import "TitleSexView.h"

//: @interface NSSetSexView ()
@interface TitleSexView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *BtnUnknow;
@property (nonatomic,strong) UIButton *BtnUnknow;
//: @property (nonatomic,strong) UILabel *labUnknow;
@property (nonatomic,strong) UILabel *labUnknow;
//: @property (nonatomic,strong) UIImageView *ImgUnknow;
@property (nonatomic,strong) UIImageView *ImgUnknow;

//: @property (nonatomic,strong) UIButton *BtnMan;
@property (nonatomic,strong) UIButton *BtnMan;
//: @property (nonatomic,strong) UILabel *labMan;
@property (nonatomic,strong) UILabel *labMan;
//: @property (nonatomic,strong) UIImageView *ImgMan;
@property (nonatomic,strong) UIImageView *ImgMan;

//: @property (nonatomic,strong) UIButton *BtnWoman;
@property (nonatomic,strong) UIButton *BtnWoman;
//: @property (nonatomic,strong) UILabel *labWoman;
@property (nonatomic,strong) UILabel *labWoman;
//: @property (nonatomic,strong) UIImageView *ImgWoman;
@property (nonatomic,strong) UIImageView *ImgWoman;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;

//: @end
@end

//: @implementation NSSetSexView
@implementation TitleSexView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(impendentImage)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initIcon];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initIcon{

    //: CGFloat totalwidth = 295;
    CGFloat totalwidth = 295;
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    //: _box.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    _box.backgroundColor = [UIColor min:StringFromAmendmentData(&dreamSimplyMsg)];
    //: _box.layer.cornerRadius = 20;
    _box.layer.cornerRadius = 20;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);
    self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);

    //: CGFloat widthview = 64;
    CGFloat widthview = 64;
    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    //: [_box addSubview:view1];
    [_box addSubview:view1];
    //: _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnUnknow.tag = 0;
    _BtnUnknow.tag = 0;
    //: [_BtnUnknow addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnUnknow addTarget:self action:@selector(colorred:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    [_BtnUnknow setImage:[UIImage imageNamed:StringFromAmendmentData(&user_porterMessage)] forState:UIControlStateNormal];
    //: _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.cornerRadius = widthview/2;
    //: _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.masksToBounds = YES;
    //: _BtnUnknow.layer.borderColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    _BtnUnknow.layer.borderColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)].CGColor;
    //: _BtnUnknow.layer.borderWidth = 1;
    _BtnUnknow.layer.borderWidth = 1;
    //: [view1 addSubview:_BtnUnknow];
    [view1 addSubview:_BtnUnknow];

    //: _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgUnknow.image = [UIImage imageNamed:StringFromAmendmentData(&k_timeMessage)];
    //: [view1 addSubview:_ImgUnknow];
    [view1 addSubview:_ImgUnknow];

    //: _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    //: _labUnknow.textColor = [UIColor colorWithHexString:@"#4B43DE"];
    _labUnknow.textColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)];
    //: _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    //: _labUnknow.text = [WatchLanguageManager getTextWithKey:@"friend_info_activity_xu"];
    _labUnknow.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&user_titleId)];
    //: [view1 addSubview:_labUnknow];
    [view1 addSubview:_labUnknow];

    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    //: [_box addSubview:view2];
    [_box addSubview:view2];
    //: _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnMan.tag = 1;
    _BtnMan.tag = 1;
    //: [_BtnMan addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnMan addTarget:self action:@selector(colorred:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    [_BtnMan setImage:[UIImage imageNamed:StringFromAmendmentData(&user_cartChangeMessage)] forState:UIControlStateNormal];
    //: _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.cornerRadius = widthview/2;
    //: _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.masksToBounds = YES;
    //: _BtnMan.layer.borderColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    _BtnMan.layer.borderColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)].CGColor;
//    _BtnMan.layer.borderWidth = 1;
    //: [view2 addSubview:_BtnMan];
    [view2 addSubview:_BtnMan];

    //: _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgMan.image = [UIImage imageNamed:StringFromAmendmentData(&k_timeMessage)];
    //: [view2 addSubview:_ImgMan];
    [view2 addSubview:_ImgMan];
    //: _ImgMan.hidden = YES;
    _ImgMan.hidden = YES;

    //: _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labMan.font = [UIFont systemFontOfSize:14.f];
    _labMan.font = [UIFont systemFontOfSize:14.f];
    //: _labMan.textColor = [UIColor blackColor];
    _labMan.textColor = [UIColor blackColor];
    //: _labMan.textAlignment = NSTextAlignmentCenter;
    _labMan.textAlignment = NSTextAlignmentCenter;
    //: _labMan.text = [WatchLanguageManager getTextWithKey:@"friend_info_activity_nan"];
    _labMan.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&user_producerIdent)];
    //: [view2 addSubview:_labMan];
    [view2 addSubview:_labMan];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    //: [_box addSubview:view3];
    [_box addSubview:view3];
    //: _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnWoman.tag = 2;
    _BtnWoman.tag = 2;
    //: [_BtnWoman addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnWoman addTarget:self action:@selector(colorred:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    [_BtnWoman setImage:[UIImage imageNamed:StringFromAmendmentData(&mPotTitle)] forState:UIControlStateNormal];
    //: _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.cornerRadius = widthview/2;
    //: _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.masksToBounds = YES;
    //: _BtnWoman.layer.borderColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    _BtnWoman.layer.borderColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)].CGColor;
    //: [view3 addSubview:_BtnWoman];
    [view3 addSubview:_BtnWoman];

    //: _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgWoman.image = [UIImage imageNamed:StringFromAmendmentData(&k_timeMessage)];
    //: [view3 addSubview:_ImgWoman];
    [view3 addSubview:_ImgWoman];
    //: _ImgWoman.hidden = YES;
    _ImgWoman.hidden = YES;

    //: _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labWoman.font = [UIFont systemFontOfSize:14.f];
    _labWoman.font = [UIFont systemFontOfSize:14.f];
    //: _labWoman.textColor = [UIColor blackColor];
    _labWoman.textColor = [UIColor blackColor];
    //: _labWoman.textAlignment = NSTextAlignmentCenter;
    _labWoman.textAlignment = NSTextAlignmentCenter;
    //: _labWoman.text = [WatchLanguageManager getTextWithKey:@"friend_info_activity_nv"];
    _labWoman.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&m_repairEvolveId)];
    //: [view3 addSubview:_labWoman];
    [view3 addSubview:_labWoman];


    //: CGFloat width = (totalwidth-60)/2;
    CGFloat width = (totalwidth-60)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}

//: - (void)reloadWithGender:(NSInteger)gender
- (void)nameLoadGender:(NSInteger)gender
{
    //: if(gender == 0){
    if(gender == 0){
        //: [self clickTheSex:_BtnUnknow];
        [self colorred:_BtnUnknow];
    //: }else if (gender == 1){
    }else if (gender == 1){
        //: [self clickTheSex:_BtnMan];
        [self colorred:_BtnMan];
    //: }else if (gender == 2){
    }else if (gender == 2){
        //: [self clickTheSex:_BtnWoman];
        [self colorred:_BtnWoman];
    }
}

//: - (void)clickTheSex:(UIButton *)sender
- (void)colorred:(UIButton *)sender
{
    //: self.selectedGender = sender.tag;
    self.selectedGender = sender.tag;

    //: if(sender == _BtnUnknow){
    if(sender == _BtnUnknow){
//        _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
        //: _BtnUnknow.layer.borderWidth = 1;
        _BtnUnknow.layer.borderWidth = 1;
        //: _ImgUnknow.hidden = NO;
        _ImgUnknow.hidden = NO;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _labUnknow.textColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
    //: }else if (sender == _BtnMan){
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        //: _BtnMan.layer.borderWidth = 1;
        _BtnMan.layer.borderWidth = 1;
        //: _ImgMan.hidden = NO;
        _ImgMan.hidden = NO;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _labMan.textColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
    //: }else if (sender == _BtnWoman){
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        //: _BtnWoman.layer.borderWidth = 1;
        _BtnWoman.layer.borderWidth = 1;
        //: _ImgWoman.hidden = NO;
        _ImgWoman.hidden = NO;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _labWoman.textColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)];
    }
}

//: - (void)clickTheSave
- (void)clickAcross
{
    //: self.speiceBackBlock(self.selectedGender);
    self.speiceBackBlock(self.selectedGender);
}

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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
        _titleLabel.textColor = [UIColor min:StringFromAmendmentData(&userCountellectualData)];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [WatchLanguageManager getTextWithKey:@"activity_friend_info_sex"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&notiBarUrl)];
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
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor min:StringFromAmendmentData(&app_amendmentMsg)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&kOnMsg)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
        _closeBtn.backgroundColor = [UIColor min:StringFromAmendmentData(&dreamSimplyMsg)];
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
        //: _closeBtn.layer.masksToBounds = YES;
        _closeBtn.layer.masksToBounds = YES;
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
        //: [_sureBtn addTarget:self action:@selector(clickTheSave) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(clickAcross) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#fffWatch"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor min:StringFromAmendmentData(&dreamSimplyMsg)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:StringFromAmendmentData(&showMinBarreStr)] forState:UIControlStateNormal];
        //: CGFloat width = (295-60)/2;
        CGFloat width = (295-60)/2;
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:StringFromAmendmentData(&kDeerUrl)];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
        //: _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.masksToBounds = YES;

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
- (void)circumference
{
    //: self.hidden = NO;
    self.hidden = NO;
}



//: @end
@end

Byte *AmendmentDataToByte(AmendmentData *data) {
    if (data->heavy < 150) return data->bubbleAmendment;
    for (int i = 0; i < data->combinationShoot; i++) {
        data->bubbleAmendment[i] ^= data->totalimateScale;
    }
    data->bubbleAmendment[data->combinationShoot] = 0;
    data->heavy = 34;
	if (data->combinationShoot >= 1) {
		data->combination = data->bubbleAmendment[0];
	}
    return data->bubbleAmendment;
}

NSString *StringFromAmendmentData(AmendmentData *data) {
    return [NSString stringWithUTF8String:(char *)AmendmentDataToByte(data)];
}
