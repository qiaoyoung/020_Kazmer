
#import <Foundation/Foundation.h>

@interface ColData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ColData

+ (instancetype)sharedInstance {
    static ColData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ColDataToCache:(Byte *)data {
    int prelimView = data[0];
    Byte studyPound = data[1];
    int gear = data[2];
    for (int i = gear; i < gear + prelimView; i++) {
        int value = data[i] - studyPound;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gear + prelimView] = 0;
    return data + gear;
}

- (NSString *)StringFromColData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColDataToCache:data]];
}

//: #999999
- (NSString *)kTitlePoundValue {
    /* static */ NSString *kTitlePoundValue = nil;
    if (!kTitlePoundValue) {
        Byte value[] = {7, 44, 7, 51, 16, 182, 226, 79, 101, 101, 101, 101, 101, 101, 153};
        kTitlePoundValue = [self StringFromColData:value];
    }
    return kTitlePoundValue;
}

//: back_arrow_bl
- (NSString *)kNameServeModelString {
    /* static */ NSString *kNameServeModelString = nil;
    if (!kNameServeModelString) {
        Byte value[] = {13, 48, 9, 116, 6, 128, 51, 139, 166, 146, 145, 147, 155, 143, 145, 162, 162, 159, 167, 143, 146, 156, 227};
        kNameServeModelString = [self StringFromColData:value];
    }
    return kNameServeModelString;
}

//: #4B43DE
- (NSString *)kTextSwingValue {
    /* static */ NSString *kTextSwingValue = nil;
    if (!kTextSwingValue) {
        Byte value[] = {7, 65, 13, 189, 206, 73, 176, 253, 74, 119, 27, 51, 28, 100, 117, 131, 117, 116, 133, 134, 38};
        kTextSwingValue = [self StringFromColData:value];
    }
    return kTextSwingValue;
}

//: #EEEEEE
- (NSString *)kTitle_journalistString {
    /* static */ NSString *kTitle_journalistString = nil;
    if (!kTitle_journalistString) {
        Byte value[] = {7, 51, 6, 179, 122, 252, 86, 120, 120, 120, 120, 120, 120, 144};
        kTitle_journalistString = [self StringFromColData:value];
    }
    return kTitle_journalistString;
}

//: Please_enter_content
- (NSString *)kName_cellInspireValue {
    /* static */ NSString *kName_cellInspireValue = nil;
    if (!kName_cellInspireValue) {
        Byte value[] = {20, 58, 3, 138, 166, 159, 155, 173, 159, 153, 159, 168, 174, 159, 172, 153, 157, 169, 168, 174, 159, 168, 174, 2};
        kName_cellInspireValue = [self StringFromColData:value];
    }
    return kName_cellInspireValue;
}

//: Group_description
- (NSString *)kContent_sunlightValue {
    /* static */ NSString *kContent_sunlightValue = nil;
    if (!kContent_sunlightValue) {
        Byte value[] = {17, 71, 9, 206, 102, 148, 210, 238, 236, 142, 185, 182, 188, 183, 166, 171, 172, 186, 170, 185, 176, 183, 187, 176, 182, 181, 221};
        kContent_sunlightValue = [self StringFromColData:value];
    }
    return kContent_sunlightValue;
}

//: feedback_activity_submit
- (NSString *)kName_devastatingData {
    /* static */ NSString *kName_devastatingData = nil;
    if (!kName_devastatingData) {
        Byte value[] = {24, 8, 7, 38, 171, 81, 229, 110, 109, 109, 108, 106, 105, 107, 115, 103, 105, 107, 124, 113, 126, 113, 124, 129, 103, 123, 125, 106, 117, 113, 124, 225};
        kName_devastatingData = [self StringFromColData:value];
    }
    return kName_devastatingData;
}

//: 2B2F36
- (NSString *)kNameTitleText {
    /* static */ NSString *kNameTitleText = nil;
    if (!kNameTitleText) {
        Byte value[] = {6, 90, 12, 107, 34, 59, 205, 214, 39, 27, 234, 219, 140, 156, 140, 160, 141, 144, 208};
        kNameTitleText = [self StringFromColData:value];
    }
    return kNameTitleText;
}

//: #2B2F36
- (NSString *)kText_yoursString {
    /* static */ NSString *kText_yoursString = nil;
    if (!kText_yoursString) {
        Byte value[] = {7, 4, 6, 125, 251, 124, 39, 54, 70, 54, 74, 55, 58, 40};
        kText_yoursString = [self StringFromColData:value];
    }
    return kText_yoursString;
}

//: Announcement_title
- (NSString *)kNameWildernessOperaString {
    /* static */ NSString *kNameWildernessOperaString = nil;
    if (!kNameWildernessOperaString) {
        Byte value[] = {18, 80, 6, 227, 1, 118, 145, 190, 190, 191, 197, 190, 179, 181, 189, 181, 190, 196, 175, 196, 185, 196, 188, 181, 66};
        kNameWildernessOperaString = [self StringFromColData:value];
    }
    return kNameWildernessOperaString;
}

//: #F6F7FA
- (NSString *)kTitleInkString {
    /* static */ NSString *kTitleInkString = nil;
    if (!kTitleInkString) {
        Byte value[] = {7, 28, 12, 102, 185, 8, 190, 67, 186, 237, 206, 212, 63, 98, 82, 98, 83, 98, 93, 14};
        kTitleInkString = [self StringFromColData:value];
    }
    return kTitleInkString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayCreateTeamAnnouncement.h"
#import "BasketballTeamViewController.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "DisplayKitKeyboardInfo.h"
#import "RedInfo.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface DisplayCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface BasketballTeamViewController () <UITextFieldDelegate, UITextViewDelegate>
//: @property (strong, nonatomic) UITextField *titleTextField;
@property (strong, nonatomic) UITextField *titleTextField;
//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation DisplayCreateTeamAnnouncement
@implementation BasketballTeamViewController

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
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[[ColData sharedInstance] kTitleInkString]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[ColData sharedInstance] kNameServeModelString]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [MakeManager cell:[[ColData sharedInstance] kContent_sunlightValue]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];



//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];


//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 50)];
////    titleView.backgroundColor = [UIColor whiteColor];
////    titleView.layer.cornerRadius = 8;
//    [self.view addSubview:titleView];
//    titleView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    titleView.layer.cornerRadius = 8;
//    titleView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    titleView.layer.shadowOffset = CGSizeMake(0,3);
//    titleView.layer.shadowOpacity = 1;
//    titleView.layer.shadowRadius = 0;




    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    //: self.titleTextField.placeholder = [DisplayLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [MakeManager cell:[[ColData sharedInstance] kNameWildernessOperaString]];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor cell:[[ColData sharedInstance] kNameTitleText]];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor cell:[[ColData sharedInstance] kTitle_journalistString]];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor cell:[[ColData sharedInstance] kText_yoursString]];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [DisplayLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [MakeManager cell:[[ColData sharedInstance] kName_cellInspireValue]];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [submitButton setTitle:[DisplayLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[MakeManager cell:[[ColData sharedInstance] kName_devastatingData]] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(colorses:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor cell:[[ColData sharedInstance] kTextSwingValue]];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)colorses:(id)sender {
    //: [self.titleTextField endEditing:YES];
    [self.titleTextField endEditing:YES];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
    //: if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
    if([self.delegate respondsToSelector:@selector(enable:send:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate enable:title send:content];
    }
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
        _numLabel.textColor = [UIColor cell:[[ColData sharedInstance] kTitlePoundValue]];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end
