
#import <Foundation/Foundation.h>

@interface CirclePareData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CirclePareData

+ (instancetype)sharedInstance {
    static CirclePareData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CirclePareDataToCache:(Byte *)data {
    int untilPublicly = data[0];
    Byte afterwards = data[1];
    int ployItch = data[2];
    for (int i = ployItch; i < ployItch + untilPublicly; i++) {
        int value = data[i] - afterwards;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ployItch + untilPublicly] = 0;
    return data + ployItch;
}

- (NSString *)StringFromCirclePareData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CirclePareDataToCache:data]];
}

//: Group_description
- (NSString *)userCircleText {
    /* static */ NSString *userCircleText = nil;
    if (!userCircleText) {
        Byte value[] = {17, 82, 5, 119, 63, 153, 196, 193, 199, 194, 177, 182, 183, 197, 181, 196, 187, 194, 198, 187, 193, 192, 55};
        userCircleText = [self StringFromCirclePareData:value];
    }
    return userCircleText;
}

//: Please_enter_content
- (NSString *)m_skyIdent {
    /* static */ NSString *m_skyIdent = nil;
    if (!m_skyIdent) {
        Byte value[] = {20, 62, 9, 173, 254, 39, 6, 241, 192, 142, 170, 163, 159, 177, 163, 157, 163, 172, 178, 163, 176, 157, 161, 173, 172, 178, 163, 172, 178, 65};
        m_skyIdent = [self StringFromCirclePareData:value];
    }
    return m_skyIdent;
}

//: #999999
- (NSString *)dreamPeopleMsg {
    /* static */ NSString *dreamPeopleMsg = nil;
    if (!dreamPeopleMsg) {
        Byte value[] = {7, 72, 5, 112, 50, 107, 129, 129, 129, 129, 129, 129, 111};
        dreamPeopleMsg = [self StringFromCirclePareData:value];
    }
    return dreamPeopleMsg;
}

//: #F6F7FA
- (NSString *)noti_tallyStr {
    /* static */ NSString *noti_tallyStr = nil;
    if (!noti_tallyStr) {
        Byte value[] = {7, 12, 5, 85, 178, 47, 82, 66, 82, 67, 82, 77, 132};
        noti_tallyStr = [self StringFromCirclePareData:value];
    }
    return noti_tallyStr;
}

//: back_arrow_bl
- (NSString *)appShowPath {
    /* static */ NSString *appShowPath = nil;
    if (!appShowPath) {
        Byte value[] = {13, 66, 8, 25, 171, 238, 76, 122, 164, 163, 165, 173, 161, 163, 180, 180, 177, 185, 161, 164, 174, 69};
        appShowPath = [self StringFromCirclePareData:value];
    }
    return appShowPath;
}

//: #4B43DE
- (NSString *)app_shoveVictimFormat {
    /* static */ NSString *app_shoveVictimFormat = nil;
    if (!app_shoveVictimFormat) {
        Byte value[] = {7, 7, 12, 20, 114, 222, 175, 26, 223, 255, 74, 66, 42, 59, 73, 59, 58, 75, 76, 58};
        app_shoveVictimFormat = [self StringFromCirclePareData:value];
    }
    return app_shoveVictimFormat;
}

//: feedback_activity_submit
- (NSString *)app_tailedMsg {
    /* static */ NSString *app_tailedMsg = nil;
    if (!app_tailedMsg) {
        Byte value[] = {24, 70, 9, 4, 245, 75, 34, 239, 53, 172, 171, 171, 170, 168, 167, 169, 177, 165, 167, 169, 186, 175, 188, 175, 186, 191, 165, 185, 187, 168, 179, 175, 186, 224};
        app_tailedMsg = [self StringFromCirclePareData:value];
    }
    return app_tailedMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleTableViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamIntroduceViewController.h"
#import "BubbleTableViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface WatchTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface BubbleTableViewController ()<UITextFieldDelegate, UITextViewDelegate>


//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic, strong) UIButton *submitButton;
@property (nonatomic, strong) UIButton *submitButton;

//: @property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation WatchTeamIntroduceViewController
@implementation BubbleTableViewController

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
    self.view.backgroundColor = [UIColor min:[[CirclePareData sharedInstance] noti_tallyStr]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[CirclePareData sharedInstance] appShowPath]] forState:(UIControlStateNormal)];
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
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[[CirclePareData sharedInstance] userCircleText]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
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

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    //: self.contentTextView.textColor = [UIColor blackColor];
    self.contentTextView.textColor = [UIColor blackColor];
    //: self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [WatchLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [PaintedNaturalLanguageTo exhibit:[[CirclePareData sharedInstance] m_skyIdent]];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: if (self.canEdit) {
    if (self.canEdit) {
        //: self.contentTextView.editable = YES;
        self.contentTextView.editable = YES;

        //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [submitButton setTitle:[WatchLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
        [submitButton setTitle:[PaintedNaturalLanguageTo exhibit:[[CirclePareData sharedInstance] app_tailedMsg]] forState:UIControlStateNormal];
        //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
        [submitButton addTarget:self action:@selector(shouldsed:) forControlEvents:UIControlEventTouchUpInside];
        //: submitButton.layer.cornerRadius = 24;
        submitButton.layer.cornerRadius = 24;
        //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        submitButton.backgroundColor = [UIColor min:[[CirclePareData sharedInstance] app_shoveVictimFormat]];
        //: [self.view addSubview:submitButton];
        [self.view addSubview:submitButton];
    //: }else{
    }else{
        //: self.contentTextView.editable = NO;
        self.contentTextView.editable = NO;
    }

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
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];

    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //: self.speiceBackBlock(content);
    self.speiceBackBlock(content);

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
//    if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
//        [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
//    }
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
        _numLabel.textColor = [UIColor min:[[CirclePareData sharedInstance] dreamPeopleMsg]];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
