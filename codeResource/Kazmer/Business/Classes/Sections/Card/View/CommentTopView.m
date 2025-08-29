
#import <Foundation/Foundation.h>

@interface ScaleData : NSObject

@end

@implementation ScaleData

+ (Byte *)ScaleDataToCache:(Byte *)data {
    int lastKnowSend = data[0];
    int modify = data[1];
    for (int i = 0; i < lastKnowSend / 2; i++) {
        int begin = modify + i;
        int end = modify + lastKnowSend - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[modify + lastKnowSend] = 0;
    return data + modify;
}

//: report_Content
+ (NSString *)kName_valueRecentText {
    /* static */ NSString *kName_valueRecentText = nil;
    if (!kName_valueRecentText) {
        Byte value[] = {14, 6, 56, 30, 20, 186, 116, 110, 101, 116, 110, 111, 67, 95, 116, 114, 111, 112, 101, 114, 131};
        kName_valueRecentText = [self StringFromScaleData:value];
    }
    return kName_valueRecentText;
}  

+ (NSString *)StringFromScaleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScaleDataToCache:data]];
}

//: activity_group_chat_avatar_add_black
+ (NSString *)kTitleViewPlayString {
    /* static */ NSString *kTitleViewPlayString = nil;
    if (!kTitleViewPlayString) {
        Byte value[] = {36, 3, 61, 107, 99, 97, 108, 98, 95, 100, 100, 97, 95, 114, 97, 116, 97, 118, 97, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 36};
        kTitleViewPlayString = [self StringFromScaleData:value];
    }
    return kTitleViewPlayString;
}

//: ic_distrub
+ (NSString *)kName_showData {
    /* static */ NSString *kName_showData = nil;
    if (!kName_showData) {
        Byte value[] = {10, 6, 140, 54, 54, 234, 98, 117, 114, 116, 115, 105, 100, 95, 99, 105, 75};
        kName_showData = [self StringFromScaleData:value];
    }
    return kName_showData;
}

//: report_next_select
+ (NSString *)kContent_targetName {
    /* static */ NSString *kContent_targetName = nil;
    if (!kContent_targetName) {
        Byte value[] = {18, 6, 163, 155, 73, 62, 116, 99, 101, 108, 101, 115, 95, 116, 120, 101, 110, 95, 116, 114, 111, 112, 101, 114, 200};
        kContent_targetName = [self StringFromScaleData:value];
    }
    return kContent_targetName;
}

//: #5D5F66
+ (NSString *)kTitle_tapName {
    /* static */ NSString *kTitle_tapName = nil;
    if (!kTitle_tapName) {
        Byte value[] = {7, 9, 40, 143, 63, 205, 7, 237, 209, 54, 54, 70, 53, 68, 53, 35, 92};
        kTitle_tapName = [self StringFromScaleData:value];
    }
    return kTitle_tapName;
}

//: contact_tag_fragment_cancel
+ (NSString *)kTitleMonthContent {
    /* static */ NSString *kTitleMonthContent = nil;
    if (!kTitleMonthContent) {
        Byte value[] = {27, 11, 1, 56, 202, 241, 155, 215, 104, 143, 238, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 29};
        kTitleMonthContent = [self StringFromScaleData:value];
    }
    return kTitleMonthContent;
}

//: #FAF8FD
+ (NSString *)kTitleMainValue {
    /* static */ NSString *kTitleMainValue = nil;
    if (!kTitleMainValue) {
        Byte value[] = {7, 11, 148, 235, 244, 199, 112, 148, 35, 198, 92, 68, 70, 56, 70, 65, 70, 35, 14};
        kTitleMainValue = [self StringFromScaleData:value];
    }
    return kTitleMainValue;
}

//: #4B43DE
+ (NSString *)kNameSendValue {
    /* static */ NSString *kNameSendValue = nil;
    if (!kNameSendValue) {
        Byte value[] = {7, 2, 69, 68, 51, 52, 66, 52, 35, 171};
        kNameSendValue = [self StringFromScaleData:value];
    }
    return kNameSendValue;
}

//: contact_tag_fragment_sure
+ (NSString *)kContentShowName {
    /* static */ NSString *kContentShowName = nil;
    if (!kContentShowName) {
        Byte value[] = {25, 9, 134, 181, 228, 100, 66, 47, 71, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 153};
        kContentShowName = [self StringFromScaleData:value];
    }
    return kContentShowName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTopView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportHisView.h"
#import "CommentTopView.h"

//: @interface ZMONReportHisView ()
@interface CommentTopView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @end
@end

//: @implementation ZMONReportHisView
@implementation CommentTopView

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
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [MakeManager cell:[ScaleData kName_valueRecentText]];

    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (void)initUI{
- (void)initBy{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor cell:[ScaleData kTitle_tapName]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [MakeManager cell:[ScaleData kContent_targetName]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

//    [_box addSubview:self.deleteView];
//    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, SCREEN_WIDTH-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
}

//: - (void)handleSubmit
- (void)eigenvalueFor
{

}
//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(ingatheringBy) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor cell:[ScaleData kTitle_tapName]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[ScaleData kTitleMonthContent]] forState:UIControlStateNormal];
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



//: - (void)handleBlock{
- (void)shouldBlock{

}



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
        [self initBy];

    }
    //: return self;
    return self;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(outsideMedia) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[ScaleData kContentShowName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[ScaleData kNameSendValue]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor cell:[ScaleData kTitleMainValue]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[ScaleData kName_showData]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor cell:[ScaleData kTitle_tapName]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [MakeManager cell:[ScaleData kTitleViewPlayString]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
//        [btn addTarget:self action:@selector(handleBlock) forControlEvents:UIControlEventTouchUpInside];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
//        [_blockView addSubview:btn];
    }
    //: return _blockView;
    return _blockView;
}

//: - (void)animationShow
- (void)back
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: - (void)handleBlack
- (void)outsideMedia
{
    //: [self animationClose];
    [self ingatheringBy];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(buttonDomain)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate buttonDomain];
    }
}


//: @end
@end