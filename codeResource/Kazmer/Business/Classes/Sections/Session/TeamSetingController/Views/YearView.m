
#import <Foundation/Foundation.h>

@interface SquadData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SquadData

+ (instancetype)sharedInstance {
    static SquadData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SquadDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SquadDataToCache:(Byte *)data {
    int toolSuspicion = data[0];
    Byte amber = data[1];
    int frag = data[2];
    for (int i = frag; i < frag + toolSuspicion; i++) {
        int value = data[i] + amber;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[frag + toolSuspicion] = 0;
    return data + frag;
}

- (NSString *)StringFromSquadData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SquadDataToCache:data]];
}

//: my_group_name
- (NSString *)kNameImageTideOutfitData {
    /* static */ NSString *kNameImageTideOutfitData = nil;
    if (!kNameImageTideOutfitData) {
		NSArray<NSString *> *origin = @[@"13", @"86", @"5", @"167", @"178", @"23", @"35", @"9", @"17", @"28", @"25", @"31", @"26", @"9", @"24", @"11", @"23", @"15", @"65"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameImageTideOutfitData = [self StringFromSquadData:value];
    }
    return kNameImageTideOutfitData;
}

//: activity_my_user_info_nick
- (NSString *)kContent_denseString {
    /* static */ NSString *kContent_denseString = nil;
    if (!kContent_denseString) {
		NSArray<NSString *> *origin = @[@"26", @"69", @"9", @"49", @"22", @"5", @"208", @"207", @"105", @"28", @"30", @"47", @"36", @"49", @"36", @"47", @"52", @"26", @"40", @"52", @"26", @"48", @"46", @"32", @"45", @"26", @"36", @"41", @"33", @"42", @"26", @"41", @"36", @"30", @"38", @"104"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_denseString = [self StringFromSquadData:value];
    }
    return kContent_denseString;
}

//: user_info_avtivity_keep
- (NSString *)kNameAircraftString {
    /* static */ NSString *kNameAircraftString = nil;
    if (!kNameAircraftString) {
		NSArray<NSString *> *origin = @[@"23", @"24", @"3", @"93", @"91", @"77", @"90", @"71", @"81", @"86", @"78", @"87", @"71", @"73", @"94", @"92", @"81", @"94", @"81", @"92", @"97", @"71", @"83", @"77", @"77", @"88", @"225"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameAircraftString = [self StringFromSquadData:value];
    }
    return kNameAircraftString;
}

//: #F6F7FA
- (NSString *)kTitleKitchenValue {
    /* static */ NSString *kTitleKitchenValue = nil;
    if (!kTitleKitchenValue) {
		NSArray<NSString *> *origin = @[@"7", @"19", @"10", @"199", @"209", @"89", @"20", @"185", @"104", @"126", @"16", @"51", @"35", @"51", @"36", @"51", @"46", @"3"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleKitchenValue = [self StringFromSquadData:value];
    }
    return kTitleKitchenValue;
}

//: #4B43DE
- (NSString *)kName_vitaminData {
    /* static */ NSString *kName_vitaminData = nil;
    if (!kName_vitaminData) {
		NSArray<NSString *> *origin = @[@"7", @"25", @"5", @"26", @"100", @"10", @"27", @"41", @"27", @"26", @"43", @"44", @"226"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_vitaminData = [self StringFromSquadData:value];
    }
    return kName_vitaminData;
}

//: contact_tag_fragment_cancel
- (NSString *)kTitleValueString {
    /* static */ NSString *kTitleValueString = nil;
    if (!kTitleValueString) {
		NSArray<NSString *> *origin = @[@"27", @"59", @"11", @"153", @"98", @"173", @"169", @"9", @"79", @"74", @"14", @"40", @"52", @"51", @"57", @"38", @"40", @"57", @"36", @"57", @"38", @"44", @"36", @"43", @"55", @"38", @"44", @"50", @"42", @"51", @"57", @"36", @"40", @"38", @"51", @"40", @"42", @"49", @"59"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleValueString = [self StringFromSquadData:value];
    }
    return kTitleValueString;
}

//: #5D5F66
- (NSString *)kNameInspectorData {
    /* static */ NSString *kNameInspectorData = nil;
    if (!kNameInspectorData) {
		NSArray<NSString *> *origin = @[@"7", @"49", @"9", @"67", @"200", @"131", @"157", @"219", @"149", @"242", @"4", @"19", @"4", @"21", @"5", @"5", @"234"];
		NSData *data = [SquadData SquadDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameInspectorData = [self StringFromSquadData:value];
    }
    return kNameInspectorData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  YearView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONSetGroupNickNameView.h"
#import "YearView.h"

//: @interface ZMONSetGroupNickNameView ()<UITextFieldDelegate>
@interface YearView ()<UITextFieldDelegate>

//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;

//: @end
@end

//: @implementation ZMONSetGroupNickNameView
@implementation YearView

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
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text =[FFFLanguageManager getTextWithKey:@"my_group_name"];
        _titleLabel.text =[MakeManager cell:[[SquadData sharedInstance] kNameImageTideOutfitData]];
    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
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
//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}
//: - (void)initUI{
- (void)initPop{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-202)/2, [[UIScreen mainScreen] bounds].size.width-40, 202)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-202)/2, [[UIScreen mainScreen] bounds].size.width-40, 202)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 40);

    //: [_box addSubview:self.searchView];
    [_box addSubview:self.searchView];
    //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+15, [[UIScreen mainScreen] bounds].size.width-80, 48);
    self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+15, [[UIScreen mainScreen] bounds].size.width-80, 48);

//    [_box addSubview:self.numLabel];
//    self.numLabel.frame = CGRectMake(20, self.searchView.bottom+10, SCREEN_WIDTH-80, 20);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 202-height-15, width, height);
    self.closeBtn.frame = CGRectMake(20, 202-height-15, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 202-height-15, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 202-height-15, width, height);



//    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-508, SCREEN_WIDTH, 508);
    //: return YES;
    return YES;
}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
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
        [_closeBtn setTitleColor:[UIColor cell:[[SquadData sharedInstance] kNameInspectorData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[SquadData sharedInstance] kTitleValueString]] forState:UIControlStateNormal];
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
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
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
        [self initPop];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
}

//: - (void)handleSubmit{
- (void)eigenvalueFor{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: self.speiceBackBlock(self.searchField.text);
    self.speiceBackBlock(self.searchField.text);

}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor cell:[[SquadData sharedInstance] kTitleKitchenValue]];
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
        _searchView.backgroundColor = [UIColor cell:[[SquadData sharedInstance] kTitleKitchenValue]];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;
//        _searchView.layer.borderWidth = 1;
//        _searchView.layer.borderColor = ThemeColor.CGColor;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
        _searchField.placeholder = [MakeManager cell:[[SquadData sharedInstance] kContent_denseString]];
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


//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-210, SCREEN_WIDTH, 210);
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}

//: - (void)animationShow
- (void)animationQuick
{
    //: self.hidden = NO;
    self.hidden = NO;
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
        _numLabel.textColor = [UIColor cell:[[SquadData sharedInstance] kNameInspectorData]];
    }
    //: return _numLabel;
    return _numLabel;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(eigenvalueFor) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[[SquadData sharedInstance] kNameAircraftString]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[[SquadData sharedInstance] kName_vitaminData]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: @end
@end