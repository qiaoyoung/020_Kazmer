
#import <Foundation/Foundation.h>

@interface FrameSendData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FrameSendData

//: add_friend_add_fail
- (NSString *)kText_modelItemData {
    /* static */ NSString *kText_modelItemData = nil;
    if (!kText_modelItemData) {
        Byte value[] = {19, 44, 10, 87, 194, 81, 197, 159, 249, 111, 53, 56, 56, 51, 58, 70, 61, 57, 66, 56, 51, 53, 56, 56, 51, 58, 53, 61, 64, 164};
        kText_modelItemData = [self StringFromFrameSendData:value];
    }
    return kText_modelItemData;
}

+ (instancetype)sharedInstance {
    static FrameSendData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (NSString *)StringFromFrameSendData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FrameSendDataToCache:data]];
}

//: contact_user_default_header
- (NSString *)kText_detailContent {
    /* static */ NSString *kText_detailContent = nil;
    if (!kText_detailContent) {
        Byte value[] = {27, 91, 11, 242, 63, 175, 68, 45, 66, 222, 47, 8, 20, 19, 25, 6, 8, 25, 4, 26, 24, 10, 23, 4, 9, 10, 11, 6, 26, 17, 25, 4, 13, 10, 6, 9, 10, 23, 182};
        kText_detailContent = [self StringFromFrameSendData:value];
    }
    return kText_detailContent;
}

//: request_successful
- (NSString *)kName_dataFrameValue {
    /* static */ NSString *kName_dataFrameValue = nil;
    if (!kName_dataFrameValue) {
        Byte value[] = {18, 49, 5, 71, 251, 65, 52, 64, 68, 52, 66, 67, 46, 66, 68, 50, 50, 52, 66, 66, 53, 68, 59, 185};
        kName_dataFrameValue = [self StringFromFrameSendData:value];
    }
    return kName_dataFrameValue;
}

//: common_bg
- (NSString *)kNameRecordString {
    /* static */ NSString *kNameRecordString = nil;
    if (!kNameRecordString) {
        Byte value[] = {9, 47, 10, 63, 120, 88, 173, 210, 114, 178, 52, 64, 62, 62, 64, 63, 48, 51, 56, 211};
        kNameRecordString = [self StringFromFrameSendData:value];
    }
    return kNameRecordString;
}

//: /user/detail
- (NSString *)kTitleTopData {
    /* static */ NSString *kTitleTopData = nil;
    if (!kTitleTopData) {
        Byte value[] = {12, 6, 3, 41, 111, 109, 95, 108, 41, 94, 95, 110, 91, 99, 102, 214};
        kTitleTopData = [self StringFromFrameSendData:value];
    }
    return kTitleTopData;
}

//: code
- (NSString *)kText_onAddContent {
    /* static */ NSString *kText_onAddContent = nil;
    if (!kText_onAddContent) {
        Byte value[] = {4, 84, 11, 208, 75, 231, 50, 95, 86, 209, 19, 15, 27, 16, 17, 204};
        kText_onAddContent = [self StringFromFrameSendData:value];
    }
    return kText_onAddContent;
}

//: back_arrow_bl
- (NSString *)kTitle_loopValueString {
    /* static */ NSString *kTitle_loopValueString = nil;
    if (!kTitle_loopValueString) {
        Byte value[] = {13, 7, 11, 233, 240, 86, 123, 204, 48, 229, 144, 91, 90, 92, 100, 88, 90, 107, 107, 104, 112, 88, 91, 101, 88};
        kTitle_loopValueString = [self StringFromFrameSendData:value];
    }
    return kTitle_loopValueString;
}

//: #999999
- (NSString *)kTitleHideValue {
    /* static */ NSString *kTitleHideValue = nil;
    if (!kTitleHideValue) {
        Byte value[] = {7, 99, 5, 248, 226, 192, 214, 214, 214, 214, 214, 214, 129};
        kTitleHideValue = [self StringFromFrameSendData:value];
    }
    return kTitleHideValue;
}

- (Byte *)FrameSendDataToCache:(Byte *)data {
    int scaleText = data[0];
    Byte refresh = data[1];
    int pin = data[2];
    for (int i = pin; i < pin + scaleText; i++) {
        int value = data[i] + refresh;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pin + scaleText] = 0;
    return data + pin;
}

//: contact_tag_fragment_add_success
- (NSString *)kTitleContentName {
    /* static */ NSString *kTitleContentName = nil;
    if (!kTitleContentName) {
        Byte value[] = {32, 95, 13, 234, 57, 23, 142, 244, 155, 146, 163, 13, 233, 4, 16, 15, 21, 2, 4, 21, 0, 21, 2, 8, 0, 7, 19, 2, 8, 14, 6, 15, 21, 0, 2, 5, 5, 0, 20, 22, 4, 4, 6, 20, 20, 57};
        kTitleContentName = [self StringFromFrameSendData:value];
    }
    return kTitleContentName;
}

