
#import <Foundation/Foundation.h>

@interface ShadeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShadeData

//: contact_tag_fragment_sure
- (NSString *)kTitleBridgeValue {
    /* static */ NSString *kTitleBridgeValue = nil;
    if (!kTitleBridgeValue) {
		NSString *origin = @"1925060C505C3E4A494F3C3E4F3A4F3C423A414D3C424840494F3A4E504D4085";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleBridgeValue = [self StringFromShadeData:value];
    }
    return kTitleBridgeValue;
}

//: #BCC1C8
- (NSString *)kNameValue {
    /* static */ NSString *kNameValue = nil;
    if (!kNameValue) {
		NSString *origin = @"071B0A57D1C7E6E8DE4A0827282816281D9B";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameValue = [self StringFromShadeData:value];
    }
    return kNameValue;
}

+ (instancetype)sharedInstance {
    static ShadeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: Read_agree_agreement
- (NSString *)kTextFileString {
    /* static */ NSString *kTextFileString = nil;
    if (!kTextFileString) {
		NSString *origin = @"143C089D3D4CD5EC1629252823252B36292923252B362929312932384E";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextFileString = [self StringFromShadeData:value];
    }
    return kTextFileString;
}

- (NSString *)StringFromShadeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShadeDataToCache:data]];
}

//: contact_tag_fragment_cancel
- (NSString *)kNameNumberactData {
    /* static */ NSString *kNameNumberactData = nil;
    if (!kNameNumberactData) {
		NSString *origin = @"1B5306BC3F98101C1B210E10210C210E140C131F0E141A121B210C100E1B101219B6";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameNumberactData = [self StringFromShadeData:value];
    }
    return kNameNumberactData;
}

//: safe_success_step
- (NSString *)kTitle_suggestTeamValue {
    /* static */ NSString *kTitle_suggestTeamValue = nil;
    if (!kTitle_suggestTeamValue) {
		NSString *origin = @"111407381C7D955F4D52514B5F614F4F515F5F4B5F60515CA6";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_suggestTeamValue = [self StringFromShadeData:value];
    }
    return kTitle_suggestTeamValue;
}

//: #5D5F66
- (NSString *)kTitleRecordValue {
    /* static */ NSString *kTitleRecordValue = nil;
    if (!kTitleRecordValue) {
		NSString *origin = @"07490A74189C8965CD29DAECFBECFDEDED10";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRecordValue = [self StringFromShadeData:value];
    }
    return kTitleRecordValue;
}

//: Vertify_login_password
- (NSString *)kName_hardwareValue {
    /* static */ NSString *kName_hardwareValue = nil;
    if (!kName_hardwareValue) {
		NSString *origin = @"16500471061522241916290F1C1F17191E0F20112323271F22140A";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_hardwareValue = [self StringFromShadeData:value];
    }
    return kName_hardwareValue;
}

//: safe_bind_phone_icon
- (NSString *)kName_aircraftValue {
    /* static */ NSString *kName_aircraftValue = nil;
    if (!kName_aircraftValue) {
		NSString *origin = @"1447032C1A1F1E181B22271D18292128271E18221C282774";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_aircraftValue = [self StringFromShadeData:value];
    }
    return kName_aircraftValue;
}

+ (NSData *)ShadeDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: #FF483D
- (NSString *)kContentScaleRawName {
    /* static */ NSString *kContentScaleRawName = nil;
    if (!kContentScaleRawName) {
		NSString *origin = @"074F0BAF43451C46C46A1ED4F7F7E5E9E4F51B";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentScaleRawName = [self StringFromShadeData:value];
    }
    return kContentScaleRawName;
}

//: safe_arrow_next
- (NSString *)kTitle_detailToothData {
    /* static */ NSString *kTitle_detailToothData = nil;
    if (!kTitle_detailToothData) {
		NSString *origin = @"0F0D036654595852546565626A5261586B67DC";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_detailToothData = [self StringFromShadeData:value];
    }
    return kTitle_detailToothData;
}

//: Complete_operation
- (NSString *)kTitleShallowValue {
    /* static */ NSString *kTitleShallowValue = nil;
    if (!kTitleShallowValue) {
		NSString *origin = @"12470488FC282629251E2D1E1828291E2B1A2D222827CA";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleShallowValue = [self StringFromShadeData:value];
    }
    return kTitleShallowValue;
}

