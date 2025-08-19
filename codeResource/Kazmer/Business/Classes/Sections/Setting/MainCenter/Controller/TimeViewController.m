
#import <Foundation/Foundation.h>

NSString *StringFromGuidanceData(Byte *data);


//: bg_my
Byte mEquallyData[] = {31, 5, 83, 10, 152, 52, 141, 3, 36, 203, 181, 186, 178, 192, 204, 169};

//: #999999
Byte userValueTitle[] = {28, 7, 42, 5, 177, 77, 99, 99, 99, 99, 99, 99, 163};

//: icon_checkbox_selected
Byte notiExtraPath[] = {50, 22, 32, 4, 137, 131, 143, 142, 127, 131, 136, 133, 131, 139, 130, 143, 152, 127, 147, 133, 140, 133, 131, 148, 133, 132, 104};

//: back_arrow_bl
Byte k_producerId[] = {16, 13, 65, 11, 16, 39, 59, 160, 152, 132, 9, 163, 162, 164, 172, 160, 162, 179, 179, 176, 184, 160, 163, 173, 116};

//: user_profile_avtivity_user_info_update_success
Byte showEraseFormat[] = {37, 46, 83, 5, 115, 200, 198, 184, 197, 178, 195, 197, 194, 185, 188, 191, 184, 178, 180, 201, 199, 188, 201, 188, 199, 204, 178, 200, 198, 184, 197, 178, 188, 193, 185, 194, 178, 200, 195, 183, 180, 199, 184, 178, 198, 200, 182, 182, 184, 198, 198, 158};

//: %lu/100
Byte appShowerPath[] = {23, 7, 9, 10, 149, 90, 251, 73, 98, 152, 46, 117, 126, 56, 58, 57, 57, 71};

//: activity_set_bio_title
Byte k_countPatrolConventMessage[] = {18, 22, 89, 8, 110, 87, 81, 119, 186, 188, 205, 194, 207, 194, 205, 210, 184, 204, 190, 205, 184, 187, 194, 200, 184, 205, 194, 205, 197, 190, 134};

//: #333333
Byte m_toData[] = {45, 7, 85, 5, 128, 120, 136, 136, 136, 136, 136, 136, 134};

//: user_profile_avtivity_user_info_update_failed
Byte m_bookName[] = {14, 45, 96, 10, 89, 243, 2, 4, 214, 224, 213, 211, 197, 210, 191, 208, 210, 207, 198, 201, 204, 197, 191, 193, 214, 212, 201, 214, 201, 212, 217, 191, 213, 211, 197, 210, 191, 201, 206, 198, 207, 191, 213, 208, 196, 193, 212, 197, 191, 198, 193, 201, 204, 197, 196, 79};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TimeViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSignSettingViewController.h"
#import "TimeViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface NTESSignSettingViewController ()<UITextViewDelegate>
@interface TimeViewController ()<UITextViewDelegate>

//: @property (nonatomic, strong) NSString *signStr;
@property (nonatomic, strong) NSString *signStr;
//: @property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UITextView *textView;
//: @property (nonatomic, strong) UILabel *numLabel;
@property (nonatomic, strong) UILabel *numLabel;

//: @end
@end

