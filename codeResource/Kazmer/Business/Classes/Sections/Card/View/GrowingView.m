
#import <Foundation/Foundation.h>

typedef struct {
    Byte tapColor;
    Byte *brake;
    unsigned int titleCurrent;
	int showErrorFrame;
} StructKnowData;

@interface KnowData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kContentTargetName;

//: #F6F7FA
@property (nonatomic, copy) NSString *kName_mainValue;

//: user_profile_avtivity_user_info_update_failed
@property (nonatomic, copy) NSString *kName_modelData;

//: user_profile_avtivity_input_beizhu
@property (nonatomic, copy) NSString *kContent_atData;

//: message_remark_name
@property (nonatomic, copy) NSString *kContent_titleValue;

//: #4B43DE
@property (nonatomic, copy) NSString *kContent_viewStandardTitle;

//: #5D5F66
@property (nonatomic, copy) NSString *kText_detailString;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *kNameCellTitle;

//: user_profile_avtivity_user_info_update_success
@property (nonatomic, copy) NSString *kTitleColorData;

@end

@implementation KnowData

+ (NSData *)KnowDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: contact_tag_fragment_sure
- (NSString *)kNameCellTitle {
    if (!_kNameCellTitle) {
		NSArray<NSNumber *> *origin = @[@38, @42, @43, @49, @36, @38, @49, @26, @49, @36, @34, @26, @35, @55, @36, @34, @40, @32, @43, @49, @26, @54, @48, @55, @32, @6];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){69, (Byte *)data.bytes, 25, 144};
        _kNameCellTitle = [self StringFromKnowData:&value];
    }
    return _kNameCellTitle;
}

//: #4B43DE
- (NSString *)kContent_viewStandardTitle {
    if (!_kContent_viewStandardTitle) {
		NSArray<NSNumber *> *origin = @[@53, @34, @84, @34, @37, @82, @83, @184];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){22, (Byte *)data.bytes, 7, 69};
        _kContent_viewStandardTitle = [self StringFromKnowData:&value];
    }
    return _kContent_viewStandardTitle;
}

- (Byte *)KnowDataToByte:(StructKnowData *)data {
    for (int i = 0; i < data->titleCurrent; i++) {
        data->brake[i] ^= data->tapColor;
    }
    data->brake[data->titleCurrent] = 0;
	if (data->titleCurrent >= 1) {
		data->showErrorFrame = data->brake[0];
	}
    return data->brake;
}

+ (instancetype)sharedInstance {
    static KnowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)kName_modelData {
    if (!_kName_modelData) {
		NSArray<NSNumber *> *origin = @[@61, @59, @45, @58, @23, @56, @58, @39, @46, @33, @36, @45, @23, @41, @62, @60, @33, @62, @33, @60, @49, @23, @61, @59, @45, @58, @23, @33, @38, @46, @39, @23, @61, @56, @44, @41, @60, @45, @23, @46, @41, @33, @36, @45, @44, @105];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){72, (Byte *)data.bytes, 45, 104};
        _kName_modelData = [self StringFromKnowData:&value];
    }
    return _kName_modelData;
}

- (NSString *)StringFromKnowData:(StructKnowData *)data {
    return [NSString stringWithUTF8String:(char *)[self KnowDataToByte:data]];
}

//: #5D5F66
- (NSString *)kText_detailString {
    if (!_kText_detailString) {
		NSArray<NSNumber *> *origin = @[@53, @35, @82, @35, @80, @32, @32, @40];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){22, (Byte *)data.bytes, 7, 193};
        _kText_detailString = [self StringFromKnowData:&value];
    }
    return _kText_detailString;
}

//: contact_tag_fragment_cancel
- (NSString *)kContentTargetName {
    if (!_kContentTargetName) {
		NSArray<NSNumber *> *origin = @[@36, @40, @41, @51, @38, @36, @51, @24, @51, @38, @32, @24, @33, @53, @38, @32, @42, @34, @41, @51, @24, @36, @38, @41, @36, @34, @43, @246];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){71, (Byte *)data.bytes, 27, 7};
        _kContentTargetName = [self StringFromKnowData:&value];
    }
    return _kContentTargetName;
}

//: message_remark_name
- (NSString *)kContent_titleValue {
    if (!_kContent_titleValue) {
		NSArray<NSNumber *> *origin = @[@19, @27, @13, @13, @31, @25, @27, @33, @12, @27, @19, @31, @12, @21, @33, @16, @31, @19, @27, @229];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){126, (Byte *)data.bytes, 19, 35};
        _kContent_titleValue = [self StringFromKnowData:&value];
    }
    return _kContent_titleValue;
}