//: #EEEEEE
- (NSString *)kTextEndValue {
    /* static */ NSString *kTextEndValue = nil;
    if (!kTextEndValue) {
		NSString *origin = @"0752040AD1F3F3F3F3F3F384";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextEndValue = [self StringFromShadeData:value];
    }
    return kTextEndValue;
}

//: #4B43DE
- (NSString *)kTitleOutdoorData {
    /* static */ NSString *kTitleOutdoorData = nil;
    if (!kTitleOutdoorData) {
		NSString *origin = @"0746082049849C65DDEEFCEEEDFEFF1A";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleOutdoorData = [self StringFromShadeData:value];
    }
    return kTitleOutdoorData;
}

//: wrong_password
- (NSString *)kName_aircraftData {
    /* static */ NSString *kName_aircraftData = nil;
    if (!kName_aircraftData) {
		NSString *origin = @"0E1609C9E52F21F2E5615C595851495A4B5D5D61595C4E69";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_aircraftData = [self StringFromShadeData:value];
    }
    return kName_aircraftData;
}

//: get_pay_psw_activity_input_psw
- (NSString *)kTitle_consumptionString {
    /* static */ NSString *kTitle_consumptionString = nil;
    if (!kTitle_consumptionString) {
		NSString *origin = @"1E3E0815B41FF19C2927362132233B21323539212325362B382B363B212B303237362132353979";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_consumptionString = [self StringFromShadeData:value];
    }
    return kTitle_consumptionString;
}

- (Byte *)ShadeDataToCache:(Byte *)data {
    int bringHome = data[0];
    Byte stableFileChick = data[1];
    int force = data[2];
    for (int i = force; i < force + bringHome; i++) {
        int value = data[i] + stableFileChick;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[force + bringHome] = 0;
    return data + force;
}

//: ic-delete_account
- (NSString *)kTextImageData {
    /* static */ NSString *kTextImageData = nil;
    if (!kTextImageData) {
		NSString *origin = @"111504F5544E184F5057505F504A4C4E4E5A60595FA9";
		NSData *data = [ShadeData ShadeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextImageData = [self StringFromShadeData:value];
    }
    return kTextImageData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommingleView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountNextView.h"
#import "CommingleView.h"

//: @interface ZMONDeactivateAccountNextView ()<UITextFieldDelegate>
@interface CommingleView ()<UITextFieldDelegate>

//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;

//: @end
@end

//: @implementation ZMONDeactivateAccountNextView
@implementation CommingleView

//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}


//: - (void)initUI
- (void)initViewToTip
{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);
    self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);

//    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, SCREEN_WIDTH-70, 30)];
//    labtitle.font = [UIFont systemFontOfSize:14.f];
//    labtitle.textColor = [UIColor blackColor];
//    labtitle.text = @"Confirm Account Deactivation?";
//    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, self.img.bottom+20, SCREEN_WIDTH-70, 54);

        //: [_box addSubview:self.searchView];
        [_box addSubview:self.searchView];
        //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);
        self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);

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
        [self initViewToTip];

    }
    //: return self;
    return self;
}

