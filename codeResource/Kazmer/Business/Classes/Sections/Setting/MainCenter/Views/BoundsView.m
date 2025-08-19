
#import <Foundation/Foundation.h>

@interface CommunityPropertyData : NSObject

@end

@implementation CommunityPropertyData

+ (Byte *)CommunityPropertyDataToCache:(Byte *)data {
    int skyAchieve = data[0];
    int dominate = data[1];
    for (int i = 0; i < skyAchieve / 2; i++) {
        int begin = dominate + i;
        int end = dominate + skyAchieve - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[dominate + skyAchieve] = 0;
    return data + dominate;
}

+ (NSString *)StringFromCommunityPropertyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CommunityPropertyDataToCache:data]];
}  

//: #FF483D
+ (NSString *)show_bubbleValue {
    /* static */ NSString *show_bubbleValue = nil;
    if (!show_bubbleValue) {
        Byte value[] = {7, 6, 193, 155, 13, 192, 68, 51, 56, 52, 70, 70, 35, 142};
        show_bubbleValue = [self StringFromCommunityPropertyData:value];
    }
    return show_bubbleValue;
}

//: #4B43DE
+ (NSString *)dreamValueMsg {
    /* static */ NSString *dreamValueMsg = nil;
    if (!dreamValueMsg) {
        Byte value[] = {7, 2, 69, 68, 51, 52, 66, 52, 35, 216};
        dreamValueMsg = [self StringFromCommunityPropertyData:value];
    }
    return dreamValueMsg;
}

//: login_agreement_press
+ (NSString *)app_bookUrl {
    /* static */ NSString *app_bookUrl = nil;
    if (!app_bookUrl) {
        Byte value[] = {21, 2, 115, 115, 101, 114, 112, 95, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 110, 105, 103, 111, 108, 227};
        app_bookUrl = [self StringFromCommunityPropertyData:value];
    }
    return app_bookUrl;
}

//: safe_arrow_next
+ (NSString *)mainCabinName {
    /* static */ NSString *mainCabinName = nil;
    if (!mainCabinName) {
        Byte value[] = {15, 6, 53, 126, 60, 137, 116, 120, 101, 110, 95, 119, 111, 114, 114, 97, 95, 101, 102, 97, 115, 255};
        mainCabinName = [self StringFromCommunityPropertyData:value];
    }
    return mainCabinName;
}

//: Confirm_Account_Deactivation
+ (NSString *)noti_bookMsg {
    /* static */ NSString *noti_bookMsg = nil;
    if (!noti_bookMsg) {
        Byte value[] = {28, 2, 110, 111, 105, 116, 97, 118, 105, 116, 99, 97, 101, 68, 95, 116, 110, 117, 111, 99, 99, 65, 95, 109, 114, 105, 102, 110, 111, 67, 198};
        noti_bookMsg = [self StringFromCommunityPropertyData:value];
    }
    return noti_bookMsg;
}

//: Data_Retention_Policy_content
+ (NSString *)user_atId {
    /* static */ NSString *user_atId = nil;
    if (!user_atId) {
        Byte value[] = {29, 6, 134, 8, 124, 194, 116, 110, 101, 116, 110, 111, 99, 95, 121, 99, 105, 108, 111, 80, 95, 110, 111, 105, 116, 110, 101, 116, 101, 82, 95, 97, 116, 97, 68, 161};
        user_atId = [self StringFromCommunityPropertyData:value];
    }
    return user_atId;
}

//: activity_register_next
+ (NSString *)dreamViaName {
    /* static */ NSString *dreamViaName = nil;
    if (!dreamViaName) {
        Byte value[] = {22, 11, 209, 61, 70, 126, 29, 128, 144, 190, 67, 116, 120, 101, 110, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 121, 116, 105, 118, 105, 116, 99, 97, 40};
        dreamViaName = [self StringFromCommunityPropertyData:value];
    }
    return dreamViaName;
}

//: Consequences_Deactivation
+ (NSString *)m_nameMsg {
    /* static */ NSString *m_nameMsg = nil;
    if (!m_nameMsg) {
        Byte value[] = {25, 4, 7, 39, 110, 111, 105, 116, 97, 118, 105, 116, 99, 97, 101, 68, 95, 115, 101, 99, 110, 101, 117, 113, 101, 115, 110, 111, 67, 234};
        m_nameMsg = [self StringFromCommunityPropertyData:value];
    }
    return m_nameMsg;
}

//: deactivate_account
+ (NSString *)m_twistManUrl {
    /* static */ NSString *m_twistManUrl = nil;
    if (!m_twistManUrl) {
        Byte value[] = {18, 8, 236, 36, 246, 146, 197, 98, 116, 110, 117, 111, 99, 99, 97, 95, 101, 116, 97, 118, 105, 116, 99, 97, 101, 100, 64};
        m_twistManUrl = [self StringFromCommunityPropertyData:value];
    }
    return m_twistManUrl;
}

