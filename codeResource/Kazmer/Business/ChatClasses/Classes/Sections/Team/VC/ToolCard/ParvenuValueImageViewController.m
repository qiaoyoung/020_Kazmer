
#import <Foundation/Foundation.h>

@interface TransformationData : NSObject

+ (instancetype)sharedInstance;

//: #F6F7FA
@property (nonatomic, copy) NSString *showKnowledgeMessage;

//: clear_notice
@property (nonatomic, copy) NSString *user_nameContent;

//: sure_to_clear
@property (nonatomic, copy) NSString *k_containerSultanScramName;

//: add_noticess
@property (nonatomic, copy) NSString *kPrimaryIdent;

//: time
@property (nonatomic, copy) NSString *main_championTitle;

//: #FF483D
@property (nonatomic, copy) NSString *dreamLegalPath;

//: delete
@property (nonatomic, copy) NSString *user_comfortStr;

//: Clean_success
@property (nonatomic, copy) NSString *appSalmonScaleValue;

//: ic_none_announcement
@property (nonatomic, copy) NSString *dream_thanksBoomData;

//: content
@property (nonatomic, copy) NSString *dreamImageUntilContent;

//: #4B43DE
@property (nonatomic, copy) NSString *notiBubbleValue;

//: team_create_helper_create_success
@property (nonatomic, copy) NSString *m_overseeCapitalText;

//: Create_group_announcement
@property (nonatomic, copy) NSString *k_showUrl;

//: title
@property (nonatomic, copy) NSString *dream_itchData;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *m_youTitle;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *dreamTransportIdent;

//: No_group_announcement
@property (nonatomic, copy) NSString *dreamAllKey;

//: icon_add_w
@property (nonatomic, copy) NSString *m_extraId;

//: back_arrow_bl
@property (nonatomic, copy) NSString *appTitleArmValue;

//: #999999
@property (nonatomic, copy) NSString *notiScaleUrl;

//: user_profile_avtivity_edit
@property (nonatomic, copy) NSString *showEstablishmentText;

//: creator
@property (nonatomic, copy) NSString *main_bronzeContent;

@end

@implementation TransformationData

+ (instancetype)sharedInstance {
    static TransformationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TransformationDataToCache:(Byte *)data {
    int allResort = data[0];
    Byte salad = data[1];
    int genetCabin = data[2];
    for (int i = genetCabin; i < genetCabin + allResort; i++) {
        int value = data[i] + salad;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[genetCabin + allResort] = 0;
    return data + genetCabin;
}

- (NSString *)StringFromTransformationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TransformationDataToCache:data]];
}

//: team_create_helper_create_success
- (NSString *)m_overseeCapitalText {
    if (!_m_overseeCapitalText) {
        Byte value[] = {33, 97, 6, 71, 170, 231, 19, 4, 0, 12, 254, 2, 17, 4, 0, 19, 4, 254, 7, 4, 11, 15, 4, 17, 254, 2, 17, 4, 0, 19, 4, 254, 18, 20, 2, 2, 4, 18, 18, 37};
        _m_overseeCapitalText = [self StringFromTransformationData:value];
    }
    return _m_overseeCapitalText;
}

//: Create_group_announcement
- (NSString *)k_showUrl {
    if (!_k_showUrl) {
        Byte value[] = {25, 28, 5, 188, 161, 39, 86, 73, 69, 88, 73, 67, 75, 86, 83, 89, 84, 67, 69, 82, 82, 83, 89, 82, 71, 73, 81, 73, 82, 88, 15};
        _k_showUrl = [self StringFromTransformationData:value];
    }
    return _k_showUrl;
}

//: activity_group_info_group_toast
- (NSString *)dreamTransportIdent {
    if (!_dreamTransportIdent) {
        Byte value[] = {31, 26, 5, 173, 97, 71, 73, 90, 79, 92, 79, 90, 95, 69, 77, 88, 85, 91, 86, 69, 79, 84, 76, 85, 69, 77, 88, 85, 91, 86, 69, 90, 85, 71, 89, 90, 91};
        _dreamTransportIdent = [self StringFromTransformationData:value];
    }
    return _dreamTransportIdent;
}

//: sure_to_clear
- (NSString *)k_containerSultanScramName {
    if (!_k_containerSultanScramName) {
        Byte value[] = {13, 92, 5, 23, 232, 23, 25, 22, 9, 3, 24, 19, 3, 7, 16, 9, 5, 22, 77};
        _k_containerSultanScramName = [self StringFromTransformationData:value];
    }
    return _k_containerSultanScramName;
}

