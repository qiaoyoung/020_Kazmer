
#import <Foundation/Foundation.h>

typedef struct {
    Byte drink;
    Byte *sumellectual;
    unsigned int transformation;
	int successTerribly;
	int commentScribe;
	int endCompanySurgery;
} StructWorkplaceData;

@interface WorkplaceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WorkplaceData

+ (instancetype)sharedInstance {
    static WorkplaceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WorkplaceDataToByte:(StructWorkplaceData *)data {
    for (int i = 0; i < data->transformation; i++) {
        data->sumellectual[i] ^= data->drink;
    }
    data->sumellectual[data->transformation] = 0;
	if (data->transformation >= 3) {
		data->successTerribly = data->sumellectual[0];
		data->commentScribe = data->sumellectual[1];
		data->endCompanySurgery = data->sumellectual[2];
	}
    return data->sumellectual;
}

- (NSString *)StringFromWorkplaceData:(StructWorkplaceData *)data {
    return [NSString stringWithUTF8String:(char *)[self WorkplaceDataToByte:data]];
}

//: request_successful
- (NSString *)kEvaluateData {
    /* static */ NSString *kEvaluateData = nil;
    if (!kEvaluateData) {
        StructWorkplaceData value = (StructWorkplaceData){196, (Byte []){182, 161, 181, 177, 161, 183, 176, 155, 183, 177, 167, 167, 161, 183, 183, 162, 177, 168, 227}, 18, 69, 223, 103};
        kEvaluateData = [self StringFromWorkplaceData:&value];
    }
    return kEvaluateData;
}

//: code
- (NSString *)k_commentFormat {
    /* static */ NSString *k_commentFormat = nil;
    if (!k_commentFormat) {
        StructWorkplaceData value = (StructWorkplaceData){202, (Byte []){169, 165, 174, 175, 132}, 4, 171, 247, 150};
        k_commentFormat = [self StringFromWorkplaceData:&value];
    }
    return k_commentFormat;
}

//: add_friend_request_fail
- (NSString *)noti_sendKey {
    /* static */ NSString *noti_sendKey = nil;
    if (!noti_sendKey) {
        StructWorkplaceData value = (StructWorkplaceData){116, (Byte []){21, 16, 16, 43, 18, 6, 29, 17, 26, 16, 43, 6, 17, 5, 1, 17, 7, 0, 43, 18, 21, 29, 24, 96}, 23, 204, 68, 104};
        noti_sendKey = [self StringFromWorkplaceData:&value];
    }
    return noti_sendKey;
}

//: add_friend_add_fail
- (NSString *)app_atStr {
    /* static */ NSString *app_atStr = nil;
    if (!app_atStr) {
        StructWorkplaceData value = (StructWorkplaceData){147, (Byte []){242, 247, 247, 204, 245, 225, 250, 246, 253, 247, 204, 242, 247, 247, 204, 245, 242, 250, 255, 167}, 19, 53, 188, 153};
        app_atStr = [self StringFromWorkplaceData:&value];
    }
    return app_atStr;
}

//: #999999
- (NSString *)notiUpText {
    /* static */ NSString *notiUpText = nil;
    if (!notiUpText) {
        StructWorkplaceData value = (StructWorkplaceData){108, (Byte []){79, 85, 85, 85, 85, 85, 85, 241}, 7, 47, 195, 6};
        notiUpText = [self StringFromWorkplaceData:&value];
    }
    return notiUpText;
}

//: common_bg
- (NSString *)mCornerMessage {
    /* static */ NSString *mCornerMessage = nil;
    if (!mCornerMessage) {
        StructWorkplaceData value = (StructWorkplaceData){211, (Byte []){176, 188, 190, 190, 188, 189, 140, 177, 180, 236}, 9, 176, 242, 167};
        mCornerMessage = [self StringFromWorkplaceData:&value];
    }
    return mCornerMessage;
}

//: user_id
- (NSString *)showTransportTitle {
    /* static */ NSString *showTransportTitle = nil;
    if (!showTransportTitle) {
        StructWorkplaceData value = (StructWorkplaceData){211, (Byte []){166, 160, 182, 161, 140, 186, 183, 57}, 7, 107, 66, 3};
        showTransportTitle = [self StringFromWorkplaceData:&value];
    }
    return showTransportTitle;
}

//: account
- (NSString *)dream_rumenThreshMsg {
    /* static */ NSString *dream_rumenThreshMsg = nil;
    if (!dream_rumenThreshMsg) {
        StructWorkplaceData value = (StructWorkplaceData){180, (Byte []){213, 215, 215, 219, 193, 218, 192, 10}, 7, 85, 124, 116};
        dream_rumenThreshMsg = [self StringFromWorkplaceData:&value];
    }
    return dream_rumenThreshMsg;
}

//: contact_tag_fragment_add_success
- (NSString *)noti_showHoppingMessage {
    /* static */ NSString *noti_showHoppingMessage = nil;
    if (!noti_showHoppingMessage) {
        StructWorkplaceData value = (StructWorkplaceData){39, (Byte []){68, 72, 73, 83, 70, 68, 83, 120, 83, 70, 64, 120, 65, 85, 70, 64, 74, 66, 73, 83, 120, 70, 67, 67, 120, 84, 82, 68, 68, 66, 84, 84, 19}, 32, 29, 247, 45};
        noti_showHoppingMessage = [self StringFromWorkplaceData:&value];
    }
    return noti_showHoppingMessage;
}

//: #4B43DE
- (NSString *)appStoneData {
    /* static */ NSString *appStoneData = nil;
    if (!appStoneData) {
        StructWorkplaceData value = (StructWorkplaceData){167, (Byte []){132, 147, 229, 147, 148, 227, 226, 170}, 7, 65, 200, 56};
        appStoneData = [self StringFromWorkplaceData:&value];
    }
    return appStoneData;
}

//: friend_info_activity_account
- (NSString *)mMatteData {
    /* static */ NSString *mMatteData = nil;
    if (!mMatteData) {
        StructWorkplaceData value = (StructWorkplaceData){22, (Byte []){112, 100, 127, 115, 120, 114, 73, 127, 120, 112, 121, 73, 119, 117, 98, 127, 96, 127, 98, 111, 73, 119, 117, 117, 121, 99, 120, 98, 11}, 28, 192, 23, 14};
        mMatteData = [self StringFromWorkplaceData:&value];
    }
    return mMatteData;
}

//: back_arrow_bl
- (NSString *)mQuantityimateFormat {
    /* static */ NSString *mQuantityimateFormat = nil;
    if (!mQuantityimateFormat) {
        StructWorkplaceData value = (StructWorkplaceData){172, (Byte []){206, 205, 207, 199, 243, 205, 222, 222, 195, 219, 243, 206, 192, 199}, 13, 22, 105, 179};
        mQuantityimateFormat = [self StringFromWorkplaceData:&value];
    }
    return mQuantityimateFormat;
}

//: /user/detail
- (NSString *)app_medalId {
    /* static */ NSString *app_medalId = nil;
    if (!app_medalId) {
        StructWorkplaceData value = (StructWorkplaceData){143, (Byte []){160, 250, 252, 234, 253, 160, 235, 234, 251, 238, 230, 227, 52}, 12, 87, 187, 242};
        app_medalId = [self StringFromWorkplaceData:&value];
    }
    return app_medalId;
}

//: add_friend_activity_add_friend
- (NSString *)m_hostaKey {
    /* static */ NSString *m_hostaKey = nil;
    if (!m_hostaKey) {
        StructWorkplaceData value = (StructWorkplaceData){254, (Byte []){159, 154, 154, 161, 152, 140, 151, 155, 144, 154, 161, 159, 157, 138, 151, 136, 151, 138, 135, 161, 159, 154, 154, 161, 152, 140, 151, 155, 144, 154, 28}, 30, 86, 77, 177};
        m_hostaKey = [self StringFromWorkplaceData:&value];
    }
    return m_hostaKey;
}

//: data
- (NSString *)show_givingStr {
    /* static */ NSString *show_givingStr = nil;
    if (!show_givingStr) {
        StructWorkplaceData value = (StructWorkplaceData){149, (Byte []){241, 244, 225, 244, 159}, 4, 39, 100, 201};
        show_givingStr = [self StringFromWorkplaceData:&value];
    }
    return show_givingStr;
}

//: contact_user_default_header
- (NSString *)noti_speculationIdent {
    /* static */ NSString *noti_speculationIdent = nil;
    if (!noti_speculationIdent) {
        StructWorkplaceData value = (StructWorkplaceData){137, (Byte []){234, 230, 231, 253, 232, 234, 253, 214, 252, 250, 236, 251, 214, 237, 236, 239, 232, 252, 229, 253, 214, 225, 236, 232, 237, 236, 251, 222}, 27, 57, 1, 208};
        noti_speculationIdent = [self StringFromWorkplaceData:&value];
    }
    return noti_speculationIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PageViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "PageViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "CompartmentHoldfastColorViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "NTESUserUtil.h"
#import "RecordUtil.h"
//: #import "HMDataPicker.h"
#import "CellValueView.h"
//: #import "NTESOpinionBackViewController.h"
#import "OldViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface PageViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation PageViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithHandle:(NSString *)userId{
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

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[[WorkplaceData sharedInstance] mCornerMessage]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[WorkplaceData sharedInstance] mQuantityimateFormat]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice tingHeight], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice tingHeight])+30, 120, 120)];
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
    self.account.textColor = [UIColor min:[[WorkplaceData sharedInstance] notiUpText]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(moveWithDemand) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] m_hostaKey]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    addBtn.backgroundColor = [UIColor min:[[WorkplaceData sharedInstance] appStoneData]];
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
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[WorkplaceData sharedInstance] noti_speculationIdent]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[[WorkplaceData sharedInstance] showTransportTitle]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[WorkplaceData sharedInstance] app_medalId]] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[WorkplaceData sharedInstance] k_commentFormat]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[[WorkplaceData sharedInstance] show_givingStr]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data record:[[WorkplaceData sharedInstance] dream_rumenThreshMsg]];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] mMatteData]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)moveWithDemand{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [OnName user].tempVerificationInfo;
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

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] noti_showHoppingMessage]];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] kEvaluateData]];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] app_atStr]];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [PaintedNaturalLanguageTo exhibit:[[WorkplaceData sharedInstance] noti_sendKey]];//@"请求失败".ntes_localized
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

//: @end
@end