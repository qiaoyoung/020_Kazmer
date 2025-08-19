
#import <Foundation/Foundation.h>

@interface QuantitativeRelationData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation QuantitativeRelationData

+ (instancetype)sharedInstance {
    static QuantitativeRelationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)QuantitativeRelationDataToCache:(Byte *)data {
    int revolutionOf = data[0];
    Byte key = data[1];
    int scale = data[2];
    for (int i = scale; i < scale + revolutionOf; i++) {
        int value = data[i] - key;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[scale + revolutionOf] = 0;
    return data + scale;
}

- (NSString *)StringFromQuantitativeRelationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self QuantitativeRelationDataToCache:data]];
}

//: /user/checkAddFriendEx
- (NSString *)show_upMsg {
    /* static */ NSString *show_upMsg = nil;
    if (!show_upMsg) {
        Byte value[] = {22, 63, 6, 165, 216, 116, 110, 180, 178, 164, 177, 110, 162, 167, 164, 162, 170, 128, 163, 163, 133, 177, 168, 164, 173, 163, 132, 183, 99};
        show_upMsg = [self StringFromQuantitativeRelationData:value];
    }
    return show_upMsg;
}

//: add_friend_add_fail
- (NSString *)kTableKey {
    /* static */ NSString *kTableKey = nil;
    if (!kTableKey) {
        Byte value[] = {19, 45, 4, 252, 142, 145, 145, 140, 147, 159, 150, 146, 155, 145, 140, 142, 145, 145, 140, 147, 142, 150, 153, 180};
        kTableKey = [self StringFromQuantitativeRelationData:value];
    }
    return kTableKey;
}

//: /user/search
- (NSString *)mainColorAtMsg {
    /* static */ NSString *mainColorAtMsg = nil;
    if (!mainColorAtMsg) {
        Byte value[] = {12, 72, 9, 216, 205, 11, 30, 35, 174, 119, 189, 187, 173, 186, 119, 187, 173, 169, 186, 171, 176, 128};
        mainColorAtMsg = [self StringFromQuantitativeRelationData:value];
    }
    return mainColorAtMsg;
}

//: uid
- (NSString *)showItemUrl {
    /* static */ NSString *showItemUrl = nil;
    if (!showItemUrl) {
        Byte value[] = {3, 45, 3, 162, 150, 145, 236};
        showItemUrl = [self StringFromQuantitativeRelationData:value];
    }
    return showItemUrl;
}

//: my_qr
- (NSString *)m_timeBubbleValue {
    /* static */ NSString *m_timeBubbleValue = nil;
    if (!m_timeBubbleValue) {
        Byte value[] = {5, 37, 5, 15, 217, 146, 158, 132, 150, 151, 134};
        m_timeBubbleValue = [self StringFromQuantitativeRelationData:value];
    }
    return m_timeBubbleValue;
}

//: account
- (NSString *)showDateIdent {
    /* static */ NSString *showDateIdent = nil;
    if (!showDateIdent) {
        Byte value[] = {7, 37, 3, 134, 136, 136, 148, 154, 147, 153, 179};
        showDateIdent = [self StringFromQuantitativeRelationData:value];
    }
    return showDateIdent;
}

//: /user/recommend
- (NSString *)app_valueBubbleText {
    /* static */ NSString *app_valueBubbleText = nil;
    if (!app_valueBubbleText) {
        Byte value[] = {15, 85, 6, 248, 52, 99, 132, 202, 200, 186, 199, 132, 199, 186, 184, 196, 194, 194, 186, 195, 185, 3};
        app_valueBubbleText = [self StringFromQuantitativeRelationData:value];
    }
    return app_valueBubbleText;
}

//: data
- (NSString *)user_bubbleId {
    /* static */ NSString *user_bubbleId = nil;
    if (!user_bubbleId) {
        Byte value[] = {4, 57, 7, 91, 28, 131, 220, 157, 154, 173, 154, 182};
        user_bubbleId = [self StringFromQuantitativeRelationData:value];
    }
    return user_bubbleId;
}

