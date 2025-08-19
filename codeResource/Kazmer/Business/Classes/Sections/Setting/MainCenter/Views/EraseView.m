
#import <Foundation/Foundation.h>

NSString *StringFromAmendmentFishingData(Byte *data);


//: account_delete_tip1
Byte notiCharterName[] = {23, 19, 86, 9, 148, 242, 250, 53, 67, 183, 185, 185, 197, 203, 196, 202, 181, 186, 187, 194, 187, 202, 187, 181, 202, 191, 198, 135, 110};

//: activity_comment_setting_cancel_account
Byte user_destinationMsg[] = {6, 39, 93, 14, 192, 63, 141, 130, 239, 84, 149, 155, 81, 136, 190, 192, 209, 198, 211, 198, 209, 214, 188, 192, 204, 202, 202, 194, 203, 209, 188, 208, 194, 209, 209, 198, 203, 196, 188, 192, 190, 203, 192, 194, 201, 188, 190, 192, 192, 204, 210, 203, 209, 142};

//: account_delete_tip2
Byte show_pointValue[] = {21, 19, 90, 8, 73, 94, 78, 138, 187, 189, 189, 201, 207, 200, 206, 185, 190, 191, 198, 191, 206, 191, 185, 206, 195, 202, 140, 16};

//: #5D5F66
Byte noti_atName[] = {72, 7, 15, 4, 50, 68, 83, 68, 85, 69, 69, 172};

//: #333333
Byte mStateMessage[] = {42, 7, 85, 14, 98, 27, 142, 221, 90, 204, 53, 204, 176, 229, 120, 136, 136, 136, 136, 136, 136, 57};

//: contact_tag_fragment_sure
Byte app_heavilyCreaterStr[] = {63, 25, 77, 10, 173, 195, 70, 241, 41, 58, 176, 188, 187, 193, 174, 176, 193, 172, 193, 174, 180, 172, 179, 191, 174, 180, 186, 178, 187, 193, 172, 192, 194, 191, 178, 4};

//: contact_tag_fragment_cancel
Byte k_charterMsg[] = {96, 27, 3, 4, 102, 114, 113, 119, 100, 102, 119, 98, 119, 100, 106, 98, 105, 117, 100, 106, 112, 104, 113, 119, 98, 102, 100, 113, 102, 104, 111, 209};

//: #FF483D
Byte m_tablePowerPath[] = {19, 7, 50, 13, 112, 206, 83, 135, 125, 70, 185, 58, 144, 85, 120, 120, 102, 106, 101, 118, 249};

//: #2C3042
Byte kCrushFormat[] = {59, 7, 77, 14, 251, 117, 104, 187, 108, 128, 75, 42, 25, 12, 112, 127, 144, 128, 125, 129, 127, 215};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EraseView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "EraseView.h"

//: @interface DeleteAccountTipView ()
@interface EraseView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation EraseView

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
        [self initShowTitle];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initShowTitle{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



//: - (void)handleSubmit
- (void)rangeOff
{
    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(shankValue)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate shankValue];
    }

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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor min:StringFromAmendmentFishingData(kCrushFormat)];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentFishingData(user_destinationMsg)];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor min:StringFromAmendmentFishingData(mStateMessage)];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentFishingData(notiCharterName)];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor min:StringFromAmendmentFishingData(mStateMessage)];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [PaintedNaturalLanguageTo exhibit:StringFromAmendmentFishingData(show_pointValue)];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
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
        [_closeBtn setTitleColor:[UIColor min:StringFromAmendmentFishingData(noti_atName)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:StringFromAmendmentFishingData(k_charterMsg)] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:StringFromAmendmentFishingData(app_heavilyCreaterStr)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor min:StringFromAmendmentFishingData(m_tablePowerPath)];
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

Byte * AmendmentFishingDataToCache(Byte *data) {
    int valueFlushEducational = data[0];
    int shouldEnd = data[1];
    Byte drinkTextProducer = data[2];
    int cabinNowhere = data[3];
    if (!valueFlushEducational) return data + cabinNowhere;
    for (int i = cabinNowhere; i < cabinNowhere + shouldEnd; i++) {
        int value = data[i] - drinkTextProducer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cabinNowhere + shouldEnd] = 0;
    return data + cabinNowhere;
}

NSString *StringFromAmendmentFishingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AmendmentFishingDataToCache(data)];
}
