
#import <Foundation/Foundation.h>

@interface WithScaleData : NSObject

@end

@implementation WithScaleData

//: login_bg
+ (NSString *)kTitle_loopContent {
    /* static */ NSString *kTitle_loopContent = nil;
    if (!kTitle_loopContent) {
		NSString *origin = @"0831040a9da0989a9f90939831";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_loopContent = [self StringFromWithScaleData:value];
    }
    return kTitle_loopContent;
}

//: contact_list_activity_complete
+ (NSString *)kName_moleData {
    /* static */ NSString *kName_moleData = nil;
    if (!kName_moleData) {
		NSString *origin = @"1e2c038f9b9aa08d8fa08b98959fa08b8d8fa095a295a0a58b8f9b999c9891a0916d";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_moleData = [self StringFromWithScaleData:value];
    }
    return kName_moleData;
}

//: #4B43DE
+ (NSString *)kTitleLastData {
    /* static */ NSString *kTitleLastData = nil;
    if (!kTitleLastData) {
		NSString *origin = @"071904493c4d5b4d4c5d5ee3";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleLastData = [self StringFromWithScaleData:value];
    }
    return kTitleLastData;
}

//: friend_verify_avtivity_net_error
+ (NSString *)kNameConsumptionDataShowString {
    /* static */ NSString *kNameConsumptionDataShowString = nil;
    if (!kNameConsumptionDataShowString) {
		NSString *origin = @"205f0c3c2706443c8379656bc5d1c8c4cdc3bed5c4d1c8c5d8bec0d5d3c8d5c8d3d8becdc4d3bec4d1d1ced19e";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameConsumptionDataShowString = [self StringFromWithScaleData:value];
    }
    return kNameConsumptionDataShowString;
}

//: #333333
+ (NSString *)kNameErrorValue {
    /* static */ NSString *kNameErrorValue = nil;
    if (!kNameErrorValue) {
		NSString *origin = @"0753081d729be8237686868686868677";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameErrorValue = [self StringFromWithScaleData:value];
    }
    return kNameErrorValue;
}

//: ic_invisible
+ (NSString *)kTextMonthValue {
    /* static */ NSString *kTextMonthValue = nil;
    if (!kTextMonthValue) {
		NSString *origin = @"0c5d04ddc6c0bcc6cbd3c6d0c6bfc9c27b";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMonthValue = [self StringFromWithScaleData:value];
    }
    return kTextMonthValue;
}

//: login_success
+ (NSString *)kNameMigrationString {
    /* static */ NSString *kNameMigrationString = nil;
    if (!kNameMigrationString) {
		NSString *origin = @"0d4904f1b5b8b0b2b7a8bcbeacacaebcbcff";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameMigrationString = [self StringFromWithScaleData:value];
    }
    return kNameMigrationString;
}

//: #5D5F66
+ (NSString *)kNamePorchValue {
    /* static */ NSString *kNamePorchValue = nil;
    if (!kNamePorchValue) {
		NSString *origin = @"075b06384af57e909f90a19191f0";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePorchValue = [self StringFromWithScaleData:value];
    }
    return kNamePorchValue;
}

//: login_error
+ (NSString *)kText_cropData {
    /* static */ NSString *kText_cropData = nil;
    if (!kText_cropData) {
		NSString *origin = @"0b1904638588808287787e8b8b888ba2";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_cropData = [self StringFromWithScaleData:value];
    }
    return kText_cropData;
}

+ (NSString *)StringFromWithScaleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WithScaleDataToCache:data]];
}

//: msg
+ (NSString *)kTitleWithValue {
    /* static */ NSString *kTitleWithValue = nil;
    if (!kTitleWithValue) {
		NSString *origin = @"035d0881ff0921bfcad0c4bf";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleWithValue = [self StringFromWithScaleData:value];
    }
    return kTitleWithValue;
}

//: ic_visible
+ (NSString *)kTitleSelectedData {
    /* static */ NSString *kTitleSelectedData = nil;
    if (!kTitleSelectedData) {
		NSString *origin = @"0a5e0c408f7e65ab18887049c7c1bdd4c7d1c7c0cac376";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSelectedData = [self StringFromWithScaleData:value];
    }
    return kTitleSelectedData;
}

