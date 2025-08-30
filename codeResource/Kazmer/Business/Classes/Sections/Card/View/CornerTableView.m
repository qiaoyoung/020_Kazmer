
#import <Foundation/Foundation.h>

typedef struct {
    Byte viewPin;
    Byte *itemWith;
    unsigned int restore;
	int timePeriod;
} StructPlaceTapData;

@interface PlaceTapData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PlaceTapData

- (NSString *)StringFromPlaceTapData:(StructPlaceTapData *)data {
    return [NSString stringWithUTF8String:(char *)[self PlaceTapDataToByte:data]];
}

//: report_User
- (NSString *)kNamePinString {
    /* static */ NSString *kNamePinString = nil;
    if (!kNamePinString) {
		NSArray<NSString *> *origin = @[@"29", @"10", @"31", @"0", @"29", @"27", @"48", @"58", @"28", @"10", @"29", @"149"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){111, (Byte *)data.bytes, 11, 167};
        kNamePinString = [self StringFromPlaceTapData:&value];
    }
    return kNamePinString;
}

//: icon_accessory_selected
- (NSString *)kName_withData {
    /* static */ NSString *kName_withData = nil;
    if (!kName_withData) {
		NSArray<NSString *> *origin = @[@"122", @"112", @"124", @"125", @"76", @"114", @"112", @"112", @"118", @"96", @"96", @"124", @"97", @"106", @"76", @"96", @"118", @"127", @"118", @"112", @"103", @"118", @"119", @"13"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){19, (Byte *)data.bytes, 23, 163};
        kName_withData = [self StringFromPlaceTapData:&value];
    }
    return kName_withData;
}

//: icon_accessory_normal
- (NSString *)kName_contentData {
    /* static */ NSString *kName_contentData = nil;
    if (!kName_contentData) {
		NSArray<NSString *> *origin = @[@"63", @"53", @"57", @"56", @"9", @"55", @"53", @"53", @"51", @"37", @"37", @"57", @"36", @"47", @"9", @"56", @"57", @"36", @"59", @"55", @"58", @"223"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){86, (Byte *)data.bytes, 21, 145};
        kName_contentData = [self StringFromPlaceTapData:&value];
    }
    return kName_contentData;
}