//: @implementation NTESSignSettingViewController
@implementation TimeViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1.0];
    //: self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_my"]];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:StringFromGuidanceData(mEquallyData)]];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromGuidanceData(k_producerId)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_set_bio_title"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:StringFromGuidanceData(k_countPatrolConventMessage)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+4, 40, 40);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice tingHeight]+4, 40, 40);
    //: [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromGuidanceData(notiExtraPath)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDone:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(pinDone:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";
    self.signStr = [[NIMSDK sharedSDK].userManager userInfo:userId].userInfo.sign ?: @"";

    //: UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
    UIView *bgview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+16+15, [[UIScreen mainScreen] bounds].size.width-30, 150)];
    //: bgview.layer.borderWidth = 0.5;
    bgview.layer.borderWidth = 0.5;
    //: bgview.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    bgview.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: bgview.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    bgview.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: bgview.layer.cornerRadius = 8;
    bgview.layer.cornerRadius = 8;
    //: bgview.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    bgview.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: bgview.layer.shadowOffset = CGSizeMake(0,3);
    bgview.layer.shadowOffset = CGSizeMake(0,3);
    //: bgview.layer.shadowOpacity = 1;
    bgview.layer.shadowOpacity = 1;
    //: bgview.layer.shadowRadius = 0;
    bgview.layer.shadowRadius = 0;
    //: [self.view addSubview:bgview];
    [self.view addSubview:bgview];


    //: [bgview addSubview:self.textView];
    [bgview addSubview:self.textView];
    //: self.textView.text = self.signStr;
    self.textView.text = self.signStr;
    //: self.textView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 120);
    self.textView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 120);


    //: [self.view addSubview:self.numLabel];
    [self.view addSubview:self.numLabel];
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",self.signStr.length];
    self.numLabel.text = [NSString stringWithFormat:StringFromGuidanceData(appShowerPath),self.signStr.length];
    //: self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.numLabel.frame = CGRectMake(15, bgview.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

}

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)onDone:(id)sender{
- (void)pinDone:(id)sender{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
//    if (self.signStr.length > 100) {
//        [self.view makeToast:@"签名过长".nim_localized duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagSign) : self.signStr} completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagSign) : self.signStr} completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: UINavigationController *nav = wself.navigationController;
            UINavigationController *nav = wself.navigationController;
            //: [nav popViewControllerAnimated:NO];
            [nav popViewControllerAnimated:NO];
            //: UIViewController *vc = nav.topViewController;
            UIViewController *vc = nav.topViewController;
            //: [vc.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [vc.view makeToast:[PaintedNaturalLanguageTo exhibit:StringFromGuidanceData(showEraseFormat)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:StringFromGuidanceData(m_bookName)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}



//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {

    //: NSString *genString = [textView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *genString = [textView.text stringByReplacingCharactersInRange:range withString:text];
    //: if (genString.length > 100) {
    if (genString.length > 100) {
        //: return NO;
        return NO;
    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",genString.length+1];
    self.numLabel.text = [NSString stringWithFormat:StringFromGuidanceData(appShowerPath),genString.length+1];
    //: return YES;
    return YES;
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
    //: self.signStr = textView.text;
    self.signStr = textView.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/100",self.signStr.length];
    self.numLabel.text = [NSString stringWithFormat:StringFromGuidanceData(appShowerPath),self.signStr.length];
}

//: - (UITextView *)textView{
- (UITextView *)textView{
    //: if(!_textView){
    if(!_textView){
        //: _textView = [[UITextView alloc]init];
        _textView = [[UITextView alloc]init];
        //: _textView.font = [UIFont systemFontOfSize:16.0];
        _textView.font = [UIFont systemFontOfSize:16.0];
        //: _textView.textColor = [UIColor colorWithHexString:@"#333333"];
        _textView.textColor = [UIColor min:StringFromGuidanceData(m_toData)];
        //: _textView.placeholder = [FFFLanguageManager getTextWithKey:@"activity_set_bio_title"];
        _textView.placeholder = [PaintedNaturalLanguageTo exhibit:StringFromGuidanceData(k_countPatrolConventMessage)];
        //: _textView.delegate = self;
        _textView.delegate = self;
//        _textView.textContainerInset = UIEdgeInsetsMake(20, 20, 20, 20);

    }
    //: return _textView;
    return _textView;
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
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor min:StringFromGuidanceData(userValueTitle)];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end

Byte * GuidanceDataToCache(Byte *data) {
    int guidance = data[0];
    int repair = data[1];
    Byte nonsolidColor = data[2];
    int tableMatte = data[3];
    if (!guidance) return data + tableMatte;
    for (int i = tableMatte; i < tableMatte + repair; i++) {
        int value = data[i] - nonsolidColor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tableMatte + repair] = 0;
    return data + tableMatte;
}

NSString *StringFromGuidanceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GuidanceDataToCache(data)];
}