//: add_friend_request_fail
- (NSString *)kPictureFormat {
    /* static */ NSString *kPictureFormat = nil;
    if (!kPictureFormat) {
        Byte value[] = {23, 99, 8, 23, 37, 32, 201, 111, 196, 199, 199, 194, 201, 213, 204, 200, 209, 199, 194, 213, 200, 212, 216, 200, 214, 215, 194, 201, 196, 204, 207, 15};
        kPictureFormat = [self StringFromQuantitativeRelationData:value];
    }
    return kPictureFormat;
}

//: ic_scan
- (NSString *)appItemStatusMessage {
    /* static */ NSString *appItemStatusMessage = nil;
    if (!appItemStatusMessage) {
        Byte value[] = {7, 48, 7, 201, 144, 89, 225, 153, 147, 143, 163, 147, 145, 158, 240};
        appItemStatusMessage = [self StringFromQuantitativeRelationData:value];
    }
    return appItemStatusMessage;
}

//: #2C3042
- (NSString *)dream_titleShouldStr {
    /* static */ NSString *dream_titleShouldStr = nil;
    if (!dream_titleShouldStr) {
        Byte value[] = {7, 20, 9, 120, 246, 150, 215, 98, 167, 55, 70, 87, 71, 68, 72, 70, 101};
        dream_titleShouldStr = [self StringFromQuantitativeRelationData:value];
    }
    return dream_titleShouldStr;
}

//: #EEEEEE
- (NSString *)dream_placeFormat {
    /* static */ NSString *dream_placeFormat = nil;
    if (!dream_placeFormat) {
        Byte value[] = {7, 81, 4, 17, 116, 150, 150, 150, 150, 150, 150, 215};
        dream_placeFormat = [self StringFromQuantitativeRelationData:value];
    }
    return dream_placeFormat;
}

//: msg
- (NSString *)mainNameUserPath {
    /* static */ NSString *mainNameUserPath = nil;
    if (!mainNameUserPath) {
        Byte value[] = {3, 98, 10, 222, 124, 200, 78, 218, 136, 222, 207, 213, 201, 97};
        mainNameUserPath = [self StringFromQuantitativeRelationData:value];
    }
    return mainNameUserPath;
}

//: group_info_activity_number_no
- (NSString *)m_circleMonthPath {
    /* static */ NSString *m_circleMonthPath = nil;
    if (!m_circleMonthPath) {
        Byte value[] = {29, 23, 4, 98, 126, 137, 134, 140, 135, 118, 128, 133, 125, 134, 118, 120, 122, 139, 128, 141, 128, 139, 144, 118, 133, 140, 132, 121, 124, 137, 118, 133, 134, 161};
        m_circleMonthPath = [self StringFromQuantitativeRelationData:value];
    }
    return m_circleMonthPath;
}

//: tuid
- (NSString *)notiInfoAllKey {
    /* static */ NSString *notiInfoAllKey = nil;
    if (!notiInfoAllKey) {
        Byte value[] = {4, 96, 11, 130, 98, 228, 23, 97, 198, 3, 212, 212, 213, 201, 196, 121};
        notiInfoAllKey = [self StringFromQuantitativeRelationData:value];
    }
    return notiInfoAllKey;
}

//: request_successful
- (NSString *)showBubbleImageNameStr {
    /* static */ NSString *showBubbleImageNameStr = nil;
    if (!showBubbleImageNameStr) {
        Byte value[] = {18, 17, 5, 240, 189, 131, 118, 130, 134, 118, 132, 133, 112, 132, 134, 116, 116, 118, 132, 132, 119, 134, 125, 84};
        showBubbleImageNameStr = [self StringFromQuantitativeRelationData:value];
    }
    return showBubbleImageNameStr;
}

//: add_friend_activity_input_account
- (NSString *)app_manMessage {
    /* static */ NSString *app_manMessage = nil;
    if (!app_manMessage) {
        Byte value[] = {33, 30, 13, 227, 28, 105, 107, 219, 204, 209, 198, 5, 214, 127, 130, 130, 125, 132, 144, 135, 131, 140, 130, 125, 127, 129, 146, 135, 148, 135, 146, 151, 125, 135, 140, 142, 147, 146, 125, 127, 129, 129, 141, 147, 140, 146, 142};
        app_manMessage = [self StringFromQuantitativeRelationData:value];
    }
    return app_manMessage;
}