//: creator
- (NSString *)main_bronzeContent {
    if (!_main_bronzeContent) {
        Byte value[] = {7, 34, 3, 65, 80, 67, 63, 82, 77, 80, 121};
        _main_bronzeContent = [self StringFromTransformationData:value];
    }
    return _main_bronzeContent;
}

//: content
- (NSString *)dreamImageUntilContent {
    if (!_dreamImageUntilContent) {
        Byte value[] = {7, 87, 9, 201, 155, 18, 214, 110, 85, 12, 24, 23, 29, 14, 23, 29, 188};
        _dreamImageUntilContent = [self StringFromTransformationData:value];
    }
    return _dreamImageUntilContent;
}

//: team_create_helper_create_failed
- (NSString *)m_youTitle {
    if (!_m_youTitle) {
        Byte value[] = {32, 31, 7, 149, 91, 55, 215, 85, 70, 66, 78, 64, 68, 83, 70, 66, 85, 70, 64, 73, 70, 77, 81, 70, 83, 64, 68, 83, 70, 66, 85, 70, 64, 71, 66, 74, 77, 70, 69, 234};
        _m_youTitle = [self StringFromTransformationData:value];
    }
    return _m_youTitle;
}

//: add_noticess
- (NSString *)kPrimaryIdent {
    if (!_kPrimaryIdent) {
        Byte value[] = {12, 90, 6, 178, 46, 240, 7, 10, 10, 5, 20, 21, 26, 15, 9, 11, 25, 25, 6};
        _kPrimaryIdent = [self StringFromTransformationData:value];
    }
    return _kPrimaryIdent;
}

//: #FF483D
- (NSString *)dreamLegalPath {
    if (!_dreamLegalPath) {
        Byte value[] = {7, 12, 11, 59, 109, 127, 36, 79, 92, 1, 57, 23, 58, 58, 40, 44, 39, 56, 235};
        _dreamLegalPath = [self StringFromTransformationData:value];
    }
    return _dreamLegalPath;
}

//: #F6F7FA
- (NSString *)showKnowledgeMessage {
    if (!_showKnowledgeMessage) {
        Byte value[] = {7, 68, 3, 223, 2, 242, 2, 243, 2, 253, 132};
        _showKnowledgeMessage = [self StringFromTransformationData:value];
    }
    return _showKnowledgeMessage;
}

//: icon_add_w
- (NSString *)m_extraId {
    if (!_m_extraId) {
        Byte value[] = {10, 37, 3, 68, 62, 74, 73, 58, 60, 63, 63, 58, 82, 53};
        _m_extraId = [self StringFromTransformationData:value];
    }
    return _m_extraId;
}

//: time
- (NSString *)main_championTitle {
    if (!_main_championTitle) {
        Byte value[] = {4, 62, 13, 122, 86, 68, 232, 25, 45, 241, 224, 144, 196, 54, 43, 47, 39, 247};
        _main_championTitle = [self StringFromTransformationData:value];
    }
    return _main_championTitle;
}

//: #999999
- (NSString *)notiScaleUrl {
    if (!_notiScaleUrl) {
        Byte value[] = {7, 40, 6, 165, 167, 189, 251, 17, 17, 17, 17, 17, 17, 178};
        _notiScaleUrl = [self StringFromTransformationData:value];
    }
    return _notiScaleUrl;
}

//: Clean_success
- (NSString *)appSalmonScaleValue {
    if (!_appSalmonScaleValue) {
        Byte value[] = {13, 64, 12, 146, 192, 23, 114, 21, 157, 8, 201, 152, 3, 44, 37, 33, 46, 31, 51, 53, 35, 35, 37, 51, 51, 139};
        _appSalmonScaleValue = [self StringFromTransformationData:value];
    }
    return _appSalmonScaleValue;
}

//: ic_none_announcement
- (NSString *)dream_thanksBoomData {
    if (!_dream_thanksBoomData) {
        Byte value[] = {20, 45, 10, 91, 204, 200, 132, 138, 215, 126, 60, 54, 50, 65, 66, 65, 56, 50, 52, 65, 65, 66, 72, 65, 54, 56, 64, 56, 65, 71, 188};
        _dream_thanksBoomData = [self StringFromTransformationData:value];
    }
    return _dream_thanksBoomData;
}

//: #4B43DE
- (NSString *)notiBubbleValue {
    if (!_notiBubbleValue) {
        Byte value[] = {7, 97, 13, 36, 157, 137, 134, 61, 166, 184, 229, 195, 3, 194, 211, 225, 211, 210, 227, 228, 15};
        _notiBubbleValue = [self StringFromTransformationData:value];
    }
    return _notiBubbleValue;
}