//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
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
        [_closeBtn setTitleColor:[UIColor cell:[[ShadeData sharedInstance] kTitleRecordValue]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[ShadeData sharedInstance] kNameNumberactData]] forState:UIControlStateNormal];
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
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
}
//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[ShadeData sharedInstance] kTextImageData]]];
    }
    //: return _img;
    return _img;
}
//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:[[ShadeData sharedInstance] kTitle_suggestTeamValue]];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];
//        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
//        numView1.backgroundColor = ThemeColor;
//        numView1.layer.cornerRadius = 10;
//        numView1.layer.masksToBounds = YES;
//        [view1 addSubview:numView1];
//        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
//        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
//        labtitlenum1.textColor = [UIColor whiteColor];
//        labtitlenum1.text = @"1";
//        labtitlenum1.textAlignment = NSTextAlignmentCenter;
//        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [DisplayLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [MakeManager cell:[[ShadeData sharedInstance] kTextFileString]];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        numView2.backgroundColor = [UIColor cell:[[ShadeData sharedInstance] kTitleOutdoorData]];
        //: numView2.layer.cornerRadius = 10;
        numView2.layer.cornerRadius = 10;
        //: numView2.layer.masksToBounds = YES;
        numView2.layer.masksToBounds = YES;
        //: [view2 addSubview:numView2];
        [view2 addSubview:numView2];
        //: UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum2.textColor = [UIColor whiteColor];
        labtitlenum2.textColor = [UIColor whiteColor];
        //: labtitlenum2.text = @"2";
        labtitlenum2.text = @"2";
        //: labtitlenum2.textAlignment = NSTextAlignmentCenter;
        labtitlenum2.textAlignment = NSTextAlignmentCenter;
        //: [numView2 addSubview:labtitlenum2];
        [numView2 addSubview:labtitlenum2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [DisplayLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [MakeManager cell:[[ShadeData sharedInstance] kName_hardwareValue]];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView3.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView3.backgroundColor = [UIColor cell:[[ShadeData sharedInstance] kNameValue]];
        //: numView3.layer.cornerRadius = 10;
        numView3.layer.cornerRadius = 10;
        //: numView3.layer.masksToBounds = YES;
        numView3.layer.masksToBounds = YES;
        //: [view3 addSubview:numView3];
        [view3 addSubview:numView3];
        //: UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum3.textColor = [UIColor whiteColor];
        labtitlenum3.textColor = [UIColor whiteColor];
        //: labtitlenum3.text = @"3";
        labtitlenum3.text = @"3";
        //: labtitlenum3.textAlignment = NSTextAlignmentCenter;
        labtitlenum3.textAlignment = NSTextAlignmentCenter;
        //: [numView3 addSubview:labtitlenum3];
        [numView3 addSubview:labtitlenum3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle3.textColor = [UIColor cell:[[ShadeData sharedInstance] kTitleRecordValue]];
        //: labtitle3.text = [DisplayLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [MakeManager cell:[[ShadeData sharedInstance] kTitleShallowValue]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[[ShadeData sharedInstance] kTitle_detailToothData]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[[ShadeData sharedInstance] kTitle_detailToothData]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}

//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)toScale:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}


//: - (void)animationShow
- (void)book
{
    //: self.hidden = NO;
    self.hidden = NO;

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
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _titleLabel;
    return _titleLabel;
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
        [_sureBtn setTitle:[MakeManager cell:[[ShadeData sharedInstance] kTitleBridgeValue]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor cell:[[ShadeData sharedInstance] kContentScaleRawName]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}




//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.layer.borderWidth = 1;
        _searchView.layer.borderWidth = 1;
        //: _searchView.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        _searchView.layer.borderColor = [UIColor cell:[[ShadeData sharedInstance] kTextEndValue]].CGColor;
        //: _searchView.backgroundColor = [UIColor whiteColor];
        _searchView.backgroundColor = [UIColor whiteColor];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;

        //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
        imgname.image = [UIImage imageNamed:[[ShadeData sharedInstance] kName_aircraftValue]];
        //: [_searchView addSubview:imgname];
        [_searchView addSubview:imgname];

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        //: _searchField.placeholder = [DisplayLanguageManager getTextWithKey:@"get_pay_psw_activity_input_psw"];
        _searchField.placeholder = [MakeManager cell:[[ShadeData sharedInstance] kTitle_consumptionString]];
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

//: - (void)updateTheNickname{
- (void)valueTitle{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: NSString *pcode = [NIMUserDefaults standardUserDefaults].pCode?:@"";
    NSString *pcode = [TableContext name].pCode?:@"";
    //: if([pcode isEqualToString:self.searchField.text]){
    if([pcode isEqualToString:self.searchField.text]){
        //: self.speiceBackBlock(self.searchField.text);
        self.speiceBackBlock(self.searchField.text);

    //: }else{
    }else{

        //: [self makeToast:[DisplayLanguageManager getTextWithKey:@"wrong_password"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[MakeManager cell:[[ShadeData sharedInstance] kName_aircraftData]] duration:2.0 position:CSToastPositionCenter];
    }


}


//: @end
@end