//: back_arrow_bl
- (NSString *)k_keyOriginFormat {
    /* static */ NSString *k_keyOriginFormat = nil;
    if (!k_keyOriginFormat) {
        Byte value[] = {13, 6, 6, 86, 209, 171, 104, 103, 105, 113, 101, 103, 120, 120, 117, 125, 101, 104, 114, 156};
        k_keyOriginFormat = [self StringFromQuantitativeRelationData:value];
    }
    return k_keyOriginFormat;
}

//: fuid
- (NSString *)showImageBubbleName {
    /* static */ NSString *showImageBubbleName = nil;
    if (!showImageBubbleName) {
        Byte value[] = {4, 61, 11, 30, 77, 45, 41, 36, 190, 122, 95, 163, 178, 166, 161, 126};
        showImageBubbleName = [self StringFromQuantitativeRelationData:value];
    }
    return showImageBubbleName;
}

//: #FAF8FD
- (NSString *)notiMyFormat {
    /* static */ NSString *notiMyFormat = nil;
    if (!notiMyFormat) {
        Byte value[] = {7, 56, 4, 242, 91, 126, 121, 126, 112, 126, 124, 94};
        notiMyFormat = [self StringFromQuantitativeRelationData:value];
    }
    return notiMyFormat;
}

//: #4B43DE
- (NSString *)dreamMaxStr {
    /* static */ NSString *dreamMaxStr = nil;
    if (!dreamMaxStr) {
        Byte value[] = {7, 49, 8, 199, 235, 178, 158, 4, 84, 101, 115, 101, 100, 117, 118, 241};
        dreamMaxStr = [self StringFromQuantitativeRelationData:value];
    }
    return dreamMaxStr;
}

//: contact_tag_fragment_add_success
- (NSString *)app_quickName {
    /* static */ NSString *app_quickName = nil;
    if (!app_quickName) {
        Byte value[] = {32, 75, 6, 219, 100, 22, 174, 186, 185, 191, 172, 174, 191, 170, 191, 172, 178, 170, 177, 189, 172, 178, 184, 176, 185, 191, 170, 172, 175, 175, 170, 190, 192, 174, 174, 176, 190, 190, 134};
        app_quickName = [self StringFromQuantitativeRelationData:value];
    }
    return app_quickName;
}

//: please_contact_your_administrator
- (NSString *)m_textMsg {
    /* static */ NSString *m_textMsg = nil;
    if (!m_textMsg) {
        Byte value[] = {33, 94, 6, 29, 64, 155, 206, 202, 195, 191, 209, 195, 189, 193, 205, 204, 210, 191, 193, 210, 189, 215, 205, 211, 208, 189, 191, 194, 203, 199, 204, 199, 209, 210, 208, 191, 210, 205, 208, 137};
        m_textMsg = [self StringFromQuantitativeRelationData:value];
    }
    return m_textMsg;
}

//: #333333
- (NSString *)dreamToName {
    /* static */ NSString *dreamToName = nil;
    if (!dreamToName) {
        Byte value[] = {7, 6, 9, 12, 218, 134, 202, 79, 13, 41, 57, 57, 57, 57, 57, 57, 99};
        dreamToName = [self StringFromQuantitativeRelationData:value];
    }
    return dreamToName;
}

//: add_friend_activity_add_friend
- (NSString *)showBarAddPath {
    /* static */ NSString *showBarAddPath = nil;
    if (!showBarAddPath) {
        Byte value[] = {30, 14, 11, 89, 213, 58, 53, 185, 46, 56, 170, 111, 114, 114, 109, 116, 128, 119, 115, 124, 114, 109, 111, 113, 130, 119, 132, 119, 130, 135, 109, 111, 114, 114, 109, 116, 128, 119, 115, 124, 114, 61};
        showBarAddPath = [self StringFromQuantitativeRelationData:value];
    }
    return showBarAddPath;
}

//: code
- (NSString *)app_toMsg {
    /* static */ NSString *app_toMsg = nil;
    if (!app_toMsg) {
        Byte value[] = {4, 49, 6, 170, 49, 233, 148, 160, 149, 150, 213};
        app_toMsg = [self StringFromQuantitativeRelationData:value];
    }
    return app_toMsg;
}

