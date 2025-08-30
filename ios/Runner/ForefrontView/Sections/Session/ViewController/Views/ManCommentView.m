
#import <Foundation/Foundation.h>

@interface ConfrontData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ConfrontData

+ (instancetype)sharedInstance {
    static ConfrontData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ConfrontDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ConfrontDataToCache:(Byte *)data {
    int inspireStep = data[0];
    Byte flushNut = data[1];
    int rental = data[2];
    for (int i = rental; i < rental + inspireStep; i++) {
        int value = data[i] + flushNut;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[rental + inspireStep] = 0;
    return data + rental;
}

- (NSString *)StringFromConfrontData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConfrontDataToCache:data]];
}

//: report_reasons8
- (NSString *)kText_magData {
    /* static */ NSString *kText_magData = nil;
    if (!kText_magData) {
		NSArray<NSNumber *> *origin = @[@15, @7, @10, @141, @156, @59, @151, @18, @244, @20, @107, @94, @105, @104, @107, @109, @88, @107, @94, @90, @108, @104, @103, @108, @49, @171];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_magData = [self StringFromConfrontData:value];
    }
    return kText_magData;
}

//: contact_tag_fragment_sure
- (NSString *)kTitleBronzeServingDominantText {
    /* static */ NSString *kTitleBronzeServingDominantText = nil;
    if (!kTitleBronzeServingDominantText) {
		NSArray<NSNumber *> *origin = @[@25, @29, @10, @147, @149, @60, @182, @142, @209, @149, @70, @82, @81, @87, @68, @70, @87, @66, @87, @68, @74, @66, @73, @85, @68, @74, @80, @72, @81, @87, @66, @86, @88, @85, @72, @225];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleBronzeServingDominantText = [self StringFromConfrontData:value];
    }
    return kTitleBronzeServingDominantText;
}

//: #999999
- (NSString *)kTitle_squadData {
    /* static */ NSString *kTitle_squadData = nil;
    if (!kTitle_squadData) {
		NSArray<NSNumber *> *origin = @[@7, @72, @11, @42, @19, @200, @27, @32, @205, @72, @140, @219, @241, @241, @241, @241, @241, @241, @200];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_squadData = [self StringFromConfrontData:value];
    }
    return kTitle_squadData;
}

//: #4B43DE
- (NSString *)kTitlePosterData {
    /* static */ NSString *kTitlePosterData = nil;
    if (!kTitlePosterData) {
		NSArray<NSNumber *> *origin = @[@7, @76, @6, @130, @67, @35, @215, @232, @246, @232, @231, @248, @249, @59];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePosterData = [self StringFromConfrontData:value];
    }
    return kTitlePosterData;
}

//: contact_tag_fragment_cancel
- (NSString *)kTitleStableWithHardwareString {
    /* static */ NSString *kTitleStableWithHardwareString = nil;
    if (!kTitleStableWithHardwareString) {
		NSArray<NSNumber *> *origin = @[@27, @2, @10, @65, @43, @202, @209, @213, @254, @25, @97, @109, @108, @114, @95, @97, @114, @93, @114, @95, @101, @93, @100, @112, @95, @101, @107, @99, @108, @114, @93, @97, @95, @108, @97, @99, @106, @100];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleStableWithHardwareString = [self StringFromConfrontData:value];
    }
    return kTitleStableWithHardwareString;
}

//: report_Content
- (NSString *)kContent_howeverData {
    /* static */ NSString *kContent_howeverData = nil;
    if (!kContent_howeverData) {
		NSArray<NSNumber *> *origin = @[@14, @88, @8, @69, @236, @72, @97, @202, @26, @13, @24, @23, @26, @28, @7, @235, @23, @22, @28, @13, @22, @28, @176];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_howeverData = [self StringFromConfrontData:value];
    }
    return kContent_howeverData;
}

