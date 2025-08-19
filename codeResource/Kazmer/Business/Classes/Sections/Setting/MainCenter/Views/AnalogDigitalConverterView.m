
#import <Foundation/Foundation.h>

typedef struct {
    Byte medicalScienceEmploy;
    Byte *amendmentImage;
    unsigned int history;
	int afterward;
	int circleYaState;
} StructRnaPictureData;

@interface RnaPictureData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RnaPictureData

+ (instancetype)sharedInstance {
    static RnaPictureData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RnaPictureDataToByte:(StructRnaPictureData *)data {
    for (int i = 0; i < data->history; i++) {
        data->amendmentImage[i] ^= data->medicalScienceEmploy;
    }
    data->amendmentImage[data->history] = 0;
	if (data->history >= 2) {
		data->afterward = data->amendmentImage[0];
		data->circleYaState = data->amendmentImage[1];
	}
    return data->amendmentImage;
}

- (NSString *)StringFromRnaPictureData:(StructRnaPictureData *)data {
    return [NSString stringWithUTF8String:(char *)[self RnaPictureDataToByte:data]];
}

//: #5D5F66
- (NSString *)k_cropData {
    /* static */ NSString *k_cropData = nil;
    if (!k_cropData) {
        StructRnaPictureData value = (StructRnaPictureData){207, (Byte []){236, 250, 139, 250, 137, 249, 249, 210}, 7, 146, 53};
        k_cropData = [self StringFromRnaPictureData:&value];
    }
    return k_cropData;
}

//: Irreversible_Operation
- (NSString *)app_markIdent {
    /* static */ NSString *app_markIdent = nil;
    if (!app_markIdent) {
        StructRnaPictureData value = (StructRnaPictureData){236, (Byte []){165, 158, 158, 137, 154, 137, 158, 159, 133, 142, 128, 137, 179, 163, 156, 137, 158, 141, 152, 133, 131, 130, 247}, 22, 226, 224};
        app_markIdent = [self StringFromRnaPictureData:&value];
    }
    return app_markIdent;
}

//: #BCC1C8
- (NSString *)kPeopleValue {
    /* static */ NSString *kPeopleValue = nil;
    if (!kPeopleValue) {
        StructRnaPictureData value = (StructRnaPictureData){219, (Byte []){248, 153, 152, 152, 234, 152, 227, 127}, 7, 162, 9};
        kPeopleValue = [self StringFromRnaPictureData:&value];
    }
    return kPeopleValue;
}

//: Complete_operation
- (NSString *)notiStateText {
    /* static */ NSString *notiStateText = nil;
    if (!notiStateText) {
        StructRnaPictureData value = (StructRnaPictureData){231, (Byte []){164, 136, 138, 151, 139, 130, 147, 130, 184, 136, 151, 130, 149, 134, 147, 142, 136, 137, 57}, 18, 197, 230};
        notiStateText = [self StringFromRnaPictureData:&value];
    }
    return notiStateText;
}

//: Confirm_Account_Deletion
- (NSString *)app_toKey {
    /* static */ NSString *app_toKey = nil;
    if (!app_toKey) {
        StructRnaPictureData value = (StructRnaPictureData){5, (Byte []){70, 106, 107, 99, 108, 119, 104, 90, 68, 102, 102, 106, 112, 107, 113, 90, 65, 96, 105, 96, 113, 108, 106, 107, 139}, 24, 18, 199};
        app_toKey = [self StringFromRnaPictureData:&value];
    }
    return app_toKey;
}

//: Vertify_login_password
- (NSString *)mSkyId {
    /* static */ NSString *mSkyId = nil;
    if (!mSkyId) {
        StructRnaPictureData value = (StructRnaPictureData){56, (Byte []){110, 93, 74, 76, 81, 94, 65, 103, 84, 87, 95, 81, 86, 103, 72, 89, 75, 75, 79, 87, 74, 92, 221}, 22, 168, 63};
        mSkyId = [self StringFromRnaPictureData:&value];
    }
    return mSkyId;
}

//: contact_tag_fragment_sure
- (NSString *)noti_horribleTitle {
    /* static */ NSString *noti_horribleTitle = nil;
    if (!noti_horribleTitle) {
        StructRnaPictureData value = (StructRnaPictureData){199, (Byte []){164, 168, 169, 179, 166, 164, 179, 152, 179, 166, 160, 152, 161, 181, 166, 160, 170, 162, 169, 179, 152, 180, 178, 181, 162, 90}, 25, 53, 208};
        noti_horribleTitle = [self StringFromRnaPictureData:&value];
    }
    return noti_horribleTitle;
}

//: contact_tag_fragment_cancel
- (NSString *)showMyId {
    /* static */ NSString *showMyId = nil;
    if (!showMyId) {
        StructRnaPictureData value = (StructRnaPictureData){69, (Byte []){38, 42, 43, 49, 36, 38, 49, 26, 49, 36, 34, 26, 35, 55, 36, 34, 40, 32, 43, 49, 26, 38, 36, 43, 38, 32, 41, 213}, 27, 215, 113};
        showMyId = [self StringFromRnaPictureData:&value];
    }
    return showMyId;
}

//: #2C3042
- (NSString *)showEnvelopeMsg {
    /* static */ NSString *showEnvelopeMsg = nil;
    if (!showEnvelopeMsg) {
        StructRnaPictureData value = (StructRnaPictureData){36, (Byte []){7, 22, 103, 23, 20, 16, 22, 52}, 7, 34, 97};
        showEnvelopeMsg = [self StringFromRnaPictureData:&value];
    }
    return showEnvelopeMsg;
}

//: login_agreement_normal
- (NSString *)dream_deadlineName {
    /* static */ NSString *dream_deadlineName = nil;
    if (!dream_deadlineName) {
        StructRnaPictureData value = (StructRnaPictureData){112, (Byte []){28, 31, 23, 25, 30, 47, 17, 23, 2, 21, 21, 29, 21, 30, 4, 47, 30, 31, 2, 29, 17, 28, 165}, 22, 58, 157};
        dream_deadlineName = [self StringFromRnaPictureData:&value];
    }
    return dream_deadlineName;
}

//: agree_account_deletion_terms
- (NSString *)show_controlMsg {
    /* static */ NSString *show_controlMsg = nil;
    if (!show_controlMsg) {
        StructRnaPictureData value = (StructRnaPictureData){92, (Byte []){61, 59, 46, 57, 57, 3, 61, 63, 63, 51, 41, 50, 40, 3, 56, 57, 48, 57, 40, 53, 51, 50, 3, 40, 57, 46, 49, 47, 5}, 28, 7, 105};
        show_controlMsg = [self StringFromRnaPictureData:&value];
    }
    return show_controlMsg;
}

//: activity_comment_setting_cancel_account
- (NSString *)mInflationName {
    /* static */ NSString *mInflationName = nil;
    if (!mInflationName) {
        StructRnaPictureData value = (StructRnaPictureData){132, (Byte []){229, 231, 240, 237, 242, 237, 240, 253, 219, 231, 235, 233, 233, 225, 234, 240, 219, 247, 225, 240, 240, 237, 234, 227, 219, 231, 229, 234, 231, 225, 232, 219, 229, 231, 231, 235, 241, 234, 240, 63}, 39, 28, 61};
        mInflationName = [self StringFromRnaPictureData:&value];
    }
    return mInflationName;
}

//: ic-delete_account
- (NSString *)user_commentKey {
    /* static */ NSString *user_commentKey = nil;
    if (!user_commentKey) {
        StructRnaPictureData value = (StructRnaPictureData){210, (Byte []){187, 177, 255, 182, 183, 190, 183, 166, 183, 141, 179, 177, 177, 189, 167, 188, 166, 64}, 17, 252, 66};
        user_commentKey = [self StringFromRnaPictureData:&value];
    }
    return user_commentKey;
}

//: #4B43DE
- (NSString *)m_remindTitle {
    /* static */ NSString *m_remindTitle = nil;
    if (!m_remindTitle) {
        StructRnaPictureData value = (StructRnaPictureData){117, (Byte []){86, 65, 55, 65, 70, 49, 48, 234}, 7, 240, 114};
        m_remindTitle = [self StringFromRnaPictureData:&value];
    }
    return m_remindTitle;
}

//: Consequences_Account_Deletion_content
- (NSString *)mainSkyIdent {
    /* static */ NSString *mainSkyIdent = nil;
    if (!mainSkyIdent) {
        StructRnaPictureData value = (StructRnaPictureData){222, (Byte []){157, 177, 176, 173, 187, 175, 171, 187, 176, 189, 187, 173, 129, 159, 189, 189, 177, 171, 176, 170, 129, 154, 187, 178, 187, 170, 183, 177, 176, 129, 189, 177, 176, 170, 187, 176, 170, 154}, 37, 140, 231};
        mainSkyIdent = [self StringFromRnaPictureData:&value];
    }
    return mainSkyIdent;
}

//: #FF483D
- (NSString *)app_mindStr {
    /* static */ NSString *app_mindStr = nil;
    if (!app_mindStr) {
        StructRnaPictureData value = (StructRnaPictureData){135, (Byte []){164, 193, 193, 179, 191, 180, 195, 91}, 7, 193, 194};
        app_mindStr = [self StringFromRnaPictureData:&value];
    }
    return app_mindStr;
}

//: Read_agree_agreement
- (NSString *)noti_cropId {
    /* static */ NSString *noti_cropId = nil;
    if (!noti_cropId) {
        StructRnaPictureData value = (StructRnaPictureData){14, (Byte []){92, 107, 111, 106, 81, 111, 105, 124, 107, 107, 81, 111, 105, 124, 107, 107, 99, 107, 96, 122, 158}, 20, 48, 79};
        noti_cropId = [self StringFromRnaPictureData:&value];
    }
    return noti_cropId;
}

//: safe_arrow_next
- (NSString *)m_terriblyId {
    /* static */ NSString *m_terriblyId = nil;
    if (!m_terriblyId) {
        StructRnaPictureData value = (StructRnaPictureData){104, (Byte []){27, 9, 14, 13, 55, 9, 26, 26, 7, 31, 55, 6, 13, 16, 28, 53}, 15, 101, 124};
        m_terriblyId = [self StringFromRnaPictureData:&value];
    }
    return m_terriblyId;
}

//: Explanation_Data_Deletion
- (NSString *)dream_premiseTitleAdmitId {
    /* static */ NSString *dream_premiseTitleAdmitId = nil;
    if (!dream_premiseTitleAdmitId) {
        StructRnaPictureData value = (StructRnaPictureData){149, (Byte []){208, 237, 229, 249, 244, 251, 244, 225, 252, 250, 251, 202, 209, 244, 225, 244, 202, 209, 240, 249, 240, 225, 252, 250, 251, 26}, 25, 138, 76};
        dream_premiseTitleAdmitId = [self StringFromRnaPictureData:&value];
    }
    return dream_premiseTitleAdmitId;
}

//: Consequences_Account_Deletion
- (NSString *)show_isolationValue {
    /* static */ NSString *show_isolationValue = nil;
    if (!show_isolationValue) {
        StructRnaPictureData value = (StructRnaPictureData){247, (Byte []){180, 152, 153, 132, 146, 134, 130, 146, 153, 148, 146, 132, 168, 182, 148, 148, 152, 130, 153, 131, 168, 179, 146, 155, 146, 131, 158, 152, 153, 122}, 29, 135, 21};
        show_isolationValue = [self StringFromRnaPictureData:&value];
    }
    return show_isolationValue;
}

//: Explanation_Data_Deletion_content
- (NSString *)appHugeCartUrl {
    /* static */ NSString *appHugeCartUrl = nil;
    if (!appHugeCartUrl) {
        StructRnaPictureData value = (StructRnaPictureData){96, (Byte []){37, 24, 16, 12, 1, 14, 1, 20, 9, 15, 14, 63, 36, 1, 20, 1, 63, 36, 5, 12, 5, 20, 9, 15, 14, 63, 3, 15, 14, 20, 5, 14, 20, 3}, 33, 56, 198};
        appHugeCartUrl = [self StringFromRnaPictureData:&value];
    }
    return appHugeCartUrl;
}

//: Irreversible_Operation_content
- (NSString *)kBowSkyKey {
    /* static */ NSString *kBowSkyKey = nil;
    if (!kBowSkyKey) {
        StructRnaPictureData value = (StructRnaPictureData){106, (Byte []){35, 24, 24, 15, 28, 15, 24, 25, 3, 8, 6, 15, 53, 37, 26, 15, 24, 11, 30, 3, 5, 4, 53, 9, 5, 4, 30, 15, 4, 30, 25}, 30, 116, 150};
        kBowSkyKey = [self StringFromRnaPictureData:&value];
    }
    return kBowSkyKey;
}

//: #333333
- (NSString *)showPeopleOverseeStr {
    /* static */ NSString *showPeopleOverseeStr = nil;
    if (!showPeopleOverseeStr) {
        StructRnaPictureData value = (StructRnaPictureData){137, (Byte []){170, 186, 186, 186, 186, 186, 186, 235}, 7, 134, 173};
        showPeopleOverseeStr = [self StringFromRnaPictureData:&value];
    }
    return showPeopleOverseeStr;
}

//: login_agreement_press
- (NSString *)dreamFormatMessage {
    /* static */ NSString *dreamFormatMessage = nil;
    if (!dreamFormatMessage) {
        StructRnaPictureData value = (StructRnaPictureData){57, (Byte []){85, 86, 94, 80, 87, 102, 88, 94, 75, 92, 92, 84, 92, 87, 77, 102, 73, 75, 92, 74, 74, 153}, 21, 61, 30};
        dreamFormatMessage = [self StringFromRnaPictureData:&value];
    }
    return dreamFormatMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnalogDigitalConverterView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeleteAccountView.h"
#import "AnalogDigitalConverterView.h"

//: @interface ZMONDeleteAccountView ()<UITextFieldDelegate>
@interface AnalogDigitalConverterView ()<UITextFieldDelegate>

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
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;
//: @property (nonatomic,strong) UIButton *agreementButton;
@property (nonatomic,strong) UIButton *agreementButton;

//: @end
@end

//: @implementation ZMONDeleteAccountView
@implementation AnalogDigitalConverterView

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
        [self initObjectUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initObjectUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labtitle.textColor = [UIColor min:[[RnaPictureData sharedInstance] showEnvelopeMsg]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"Confirm_Account_Deletion"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] app_toKey]];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, SCREEN_WIDTH-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
}