//: hot_guys
- (NSString *)userImageIdent {
    /* static */ NSString *userImageIdent = nil;
    if (!userImageIdent) {
        Byte value[] = {8, 85, 10, 67, 180, 240, 34, 130, 22, 185, 189, 196, 201, 180, 188, 202, 206, 200, 130};
        userImageIdent = [self StringFromQuantitativeRelationData:value];
    }
    return userImageIdent;
}

//: icon_search_w
- (NSString *)userToPath {
    /* static */ NSString *userToPath = nil;
    if (!userToPath) {
        Byte value[] = {13, 85, 7, 37, 35, 223, 198, 190, 184, 196, 195, 180, 200, 186, 182, 199, 184, 189, 180, 204, 25};
        userToPath = [self StringFromQuantitativeRelationData:value];
    }
    return userToPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubContactViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendViewController.h"
#import "SubContactViewController.h"
//: #import "NTESContactAddFriendCell.h"
#import "ColumnViewCell.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "SizeViewController.h"
//: #import "SNDevice.h"
#import "BackgroundMakeDevice.h"
//: #import "CCCLoginManager.h"
#import "InfoUser.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "LCQRCodeUtil.h"
#import "UserTo.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "CCCContactScanViewController.h"
#import "OldSessionViewController.h"
//: #import "ZMONMyQRcodeView.h"
#import "ButtonColorView.h"
//: #import "ZMONFriendCardViewController.h"
#import "PageViewController.h"
//: #import "RecommendfriendTableViewCell.h"
#import "QuickView.h"

//: @interface NTESContactAddFriendViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,RecommendfriendCellDelegate>
@interface SubContactViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,EdgeValueButton>

//: @property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UITextField *textField;
//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic ,strong) UIImageView *qrImgview;
@property (nonatomic ,strong) UIImageView *qrImgview;
//: @property (nonatomic ,strong) UILabel *tipsLabel;
@property (nonatomic ,strong) UILabel *tipsLabel;

//: @property (nonatomic ,strong) ZMONMyQRcodeView *MyQRcodeView;
@property (nonatomic ,strong) ButtonColorView *MyQRcodeView;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,copy) NSArray *friendList;
@property (nonatomic,copy) NSArray *friendList;

//: @end
@end