//: #F6F7FA
- (NSString *)kName_mainValue {
    if (!_kName_mainValue) {
		NSArray<NSNumber *> *origin = @[@153, @252, @140, @252, @141, @252, @251, @208];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){186, (Byte *)data.bytes, 7, 13};
        _kName_mainValue = [self StringFromKnowData:&value];
    }
    return _kName_mainValue;
}

//: user_profile_avtivity_input_beizhu
- (NSString *)kContent_atData {
    if (!_kContent_atData) {
		NSArray<NSNumber *> *origin = @[@152, @158, @136, @159, @178, @157, @159, @130, @139, @132, @129, @136, @178, @140, @155, @153, @132, @155, @132, @153, @148, @178, @132, @131, @157, @152, @153, @178, @143, @136, @132, @151, @133, @152, @230];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){237, (Byte *)data.bytes, 34, 225};
        _kContent_atData = [self StringFromKnowData:&value];
    }
    return _kContent_atData;
}

//: user_profile_avtivity_user_info_update_success
- (NSString *)kTitleColorData {
    if (!_kTitleColorData) {
		NSArray<NSNumber *> *origin = @[@138, @140, @154, @141, @160, @143, @141, @144, @153, @150, @147, @154, @160, @158, @137, @139, @150, @137, @150, @139, @134, @160, @138, @140, @154, @141, @160, @150, @145, @153, @144, @160, @138, @143, @155, @158, @139, @154, @160, @140, @138, @156, @156, @154, @140, @140, @65];
		NSData *data = [KnowData KnowDataToData:origin];
        StructKnowData value = (StructKnowData){255, (Byte *)data.bytes, 46, 245};
        _kTitleColorData = [self StringFromKnowData:&value];
    }
    return _kTitleColorData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrowingView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/23.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayRemarksView.h"
#import "GrowingView.h"

//: @interface DisplayRemarksView ()<UITextFieldDelegate>
@interface GrowingView ()<UITextFieldDelegate>

//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;

//: @end
@end

//: @implementation DisplayRemarksView
@implementation GrowingView

//: - (void)initUI{
- (void)initText{
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


//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(valueTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[KnowData sharedInstance].kNameCellTitle] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[KnowData sharedInstance].kContent_viewStandardTitle];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
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
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.searchField.text = textField.text;
    self.searchField.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
}
//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
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
        [self initText];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
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
        [_closeBtn setTitleColor:[UIColor cell:[KnowData sharedInstance].kText_detailString] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[KnowData sharedInstance].kContentTargetName] forState:UIControlStateNormal];
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
//: - (void)updateTheNickname{
- (void)valueTitle{

    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
    //: if (!self.searchField.text.length) {
    if (!self.searchField.text.length) {
        //: [self makeToast:[DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_input_beizhu"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MakeManager cell:[KnowData sharedInstance].kContent_atData] duration:2.0 position:CSToastPositionCenter];
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
            //: [wself makeToast:[DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [wself makeToast:[MakeManager cell:[KnowData sharedInstance].kTitleColorData]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
//            [wself.navigationController popViewControllerAnimated:NO];
            //: [self animationClose];
            [self ingatheringBy];

        //: }else{
        }else{
            //: [wself makeToast:[DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself makeToast:[MakeManager cell:[KnowData sharedInstance].kName_modelData]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];

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
        _numLabel.textColor = [UIColor cell:[KnowData sharedInstance].kText_detailString];
    }
    //: return _numLabel;
    return _numLabel;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor cell:[KnowData sharedInstance].kName_mainValue];
    }
    //: return _lineView;
    return _lineView;
}

//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
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

//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _searchView.backgroundColor = [UIColor cell:[KnowData sharedInstance].kName_mainValue];
        //: _searchView.layer.cornerRadius = 26;
        _searchView.layer.cornerRadius = 26;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [DisplayLanguageManager getTextWithKey:@"message_remark_name"];
        _searchField.placeholder = [MakeManager cell:[KnowData sharedInstance].kContent_titleValue];
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

//: - (void)animationShow
- (void)shouldBeginView
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-508, SCREEN_WIDTH, 508);
    //: return YES;
    return YES;
}

//: - (void)reloadWithNickname:(NIMUser *)user
- (void)centerColor:(NIMUser *)user
{
    //: self.user = user;
    self.user = user;
    //: self.titleLabel.text = [DisplayLanguageManager getTextWithKey:@"message_remark_name"];
    self.titleLabel.text = [MakeManager cell:[KnowData sharedInstance].kContent_titleValue];
    //: self.searchField.text = user.alias;
    self.searchField.text = user.alias;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}

//: @end
@end
