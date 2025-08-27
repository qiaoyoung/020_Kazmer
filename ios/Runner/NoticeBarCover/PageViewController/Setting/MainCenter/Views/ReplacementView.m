
#import <Foundation/Foundation.h>

typedef struct {
    Byte commentCenter;
    Byte *silver;
    unsigned int broadcastExtra;
	int until;
} StructOperationData;

@interface OperationData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OperationData

+ (instancetype)sharedInstance {
    static OperationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OperationDataToByte:(StructOperationData *)data {
    for (int i = 0; i < data->broadcastExtra; i++) {
        data->silver[i] ^= data->commentCenter;
    }
    data->silver[data->broadcastExtra] = 0;
	if (data->broadcastExtra >= 1) {
		data->until = data->silver[0];
	}
    return data->silver;
}

- (NSString *)StringFromOperationData:(StructOperationData *)data {
    return [NSString stringWithUTF8String:(char *)[self OperationDataToByte:data]];
}

//: #5D5F66
- (NSString *)main_combinationFormat {
    /* static */ NSString *main_combinationFormat = nil;
    if (!main_combinationFormat) {
        StructOperationData value = (StructOperationData){119, (Byte []){84, 66, 51, 66, 49, 65, 65, 240}, 7, 99};
        main_combinationFormat = [self StringFromOperationData:&value];
    }
    return main_combinationFormat;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)mainValueFormat {
    /* static */ NSString *mainValueFormat = nil;
    if (!mainValueFormat) {
        StructOperationData value = (StructOperationData){137, (Byte []){252, 250, 236, 251, 214, 249, 251, 230, 239, 224, 229, 236, 214, 232, 255, 253, 224, 255, 224, 253, 240, 214, 252, 250, 236, 251, 214, 224, 231, 239, 230, 214, 252, 249, 237, 232, 253, 236, 214, 239, 232, 224, 229, 236, 237, 64}, 45, 183};
        mainValueFormat = [self StringFromOperationData:&value];
    }
    return mainValueFormat;
}

//: set_nick_activity_input
- (NSString *)dream_tubeStr {
    /* static */ NSString *dream_tubeStr = nil;
    if (!dream_tubeStr) {
        StructOperationData value = (StructOperationData){27, (Byte []){104, 126, 111, 68, 117, 114, 120, 112, 68, 122, 120, 111, 114, 109, 114, 111, 98, 68, 114, 117, 107, 110, 111, 110}, 23, 65};
        dream_tubeStr = [self StringFromOperationData:&value];
    }
    return dream_tubeStr;
}

//: activity_my_user_info_nick
- (NSString *)m_mindValue {
    /* static */ NSString *m_mindValue = nil;
    if (!m_mindValue) {
        StructOperationData value = (StructOperationData){110, (Byte []){15, 13, 26, 7, 24, 7, 26, 23, 49, 3, 23, 49, 27, 29, 11, 28, 49, 7, 0, 8, 1, 49, 0, 7, 13, 5, 49}, 26, 244};
        m_mindValue = [self StringFromOperationData:&value];
    }
    return m_mindValue;
}

//: user_info_avtivity_keep
- (NSString *)k_containerName {
    /* static */ NSString *k_containerName = nil;
    if (!k_containerName) {
        StructOperationData value = (StructOperationData){230, (Byte []){147, 149, 131, 148, 185, 143, 136, 128, 137, 185, 135, 144, 146, 143, 144, 143, 146, 159, 185, 141, 131, 131, 150, 74}, 23, 107};
        k_containerName = [self StringFromOperationData:&value];
    }
    return k_containerName;
}

//: #F6F7FA
- (NSString *)dreamNuclearPath {
    /* static */ NSString *dreamNuclearPath = nil;
    if (!dreamNuclearPath) {
        StructOperationData value = (StructOperationData){156, (Byte []){191, 218, 170, 218, 171, 218, 221, 88}, 7, 116};
        dreamNuclearPath = [self StringFromOperationData:&value];
    }
    return dreamNuclearPath;
}

//: user_profile_avtivity_user_info_update_success
- (NSString *)mPressedId {
    /* static */ NSString *mPressedId = nil;
    if (!mPressedId) {
        StructOperationData value = (StructOperationData){8, (Byte []){125, 123, 109, 122, 87, 120, 122, 103, 110, 97, 100, 109, 87, 105, 126, 124, 97, 126, 97, 124, 113, 87, 125, 123, 109, 122, 87, 97, 102, 110, 103, 87, 125, 120, 108, 105, 124, 109, 87, 123, 125, 107, 107, 109, 123, 123, 150}, 46, 47};
        mPressedId = [self StringFromOperationData:&value];
    }
    return mPressedId;
}

//: #4B43DE
- (NSString *)dream_numberConductData {
    /* static */ NSString *dream_numberConductData = nil;
    if (!dream_numberConductData) {
        StructOperationData value = (StructOperationData){230, (Byte []){197, 210, 164, 210, 213, 162, 163, 94}, 7, 125};
        dream_numberConductData = [self StringFromOperationData:&value];
    }
    return dream_numberConductData;
}

//: contact_tag_fragment_cancel
- (NSString *)k_attendanceValue {
    /* static */ NSString *k_attendanceValue = nil;
    if (!k_attendanceValue) {
        StructOperationData value = (StructOperationData){150, (Byte []){245, 249, 248, 226, 247, 245, 226, 201, 226, 247, 241, 201, 240, 228, 247, 241, 251, 243, 248, 226, 201, 245, 247, 248, 245, 243, 250, 101}, 27, 238};
        k_attendanceValue = [self StringFromOperationData:&value];
    }
    return k_attendanceValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/7.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KEKESetNickNameView.h"
#import "ReplacementView.h"

//: @interface KEKESetNickNameView ()<UITextFieldDelegate>
@interface ReplacementView ()<UITextFieldDelegate>

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation KEKESetNickNameView
@implementation ReplacementView

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
        [self initStreetwise];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initStreetwise{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-260)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-260)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
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


    //: [_box addSubview:self.searchView];
    [_box addSubview:self.searchView];
    //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);
    self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);