//: @implementation NTESContactAddFriendViewController
@implementation SubContactViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice tingHeight], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(skullSessionAdd:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[QuantitativeRelationData sharedInstance] k_keyOriginFormat]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

    //: UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: labNavtitle.textColor = [UIColor blackColor];
    labNavtitle.textColor = [UIColor blackColor];
    //: labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labNavtitle.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    labNavtitle.text = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] showBarAddPath]];
    //: labNavtitle.textAlignment = NSTextAlignmentCenter;
    labNavtitle.textAlignment = NSTextAlignmentCenter;
    //: [navview addSubview:labNavtitle];
    [navview addSubview:labNavtitle];

    //: UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice vg_statusBarHeight], 40, 40);
    myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice tingHeight], 40, 40);
    //: [myQrBtn addTarget:self action:@selector(QRCodeButtnClick) forControlEvents:UIControlEventTouchUpInside];
    [myQrBtn addTarget:self action:@selector(castSend) forControlEvents:UIControlEventTouchUpInside];
    //: [myQrBtn setImage:[UIImage imageNamed:@"my_qr"] forState:UIControlStateNormal];
    [myQrBtn setImage:[UIImage imageNamed:[[QuantitativeRelationData sharedInstance] m_timeBubbleValue]] forState:UIControlStateNormal];
    //: [navview addSubview:myQrBtn];
    [navview addSubview:myQrBtn];


    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 80)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, 80)];
    //: topview.backgroundColor = [UIColor whiteColor];
    topview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];


    //: UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: searchView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    searchView.backgroundColor = [UIColor min:[[QuantitativeRelationData sharedInstance] notiMyFormat]];
    //: searchView.layer.cornerRadius = 28;
    searchView.layer.cornerRadius = 28;
    //: [topview addSubview:searchView];
    [topview addSubview:searchView];

    //: UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [btnScan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    [btnScan addTarget:self action:@selector(contentTeam) forControlEvents:UIControlEventTouchUpInside];
    //: btnScan.frame = CGRectMake(15, 8, 40, 40);
    btnScan.frame = CGRectMake(15, 8, 40, 40);
    //: [btnScan setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [btnScan setImage:[UIImage imageNamed:[[QuantitativeRelationData sharedInstance] appItemStatusMessage]] forState:UIControlStateNormal];
    //: [searchView addSubview:btnScan];
    [searchView addSubview:btnScan];


    //: [searchView addSubview:self.textField];
    [searchView addSubview:self.textField];
    //: self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);
    self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);


    //: UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    //: btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    //: [btnSearch setImage:[UIImage imageNamed:@"icon_search_w"] forState:UIControlStateNormal];
    [btnSearch setImage:[UIImage imageNamed:[[QuantitativeRelationData sharedInstance] userToPath]] forState:UIControlStateNormal];
    //: [btnSearch addTarget:self action:@selector(doneSearch) forControlEvents:UIControlEventTouchUpInside];
    [btnSearch addTarget:self action:@selector(closePictureInfo) forControlEvents:UIControlEventTouchUpInside];
    //: btnSearch.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    btnSearch.backgroundColor = [UIColor min:[[QuantitativeRelationData sharedInstance] dreamMaxStr]];
    //: btnSearch.layer.cornerRadius = 20;
    btnSearch.layer.cornerRadius = 20;
    //: [searchView addSubview:btnSearch];
    [searchView addSubview:btnSearch];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor min:[[QuantitativeRelationData sharedInstance] dream_placeFormat]];
    //: [topview addSubview:lineview];
    [topview addSubview:lineview];

    //: UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    //: labRecommended.font = [UIFont systemFontOfSize:14.f];
    labRecommended.font = [UIFont systemFontOfSize:14.f];
    //: labRecommended.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labRecommended.textColor = [UIColor min:[[QuantitativeRelationData sharedInstance] dream_titleShouldStr]];
    //: labRecommended.text = [FFFLanguageManager getTextWithKey:@"hot_guys"];
    labRecommended.text = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] userImageIdent]];
    //: [self.view addSubview:labRecommended];
    [self.view addSubview:labRecommended];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-110) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-110) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: [self.tableView registerClass:[RecommendfriendTableViewCell class] forCellReuseIdentifier:@"RecommendfriendTableViewCell"];
    [self.tableView registerClass:[QuickView class] forCellReuseIdentifier:@"QuickView"];

    //: [self getNetServer];
    [self indicator];
}

//: - (void)gotoBack:(id)sender {
- (void)skullSessionAdd:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)QRCodeButtnClick
- (void)castSend
{
//    [self.view addSubview:self.MyQRcodeView];
//    [self.MyQRcodeView animationShow];

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc]init];
    SizeViewController *vc = [[SizeViewController alloc]init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)getNetServer{
- (void)indicator{

//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/recommend"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[QuantitativeRelationData sharedInstance] app_valueBubbleText]] reload_strong:nil with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"%@",resultDict);
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[QuantitativeRelationData sharedInstance] app_toMsg]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: self.friendList = [resultDict valueObjectForKey:@"data"];
            self.friendList = [resultDict successAdd:[[QuantitativeRelationData sharedInstance] user_bubbleId]];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)contentTeam{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    OldSessionViewController *vc = [[OldSessionViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doneSearch{
- (void)closePictureInfo{
    //: [self goSearch:_textField];
    [self inscription:_textField];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [self goSearch:textField];
    [self inscription:textField];
    //: return YES;
    return YES;
}

//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //: return YES;
    return YES;
}

//: -(void)goSearch:(UITextField *)textField{
-(void)inscription:(UITextField *)textField{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
    //: NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if (userId.length) {
    if (userId.length) {
        //: userId = [userId lowercaseString];
        userId = [userId lowercaseString];
        //: [self addFriend:userId];
        [self occurrent:userId];
    }
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.friendList.count;
    return self.friendList.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 12.f;
    return 12.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return .1f;
    return .1f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: RecommendfriendTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RecommendfriendTableViewCell" forIndexPath:indexPath];
    QuickView *cell = [self.tableView dequeueReusableCellWithIdentifier:@"QuickView" forIndexPath:indexPath];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
//    NSString *uId = [dic newStringValueForKey:@"id"];

    //: [cell refreshWithModel:dic];
    [cell child:dic];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
    //: NSString *uId = [dic newStringValueForKey:@"id"];
    NSString *uId = [dic record:@"id"];

//    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:uId];
//    if (isMyFriend) {
        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        PageViewController *vc = [[PageViewController alloc] initWithUserId:uId];
//        [self.navigationController pushViewController:vc animated:YES];
//    }

}

//: - (void)didTouchAdddButton:(NSString *)memberId
- (void)aboveMedia:(NSString *)memberId
{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [OnName user].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = memberId;
    request.userId = memberId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] app_quickName]];//@"添加成功".
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] showBubbleImageNameStr]];//@"请求成功".
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] kTableKey]];//@"添加失败".
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] kPictureFormat]];//@"请求失败".
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


