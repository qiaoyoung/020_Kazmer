
#import <Foundation/Foundation.h>

typedef struct {
    Byte quash;
    Byte *tubeHunter;
    unsigned int champion;
	int blackfishTotalellectual;
} StructRugData;

@interface RugData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RugData

+ (instancetype)sharedInstance {
    static RugData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RugDataToByte:(StructRugData *)data {
    for (int i = 0; i < data->champion; i++) {
        data->tubeHunter[i] ^= data->quash;
    }
    data->tubeHunter[data->champion] = 0;
	if (data->champion >= 1) {
		data->blackfishTotalellectual = data->tubeHunter[0];
	}
    return data->tubeHunter;
}

- (NSString *)StringFromRugData:(StructRugData *)data {
    return [NSString stringWithUTF8String:(char *)[self RugDataToByte:data]];
}

//: activity_register_next
- (NSString *)showCloseMsg {
    /* static */ NSString *showCloseMsg = nil;
    if (!showCloseMsg) {
        StructRugData value = (StructRugData){229, (Byte []){132, 134, 145, 140, 147, 140, 145, 156, 186, 151, 128, 130, 140, 150, 145, 128, 151, 186, 139, 128, 157, 145, 20}, 22, 157};
        showCloseMsg = [self StringFromRugData:&value];
    }
    return showCloseMsg;
}

//: register_avtivity3_nick
- (NSString *)user_membershipId {
    /* static */ NSString *user_membershipId = nil;
    if (!user_membershipId) {
        StructRugData value = (StructRugData){53, (Byte []){71, 80, 82, 92, 70, 65, 80, 71, 106, 84, 67, 65, 92, 67, 92, 65, 76, 6, 106, 91, 92, 86, 94, 188}, 23, 181};
        user_membershipId = [self StringFromRugData:&value];
    }
    return user_membershipId;
}

//: nickname_same_account
- (NSString *)mainCompanyMsg {
    /* static */ NSString *mainCompanyMsg = nil;
    if (!mainCompanyMsg) {
        StructRugData value = (StructRugData){3, (Byte []){109, 106, 96, 104, 109, 98, 110, 102, 92, 112, 98, 110, 102, 92, 98, 96, 96, 108, 118, 109, 119, 221}, 21, 184};
        mainCompanyMsg = [self StringFromRugData:&value];
    }
    return mainCompanyMsg;
}

//: back_arrow_bl
- (NSString *)show_stoneText {
    /* static */ NSString *show_stoneText = nil;
    if (!show_stoneText) {
        StructRugData value = (StructRugData){143, (Byte []){237, 238, 236, 228, 208, 238, 253, 253, 224, 248, 208, 237, 227, 231}, 13, 35};
        show_stoneText = [self StringFromRugData:&value];
    }
    return show_stoneText;
}

//: register_good_nick
- (NSString *)userStrangeMessage {
    /* static */ NSString *userStrangeMessage = nil;
    if (!userStrangeMessage) {
        StructRugData value = (StructRugData){96, (Byte []){18, 5, 7, 9, 19, 20, 5, 18, 63, 7, 15, 15, 4, 63, 14, 9, 3, 11, 115}, 18, 19};
        userStrangeMessage = [self StringFromRugData:&value];
    }
    return userStrangeMessage;
}

//: activity_my_user_info_nick
- (NSString *)dream_timeFreedUrl {
    /* static */ NSString *dream_timeFreedUrl = nil;
    if (!dream_timeFreedUrl) {
        StructRugData value = (StructRugData){105, (Byte []){8, 10, 29, 0, 31, 0, 29, 16, 54, 4, 16, 54, 28, 26, 12, 27, 54, 0, 7, 15, 6, 54, 7, 0, 10, 2, 226}, 26, 107};
        dream_timeFreedUrl = [self StringFromRugData:&value];
    }
    return dream_timeFreedUrl;
}

//: #4B43DE
- (NSString *)mDominateName {
    /* static */ NSString *mDominateName = nil;
    if (!mDominateName) {
        StructRugData value = (StructRugData){185, (Byte []){154, 141, 251, 141, 138, 253, 252, 164}, 7, 152};
        mDominateName = [self StringFromRugData:&value];
    }
    return mDominateName;
}

//: #5D5F66
- (NSString *)kNameText {
    /* static */ NSString *kNameText = nil;
    if (!kNameText) {
        StructRugData value = (StructRugData){223, (Byte []){252, 234, 155, 234, 153, 233, 233, 14}, 7, 109};
        kNameText = [self StringFromRugData:&value];
    }
    return kNameText;
}

//: #333333
- (NSString *)appConvinceMessage {
    /* static */ NSString *appConvinceMessage = nil;
    if (!appConvinceMessage) {
        StructRugData value = (StructRugData){172, (Byte []){143, 159, 159, 159, 159, 159, 159, 71}, 7, 161};
        appConvinceMessage = [self StringFromRugData:&value];
    }
    return appConvinceMessage;
}

//: login_bg
- (NSString *)showSendId {
    /* static */ NSString *showSendId = nil;
    if (!showSendId) {
        StructRugData value = (StructRugData){177, (Byte []){221, 222, 214, 216, 223, 238, 211, 214, 76}, 8, 98};
        showSendId = [self StringFromRugData:&value];
    }
    return showSendId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchRegisterNickNameViewController.h"
#import "ObjectViewController.h"
//: #import "WatchRegisterAvatarViewController.h"
#import "AvatarViewController.h"

//: @interface WatchRegisterNickNameViewController ()<UITextFieldDelegate>
@interface ObjectViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation WatchRegisterNickNameViewController
@implementation ObjectViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[RugData sharedInstance] showSendId]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initEmpty];

}

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initEmpty
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice tingHeight]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[RugData sharedInstance] show_stoneText]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [WatchLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] dream_timeFreedUrl]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor min:[[RugData sharedInstance] kNameText]];
    //: self.accountLabel.text = [WatchLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] userStrangeMessage]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor min:[[RugData sharedInstance] appConvinceMessage]];
    //: self.accountTextfield.placeholder = [WatchLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] user_membershipId]];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    self.registButton.backgroundColor = [UIColor min:[[RugData sharedInstance] mDominateName]];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    self.registButton.layer.shadowColor = [UIColor min:[[RugData sharedInstance] mDominateName]].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[WatchLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] showCloseMsg]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(clickImage) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)clickImage
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] user_membershipId]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[RugData sharedInstance] mainCompanyMsg]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: WatchRegisterAvatarViewController *vc = [[WatchRegisterAvatarViewController alloc]init];
    AvatarViewController *vc = [[AvatarViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end
