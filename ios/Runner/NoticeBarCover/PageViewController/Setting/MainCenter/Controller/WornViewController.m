
#import <Foundation/Foundation.h>

@interface BarreExtraData : NSObject

@end

@implementation BarreExtraData

+ (Byte *)BarreExtraDataToCache:(Byte *)data {
    int colorTime = data[0];
    Byte saveMentally = data[1];
    int printingCompany = data[2];
    for (int i = printingCompany; i < printingCompany + colorTime; i++) {
        int value = data[i] + saveMentally;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[printingCompany + colorTime] = 0;
    return data + printingCompany;
}

+ (NSString *)StringFromBarreExtraData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BarreExtraDataToCache:data]];
}

//: sure_edit
+ (NSString *)k_tableCharterIdent {
    /* static */ NSString *k_tableCharterIdent = nil;
    if (!k_tableCharterIdent) {
        Byte value[] = {9, 91, 3, 24, 26, 23, 10, 4, 10, 9, 14, 25, 80};
        k_tableCharterIdent = [self StringFromBarreExtraData:value];
    }
    return k_tableCharterIdent;
}

//: type
+ (NSString *)dreamGivingCompanyUrl {
    /* static */ NSString *dreamGivingCompanyUrl = nil;
    if (!dreamGivingCompanyUrl) {
        Byte value[] = {4, 83, 7, 160, 217, 212, 58, 33, 38, 29, 18, 81};
        dreamGivingCompanyUrl = [self StringFromBarreExtraData:value];
    }
    return dreamGivingCompanyUrl;
}

//: oldpass
+ (NSString *)k_titleIdent {
    /* static */ NSString *k_titleIdent = nil;
    if (!k_titleIdent) {
        Byte value[] = {7, 56, 9, 195, 225, 163, 239, 193, 172, 55, 52, 44, 56, 41, 59, 59, 139};
        k_titleIdent = [self StringFromBarreExtraData:value];
    }
    return k_titleIdent;
}

//: renewpass
+ (NSString *)dream_upIdent {
    /* static */ NSString *dream_upIdent = nil;
    if (!dream_upIdent) {
        Byte value[] = {9, 3, 7, 75, 246, 48, 60, 111, 98, 107, 98, 116, 109, 94, 112, 112, 38};
        dream_upIdent = [self StringFromBarreExtraData:value];
    }
    return dream_upIdent;
}

//: msg
+ (NSString *)userSimplyStr {
    /* static */ NSString *userSimplyStr = nil;
    if (!userSimplyStr) {
        Byte value[] = {3, 4, 7, 151, 99, 70, 11, 105, 111, 99, 219};
        userSimplyStr = [self StringFromBarreExtraData:value];
    }
    return userSimplyStr;
}

//: #333333
+ (NSString *)show_employTitle {
    /* static */ NSString *show_employTitle = nil;
    if (!show_employTitle) {
        Byte value[] = {7, 59, 10, 52, 115, 195, 121, 130, 168, 245, 232, 248, 248, 248, 248, 248, 248, 222};
        show_employTitle = [self StringFromBarreExtraData:value];
    }
    return show_employTitle;
}

//: activity_modify_old
+ (NSString *)main_endValue {
    /* static */ NSString *main_endValue = nil;
    if (!main_endValue) {
        Byte value[] = {19, 23, 9, 214, 54, 24, 68, 157, 66, 74, 76, 93, 82, 95, 82, 93, 98, 72, 86, 88, 77, 82, 79, 98, 72, 88, 85, 77, 79};
        main_endValue = [self StringFromBarreExtraData:value];
    }
    return main_endValue;
}

//: safe_bind_phone_icon
+ (NSString *)noti_repairUrl {
    /* static */ NSString *noti_repairUrl = nil;
    if (!noti_repairUrl) {
        Byte value[] = {20, 75, 10, 193, 187, 240, 21, 79, 84, 23, 40, 22, 27, 26, 20, 23, 30, 35, 25, 20, 37, 29, 36, 35, 26, 20, 30, 24, 36, 35, 116};
        noti_repairUrl = [self StringFromBarreExtraData:value];
    }
    return noti_repairUrl;
}

//: account
+ (NSString *)appCabinData {
    /* static */ NSString *appCabinData = nil;
    if (!appCabinData) {
        Byte value[] = {7, 72, 9, 59, 101, 177, 56, 74, 214, 25, 27, 27, 39, 45, 38, 44, 169};
        appCabinData = [self StringFromBarreExtraData:value];
    }
    return appCabinData;
}

