
#import <Foundation/Foundation.h>

typedef struct {
    Byte addedCellOo;
    Byte *ruralMystery;
    unsigned int wall;
	int godly;
	int it;
} StructWrapData;

@interface WrapData : NSObject

+ (instancetype)sharedInstance;

//: feedback_activity_submit
@property (nonatomic, copy) NSString *kContentForeignerName;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kText_springValue;

//: #4B43DE
@property (nonatomic, copy) NSString *kTextPrivacyString;

//: Group_description
@property (nonatomic, copy) NSString *kTextWrapString;

//: #F6F7FA
@property (nonatomic, copy) NSString *kTitle_produceString;

//: Please_enter_content
@property (nonatomic, copy) NSString *kTitleYoursString;

//: #999999
@property (nonatomic, copy) NSString *kTitle_proudData;

@end

@implementation WrapData

+ (instancetype)sharedInstance {
    static WrapData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WrapDataToByte:(StructWrapData *)data {
    for (int i = 0; i < data->wall; i++) {
        data->ruralMystery[i] ^= data->addedCellOo;
    }
    data->ruralMystery[data->wall] = 0;
	if (data->wall >= 2) {
		data->godly = data->ruralMystery[0];
		data->it = data->ruralMystery[1];
	}
    return data->ruralMystery;
}

- (NSString *)StringFromWrapData:(StructWrapData *)data {
    return [NSString stringWithUTF8String:(char *)[self WrapDataToByte:data]];
}

//: back_arrow_bl
- (NSString *)kText_springValue {
    if (!_kText_springValue) {
        StructWrapData value = (StructWrapData){169, (Byte []){203, 200, 202, 194, 246, 200, 219, 219, 198, 222, 246, 203, 197, 206}, 13, 30, 10};
        _kText_springValue = [self StringFromWrapData:&value];
    }
    return _kText_springValue;
}

//: Please_enter_content
- (NSString *)kTitleYoursString {
    if (!_kTitleYoursString) {
        StructWrapData value = (StructWrapData){209, (Byte []){129, 189, 180, 176, 162, 180, 142, 180, 191, 165, 180, 163, 142, 178, 190, 191, 165, 180, 191, 165, 18}, 20, 207, 109};
        _kTitleYoursString = [self StringFromWrapData:&value];
    }
    return _kTitleYoursString;
}

//: feedback_activity_submit
- (NSString *)kContentForeignerName {
    if (!_kContentForeignerName) {
        StructWrapData value = (StructWrapData){41, (Byte []){79, 76, 76, 77, 75, 72, 74, 66, 118, 72, 74, 93, 64, 95, 64, 93, 80, 118, 90, 92, 75, 68, 64, 93, 42}, 24, 60, 159};
        _kContentForeignerName = [self StringFromWrapData:&value];
    }
    return _kContentForeignerName;
}

//: #F6F7FA
- (NSString *)kTitle_produceString {
    if (!_kTitle_produceString) {
        StructWrapData value = (StructWrapData){88, (Byte []){123, 30, 110, 30, 111, 30, 25, 116}, 7, 227, 79};
        _kTitle_produceString = [self StringFromWrapData:&value];
    }
    return _kTitle_produceString;
}

//: #999999
- (NSString *)kTitle_proudData {
    if (!_kTitle_proudData) {
        StructWrapData value = (StructWrapData){204, (Byte []){239, 245, 245, 245, 245, 245, 245, 3}, 7, 141, 71};
        _kTitle_proudData = [self StringFromWrapData:&value];
    }
    return _kTitle_proudData;
}

//: Group_description
- (NSString *)kTextWrapString {
    if (!_kTextWrapString) {
        StructWrapData value = (StructWrapData){160, (Byte []){231, 210, 207, 213, 208, 255, 196, 197, 211, 195, 210, 201, 208, 212, 201, 207, 206, 224}, 17, 241, 157};
        _kTextWrapString = [self StringFromWrapData:&value];
    }
    return _kTextWrapString;
}

//: #4B43DE
- (NSString *)kTextPrivacyString {
    if (!_kTextPrivacyString) {
        StructWrapData value = (StructWrapData){29, (Byte []){62, 41, 95, 41, 46, 89, 88, 201}, 7, 236, 101};
        _kTextPrivacyString = [self StringFromWrapData:&value];
    }
    return _kTextPrivacyString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableLengthViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTeamIntroduceViewController.h"
#import "EnableLengthViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface DisplayTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface EnableLengthViewController ()<UITextFieldDelegate, UITextViewDelegate>


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

//: @implementation DisplayTeamIntroduceViewController
@implementation EnableLengthViewController

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
    self.view.backgroundColor = [UIColor cell:[WrapData sharedInstance].kTitle_produceString];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[WrapData sharedInstance].kText_springValue] forState:(UIControlStateNormal)];
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
    labtitle.text = [MakeManager cell:[WrapData sharedInstance].kTextWrapString];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
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
    //: self.contentTextView.placeholder = [DisplayLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [MakeManager cell:[WrapData sharedInstance].kTitleYoursString];
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
        //: [submitButton setTitle:[DisplayLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
        [submitButton setTitle:[MakeManager cell:[WrapData sharedInstance].kContentForeignerName] forState:UIControlStateNormal];
        //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
        [submitButton addTarget:self action:@selector(colorses:) forControlEvents:UIControlEventTouchUpInside];
        //: submitButton.layer.cornerRadius = 24;
        submitButton.layer.cornerRadius = 24;
        //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        submitButton.backgroundColor = [UIColor cell:[WrapData sharedInstance].kTextPrivacyString];
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
        _numLabel.textColor = [UIColor cell:[WrapData sharedInstance].kTitle_proudData];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