//: - (UITextField *)textField{
- (UITextField *)textField{
    //: if(!_textField){
    if(!_textField){
        //: _textField = [[UITextField alloc]init];
        _textField = [[UITextField alloc]init];
        //: _textField.placeholder = [FFFLanguageManager getTextWithKey:@"add_friend_activity_input_account"];
        _textField.placeholder = [PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] app_manMessage]];
        //: _textField.textColor = [UIColor colorWithHexString:@"#333333"];
        _textField.textColor = [UIColor min:[[QuantitativeRelationData sharedInstance] dreamToName]];
        //: _textField.font = [UIFont systemFontOfSize:14];
        _textField.font = [UIFont systemFontOfSize:14];
        //: _textField.delegate = self;
        _textField.delegate = self;
        //: _textField.returnKeyType = UIReturnKeyDone;
        _textField.returnKeyType = UIReturnKeyDone;
    }
    //: return _textField;
    return _textField;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addFriend:(NSString *)userId
- (void)occurrent:(NSString *)userId
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[[QuantitativeRelationData sharedInstance] showDateIdent]];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[QuantitativeRelationData sharedInstance] mainColorAtMsg]] reload_strong:dict with:YES forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[QuantitativeRelationData sharedInstance] app_toMsg]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict record:[[QuantitativeRelationData sharedInstance] mainNameUserPath]];

        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[[QuantitativeRelationData sharedInstance] user_bubbleId]];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data record:[[QuantitativeRelationData sharedInstance] showItemUrl]];
            //: [wself sendAddrequest:uid];
            [wself pin:uid];

        //: }else {
        }else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD index:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: -(void)sendAddrequest:(NSString *)uid{
-(void)pin:(NSString *)uid{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (users.count) {
        if (users.count) {
            //: [self checkIsAdmin:uid];
            [self keepAnEyeDoing:uid];
        //: }else{
        }else{
            //: if (wself) {
            if (wself) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_number_no"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] m_circleMonthPath]] duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}

//: -(void)checkIsAdmin:(NSString *)userId{
-(void)keepAnEyeDoing:(NSString *)userId{

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fuid"] = [[NIMSDK sharedSDK].loginManager currentAccount];
    dict[[[QuantitativeRelationData sharedInstance] showImageBubbleName]] = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: dict[@"tuid"] = userId;
    dict[[[QuantitativeRelationData sharedInstance] notiInfoAllKey]] = userId;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkAddFriendEx"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[QuantitativeRelationData sharedInstance] show_upMsg]] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[QuantitativeRelationData sharedInstance] app_toMsg]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //跳转详情

            //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            //: if (isMyFriend) {
            if (isMyFriend) {
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
                ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            //: }else{
            }else{
                //: ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:userId];
                PageViewController *vc = [[PageViewController alloc] initWithHandle:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            }


        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
            [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] m_textMsg]] duration:2.0 position:CSToastPositionCenter];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
        [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[[QuantitativeRelationData sharedInstance] m_textMsg]] duration:2.0 position:CSToastPositionCenter];
    //: }];
    }];
}

//: - (ZMONMyQRcodeView *)MyQRcodeView
- (ButtonColorView *)MyQRcodeView
{
    //: if(!_MyQRcodeView){
    if(!_MyQRcodeView){
        //: _MyQRcodeView = [[ZMONMyQRcodeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _MyQRcodeView = [[ButtonColorView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _MyQRcodeView;
    return _MyQRcodeView;
}

//: @end
@end