//: icon_accessory_normal
- (NSString *)kName_normalMonthString {
    /* static */ NSString *kName_normalMonthString = nil;
    if (!kName_normalMonthString) {
		NSArray<NSNumber *> *origin = @[@21, @68, @6, @140, @149, @168, @37, @31, @43, @42, @27, @29, @31, @31, @33, @47, @47, @43, @46, @53, @27, @42, @43, @46, @41, @29, @40, @81];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_normalMonthString = [self StringFromConfrontData:value];
    }
    return kName_normalMonthString;
}

//: #5D5F66
- (NSString *)kNameShowQuestValue {
    /* static */ NSString *kNameShowQuestValue = nil;
    if (!kNameShowQuestValue) {
		NSArray<NSNumber *> *origin = @[@7, @29, @10, @242, @107, @81, @56, @71, @157, @211, @6, @24, @39, @24, @41, @25, @25, @95];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameShowQuestValue = [self StringFromConfrontData:value];
    }
    return kNameShowQuestValue;
}

//: report_reasons9
- (NSString *)kText_ratherUrgeData {
    /* static */ NSString *kText_ratherUrgeData = nil;
    if (!kText_ratherUrgeData) {
		NSArray<NSNumber *> *origin = @[@15, @28, @7, @188, @68, @91, @208, @86, @73, @84, @83, @86, @88, @67, @86, @73, @69, @87, @83, @82, @87, @29, @255];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_ratherUrgeData = [self StringFromConfrontData:value];
    }
    return kText_ratherUrgeData;
}

//: icon_accessory_selected
- (NSString *)kContentBeautyName {
    /* static */ NSString *kContentBeautyName = nil;
    if (!kContentBeautyName) {
		NSArray<NSNumber *> *origin = @[@23, @26, @9, @36, @67, @100, @130, @212, @255, @79, @73, @85, @84, @69, @71, @73, @73, @75, @89, @89, @85, @88, @95, @69, @89, @75, @82, @75, @73, @90, @75, @74, @69];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentBeautyName = [self StringFromConfrontData:value];
    }
    return kContentBeautyName;
}

//: #333333
- (NSString *)kNameAttitudeValue {
    /* static */ NSString *kNameAttitudeValue = nil;
    if (!kNameAttitudeValue) {
		NSArray<NSNumber *> *origin = @[@7, @78, @8, @70, @119, @59, @7, @108, @213, @229, @229, @229, @229, @229, @229, @148];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameAttitudeValue = [self StringFromConfrontData:value];
    }
    return kNameAttitudeValue;
}

//: report_Tip
- (NSString *)kTitle_merelyColorValue {
    /* static */ NSString *kTitle_merelyColorValue = nil;
    if (!kTitle_merelyColorValue) {
		NSArray<NSNumber *> *origin = @[@10, @73, @5, @183, @150, @41, @28, @39, @38, @41, @43, @22, @11, @32, @39, @5];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_merelyColorValue = [self StringFromConfrontData:value];
    }
    return kTitle_merelyColorValue;
}

//: report_reasons7
- (NSString *)kText_barModelValue {
    /* static */ NSString *kText_barModelValue = nil;
    if (!kText_barModelValue) {
		NSArray<NSNumber *> *origin = @[@15, @89, @5, @94, @22, @25, @12, @23, @22, @25, @27, @6, @25, @12, @8, @26, @22, @21, @26, @222, @109];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_barModelValue = [self StringFromConfrontData:value];
    }
    return kText_barModelValue;
}

//: report_reasons10
- (NSString *)kText_artiData {
    /* static */ NSString *kText_artiData = nil;
    if (!kText_artiData) {
		NSArray<NSNumber *> *origin = @[@16, @24, @10, @98, @32, @26, @63, @149, @232, @1, @90, @77, @88, @87, @90, @92, @71, @90, @77, @73, @91, @87, @86, @91, @25, @24, @6];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_artiData = [self StringFromConfrontData:value];
    }
    return kText_artiData;
}