//: Consequences_Deactivation_content
+ (NSString *)appInfoKey {
    /* static */ NSString *appInfoKey = nil;
    if (!appInfoKey) {
        Byte value[] = {33, 3, 188, 116, 110, 101, 116, 110, 111, 99, 95, 110, 111, 105, 116, 97, 118, 105, 116, 99, 97, 101, 68, 95, 115, 101, 99, 110, 101, 117, 113, 101, 115, 110, 111, 67, 226};
        appInfoKey = [self StringFromCommunityPropertyData:value];
    }
    return appInfoKey;
}

//: Complete_operation
+ (NSString *)m_nuclearData {
    /* static */ NSString *m_nuclearData = nil;
    if (!m_nuclearData) {
        Byte value[] = {18, 9, 80, 113, 48, 26, 13, 134, 142, 110, 111, 105, 116, 97, 114, 101, 112, 111, 95, 101, 116, 101, 108, 112, 109, 111, 67, 74};
        m_nuclearData = [self StringFromCommunityPropertyData:value];
    }
    return m_nuclearData;
}

//: Vertify_login_password
+ (NSString *)main_rehabIdent {
    /* static */ NSString *main_rehabIdent = nil;
    if (!main_rehabIdent) {
        Byte value[] = {22, 3, 146, 100, 114, 111, 119, 115, 115, 97, 112, 95, 110, 105, 103, 111, 108, 95, 121, 102, 105, 116, 114, 101, 86, 146};
        main_rehabIdent = [self StringFromCommunityPropertyData:value];
    }
    return main_rehabIdent;
}

//: contact_tag_fragment_cancel
+ (NSString *)mainSalmonId {
    /* static */ NSString *mainSalmonId = nil;
    if (!mainSalmonId) {
        Byte value[] = {27, 7, 136, 133, 209, 109, 97, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 81};
        mainSalmonId = [self StringFromCommunityPropertyData:value];
    }
    return mainSalmonId;
}

//: #333333
+ (NSString *)mConventTitle {
    /* static */ NSString *mConventTitle = nil;
    if (!mConventTitle) {
        Byte value[] = {7, 7, 125, 52, 33, 244, 202, 51, 51, 51, 51, 51, 51, 35, 225};
        mConventTitle = [self StringFromCommunityPropertyData:value];
    }
    return mConventTitle;
}

//: Read_agree_agreement
+ (NSString *)dream_viaFormat {
    /* static */ NSString *dream_viaFormat = nil;
    if (!dream_viaFormat) {
        Byte value[] = {20, 4, 25, 98, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 101, 101, 114, 103, 97, 95, 100, 97, 101, 82, 172};
        dream_viaFormat = [self StringFromCommunityPropertyData:value];
    }
    return dream_viaFormat;
}

//: #BCC1C8
+ (NSString *)noti_scalePath {
    /* static */ NSString *noti_scalePath = nil;
    if (!noti_scalePath) {
        Byte value[] = {7, 6, 155, 230, 170, 192, 56, 67, 49, 67, 67, 66, 35, 166};
        noti_scalePath = [self StringFromCommunityPropertyData:value];
    }
    return noti_scalePath;
}

//: ic-delete_account
+ (NSString *)user_destinationStr {
    /* static */ NSString *user_destinationStr = nil;
    if (!user_destinationStr) {
        Byte value[] = {17, 7, 167, 135, 151, 140, 166, 116, 110, 117, 111, 99, 99, 97, 95, 101, 116, 101, 108, 101, 100, 45, 99, 105, 81};
        user_destinationStr = [self StringFromCommunityPropertyData:value];
    }
    return user_destinationStr;
}

//: agree_account_deactivation_terms
+ (NSString *)dream_viaValue {
    /* static */ NSString *dream_viaValue = nil;
    if (!dream_viaValue) {
        Byte value[] = {32, 10, 215, 246, 81, 112, 75, 122, 90, 70, 115, 109, 114, 101, 116, 95, 110, 111, 105, 116, 97, 118, 105, 116, 99, 97, 101, 100, 95, 116, 110, 117, 111, 99, 99, 97, 95, 101, 101, 114, 103, 97, 14};
        dream_viaValue = [self StringFromCommunityPropertyData:value];
    }
    return dream_viaValue;
}

//: Recovery_Options_content
+ (NSString *)m_viaTimeName {
    /* static */ NSString *m_viaTimeName = nil;
    if (!m_viaTimeName) {
        Byte value[] = {24, 7, 223, 255, 189, 204, 206, 116, 110, 101, 116, 110, 111, 99, 95, 115, 110, 111, 105, 116, 112, 79, 95, 121, 114, 101, 118, 111, 99, 101, 82, 20};
        m_viaTimeName = [self StringFromCommunityPropertyData:value];
    }
    return m_viaTimeName;
}

//: #5D5F66
+ (NSString *)kModerateName {
    /* static */ NSString *kModerateName = nil;
    if (!kModerateName) {
        Byte value[] = {7, 5, 111, 85, 141, 54, 54, 70, 53, 68, 53, 35, 2};
        kModerateName = [self StringFromCommunityPropertyData:value];
    }
    return kModerateName;
}

