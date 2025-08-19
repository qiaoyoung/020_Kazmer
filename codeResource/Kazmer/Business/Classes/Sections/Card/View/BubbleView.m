
#import <Foundation/Foundation.h>

@interface NameCharterData : NSObject

+ (instancetype)sharedInstance;

//: user_profile_avtivity_input_beizhu
@property (nonatomic, copy) NSString *dream_tablePictureName;

//: message_remark_name
@property (nonatomic, copy) NSString *kBarreFormat;

//: user_profile_avtivity_user_info_update_failed
@property (nonatomic, copy) NSString *show_myUrl;

//: #5D5F66
@property (nonatomic, copy) NSString *notiScaleValueStr;

//: #4B43DE
@property (nonatomic, copy) NSString *notiShowerIdent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *dreamOfUrl;

//: #F6F7FA
@property (nonatomic, copy) NSString *showShirtName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *app_scribeCartContent;

//: user_profile_avtivity_user_info_update_success
@property (nonatomic, copy) NSString *mainMeatContent;

@end

@implementation NameCharterData

+ (instancetype)sharedInstance {
    static NameCharterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NameCharterDataToCache:(Byte *)data {
    int scramItem = data[0];
    Byte matte = data[1];
    int rna = data[2];
    for (int i = rna; i < rna + scramItem; i++) {
        int value = data[i] + matte;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[rna + scramItem] = 0;
    return data + rna;
}

- (NSString *)StringFromNameCharterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NameCharterDataToCache:data]];
}

//: #F6F7FA
- (NSString *)showShirtName {
    if (!_showShirtName) {
        Byte value[] = {7, 67, 5, 147, 49, 224, 3, 243, 3, 244, 3, 254, 242};
        _showShirtName = [self StringFromNameCharterData:value];
    }
    return _showShirtName;
}

//: user_profile_avtivity_input_beizhu
- (NSString *)dream_tablePictureName {
    if (!_dream_tablePictureName) {
        Byte value[] = {34, 69, 4, 40, 48, 46, 32, 45, 26, 43, 45, 42, 33, 36, 39, 32, 26, 28, 49, 47, 36, 49, 36, 47, 52, 26, 36, 41, 43, 48, 47, 26, 29, 32, 36, 53, 35, 48, 191};
        _dream_tablePictureName = [self StringFromNameCharterData:value];
    }
    return _dream_tablePictureName;
}

//: #5D5F66
- (NSString *)notiScaleValueStr {
    if (!_notiScaleValueStr) {
        Byte value[] = {7, 50, 12, 212, 115, 153, 13, 194, 8, 180, 252, 197, 241, 3, 18, 3, 20, 4, 4, 91};
        _notiScaleValueStr = [self StringFromNameCharterData:value];
    }
    return _notiScaleValueStr;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)show_myUrl {
    if (!_show_myUrl) {
        Byte value[] = {45, 44, 10, 150, 193, 22, 47, 222, 243, 116, 73, 71, 57, 70, 51, 68, 70, 67, 58, 61, 64, 57, 51, 53, 74, 72, 61, 74, 61, 72, 77, 51, 73, 71, 57, 70, 51, 61, 66, 58, 67, 51, 73, 68, 56, 53, 72, 57, 51, 58, 53, 61, 64, 57, 56, 195};
        _show_myUrl = [self StringFromNameCharterData:value];
    }
    return _show_myUrl;
}

//: user_profile_avtivity_user_info_update_success
- (NSString *)mainMeatContent {
    if (!_mainMeatContent) {
        Byte value[] = {46, 64, 3, 53, 51, 37, 50, 31, 48, 50, 47, 38, 41, 44, 37, 31, 33, 54, 52, 41, 54, 41, 52, 57, 31, 53, 51, 37, 50, 31, 41, 46, 38, 47, 31, 53, 48, 36, 33, 52, 37, 31, 51, 53, 35, 35, 37, 51, 51, 249};
        _mainMeatContent = [self StringFromNameCharterData:value];
    }
    return _mainMeatContent;
}

//: contact_tag_fragment_sure
- (NSString *)app_scribeCartContent {
    if (!_app_scribeCartContent) {
        Byte value[] = {25, 18, 10, 210, 68, 15, 100, 66, 172, 222, 81, 93, 92, 98, 79, 81, 98, 77, 98, 79, 85, 77, 84, 96, 79, 85, 91, 83, 92, 98, 77, 97, 99, 96, 83, 157};
        _app_scribeCartContent = [self StringFromNameCharterData:value];
    }
    return _app_scribeCartContent;
}