+ (NSData *)WithScaleDataToData:(NSString *)value {
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

//: /user/modifyPass
+ (NSString *)kTitleConsumptionString {
    /* static */ NSString *kTitleConsumptionString = nil;
    if (!kTitleConsumptionString) {
		NSString *origin = @"103205bd6b61a7a597a4619fa1969b98ab8293a5a595";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleConsumptionString = [self StringFromWithScaleData:value];
    }
    return kTitleConsumptionString;
}

//: modify_activity_psw_no_same
+ (NSString *)kTitle_recentString {
    /* static */ NSString *kTitle_recentString = nil;
    if (!kTitle_recentString) {
		NSString *origin = @"1b47056a16b4b6abb0adc0a6a8aabbb0bdb0bbc0a6b7babea6b5b6a6baa8b4ac8e";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_recentString = [self StringFromWithScaleData:value];
    }
    return kTitle_recentString;
}

//: activity_modify_new_again
+ (NSString *)kText_redPinString {
    /* static */ NSString *kText_redPinString = nil;
    if (!kText_redPinString) {
		NSString *origin = @"191c044e7d7f9085928590957b898b808582957b8a81937b7d837d858a8b";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_redPinString = [self StringFromWithScaleData:value];
    }
    return kText_redPinString;
}

//: newpass
+ (NSString *)kTextPullData {
    /* static */ NSString *kTextPullData = nil;
    if (!kTextPullData) {
		NSString *origin = @"074b03b9b0c2bbacbebe8e";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextPullData = [self StringFromWithScaleData:value];
    }
    return kTextPullData;
}

//: activity_safe_setting_modify
+ (NSString *)kText_moleData {
    /* static */ NSString *kText_moleData = nil;
    if (!kText_moleData) {
		NSString *origin = @"1c190da55e16fa071d4475243f7a7c8d828f828d92788c7a7f7e788c7e8d8d8287807886887d827f9299";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_moleData = [self StringFromWithScaleData:value];
    }
    return kText_moleData;
}

//: code
+ (NSString *)kTitleSculptureRetireData {
    /* static */ NSString *kTitleSculptureRetireData = nil;
    if (!kTitleSculptureRetireData) {
		NSString *origin = @"04110374807576a1";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSculptureRetireData = [self StringFromWithScaleData:value];
    }
    return kTitleSculptureRetireData;
}

//: activity_modify_new
+ (NSString *)kTextLastName {
    /* static */ NSString *kTextLastName = nil;
    if (!kTextLastName) {
		NSString *origin = @"13160377798a7f8c7f8a8f7583857a7f7c8f75847b8d7f";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextLastName = [self StringFromWithScaleData:value];
    }
    return kTextLastName;
}

//: oldpass
+ (NSString *)kNameRetireValue {
    /* static */ NSString *kNameRetireValue = nil;
    if (!kNameRetireValue) {
		NSString *origin = @"07460642b675b5b2aab6a7b9b996";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRetireValue = [self StringFromWithScaleData:value];
    }
    return kNameRetireValue;
}

//: renewpass
+ (NSString *)kName_hardwareText {
    /* static */ NSString *kName_hardwareText = nil;
    if (!kName_hardwareText) {
		NSString *origin = @"095e088df62778d1d0c3ccc3d5cebfd1d149";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_hardwareText = [self StringFromWithScaleData:value];
    }
    return kName_hardwareText;
}

+ (Byte *)WithScaleDataToCache:(Byte *)data {
    int sunlightChick = data[0];
    Byte showSunlightHide = data[1];
    int migrator = data[2];
    for (int i = migrator; i < migrator + sunlightChick; i++) {
        int value = data[i] - showSunlightHide;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[migrator + sunlightChick] = 0;
    return data + migrator;
}

//: saft_bind_account
+ (NSString *)kNameTeamRetireViolenceValue {
    /* static */ NSString *kNameTeamRetireViolenceValue = nil;
    if (!kNameTeamRetireViolenceValue) {
		NSString *origin = @"115009a7a4ad2c6309c3b1b6c4afb2b9beb4afb1b3b3bfc5bec491";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameTeamRetireViolenceValue = [self StringFromWithScaleData:value];
    }
    return kNameTeamRetireViolenceValue;
}

//: register_account_activity_account
+ (NSString *)kContentDenseString {
    /* static */ NSString *kContentDenseString = nil;
    if (!kContentDenseString) {
		NSString *origin = @"2124052f4696898b8d979889968385878793999298838587988d9a8d989d8385878793999298aa";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentDenseString = [self StringFromWithScaleData:value];
    }
    return kContentDenseString;
}

//: back_arrow_bl
+ (NSString *)kTextMonthData {
    /* static */ NSString *kTextMonthData = nil;
    if (!kTextMonthData) {
		NSString *origin = @"0d1209440b95cc94077473757d71738484818971747e23";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMonthData = [self StringFromWithScaleData:value];
    }
    return kTextMonthData;
}

//: safe_bind_phone_icon
+ (NSString *)kTitle_textThoughData {
    /* static */ NSString *kTitle_textThoughData = nil;
    if (!kTitle_textThoughData) {
		NSString *origin = @"145a0d02cbab7f78b6e6184dfccdbbc0bfb9bcc3c8beb9cac2c9c8bfb9c3bdc9c85a";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_textThoughData = [self StringFromWithScaleData:value];
    }
    return kTitle_textThoughData;
}

//: type
+ (NSString *)kContentViolenceString {
    /* static */ NSString *kContentViolenceString = nil;
    if (!kContentViolenceString) {
		NSString *origin = @"04610482d5dad1c6b9";
		NSData *data = [WithScaleData WithScaleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentViolenceString = [self StringFromWithScaleData:value];
    }
    return kContentViolenceString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "GetBackPasswordViewController.h"
#import "StandardViewController.h"

//: @interface GetBackPasswordViewController ()
@interface StandardViewController ()

//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;

//: @end
@end

//: @implementation GetBackPasswordViewController
@implementation StandardViewController

//: -(void)commitButtonClick
-(void)enableNim
{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
    if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor cell:[WithScaleData kNamePorchValue]];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"modify_activity_psw_no_same"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[MakeManager cell:[WithScaleData kTitle_recentString]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WithScaleData kText_cropData]] style:style completion:nil];
        //: return;
        return;
    }


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:@"account"];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[WithScaleData kContentViolenceString]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[WithScaleData kNameRetireValue]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[WithScaleData kTextPullData]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[WithScaleData kName_hardwareText]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[WithScaleData kTitleConsumptionString]] query:dict showThan:YES green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[WithScaleData kTitleWithValue]];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[WithScaleData kTitleSculptureRetireData]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor cell:[WithScaleData kNamePorchValue]];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WithScaleData kNameMigrationString]] style:style completion:nil];

            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }else{
        }else{
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor cell:[WithScaleData kNamePorchValue]];
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WithScaleData kText_cropData]] style:style completion:nil];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor cell:[WithScaleData kNamePorchValue]];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[MakeManager cell:[WithScaleData kNameConsumptionDataShowString]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[WithScaleData kText_cropData]] style:style completion:nil];
    //: }];
    }];

}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)atAcross:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WithScaleData kTitleSelectedData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = NO;
            self.textfile_2.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WithScaleData kTextMonthValue]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_2.secureTextEntry = YES;
            self.textfile_2.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: - (void)backAction{
- (void)getDown{
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
    bg.image = [UIImage imageNamed:[WithScaleData kTitle_loopContent]];
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
    [backButton setImage:[UIImage imageNamed:[WithScaleData kTextMonthData]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [MakeManager cell:[WithScaleData kText_moleData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice comeDownSuperphylum])+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view1.backgroundColor = [UIColor whiteColor];
    view1.backgroundColor = [UIColor whiteColor];
    //: view1.layer.cornerRadius = 24;
    view1.layer.cornerRadius = 24;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];

    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"saft_bind_account"];
    imgname.image = [UIImage imageNamed:[WithScaleData kNameTeamRetireViolenceValue]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, [[UIScreen mainScreen] bounds].size.width-40-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor cell:[WithScaleData kNameErrorValue]];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"register_account_activity_account"];
    self.textfile_1.placeholder = [MakeManager cell:[WithScaleData kContentDenseString]];
//    self.textfile_1.delegate = self;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view2.backgroundColor = [UIColor whiteColor];
    view2.backgroundColor = [UIColor whiteColor];
    //: view2.layer.cornerRadius = 24;
    view2.layer.cornerRadius = 24;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[WithScaleData kTitle_textThoughData]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor cell:[WithScaleData kNameErrorValue]];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [MakeManager cell:[WithScaleData kTextLastName]];