//: Data_Retention_Policy
+ (NSString *)user_pressedIdent {
    /* static */ NSString *user_pressedIdent = nil;
    if (!user_pressedIdent) {
        Byte value[] = {21, 4, 9, 52, 121, 99, 105, 108, 111, 80, 95, 110, 111, 105, 116, 110, 101, 116, 101, 82, 95, 97, 116, 97, 68, 21};
        user_pressedIdent = [self StringFromCommunityPropertyData:value];
    }
    return user_pressedIdent;
}

//: Recovery_Options
+ (NSString *)showChangePath {
    /* static */ NSString *showChangePath = nil;
    if (!showChangePath) {
        Byte value[] = {16, 9, 20, 135, 207, 80, 124, 134, 202, 115, 110, 111, 105, 116, 112, 79, 95, 121, 114, 101, 118, 111, 99, 101, 82, 57};
        showChangePath = [self StringFromCommunityPropertyData:value];
    }
    return showChangePath;
}

//: login_agreement_normal
+ (NSString *)dream_imageTransportIdent {
    /* static */ NSString *dream_imageTransportIdent = nil;
    if (!dream_imageTransportIdent) {
        Byte value[] = {22, 7, 112, 42, 232, 79, 249, 108, 97, 109, 114, 111, 110, 95, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 110, 105, 103, 111, 108, 26};
        dream_imageTransportIdent = [self StringFromCommunityPropertyData:value];
    }
    return dream_imageTransportIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoundsView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountView.h"
#import "BoundsView.h"

//: @interface ZMONDeactivateAccountView ()
@interface BoundsView ()

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

//: @implementation ZMONDeactivateAccountView
@implementation BoundsView

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
        [self initKit];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initKit{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(20, 20, 32, 32);
    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);
    self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Confirm_Account_Deactivation"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData noti_bookMsg]];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

    //: [_box addSubview:self.nextBox];
    [_box addSubview:self.nextBox];
    //: self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);
    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);
    self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);

}



//: - (void)updateTheNickname{
- (void)inputSignal{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[PaintedNaturalLanguageTo exhibit:[CommunityPropertyData dream_viaFormat]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(readName)]) {
        //: [self.delegate didTouchNextButton];
        [self.delegate readName];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)shared:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)title:(UITextField *)textField color:(NSRange)range stateContent:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)groundsSession:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)view:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)compartment:(UITextField *)textField{
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
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"deactivate_account"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData m_twistManUrl]];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CommunityPropertyData user_destinationStr]]];
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
        numView1.backgroundColor = [UIColor min:[CommunityPropertyData dreamValueMsg]];
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
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData dream_viaFormat]];
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
        numView2.backgroundColor = [UIColor min:[CommunityPropertyData noti_scalePath]];
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
        labtitle2.textColor = [UIColor min:[CommunityPropertyData kModerateName]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData main_rehabIdent]];
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
        numView3.backgroundColor = [UIColor min:[CommunityPropertyData noti_scalePath]];
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
        labtitle3.textColor = [UIColor min:[CommunityPropertyData kModerateName]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData m_nuclearData]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[CommunityPropertyData mainCabinName]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[CommunityPropertyData mainCabinName]];
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
        labtitle1.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Deactivation"];
        labtitle1.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData m_nameMsg]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Deactivation_content"];
        labsubtitle1.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData appInfoKey]];
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
        labtitle2.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Data_Retention_Policy"];
        labtitle2.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData user_pressedIdent]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labsubtitle2.text = [FFFLanguageManager getTextWithKey:@"Data_Retention_Policy_content"];
        labsubtitle2.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData user_atId]];
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
        labtitle3.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Recovery_Options"];
        labtitle3.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData showChangePath]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor min:[CommunityPropertyData mConventTitle]];
        //: labsubtitle3.text = [FFFLanguageManager getTextWithKey:@"Recovery_Options_content"];
        labsubtitle3.text = [PaintedNaturalLanguageTo exhibit:[CommunityPropertyData m_viaTimeName]];
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
        [_agreementButton setImage:[UIImage imageNamed:[CommunityPropertyData dream_imageTransportIdent]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[CommunityPropertyData app_bookUrl]] forState:UIControlStateSelected];
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

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"agree_account_deactivation_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[PaintedNaturalLanguageTo exhibit:[CommunityPropertyData dream_viaValue]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#4B43DE"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor min:[CommunityPropertyData dreamValueMsg]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#4B43DE"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor min:[CommunityPropertyData dreamValueMsg]] range:(NSRange){0,[tncString length]}];
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
    //: if ([self.delegate respondsToSelector:@selector(didTouchProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(canClock)]) {
        //: [self.delegate didTouchProtocolButton];
        [self.delegate canClock];
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
        [_closeBtn setTitleColor:[UIColor min:[CommunityPropertyData kModerateName]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[CommunityPropertyData mainSalmonId]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 10;
        _closeBtn.layer.cornerRadius = 10;
        //: _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _closeBtn.layer.shadowOpacity = 1;
        _closeBtn.layer.shadowOpacity = 1;
        //: _closeBtn.layer.shadowRadius = 0;
        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor min:[CommunityPropertyData show_bubbleValue]] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[CommunityPropertyData dreamViaName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

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
- (void)animation
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end