+ (instancetype)sharedInstance {
    static PlaceTapData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: report_reasons4
- (NSString *)kContentColorValue {
    /* static */ NSString *kContentColorValue = nil;
    if (!kContentColorValue) {
		NSArray<NSString *> *origin = @[@"132", @"147", @"134", @"153", @"132", @"130", @"169", @"132", @"147", @"151", @"133", @"153", @"152", @"133", @"194", @"184"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){246, (Byte *)data.bytes, 15, 176};
        kContentColorValue = [self StringFromPlaceTapData:&value];
    }
    return kContentColorValue;
}

+ (NSData *)PlaceTapDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: report_Tip
- (NSString *)kContentWithValue {
    /* static */ NSString *kContentWithValue = nil;
    if (!kContentWithValue) {
		NSArray<NSString *> *origin = @[@"204", @"219", @"206", @"209", @"204", @"202", @"225", @"234", @"215", @"206", @"76"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){190, (Byte *)data.bytes, 10, 29};
        kContentWithValue = [self StringFromPlaceTapData:&value];
    }
    return kContentWithValue;
}

//: report_reasons1
- (NSString *)kTitle_textString {
    /* static */ NSString *kTitle_textString = nil;
    if (!kTitle_textString) {
		NSArray<NSString *> *origin = @[@"253", @"234", @"255", @"224", @"253", @"251", @"208", @"253", @"234", @"238", @"252", @"224", @"225", @"252", @"190", @"102"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){143, (Byte *)data.bytes, 15, 131};
        kTitle_textString = [self StringFromPlaceTapData:&value];
    }
    return kTitle_textString;
}

//: report_reasons2
- (NSString *)kText_viewData {
    /* static */ NSString *kText_viewData = nil;
    if (!kText_viewData) {
		NSArray<NSString *> *origin = @[@"1", @"22", @"3", @"28", @"1", @"7", @"44", @"1", @"22", @"18", @"0", @"28", @"29", @"0", @"65", @"118"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){115, (Byte *)data.bytes, 15, 19};
        kText_viewData = [self StringFromPlaceTapData:&value];
    }
    return kText_viewData;
}

- (Byte *)PlaceTapDataToByte:(StructPlaceTapData *)data {
    for (int i = 0; i < data->restore; i++) {
        data->itemWith[i] ^= data->viewPin;
    }
    data->itemWith[data->restore] = 0;
	if (data->restore >= 1) {
		data->timePeriod = data->itemWith[0];
	}
    return data->itemWith;
}

//: contact_tag_fragment_cancel
- (NSString *)kNameHideMessageValue {
    /* static */ NSString *kNameHideMessageValue = nil;
    if (!kNameHideMessageValue) {
		NSArray<NSString *> *origin = @[@"243", @"255", @"254", @"228", @"241", @"243", @"228", @"207", @"228", @"241", @"247", @"207", @"246", @"226", @"241", @"247", @"253", @"245", @"254", @"228", @"207", @"243", @"241", @"254", @"243", @"245", @"252", @"197"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){144, (Byte *)data.bytes, 27, 106};
        kNameHideMessageValue = [self StringFromPlaceTapData:&value];
    }
    return kNameHideMessageValue;
}

//: report_reasons3
- (NSString *)kTitleTeamText {
    /* static */ NSString *kTitleTeamText = nil;
    if (!kTitleTeamText) {
		NSArray<NSString *> *origin = @[@"68", @"83", @"70", @"89", @"68", @"66", @"105", @"68", @"83", @"87", @"69", @"89", @"88", @"69", @"5", @"231"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){54, (Byte *)data.bytes, 15, 50};
        kTitleTeamText = [self StringFromPlaceTapData:&value];
    }
    return kTitleTeamText;
}

//: #333333
- (NSString *)kTextTopString {
    /* static */ NSString *kTextTopString = nil;
    if (!kTextTopString) {
		NSArray<NSString *> *origin = @[@"136", @"152", @"152", @"152", @"152", @"152", @"152", @"103"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){171, (Byte *)data.bytes, 7, 143};
        kTextTopString = [self StringFromPlaceTapData:&value];
    }
    return kTextTopString;
}

//: #999999
- (NSString *)kText_mainData {
    /* static */ NSString *kText_mainData = nil;
    if (!kText_mainData) {
		NSArray<NSString *> *origin = @[@"59", @"33", @"33", @"33", @"33", @"33", @"33", @"89"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){24, (Byte *)data.bytes, 7, 108};
        kText_mainData = [self StringFromPlaceTapData:&value];
    }
    return kText_mainData;
}

//: report_reasons6
- (NSString *)kName_deviceValue {
    /* static */ NSString *kName_deviceValue = nil;
    if (!kName_deviceValue) {
		NSArray<NSString *> *origin = @[@"72", @"95", @"74", @"85", @"72", @"78", @"101", @"72", @"95", @"91", @"73", @"85", @"84", @"73", @"12", @"168"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){58, (Byte *)data.bytes, 15, 132};
        kName_deviceValue = [self StringFromPlaceTapData:&value];
    }
    return kName_deviceValue;
}

//: #4B43DE
- (NSString *)kName_addValueString {
    /* static */ NSString *kName_addValueString = nil;
    if (!kName_addValueString) {
		NSArray<NSString *> *origin = @[@"76", @"91", @"45", @"91", @"92", @"43", @"42", @"252"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){111, (Byte *)data.bytes, 7, 224};
        kName_addValueString = [self StringFromPlaceTapData:&value];
    }
    return kName_addValueString;
}

//: #5D5F66
- (NSString *)kTitle_pinFrameData {
    /* static */ NSString *kTitle_pinFrameData = nil;
    if (!kTitle_pinFrameData) {
		NSArray<NSString *> *origin = @[@"100", @"114", @"3", @"114", @"1", @"113", @"113", @"249"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){71, (Byte *)data.bytes, 7, 21};
        kTitle_pinFrameData = [self StringFromPlaceTapData:&value];
    }
    return kTitle_pinFrameData;
}

//: contact_tag_fragment_sure
- (NSString *)kName_scaleData {
    /* static */ NSString *kName_scaleData = nil;
    if (!kName_scaleData) {
		NSArray<NSString *> *origin = @[@"220", @"208", @"209", @"203", @"222", @"220", @"203", @"224", @"203", @"222", @"216", @"224", @"217", @"205", @"222", @"216", @"210", @"218", @"209", @"203", @"224", @"204", @"202", @"205", @"218", @"215"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){191, (Byte *)data.bytes, 25, 197};
        kName_scaleData = [self StringFromPlaceTapData:&value];
    }
    return kName_scaleData;
}

//: report_reasons5
- (NSString *)kName_detailData {
    /* static */ NSString *kName_detailData = nil;
    if (!kName_detailData) {
		NSArray<NSString *> *origin = @[@"101", @"114", @"103", @"120", @"101", @"99", @"72", @"101", @"114", @"118", @"100", @"120", @"121", @"100", @"34", @"170"];
		NSData *data = [PlaceTapData PlaceTapDataToData:origin];
        StructPlaceTapData value = (StructPlaceTapData){23, (Byte *)data.bytes, 15, 58};
        kName_detailData = [self StringFromPlaceTapData:&value];
    }
    return kName_detailData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerTableView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportUserView.h"
#import "CornerTableView.h"

//: @interface ZMONReportUserView ()
@interface CornerTableView ()

//: @property (nonatomic,assign) NSInteger index;
@property (nonatomic,assign) NSInteger index;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;
//: @property (nonatomic,strong) NSArray *selectButtons;
@property (nonatomic,strong) NSArray *selectButtons;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;

//: @end
@end

//: @implementation ZMONReportUserView
@implementation CornerTableView

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
        [_closeBtn setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTitle_pinFrameData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kNameHideMessageValue]] forState:UIControlStateNormal];
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
        //: _titleLabel.text = [DisplayLanguageManager getTextWithKey:@"report_User"];
        _titleLabel.text = [MakeManager cell:[[PlaceTapData sharedInstance] kNamePinString]];
    }
    //: return _titleLabel;
    return _titleLabel;
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
- (void)eigenvalueFor
{
    //: [self animationClose];
    [self ingatheringBy];
//
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitButton:)]) {
    if ([self.delegate respondsToSelector:@selector(sessions:)]) {
        //: [self.delegate didTouchSubmitButton:self.selectButtons[self.index]];
        [self.delegate sessions:self.selectButtons[self.index]];
    }
}