//: #4B43DE
- (NSString *)notiShowerIdent {
    if (!_notiShowerIdent) {
        Byte value[] = {7, 32, 3, 3, 20, 34, 20, 19, 36, 37, 1};
        _notiShowerIdent = [self StringFromNameCharterData:value];
    }
    return _notiShowerIdent;
}

//: message_remark_name
- (NSString *)kBarreFormat {
    if (!_kBarreFormat) {
        Byte value[] = {19, 87, 4, 107, 22, 14, 28, 28, 10, 16, 14, 8, 27, 14, 22, 10, 27, 20, 8, 23, 10, 22, 14, 177};
        _kBarreFormat = [self StringFromNameCharterData:value];
    }
    return _kBarreFormat;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamOfUrl {
    if (!_dreamOfUrl) {
        Byte value[] = {27, 91, 9, 148, 240, 148, 105, 210, 199, 8, 20, 19, 25, 6, 8, 25, 4, 25, 6, 12, 4, 11, 23, 6, 12, 18, 10, 19, 25, 4, 8, 6, 19, 8, 10, 17, 141};
        _dreamOfUrl = [self StringFromNameCharterData:value];
    }
    return _dreamOfUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/23.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRemarksView.h"
#import "BubbleView.h"

//: @interface FFFRemarksView ()<UITextFieldDelegate>
@interface BubbleView ()<UITextFieldDelegate>

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

//: @implementation FFFRemarksView
@implementation BubbleView

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
        [self initRemoveUi];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initRemoveUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];
//    [UIView animateWithDuration:2.0f delay:0 options:UIViewAnimationCurveEaseInOut animations:^{
//        _box.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 166);
//        }  completion:^(BOOL finished) {
//            _box.frame = CGRectMake(0, SCREEN_HEIGHT-166, SCREEN_WIDTH, 166);
//        }];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 30);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 30);


    //: [_box addSubview:self.searchView];
    [_box addSubview:self.searchView];
    //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);
    self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);

//    [_box addSubview:self.numLabel];
//    self.numLabel.frame = CGRectMake(20, self.searchView.bottom+10, SCREEN_WIDTH-80, 20);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 210-40-15, width, height);
    self.closeBtn.frame = CGRectMake(20, 210-40-15, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 210-40-15, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 210-40-15, width, height);

}

//: - (void)reloadWithNickname:(NIMUser *)user
- (void)container:(NIMUser *)user
{
    //: self.user = user;
    self.user = user;
    //: self.titleLabel.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
    self.titleLabel.text = [PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].kBarreFormat];
    //: self.searchField.text = user.alias;
    self.searchField.text = user.alias;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}

//: - (void)updateTheNickname{
- (void)inputSignal{

    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
    //: if (!self.searchField.text.length) {
    if (!self.searchField.text.length) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_input_beizhu"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].dream_tablePictureName] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }
//    if (self.searchField.text.length > self.inputLimit) {
//        [self makeToast:@"备注名过长".nim_localized duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.user.alias = self.searchField.text;
    self.user.alias = self.searchField.text;
    //: [[NIMSDK sharedSDK].userManager updateUser:self.user completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateUser:self.user completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [wself makeToast:[PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].mainMeatContent]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
//            [wself.navigationController popViewControllerAnimated:NO];
            //: [self animationClose];
            [self impendentImage];

        //: }else{
        }else{
            //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself makeToast:[PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].show_myUrl]
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
    //: self.searchField.text = textField.text;
    self.searchField.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
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
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
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
        _numLabel.textColor = [UIColor min:[NameCharterData sharedInstance].notiScaleValueStr];
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
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor min:[NameCharterData sharedInstance].notiScaleValueStr] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].dreamOfUrl] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(inputSignal) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].app_scribeCartContent] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[NameCharterData sharedInstance].notiShowerIdent];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

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
        _lineView.backgroundColor = [UIColor min:[NameCharterData sharedInstance].showShirtName];
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
        _searchView.backgroundColor = [UIColor min:[NameCharterData sharedInstance].showShirtName];
        //: _searchView.layer.cornerRadius = 26;
        _searchView.layer.cornerRadius = 26;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        _searchField.placeholder = [PaintedNaturalLanguageTo exhibit:[NameCharterData sharedInstance].kBarreFormat];
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
- (void)priceTag
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end