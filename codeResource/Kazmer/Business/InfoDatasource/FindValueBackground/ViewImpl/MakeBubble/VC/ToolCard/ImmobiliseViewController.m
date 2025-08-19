
#import <Foundation/Foundation.h>

typedef struct {
    Byte toProfess;
    Byte *pointePareImage;
    unsigned int achondrite;
	int cook;
} StructFashionData;

@interface FashionData : NSObject

@end

@implementation FashionData

+ (Byte *)FashionDataToByte:(StructFashionData *)data {
    for (int i = 0; i < data->achondrite; i++) {
        data->pointePareImage[i] ^= data->toProfess;
    }
    data->pointePareImage[data->achondrite] = 0;
	if (data->achondrite >= 1) {
		data->cook = data->pointePareImage[0];
	}
    return data->pointePareImage;
}

+ (NSString *)StringFromFashionData:(StructFashionData *)data {
    return [NSString stringWithUTF8String:(char *)[self FashionDataToByte:data]];
}

//: Group_description
+ (NSString *)k_tubeGuidanceMsg {
    /* static */ NSString *k_tubeGuidanceMsg = nil;
    if (!k_tubeGuidanceMsg) {
        StructFashionData value = (StructFashionData){23, (Byte []){80, 101, 120, 98, 103, 72, 115, 114, 100, 116, 101, 126, 103, 99, 126, 120, 121, 202}, 17, 153};
        k_tubeGuidanceMsg = [self StringFromFashionData:&value];
    }
    return k_tubeGuidanceMsg;
}

//: #F6F7FA
+ (NSString *)userBronzePath {
    /* static */ NSString *userBronzePath = nil;
    if (!userBronzePath) {
        StructFashionData value = (StructFashionData){248, (Byte []){219, 190, 206, 190, 207, 190, 185, 166}, 7, 31};
        userBronzePath = [self StringFromFashionData:&value];
    }
    return userBronzePath;
}

//: feedback_activity_submit
+ (NSString *)noti_circlePath {
    /* static */ NSString *noti_circlePath = nil;
    if (!noti_circlePath) {
        StructFashionData value = (StructFashionData){41, (Byte []){79, 76, 76, 77, 75, 72, 74, 66, 118, 72, 74, 93, 64, 95, 64, 93, 80, 118, 90, 92, 75, 68, 64, 93, 134}, 24, 221};
        noti_circlePath = [self StringFromFashionData:&value];
    }
    return noti_circlePath;
}

//: back_arrow_bl
+ (NSString *)dream_economistKey {
    /* static */ NSString *dream_economistKey = nil;
    if (!dream_economistKey) {
        StructFashionData value = (StructFashionData){251, (Byte []){153, 154, 152, 144, 164, 154, 137, 137, 148, 140, 164, 153, 151, 221}, 13, 14};
        dream_economistKey = [self StringFromFashionData:&value];
    }
    return dream_economistKey;
}

//: #2B2F36
+ (NSString *)notiNameRapidlyValue {
    /* static */ NSString *notiNameRapidlyValue = nil;
    if (!notiNameRapidlyValue) {
        StructFashionData value = (StructFashionData){117, (Byte []){86, 71, 55, 71, 51, 70, 67, 56}, 7, 31};
        notiNameRapidlyValue = [self StringFromFashionData:&value];
    }
    return notiNameRapidlyValue;
}

//: 2B2F36
+ (NSString *)mSystemId {
    /* static */ NSString *mSystemId = nil;
    if (!mSystemId) {
        StructFashionData value = (StructFashionData){233, (Byte []){219, 171, 219, 175, 218, 223, 126}, 6, 49};
        mSystemId = [self StringFromFashionData:&value];
    }
    return mSystemId;
}

//: Announcement_title
+ (NSString *)appShirtPath {
    /* static */ NSString *appShirtPath = nil;
    if (!appShirtPath) {
        StructFashionData value = (StructFashionData){56, (Byte []){121, 86, 86, 87, 77, 86, 91, 93, 85, 93, 86, 76, 103, 76, 81, 76, 84, 93, 212}, 18, 203};
        appShirtPath = [self StringFromFashionData:&value];
    }
    return appShirtPath;
}

//: #4B43DE
+ (NSString *)mBubbleUrl {
    /* static */ NSString *mBubbleUrl = nil;
    if (!mBubbleUrl) {
        StructFashionData value = (StructFashionData){6, (Byte []){37, 50, 68, 50, 53, 66, 67, 12}, 7, 254};
        mBubbleUrl = [self StringFromFashionData:&value];
    }
    return mBubbleUrl;
}

//: Please_enter_content
+ (NSString *)kSystemRemovalRegainContent {
    /* static */ NSString *kSystemRemovalRegainContent = nil;
    if (!kSystemRemovalRegainContent) {
        StructFashionData value = (StructFashionData){24, (Byte []){72, 116, 125, 121, 107, 125, 71, 125, 118, 108, 125, 106, 71, 123, 119, 118, 108, 125, 118, 108, 31}, 20, 92};
        kSystemRemovalRegainContent = [self StringFromFashionData:&value];
    }
    return kSystemRemovalRegainContent;
}

//: #999999
+ (NSString *)mainIqMsg {
    /* static */ NSString *mainIqMsg = nil;
    if (!mainIqMsg) {
        StructFashionData value = (StructFashionData){108, (Byte []){79, 85, 85, 85, 85, 85, 85, 169}, 7, 130};
        mainIqMsg = [self StringFromFashionData:&value];
    }
    return mainIqMsg;
}

//: #EEEEEE
+ (NSString *)appShamElbowCreaterKey {
    /* static */ NSString *appShamElbowCreaterKey = nil;
    if (!appShamElbowCreaterKey) {
        StructFashionData value = (StructFashionData){224, (Byte []){195, 165, 165, 165, 165, 165, 165, 155}, 7, 210};
        appShamElbowCreaterKey = [self StringFromFashionData:&value];
    }
    return appShamElbowCreaterKey;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchCreateTeamAnnouncement.h"
#import "ImmobiliseViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"
//: #import "WatchKitKeyboardInfo.h"
#import "UserInfo.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface WatchCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface ImmobiliseViewController () <UITextFieldDelegate, UITextViewDelegate>
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

//: @implementation WatchCreateTeamAnnouncement
@implementation ImmobiliseViewController

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
    self.view.backgroundColor = [UIColor min:[FashionData userBronzePath]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[FashionData dream_economistKey]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[FashionData k_tubeGuidanceMsg]];
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
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
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
    //: self.titleTextField.placeholder = [WatchLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [PaintedNaturalLanguageTo exhibit:[FashionData appShirtPath]];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor min:[FashionData mSystemId]];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor min:[FashionData appShamElbowCreaterKey]];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor min:[FashionData notiNameRapidlyValue]];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [WatchLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [PaintedNaturalLanguageTo exhibit:[FashionData kSystemRemovalRegainContent]];
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
    //: [submitButton setTitle:[WatchLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[PaintedNaturalLanguageTo exhibit:[FashionData noti_circlePath]] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(shouldsed:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor min:[FashionData mBubbleUrl]];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)shouldsed:(id)sender {
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
    if([self.delegate respondsToSelector:@selector(with:insideInformation:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate with:title insideInformation:content];
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
        _numLabel.textColor = [UIColor min:[FashionData mainIqMsg]];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end