//    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

    //: UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton1.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton1 addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton1 addTarget:self action:@selector(atAcross:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton1 setImage:[UIImage imageNamed:[WithScaleData kTextMonthValue]] forState:UIControlStateNormal];
    //: [secureButton1 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton1 setImage:[UIImage imageNamed:[WithScaleData kTitleSelectedData]] forState:UIControlStateSelected];
//    secureButton1.hidden = YES;
    //: [view2 addSubview:secureButton1];
    [view2 addSubview:secureButton1];


    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: view3.backgroundColor = [UIColor whiteColor];
    view3.backgroundColor = [UIColor whiteColor];
    //: view3.layer.cornerRadius = 24;
    view3.layer.cornerRadius = 24;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[WithScaleData kTitle_textThoughData]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-60, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor cell:[WithScaleData kNameErrorValue]];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new_again"];
    self.textfile_3.placeholder = [MakeManager cell:[WithScaleData kText_redPinString]];
//    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    secureButton2.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 16, 16, 16);
    //: [secureButton2 addTarget:self action:@selector(pwdAginaTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton2 addTarget:self action:@selector(writtenMatter:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton2 setImage:[UIImage imageNamed:[WithScaleData kTextMonthValue]] forState:UIControlStateNormal];
    //: [secureButton2 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
    [secureButton2 setImage:[UIImage imageNamed:[WithScaleData kTitleSelectedData]] forState:UIControlStateSelected];
//    secureButton2.hidden = YES;
    //: [view3 addSubview:secureButton2];
    [view3 addSubview:secureButton2];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    emptyButton.frame = CGRectMake(20, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [emptyButton setTitle:[MakeManager cell:[WithScaleData kName_moleData]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(enableNim) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    emptyButton.backgroundColor = [UIColor cell:[WithScaleData kTitleLastData]];
    //: emptyButton.layer.cornerRadius = 22;
    emptyButton.layer.cornerRadius = 22;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];


}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)pwdAginaTextSwitch:(UIButton *)sender
- (void)writtenMatter:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文
        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WithScaleData kTextMonthValue]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = NO;
            self.textfile_3.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文
        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[WithScaleData kTitleSelectedData]] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.textfile_3.secureTextEntry = YES;
            self.textfile_3.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: @end
@end
//: __SAVE__ ignore_string [749.7]