//    [_box addSubview:self.numLabel];
//    self.numLabel.frame = CGRectMake(20, self.searchView.bottom+10, SCREEN_WIDTH-80, 20);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 210-height-15, width, height);
    self.closeBtn.frame = CGRectMake(20, 210-height-15, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 210-height-15, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 210-height-15, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)sub:(NSString *)nickname
{
    //: self.titleLabel.text = [WatchLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.titleLabel.text = [PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] m_mindValue]];
    //: self.searchField.text = nickname;
    self.searchField.text = nickname;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}

//: - (void)updateTheNickname{
- (void)inputSignal{

    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
    //: if (!self.titleLabel.text.length) {
    if (!self.titleLabel.text.length) {
        //: [self makeToast:[WatchLanguageManager getTextWithKey:@"set_nick_activity_input"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] dream_tubeStr]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagNick) : self.titleLabel.text} completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagNick) : self.titleLabel.text} completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [wself makeToast:[PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] mPressedId]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
//            [wself.navigationController popViewControllerAnimated:NO];
            //: [self animationClose];
            [self impendentImage];

        //: }else{
        }else{
            //: [wself makeToast:[WatchLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself makeToast:[PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] mainValueFormat]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-508, SCREEN_WIDTH, 508);
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    // 如果是删除键
//    if ([string length] == 0 && range.length > 0)
//    {
//        return YES;
//    }
    //: NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    //: if (self.inputLimit && genString.length > self.inputLimit) {
    if (self.inputLimit && genString.length > self.inputLimit) {
        //: return NO;
        return NO;
    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
//    self.titleLabel.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
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
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _numLabel.textColor = [UIColor min:[[OperationData sharedInstance] main_combinationFormat]];
    }
    //: return _numLabel;
    return _numLabel;
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
        [_closeBtn setTitleColor:[UIColor min:[[OperationData sharedInstance] main_combinationFormat]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] k_attendanceValue]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 1;
        _closeBtn.layer.borderWidth = 1;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(inputSignal) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] k_containerName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[[OperationData sharedInstance] dream_numberConductData]];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor min:[[OperationData sharedInstance] dreamNuclearPath]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _searchView.backgroundColor = [UIColor min:[[OperationData sharedInstance] dreamNuclearPath]];
        //: _searchView.layer.cornerRadius = 26;
        _searchView.layer.cornerRadius = 26;
//        _searchView.layer.borderWidth = 1;
//        _searchView.layer.borderColor = ThemeColor.CGColor;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [WatchLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
        _searchField.placeholder = [PaintedNaturalLanguageTo exhibit:[[OperationData sharedInstance] m_mindValue]];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)orderedSeries
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