//: delete
- (NSString *)user_comfortStr {
    if (!_user_comfortStr) {
        Byte value[] = {6, 53, 6, 116, 211, 204, 47, 48, 55, 48, 63, 48, 8};
        _user_comfortStr = [self StringFromTransformationData:value];
    }
    return _user_comfortStr;
}

//: No_group_announcement
- (NSString *)dreamAllKey {
    if (!_dreamAllKey) {
        Byte value[] = {21, 56, 3, 22, 55, 39, 47, 58, 55, 61, 56, 39, 41, 54, 54, 55, 61, 54, 43, 45, 53, 45, 54, 60, 93};
        _dreamAllKey = [self StringFromTransformationData:value];
    }
    return _dreamAllKey;
}

//: user_profile_avtivity_edit
- (NSString *)showEstablishmentText {
    if (!_showEstablishmentText) {
        Byte value[] = {26, 10, 10, 183, 247, 221, 52, 143, 172, 123, 107, 105, 91, 104, 85, 102, 104, 101, 92, 95, 98, 91, 85, 87, 108, 106, 95, 108, 95, 106, 111, 85, 91, 90, 95, 106, 61};
        _showEstablishmentText = [self StringFromTransformationData:value];
    }
    return _showEstablishmentText;
}

//: title
- (NSString *)dream_itchData {
    if (!_dream_itchData) {
        Byte value[] = {5, 62, 12, 69, 214, 21, 87, 186, 115, 148, 7, 247, 54, 43, 54, 46, 39, 182};
        _dream_itchData = [self StringFromTransformationData:value];
    }
    return _dream_itchData;
}

//: clear_notice
- (NSString *)user_nameContent {
    if (!_user_nameContent) {
        Byte value[] = {12, 57, 6, 57, 60, 246, 42, 51, 44, 40, 57, 38, 53, 54, 59, 48, 42, 44, 195};
        _user_nameContent = [self StringFromTransformationData:value];
    }
    return _user_nameContent;
}

//: back_arrow_bl
- (NSString *)appTitleArmValue {
    if (!_appTitleArmValue) {
        Byte value[] = {13, 51, 11, 147, 168, 115, 20, 79, 215, 181, 210, 47, 46, 48, 56, 44, 46, 63, 63, 60, 68, 44, 47, 57, 73};
        _appTitleArmValue = [self StringFromTransformationData:value];
    }
    return _appTitleArmValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamAnnouncementListViewController.h"
#import "ParvenuValueImageViewController.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCreateTeamAnnouncement.h"
#import "ImmobiliseViewController.h"
//: #import "FFFTeamAnnouncementListCell.h"
#import "ToShortListView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "AlongEffectView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "LEEAlert.h"
#import "SetupObject.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "EdgeView.h"

//: @interface FFFTeamAnnouncementListViewController () <UITableViewDelegate,
@interface ParvenuValueImageViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: NTESCreateTeamAnnouncementDelegate>
                                                     EmptyDelegate>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) TitleOption *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) EdgeView *groupAlartView;

//: @end
@end

//: @implementation FFFTeamAnnouncementListViewController
@implementation ParvenuValueImageViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWith:(TitleOption *)option {
    //: if (self = [super initWithNibName:nil bundle:nil]) {
    if (self = [super initWithNibName:nil bundle:nil]) {
        //: self.option = option;
        self.option = option;
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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:[TransformationData sharedInstance].showKnowledgeMessage];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[TransformationData sharedInstance].appTitleArmValue] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].dreamTransportIdent];//群公告
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);
    self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}

//: - (void)setOption:(NIMTeamAnnouncementListOption *)option {
- (void)setOption:(TitleOption *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self menu:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)menu:(NSString *)content {
    //: if (content) {
    if (content) {
        //: NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        //: _announcements = [NSMutableArray arrayWithArray:datas];
        _announcements = [NSMutableArray arrayWithArray:datas];
    //: } else {
    } else {
        //: _announcements = nil;
        _announcements = nil;
    }
    //: if(_announcements == nil){
    if(_announcements == nil){
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.box.hidden = YES;
        self.box.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: self.box.hidden = NO;
            self.box.hidden = NO;
        }
    }
}

