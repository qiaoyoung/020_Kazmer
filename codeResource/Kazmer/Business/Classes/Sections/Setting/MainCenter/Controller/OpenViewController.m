
#import <Foundation/Foundation.h>

@interface DedicateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DedicateData

- (NSString *)StringFromDedicateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DedicateDataToCache:data]];
}

//: login_bg
- (NSString *)kNameViolationValue {
    /* static */ NSString *kNameViolationValue = nil;
    if (!kNameViolationValue) {
		NSString *origin = @"081d090c7c0f5b854c898c84868b7c7f847d";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameViolationValue = [self StringFromDedicateData:value];
    }
    return kNameViolationValue;
}

//: #333333
- (NSString *)kTitle_pinContent {
    /* static */ NSString *kTitle_pinContent = nil;
    if (!kTitle_pinContent) {
		NSString *origin = @"071103344444444444446b";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_pinContent = [self StringFromDedicateData:value];
    }
    return kTitle_pinContent;
}

- (Byte *)DedicateDataToCache:(Byte *)data {
    int civilian = data[0];
    Byte titleVitamin = data[1];
    int valueItemSearched = data[2];
    for (int i = valueItemSearched; i < valueItemSearched + civilian; i++) {
        int value = data[i] - titleVitamin;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[valueItemSearched + civilian] = 0;
    return data + valueItemSearched;
}

//: sure_edit
- (NSString *)kText_viewValue {
    /* static */ NSString *kText_viewValue = nil;
    if (!kText_viewValue) {
		NSString *origin = @"093403a7a9a6999399989da88d";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_viewValue = [self StringFromDedicateData:value];
    }
    return kText_viewValue;
}

//: type
- (NSString *)kName_stableValue {
    /* static */ NSString *kName_stableValue = nil;
    if (!kName_stableValue) {
		NSString *origin = @"042c075c899b03a0a59c9131";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_stableValue = [self StringFromDedicateData:value];
    }
    return kName_stableValue;
}

//: activity_safe_setting_modify
- (NSString *)kName_shoppingTitle {
    /* static */ NSString *kName_shoppingTitle = nil;
    if (!kName_shoppingTitle) {
		NSString *origin = @"1c5707c8316f67b8bacbc0cdc0cbd0b6cab8bdbcb6cabccbcbc0c5beb6c4c6bbc0bdd035";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_shoppingTitle = [self StringFromDedicateData:value];
    }
    return kName_shoppingTitle;
}

//: #4B43DE
- (NSString *)kName_textTitle {
    /* static */ NSString *kName_textTitle = nil;
    if (!kName_textTitle) {
		NSString *origin = @"071106ca3fdf34455345445556c2";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_textTitle = [self StringFromDedicateData:value];
    }
    return kName_textTitle;
}

+ (instancetype)sharedInstance {
    static DedicateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: msg
- (NSString *)kNameToData {
    /* static */ NSString *kNameToData = nil;
    if (!kNameToData) {
		NSString *origin = @"03090c4d086e5a6a1bea323b767c7051";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameToData = [self StringFromDedicateData:value];
    }
    return kNameToData;
}

//: back_arrow_bl
- (NSString *)kName_immigrantData {
    /* static */ NSString *kName_immigrantData = nil;
    if (!kName_immigrantData) {
		NSString *origin = @"0d240cee9720e18aba5d3b468685878f83859696939b83869048";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_immigrantData = [self StringFromDedicateData:value];
    }
    return kName_immigrantData;
}

+ (NSData *)DedicateDataToData:(NSString *)value {
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

//: oldpass
- (NSString *)kName_endContent {
    /* static */ NSString *kName_endContent = nil;
    if (!kName_endContent) {
		NSString *origin = @"07630bd63d7552566bcc88d2cfc7d3c4d6d6c0";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_endContent = [self StringFromDedicateData:value];
    }
    return kName_endContent;
}

//: newpass
- (NSString *)kNameButString {
    /* static */ NSString *kNameButString = nil;
    if (!kNameButString) {
		NSString *origin = @"070109199d22866e7d6f667871627474f3";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameButString = [self StringFromDedicateData:value];
    }
    return kNameButString;
}

//: activity_modify_old
- (NSString *)kNamePlayData {
    /* static */ NSString *kNamePlayData = nil;
    if (!kNamePlayData) {
		NSString *origin = @"130909778f1e5dc6926a6c7d727f727d826876786d726f826878756d5e";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePlayData = [self StringFromDedicateData:value];
    }
    return kNamePlayData;
}

//: activity_modify_new
- (NSString *)kName_monthString {
    /* static */ NSString *kName_monthString = nil;
    if (!kName_monthString) {
		NSString *origin = @"130605b6be67697a6f7c6f7a7f6573756a6f6c7f65746b7dcf";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_monthString = [self StringFromDedicateData:value];
    }
    return kName_monthString;
}

//: safe_bind_phone_icon
- (NSString *)kTitleContent {
    /* static */ NSString *kTitleContent = nil;
    if (!kTitleContent) {
		NSString *origin = @"146109d1cd2cebafedd4c2c7c6c0c3cacfc5c0d1c9d0cfc6c0cac4d0cf8f";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleContent = [self StringFromDedicateData:value];
    }
    return kTitleContent;
}

//: /user/modifyPass
- (NSString *)kName_onData {
    /* static */ NSString *kName_onData = nil;
    if (!kName_onData) {
		NSString *origin = @"10630392d8d6c8d592d0d2c7ccc9dcb3c4d6d60b";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_onData = [self StringFromDedicateData:value];
    }
    return kName_onData;
}

//: renewpass
- (NSString *)kTitleMainAddText {
    /* static */ NSString *kTitleMainAddText = nil;
    if (!kTitleMainAddText) {
		NSString *origin = @"092d04989f929b92a49d8ea0a0f8";
		NSData *data = [DedicateData DedicateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMainAddText = [self StringFromDedicateData:value];
    }
    return kTitleMainAddText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERChangePasswordController.h"
#import "OpenViewController.h"
//: #import "USERChangePasswordCell.h"
#import "PageView.h"

//: @interface USERChangePasswordController ()<UITextFieldDelegate>
@interface OpenViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @end
@end

//: @implementation USERChangePasswordController
@implementation OpenViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[DedicateData sharedInstance] kNameViolationValue]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[DedicateData sharedInstance] kName_immigrantData]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [MakeManager cell:[[DedicateData sharedInstance] kName_shoppingTitle]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 25;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:[[DedicateData sharedInstance] kTitleContent]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor cell:[[DedicateData sharedInstance] kTitle_pinContent]];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [MakeManager cell:[[DedicateData sharedInstance] kNamePlayData]];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.cornerRadius = 25;
    view2.layer.cornerRadius = 25;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[[DedicateData sharedInstance] kTitleContent]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor cell:[[DedicateData sharedInstance] kTitle_pinContent]];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [MakeManager cell:[[DedicateData sharedInstance] kName_monthString]];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.cornerRadius = 25;
    view3.layer.cornerRadius = 25;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[[DedicateData sharedInstance] kTitleContent]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor cell:[[DedicateData sharedInstance] kTitle_pinContent]];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [MakeManager cell:[[DedicateData sharedInstance] kName_monthString]];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[MakeManager cell:[[DedicateData sharedInstance] kText_viewValue]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(enableNim) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    emptyButton.backgroundColor = [UIColor cell:[[DedicateData sharedInstance] kName_textTitle]];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: -(void)commitButtonClick{
-(void)enableNim{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:@"account"];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[[DedicateData sharedInstance] kName_stableValue]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[[DedicateData sharedInstance] kName_endContent]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[[DedicateData sharedInstance] kNameButString]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[[DedicateData sharedInstance] kTitleMainAddText]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[[DedicateData sharedInstance] kName_onData]] query:dict showThan:YES green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[[DedicateData sharedInstance] kNameToData]];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: @end
@end
//: __SAVE__ ignore_string [749.7]