//: report_reasons6
- (NSString *)kTitleDominantString {
    /* static */ NSString *kTitleDominantString = nil;
    if (!kTitleDominantString) {
		NSArray<NSNumber *> *origin = @[@15, @66, @10, @10, @124, @217, @34, @55, @206, @43, @48, @35, @46, @45, @48, @50, @29, @48, @35, @31, @49, @45, @44, @49, @244, @211];
		NSData *data = [ConfrontData ConfrontDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleDominantString = [self StringFromConfrontData:value];
    }
    return kTitleDominantString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManCommentView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONTranslateView.h"
#import "ManCommentView.h"

//: @interface ZMONTranslateView ()
@interface ManCommentView ()

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
@implementation ManCommentView

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
        [self initClickUi];

        //: self.selectButtons = @[[DisplayLanguageManager getTextWithKey:@"report_reasons7"],[DisplayLanguageManager getTextWithKey:@"report_reasons8"],[DisplayLanguageManager getTextWithKey:@"report_reasons9"],[DisplayLanguageManager getTextWithKey:@"report_reasons10"],[DisplayLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[MakeManager cell:[[ConfrontData sharedInstance] kText_barModelValue]],[MakeManager cell:[[ConfrontData sharedInstance] kText_magData]],[MakeManager cell:[[ConfrontData sharedInstance] kText_ratherUrgeData]],[MakeManager cell:[[ConfrontData sharedInstance] kText_artiData]],[MakeManager cell:[[ConfrontData sharedInstance] kTitleDominantString]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initClickUi{
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
    labsub.textColor = [UIColor cell:[[ConfrontData sharedInstance] kTitle_squadData]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [DisplayLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [MakeManager cell:[[ConfrontData sharedInstance] kTitle_merelyColorValue]];
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
        //: _titleLabel.text = [DisplayLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [MakeManager cell:[[ConfrontData sharedInstance] kContent_howeverData]];
    }
    //: return _titleLabel;
    return _titleLabel;
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
        [Btn1 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kName_normalMonthString]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kContentBeautyName]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons7"] forState:UIControlStateNormal];
        [Btn1 setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kText_barModelValue]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameAttitudeValue]] forState:UIControlStateNormal];
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
        [Btn2 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kName_normalMonthString]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kContentBeautyName]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons8"] forState:UIControlStateNormal];
        [Btn2 setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kText_magData]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameAttitudeValue]] forState:UIControlStateNormal];
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
        [Btn3 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kName_normalMonthString]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kContentBeautyName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons9"] forState:UIControlStateNormal];
        [Btn3 setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kText_ratherUrgeData]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameAttitudeValue]] forState:UIControlStateNormal];
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
        [Btn4 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kName_normalMonthString]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kContentBeautyName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons10"] forState:UIControlStateNormal];
        [Btn4 setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kText_artiData]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameAttitudeValue]] forState:UIControlStateNormal];
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
        [Btn5 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kName_normalMonthString]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[[ConfrontData sharedInstance] kContentBeautyName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[DisplayLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn5 setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kTitleDominantString]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameAttitudeValue]] forState:UIControlStateNormal];
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
        [_closeBtn addTarget:self action:@selector(ingatheringBy) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor cell:[[ConfrontData sharedInstance] kNameShowQuestValue]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kTitleStableWithHardwareString]] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(eigenvalueFor) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[[ConfrontData sharedInstance] kTitleBronzeServingDominantText]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[[ConfrontData sharedInstance] kTitlePosterData]];
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
- (void)eigenvalueFor
{
    //: [self animationClose];
    [self ingatheringBy];
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];

    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitContentButton:)]) {
    if ([self.delegate respondsToSelector:@selector(withCell:)]) {
        //: [self.delegate didTouchSubmitContentButton:self.selectButtons[self.index]];
        [self.delegate withCell:self.selectButtons[self.index]];
    }


}


//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)dismissShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