//: - (void)updateTheNickname{
- (void)inputSignal{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[WatchLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] noti_cropId]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(toCurrent)]) {
        //: [self.delegate didTouchDeleteNextButton];
        [self.delegate toCurrent];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
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
        _titleLabel.textColor = [UIColor min:[[RnaPictureData sharedInstance] showEnvelopeMsg]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [WatchLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] mInflationName]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[RnaPictureData sharedInstance] user_commentKey]]];
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

        //: UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView1.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        numView1.backgroundColor = [UIColor min:[[RnaPictureData sharedInstance] m_remindTitle]];
        //: numView1.layer.cornerRadius = 10;
        numView1.layer.cornerRadius = 10;
        //: numView1.layer.masksToBounds = YES;
        numView1.layer.masksToBounds = YES;
        //: [view1 addSubview:numView1];
        [view1 addSubview:numView1];
        //: UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum1.textColor = [UIColor whiteColor];
        labtitlenum1.textColor = [UIColor whiteColor];
        //: labtitlenum1.text = @"1";
        labtitlenum1.text = @"1";
        //: labtitlenum1.textAlignment = NSTextAlignmentCenter;
        labtitlenum1.textAlignment = NSTextAlignmentCenter;
        //: [numView1 addSubview:labtitlenum1];
        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [WatchLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] noti_cropId]];
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
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView2.backgroundColor = [UIColor min:[[RnaPictureData sharedInstance] kPeopleValue]];
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
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle2.textColor = [UIColor min:[[RnaPictureData sharedInstance] k_cropData]];
        //: labtitle2.text = [WatchLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] mSkyId]];
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
        numView3.backgroundColor = [UIColor min:[[RnaPictureData sharedInstance] kPeopleValue]];
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
        labtitle3.textColor = [UIColor min:[[RnaPictureData sharedInstance] k_cropData]];
        //: labtitle3.text = [WatchLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] notiStateText]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[[RnaPictureData sharedInstance] m_terriblyId]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[[RnaPictureData sharedInstance] m_terriblyId]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
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
        //: labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labtitle1.text = [WatchLanguageManager getTextWithKey:@"Consequences_Account_Deletion"];
        labtitle1.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] show_isolationValue]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labsubtitle1.text = [WatchLanguageManager getTextWithKey:@"Consequences_Account_Deletion_content"];
        labsubtitle1.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] mainSkyIdent]];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        //: labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle2.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labtitle2.text = [WatchLanguageManager getTextWithKey:@"Explanation_Data_Deletion"];
        labtitle2.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] dream_premiseTitleAdmitId]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labsubtitle2.text = [WatchLanguageManager getTextWithKey:@"Explanation_Data_Deletion_content"];
        labsubtitle2.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] appHugeCartUrl]];
        //: labsubtitle2.numberOfLines = 0;
        labsubtitle2.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle2];
        [_contentBox addSubview:labsubtitle2];
        //: [labsubtitle2 sizeToFit];
        [labsubtitle2 sizeToFit];

        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        //: labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle3.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labtitle3.text = [WatchLanguageManager getTextWithKey:@"Irreversible_Operation"];
        labtitle3.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] app_markIdent]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor min:[[RnaPictureData sharedInstance] showPeopleOverseeStr]];
        //: labsubtitle3.text = [WatchLanguageManager getTextWithKey:@"Irreversible_Operation_content"];
        labsubtitle3.text = [PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] kBowSkyKey]];
        //: labsubtitle3.numberOfLines = 0;
        labsubtitle3.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle3];
        [_contentBox addSubview:labsubtitle3];
        //: [labsubtitle3 sizeToFit];
        [labsubtitle3 sizeToFit];

        //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        //: _agreementButton.selected = YES;
        _agreementButton.selected = YES;
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
        [_agreementButton setImage:[UIImage imageNamed:[[RnaPictureData sharedInstance] dream_deadlineName]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[[RnaPictureData sharedInstance] dreamFormatMessage]] forState:UIControlStateSelected];
        //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_agreementButton addTarget:self action:@selector(bies:) forControlEvents:UIControlEventTouchUpInside];
        //: [_contentBox addSubview:_agreementButton];
        [_contentBox addSubview:_agreementButton];

        //: UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        //: labprotocol.font = [UIFont systemFontOfSize:12.f];
        labprotocol.font = [UIFont systemFontOfSize:12.f];