//: - (void)handleReason:(UIButton *)sender
- (void)shareMax:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if(sender.selected){
    if(sender.selected){
        //: self.index = sender.tag;
        self.index = sender.tag;
    }
}

//: - (void)animationShow
- (void)shouldLast
{
    //: self.hidden = NO;
    self.hidden = NO;
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
        [self initMessage];

        //: self.selectButtons = @[[DisplayLanguageManager getTextWithKey:@"report_reasons1"],[DisplayLanguageManager getTextWithKey:@"report_reasons2"],[DisplayLanguageManager getTextWithKey:@"report_reasons3"],[DisplayLanguageManager getTextWithKey:@"report_reasons4"],[DisplayLanguageManager getTextWithKey:@"report_reasons5"],[DisplayLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[MakeManager cell:[[PlaceTapData sharedInstance] kTitle_textString]],[MakeManager cell:[[PlaceTapData sharedInstance] kText_viewData]],[MakeManager cell:[[PlaceTapData sharedInstance] kTitleTeamText]],[MakeManager cell:[[PlaceTapData sharedInstance] kContentColorValue]],[MakeManager cell:[[PlaceTapData sharedInstance] kName_detailData]],[MakeManager cell:[[PlaceTapData sharedInstance] kName_deviceValue]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
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
        [Btn1 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn1 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons1"] forState:UIControlStateNormal];
        [Btn1 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kTitle_textString]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
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
        [Btn2 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn2 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons2"] forState:UIControlStateNormal];
        [Btn2 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kText_viewData]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
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
        [Btn3 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn3 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons3"] forState:UIControlStateNormal];
        [Btn3 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kTitleTeamText]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
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
        [Btn4 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn4 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons4"] forState:UIControlStateNormal];
        [Btn4 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kContentColorValue]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
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
        [Btn5 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn5 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons5"] forState:UIControlStateNormal];
        [Btn5 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kName_detailData]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
        //: UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn6 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn6 addTarget:self action:@selector(shareMax:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn6 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_contentData]] forState:UIControlStateNormal];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn6 setImage:[UIImage imageNamed:[[PlaceTapData sharedInstance] kName_withData]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn6];
        [_buttonBox addSubview:Btn6];
        //: [Btn6 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn6 setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kName_deviceValue]] forState:UIControlStateNormal];
        //: Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn6 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn6 setTitleColor:[UIColor cell:[[PlaceTapData sharedInstance] kTextTopString]] forState:UIControlStateNormal];
        //: Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn6.tag = 5;
        Btn6.tag = 5;
    }
    //: return _buttonBox;
    return _buttonBox;
}


//: - (void)initUI{
- (void)initMessage{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
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
    labsub.textColor = [UIColor cell:[[PlaceTapData sharedInstance] kText_mainData]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [DisplayLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [MakeManager cell:[[PlaceTapData sharedInstance] kContentWithValue]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
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
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[[PlaceTapData sharedInstance] kName_scaleData]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[[PlaceTapData sharedInstance] kName_addValueString]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}


//: @end
@end