//: login_bg
+ (NSString *)userMatteMessage {
    /* static */ NSString *userMatteMessage = nil;
    if (!userMatteMessage) {
        Byte value[] = {8, 98, 13, 227, 93, 248, 247, 221, 102, 153, 170, 59, 56, 10, 13, 5, 7, 12, 253, 0, 5, 141};
        userMatteMessage = [self StringFromBarreExtraData:value];
    }
    return userMatteMessage;
}

//: activity_modify_new
+ (NSString *)show_textOfPowerId {
    /* static */ NSString *show_textOfPowerId = nil;
    if (!show_textOfPowerId) {
        Byte value[] = {19, 39, 3, 58, 60, 77, 66, 79, 66, 77, 82, 56, 70, 72, 61, 66, 63, 82, 56, 71, 62, 80, 23};
        show_textOfPowerId = [self StringFromBarreExtraData:value];
    }
    return show_textOfPowerId;
}

//: /user/modifyPass
+ (NSString *)k_accentPath {
    /* static */ NSString *k_accentPath = nil;
    if (!k_accentPath) {
        Byte value[] = {16, 70, 11, 109, 122, 17, 178, 246, 72, 104, 216, 233, 47, 45, 31, 44, 233, 39, 41, 30, 35, 32, 51, 10, 27, 45, 45, 182};
        k_accentPath = [self StringFromBarreExtraData:value];
    }
    return k_accentPath;
}

//: back_arrow_bl
+ (NSString *)k_pointMsg {
    /* static */ NSString *k_pointMsg = nil;
    if (!k_pointMsg) {
        Byte value[] = {13, 87, 3, 11, 10, 12, 20, 8, 10, 27, 27, 24, 32, 8, 11, 21, 51};
        k_pointMsg = [self StringFromBarreExtraData:value];
    }
    return k_pointMsg;
}

//: #4B43DE
+ (NSString *)userStoneId {
    /* static */ NSString *userStoneId = nil;
    if (!userStoneId) {
        Byte value[] = {7, 8, 4, 207, 27, 44, 58, 44, 43, 60, 61, 201};
        userStoneId = [self StringFromBarreExtraData:value];
    }
    return userStoneId;
}

//: newpass
+ (NSString *)show_shouldText {
    /* static */ NSString *show_shouldText = nil;
    if (!show_shouldText) {
        Byte value[] = {7, 1, 4, 225, 109, 100, 118, 111, 96, 114, 114, 30};
        show_shouldText = [self StringFromBarreExtraData:value];
    }
    return show_shouldText;
}

//: activity_safe_setting_modify
+ (NSString *)kDateText {
    /* static */ NSString *kDateText = nil;
    if (!kDateText) {
        Byte value[] = {28, 26, 13, 171, 107, 52, 109, 131, 90, 72, 19, 162, 55, 71, 73, 90, 79, 92, 79, 90, 95, 69, 89, 71, 76, 75, 69, 89, 75, 90, 90, 79, 84, 77, 69, 83, 85, 74, 79, 76, 95, 77};
        kDateText = [self StringFromBarreExtraData:value];
    }
    return kDateText;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  WornViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "WornViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "RecentToViewCell.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface WornViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation WornViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[BarreExtraData userMatteMessage]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BarreExtraData k_pointMsg]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[BarreExtraData kDateText]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
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
    imgname.image = [UIImage imageNamed:[BarreExtraData noti_repairUrl]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor min:[BarreExtraData show_employTitle]];
    //: self.textfile_1.placeholder = [WatchLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [PaintedNaturalLanguageTo exhibit:[BarreExtraData main_endValue]];
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
    imgname2.image = [UIImage imageNamed:[BarreExtraData noti_repairUrl]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor min:[BarreExtraData show_employTitle]];
    //: self.textfile_2.placeholder = [WatchLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [PaintedNaturalLanguageTo exhibit:[BarreExtraData show_textOfPowerId]];
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
    imgname3.image = [UIImage imageNamed:[BarreExtraData noti_repairUrl]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor min:[BarreExtraData show_employTitle]];
    //: self.textfile_3.placeholder = [WatchLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [PaintedNaturalLanguageTo exhibit:[BarreExtraData show_textOfPowerId]];
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
    //: [emptyButton setTitle:[WatchLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[PaintedNaturalLanguageTo exhibit:[BarreExtraData k_tableCharterIdent]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(visualProperty) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    emptyButton.backgroundColor = [UIColor min:[BarreExtraData userStoneId]];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)visualProperty{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[BarreExtraData appCabinData]];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[BarreExtraData dreamGivingCompanyUrl]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[BarreExtraData k_titleIdent]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[BarreExtraData show_shouldText]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[BarreExtraData dream_upIdent]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[BarreExtraData k_accentPath]] reload_strong:dict with:YES forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict record:[BarreExtraData userSimplyStr]];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end