//        labprotocol.textColor = TextColor_4;
//        labprotocol.text = @"I have read and agree to the account deactivation terms";
        //: labprotocol.numberOfLines = 0;
        labprotocol.numberOfLines = 0;
        //: [_contentBox addSubview:labprotocol];
        [_contentBox addSubview:labprotocol];
        //: labprotocol.userInteractionEnabled = YES;
        labprotocol.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleProtocol)];
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(streetwiseHeight)];
        //: [labprotocol addGestureRecognizer:singleTap];
        [labprotocol addGestureRecognizer:singleTap];

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[WatchLanguageManager getTextWithKey:@"agree_account_deletion_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] show_controlMsg]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor min:[[RnaPictureData sharedInstance] showEnvelopeMsg]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor min:[[RnaPictureData sharedInstance] showEnvelopeMsg]] range:(NSRange){0,[tncString length]}];
        //: labprotocol.attributedText = tncString;
        labprotocol.attributedText = tncString;

        //: [labprotocol sizeToFit];
        [labprotocol sizeToFit];


    }
    //: return _contentBox;
    return _contentBox;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)bies:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)handleProtocol
-(void)streetwiseHeight
{
//    [self animationClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(tingOf)]) {
        //: [self.delegate didTouchDeleteProtocolButton];
        [self.delegate tingOf];
    }
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
        [_closeBtn setTitleColor:[UIColor min:[[RnaPictureData sharedInstance] k_cropData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] showMyId]] forState:UIControlStateNormal];
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
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[RnaPictureData sharedInstance] noti_horribleTitle]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor min:[[RnaPictureData sharedInstance] app_mindStr]];
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
- (void)cellActivity
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end