//: add_friend_activity_add_friend
- (NSString *)kTextMonthName {
    /* static */ NSString *kTextMonthName = nil;
    if (!kTextMonthName) {
        Byte value[] = {30, 97, 9, 79, 109, 10, 249, 53, 79, 0, 3, 3, 254, 5, 17, 8, 4, 13, 3, 254, 0, 2, 19, 8, 21, 8, 19, 24, 254, 0, 3, 3, 254, 5, 17, 8, 4, 13, 3, 68};
        kTextMonthName = [self StringFromFrameSendData:value];
    }
    return kTextMonthName;
}

//: user_id
- (NSString *)kTitleDeviceString {
    /* static */ NSString *kTitleDeviceString = nil;
    if (!kTitleDeviceString) {
        Byte value[] = {7, 47, 7, 197, 224, 174, 27, 70, 68, 54, 67, 48, 58, 53, 90};
        kTitleDeviceString = [self StringFromFrameSendData:value];
    }
    return kTitleDeviceString;
}

//: friend_info_activity_account
- (NSString *)kNameTitleColorString {
    /* static */ NSString *kNameTitleColorString = nil;
    if (!kNameTitleColorString) {
        Byte value[] = {28, 71, 5, 214, 18, 31, 43, 34, 30, 39, 29, 24, 34, 39, 31, 40, 24, 26, 28, 45, 34, 47, 34, 45, 50, 24, 26, 28, 28, 40, 46, 39, 45, 247};
        kNameTitleColorString = [self StringFromFrameSendData:value];
    }
    return kNameTitleColorString;
}

//: #4B43DE
- (NSString *)kName_mainString {
    /* static */ NSString *kName_mainString = nil;
    if (!kName_mainString) {
        Byte value[] = {7, 89, 3, 202, 219, 233, 219, 218, 235, 236, 169};
        kName_mainString = [self StringFromFrameSendData:value];
    }
    return kName_mainString;
}

//: add_friend_request_fail
- (NSString *)kNameEndData {
    /* static */ NSString *kNameEndData = nil;
    if (!kNameEndData) {
        Byte value[] = {23, 7, 9, 189, 142, 168, 2, 125, 53, 90, 93, 93, 88, 95, 107, 98, 94, 103, 93, 88, 107, 94, 106, 110, 94, 108, 109, 88, 95, 90, 98, 101, 203};
        kNameEndData = [self StringFromFrameSendData:value];
    }
    return kNameEndData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "RedViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERColorButtonCell.h"
#import "ColorCancelCompartmentViewCell.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "USERUserUtil.h"
#import "ViewUtil.h"
//: #import "HMDataPicker.h"
#import "ColouringView.h"
//: #import "USEROpinionBackViewController.h"
#import "BackViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface RedViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;
//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;

//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation RedViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)upAcrossDismiss{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [TableContext name].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [MakeManager cell:[[FrameSendData sharedInstance] kTitleContentName]];//@"添加成功".user_localized
    //: NSString *request_successful = [DisplayLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [MakeManager cell:[[FrameSendData sharedInstance] kName_dataFrameValue]];//@"请求成功".user_localized
    //: NSString *add_friend_add_fail = [DisplayLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [MakeManager cell:[[FrameSendData sharedInstance] kText_modelItemData]];//@"添加失败".user_localized
    //: NSString *add_friend_request_fail = [DisplayLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [MakeManager cell:[[FrameSendData sharedInstance] kNameEndData]];//@"请求失败".user_localized
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];

        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[[FrameSendData sharedInstance] kNameRecordString]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[FrameSendData sharedInstance] kTitle_loopValueString]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice comeDownSuperphylum], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice comeDownSuperphylum])+30, 120, 120)];
    //: self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.cornerRadius = 60;
    //: self.accountheadImg.layer.masksToBounds = YES;
    self.accountheadImg.layer.masksToBounds = YES;
    //: [self.view addSubview:self.accountheadImg];
    [self.view addSubview:self.accountheadImg];

    //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    //: self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    //: self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textColor = [UIColor blackColor];
    //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountNickname];
    [self.view addSubview:self.accountNickname];

    //: self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    //: self.account.font = [UIFont systemFontOfSize:12];
    self.account.font = [UIFont systemFontOfSize:12];
    //: self.account.textColor = [UIColor colorWithHexString:@"#999999"];
    self.account.textColor = [UIColor cell:[[FrameSendData sharedInstance] kTitleHideValue]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(upAcrossDismiss) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[DisplayLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[MakeManager cell:[[FrameSendData sharedInstance] kTextMonthName]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    addBtn.backgroundColor = [UIColor cell:[[FrameSendData sharedInstance] kName_mainString]];
    //: addBtn.layer.cornerRadius = 22;
    addBtn.layer.cornerRadius = 22;
    //: [self.view addSubview:addBtn];
    [self.view addSubview:addBtn];


    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            //: if (users.count) {
            if (users.count) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: self.user = users.firstObject;
                self.user = users.firstObject;

                //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[FrameSendData sharedInstance] kText_detailContent]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[[FrameSendData sharedInstance] kTitleDeviceString]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[[FrameSendData sharedInstance] kTitleTopData]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[[FrameSendData sharedInstance] kText_onAddContent]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data comment:@"account"];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[DisplayLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[MakeManager cell:[[FrameSendData sharedInstance] kNameTitleColorString]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)dealloc{
- (void)dealloc{

}
//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithConsumerPressed:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4]