//: - (void)onCreateAnnouncement:(id)sender {
- (void)mottles:(id)sender {
    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    ImmobiliseViewController *vc = [[ImmobiliseViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)positions:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    ImmobiliseViewController *vc = [[ImmobiliseViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:[TransformationData sharedInstance].dream_itchData] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:[TransformationData sharedInstance].dreamImageUntilContent] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)changing:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView daySize:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].k_containerSultanScramName]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView reply];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            // 删除点击事件Block
            //: [self cleanTeamAnnouncement];
            [self centerStage];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView impendentImage];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [SetupObject alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(ModelButtonAction *action) {
//            
//            action.type = LEEActionTypeCancel;
//            action.title = LangKey(@"contact_tag_fragment_cancel");//@"取消"
//            action.titleColor = [UIColor grayColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                
//                // 取消点击事件Block
//            };
//        })
//        .LeeAddAction(^(ModelButtonAction *action) {
//            
//            action.type = LEEActionTypeDefault;
//            action.title = LangKey(@"contact_tag_fragment_sure"); //@"确定";
//            action.titleColor = [UIColor redColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                // 删除点击事件Block
//                [wself cleanTeamAnnouncement];
//            };
//        })
//        .LeeHeaderColor([UIColor whiteColor])
//        .LeeShow();
}

//: - (void)cleanTeamAnnouncement
- (void)centerStage
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].appSalmonScaleValue]];// @"清理成功"
            //: wself.announcements = nil;
            wself.announcements = nil;
//            [wself.tableView reloadData];

            //: self.tableView.hidden = YES;
            self.tableView.hidden = YES;
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
            //: self.box.hidden = YES;
            self.box.hidden = YES;
        }
    //: }];
    }];
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _announcements.lastObject ? 1 : 0;
    return _announcements.lastObject ? 1 : 0;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: NSString *content = [announcement objectForKey:@"content"];
    NSString *content = [announcement objectForKey:[TransformationData sharedInstance].dreamImageUntilContent];

    //: return [FFFTeamAnnouncementListCell cellHeight:content];
    return [ToShortListView faculty:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: FFFTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FFFTeamAnnouncementListCell"];
    ToShortListView *cell = [tableView dequeueReusableCellWithIdentifier:@"ToShortListView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"FFFTeamAnnouncementListCell"];
        cell = [[ToShortListView alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"ToShortListView"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell bubble:announcement month:_option.nick];
//
//    ToShortListView *cell = [tableView dequeueReusableCellWithIdentifier:@"ToShortListView"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)with:(NSString *)title insideInformation:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{[TransformationData sharedInstance].dream_itchData: title ?: @"",
                                   //: @"content": content ?: @"",
                                   [TransformationData sharedInstance].dreamImageUntilContent: content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [TransformationData sharedInstance].main_bronzeContent: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [TransformationData sharedInstance].main_championTitle: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(session:topVoice:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate session:ret topVoice:^(NSError *error) {
            //: [FFFKitProgressHUD dismiss];
            [AlongEffectView nimDismiss];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].m_overseeCapitalText]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself menu:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].m_youTitle]];
            }
        //: }];
        }];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.rowHeight = SCREEN_HEIGHT;
        //: [_tableView setTableFooterView:[UIView new]];
        [_tableView setTableFooterView:[UIView new]];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
    }
    //: return _tableView;
    return _tableView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[TransformationData sharedInstance].dream_thanksBoomData];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:[TransformationData sharedInstance].notiScaleUrl];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].dreamAllKey];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].k_showUrl] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[TransformationData sharedInstance].m_extraId] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(mottles:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
            emptyButton.backgroundColor = [UIColor min:[TransformationData sharedInstance].notiBubbleValue];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton title:(MKButtonEdgeInsetsStyleLeft) tillVideo:10];
        }

    }
    //: return _defView;
    return _defView;
}

//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]init];
        _box = [[UIView alloc]init];
//        _box.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
////        [self.view addSubview:_box];
//        _box.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
//        _box.layer.shadowOffset = CGSizeMake(0,0);
//        _box.layer.shadowOpacity = 1;
//        _box.layer.shadowRadius = 12;
        //: _box.hidden = YES;
        _box.hidden = YES;

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 10, width, 44);
        closeBtn.frame = CGRectMake(15, 10, width, 44);
        //: [closeBtn addTarget:self action:@selector(onEditAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(positions:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[TransformationData sharedInstance].kPrimaryIdent] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        closeBtn.backgroundColor = [UIColor min:[TransformationData sharedInstance].notiBubbleValue];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].showEstablishmentText] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn title:(MKButtonEdgeInsetsStyleLeft) tillVideo:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(changing:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[TransformationData sharedInstance].user_nameContent] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor min:[TransformationData sharedInstance].dreamLegalPath];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[TransformationData sharedInstance].user_comfortStr] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn title:(MKButtonEdgeInsetsStyleLeft) tillVideo:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (EdgeView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[EdgeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation TitleOption
//: @end
@end