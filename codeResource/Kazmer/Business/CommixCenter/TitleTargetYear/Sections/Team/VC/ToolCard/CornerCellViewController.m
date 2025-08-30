
#import <Foundation/Foundation.h>

@interface InThatLocationData : NSObject

+ (instancetype)sharedInstance;

//: time
@property (nonatomic, copy) NSString *kText_alsoString;

//: team_create_helper_create_success
@property (nonatomic, copy) NSString *kName_recordData;

//: delete
@property (nonatomic, copy) NSString *kNameViewData;

//: ic_none_announcement
@property (nonatomic, copy) NSString *kTitle_matedPigTechnologicData;

//: sure_to_clear
@property (nonatomic, copy) NSString *kTitleFileWaistData;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *kName_contentValue;

//: #4B43DE
@property (nonatomic, copy) NSString *kTitle_huhName;

//: #F6F7FA
@property (nonatomic, copy) NSString *kName_anyonePlyData;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *kContent_combatValue;

//: #999999
@property (nonatomic, copy) NSString *kTitleAttitudeString;

//: Create_group_announcement
@property (nonatomic, copy) NSString *kTitle_ratedName;

//: icon_add_w
@property (nonatomic, copy) NSString *kNameMovieValue;

//: creator
@property (nonatomic, copy) NSString *kName_thoughString;

//: No_group_announcement
@property (nonatomic, copy) NSString *kTitle_ridiculousContent;

//: add_noticess
@property (nonatomic, copy) NSString *kTextWildernessValue;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kTitleMatedData;

//: Clean_success
@property (nonatomic, copy) NSString *kName_criticismData;

//: clear_notice
@property (nonatomic, copy) NSString *kText_endTitle;

//: user_profile_avtivity_edit
@property (nonatomic, copy) NSString *kNameRecommendValue;

//: #FF483D
@property (nonatomic, copy) NSString *kTitleCaptureData;

@end

@implementation InThatLocationData

+ (instancetype)sharedInstance {
    static InThatLocationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InThatLocationDataToCache:(Byte *)data {
    int ribbonRecent = data[0];
    Byte flack = data[1];
    int understandablyFarmer = data[2];
    for (int i = understandablyFarmer; i < understandablyFarmer + ribbonRecent; i++) {
        int value = data[i] - flack;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[understandablyFarmer + ribbonRecent] = 0;
    return data + understandablyFarmer;
}

- (NSString *)StringFromInThatLocationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InThatLocationDataToCache:data]];
}

//: Create_group_announcement
- (NSString *)kTitle_ratedName {
    if (!_kTitle_ratedName) {
        Byte value[] = {25, 42, 4, 222, 109, 156, 143, 139, 158, 143, 137, 145, 156, 153, 159, 154, 137, 139, 152, 152, 153, 159, 152, 141, 143, 151, 143, 152, 158, 47};
        _kTitle_ratedName = [self StringFromInThatLocationData:value];
    }
    return _kTitle_ratedName;
}

//: #F6F7FA
- (NSString *)kName_anyonePlyData {
    if (!_kName_anyonePlyData) {
        Byte value[] = {7, 71, 8, 227, 152, 172, 207, 98, 106, 141, 125, 141, 126, 141, 136, 102};
        _kName_anyonePlyData = [self StringFromInThatLocationData:value];
    }
    return _kName_anyonePlyData;
}

//: No_group_announcement
- (NSString *)kTitle_ridiculousContent {
    if (!_kTitle_ridiculousContent) {
        Byte value[] = {21, 26, 8, 193, 231, 155, 91, 232, 104, 137, 121, 129, 140, 137, 143, 138, 121, 123, 136, 136, 137, 143, 136, 125, 127, 135, 127, 136, 142, 93};
        _kTitle_ridiculousContent = [self StringFromInThatLocationData:value];
    }
    return _kTitle_ridiculousContent;
}

//: add_noticess
- (NSString *)kTextWildernessValue {
    if (!_kTextWildernessValue) {
        Byte value[] = {12, 91, 8, 168, 24, 114, 229, 43, 188, 191, 191, 186, 201, 202, 207, 196, 190, 192, 206, 206, 71};
        _kTextWildernessValue = [self StringFromInThatLocationData:value];
    }
    return _kTextWildernessValue;
}

//: clear_notice
- (NSString *)kText_endTitle {
    if (!_kText_endTitle) {
        Byte value[] = {12, 62, 13, 44, 218, 16, 141, 246, 108, 134, 131, 216, 162, 161, 170, 163, 159, 176, 157, 172, 173, 178, 167, 161, 163, 103};
        _kText_endTitle = [self StringFromInThatLocationData:value];
    }
    return _kText_endTitle;
}

//: delete
- (NSString *)kNameViewData {
    if (!_kNameViewData) {
        Byte value[] = {6, 58, 6, 226, 240, 235, 158, 159, 166, 159, 174, 159, 58};
        _kNameViewData = [self StringFromInThatLocationData:value];
    }
    return _kNameViewData;
}

//: Clean_success
- (NSString *)kName_criticismData {
    if (!_kName_criticismData) {
        Byte value[] = {13, 30, 8, 117, 28, 237, 187, 103, 97, 138, 131, 127, 140, 125, 145, 147, 129, 129, 131, 145, 145, 235};
        _kName_criticismData = [self StringFromInThatLocationData:value];
    }
    return _kName_criticismData;
}

//: creator
- (NSString *)kName_thoughString {
    if (!_kName_thoughString) {
        Byte value[] = {7, 76, 10, 68, 43, 228, 176, 143, 140, 170, 175, 190, 177, 173, 192, 187, 190, 251};
        _kName_thoughString = [self StringFromInThatLocationData:value];
    }
    return _kName_thoughString;
}

//: activity_group_info_group_toast
- (NSString *)kName_contentValue {
    if (!_kName_contentValue) {
        Byte value[] = {31, 37, 13, 242, 85, 122, 5, 74, 128, 197, 204, 236, 131, 134, 136, 153, 142, 155, 142, 153, 158, 132, 140, 151, 148, 154, 149, 132, 142, 147, 139, 148, 132, 140, 151, 148, 154, 149, 132, 153, 148, 134, 152, 153, 32};
        _kName_contentValue = [self StringFromInThatLocationData:value];
    }
    return _kName_contentValue;
}

//: #999999
- (NSString *)kTitleAttitudeString {
    if (!_kTitleAttitudeString) {
        Byte value[] = {7, 50, 9, 208, 145, 99, 91, 77, 71, 85, 107, 107, 107, 107, 107, 107, 93};
        _kTitleAttitudeString = [self StringFromInThatLocationData:value];
    }
    return _kTitleAttitudeString;
}

//: icon_add_w
- (NSString *)kNameMovieValue {
    if (!_kNameMovieValue) {
        Byte value[] = {10, 39, 8, 244, 177, 84, 102, 154, 144, 138, 150, 149, 134, 136, 139, 139, 134, 158, 209};
        _kNameMovieValue = [self StringFromInThatLocationData:value];
    }
    return _kNameMovieValue;
}

//: user_profile_avtivity_edit
- (NSString *)kNameRecommendValue {
    if (!_kNameRecommendValue) {
        Byte value[] = {26, 91, 12, 186, 66, 201, 143, 74, 44, 10, 129, 174, 208, 206, 192, 205, 186, 203, 205, 202, 193, 196, 199, 192, 186, 188, 209, 207, 196, 209, 196, 207, 212, 186, 192, 191, 196, 207, 81};
        _kNameRecommendValue = [self StringFromInThatLocationData:value];
    }
    return _kNameRecommendValue;
}

//: #4B43DE
- (NSString *)kTitle_huhName {
    if (!_kTitle_huhName) {
        Byte value[] = {7, 91, 6, 138, 228, 43, 126, 143, 157, 143, 142, 159, 160, 88};
        _kTitle_huhName = [self StringFromInThatLocationData:value];
    }
    return _kTitle_huhName;
}

//: sure_to_clear
- (NSString *)kTitleFileWaistData {
    if (!_kTitleFileWaistData) {
        Byte value[] = {13, 20, 4, 2, 135, 137, 134, 121, 115, 136, 131, 115, 119, 128, 121, 117, 134, 47};
        _kTitleFileWaistData = [self StringFromInThatLocationData:value];
    }
    return _kTitleFileWaistData;
}

//: team_create_helper_create_success
- (NSString *)kName_recordData {
    if (!_kName_recordData) {
        Byte value[] = {33, 19, 11, 99, 58, 228, 79, 196, 18, 255, 206, 135, 120, 116, 128, 114, 118, 133, 120, 116, 135, 120, 114, 123, 120, 127, 131, 120, 133, 114, 118, 133, 120, 116, 135, 120, 114, 134, 136, 118, 118, 120, 134, 134, 134};
        _kName_recordData = [self StringFromInThatLocationData:value];
    }
    return _kName_recordData;
}

//: back_arrow_bl
- (NSString *)kTitleMatedData {
    if (!_kTitleMatedData) {
        Byte value[] = {13, 98, 9, 124, 227, 137, 224, 220, 118, 196, 195, 197, 205, 193, 195, 212, 212, 209, 217, 193, 196, 206, 136};
        _kTitleMatedData = [self StringFromInThatLocationData:value];
    }
    return _kTitleMatedData;
}

//: ic_none_announcement
- (NSString *)kTitle_matedPigTechnologicData {
    if (!_kTitle_matedPigTechnologicData) {
        Byte value[] = {20, 41, 12, 247, 250, 50, 119, 210, 106, 38, 187, 9, 146, 140, 136, 151, 152, 151, 142, 136, 138, 151, 151, 152, 158, 151, 140, 142, 150, 142, 151, 157, 235};
        _kTitle_matedPigTechnologicData = [self StringFromInThatLocationData:value];
    }
    return _kTitle_matedPigTechnologicData;
}

//: time
- (NSString *)kText_alsoString {
    if (!_kText_alsoString) {
        Byte value[] = {4, 79, 8, 76, 24, 25, 98, 173, 195, 184, 188, 180, 45};
        _kText_alsoString = [self StringFromInThatLocationData:value];
    }
    return _kText_alsoString;
}

//: #FF483D
- (NSString *)kTitleCaptureData {
    if (!_kTitleCaptureData) {
        Byte value[] = {7, 32, 12, 98, 91, 158, 164, 244, 72, 225, 242, 112, 67, 102, 102, 84, 88, 83, 100, 64};
        _kTitleCaptureData = [self StringFromInThatLocationData:value];
    }
    return _kTitleCaptureData;
}

//: team_create_helper_create_failed
- (NSString *)kContent_combatValue {
    if (!_kContent_combatValue) {
        Byte value[] = {32, 40, 6, 118, 100, 208, 156, 141, 137, 149, 135, 139, 154, 141, 137, 156, 141, 135, 144, 141, 148, 152, 141, 154, 135, 139, 154, 141, 137, 156, 141, 135, 142, 137, 145, 148, 141, 140, 233};
        _kContent_combatValue = [self StringFromInThatLocationData:value];
    }
    return _kContent_combatValue;
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
//: #import "DisplayTeamAnnouncementListViewController.h"
#import "CornerCellViewController.h"
//: #import "DisplayUsrInfoData.h"
#import "DisplayUsrInfoData.h"
//: #import "DisplayCreateTeamAnnouncement.h"
#import "BasketballTeamViewController.h"
//: #import "DisplayTeamAnnouncementListCell.h"
#import "SumernalRepresentationView.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"
//: #import "DisplayKitProgressHUD.h"
#import "NameMessageEffectView.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "LEEAlert.h"
#import "ControlTag.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "CleanView.h"

//: @interface DisplayTeamAnnouncementListViewController () <UITableViewDelegate,
@interface CornerCellViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: USERCreateTeamAnnouncementDelegate>
                                                     AtDelegate>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) ViewEnable *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) CleanView *groupAlartView;

//: @end
@end

//: @implementation DisplayTeamAnnouncementListViewController
@implementation CornerCellViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWithWindowShow:(ViewEnable *)option {
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
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[InThatLocationData sharedInstance].kName_anyonePlyData];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[InThatLocationData sharedInstance].kTitleMatedData] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [MakeManager cell:[InThatLocationData sharedInstance].kName_contentValue];//群公告
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
- (void)setOption:(ViewEnable *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self triumph:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)triumph:(NSString *)content {
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
- (void)lists:(id)sender {
    //: DisplayCreateTeamAnnouncement *vc = [[DisplayCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    BasketballTeamViewController *vc = [[BasketballTeamViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)infoAnnouncement:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: DisplayCreateTeamAnnouncement *vc = [[DisplayCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    BasketballTeamViewController *vc = [[BasketballTeamViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)popMobile:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[DisplayLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView progress:[MakeManager cell:[InThatLocationData sharedInstance].kTitleFileWaistData]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView beyondItemObject];
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
            [self practicalApplication];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView ingatheringBy];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [ControlTag alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(WithAction *action) {
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
//        .LeeAddAction(^(WithAction *action) {
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
- (void)practicalApplication
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [DisplayKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [DisplayKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[MakeManager cell:[InThatLocationData sharedInstance].kName_criticismData]];// @"清理成功"
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
    NSString *content = [announcement objectForKey:@"content"];

    //: return [DisplayTeamAnnouncementListCell cellHeight:content];
    return [SumernalRepresentationView heightKey:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: DisplayTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DisplayTeamAnnouncementListCell"];
    SumernalRepresentationView *cell = [tableView dequeueReusableCellWithIdentifier:@"SumernalRepresentationView"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[DisplayTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"DisplayTeamAnnouncementListCell"];
        cell = [[SumernalRepresentationView alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"SumernalRepresentationView"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell glazedChild:announcement format:_option.nick];
//
//    SumernalRepresentationView *cell = [tableView dequeueReusableCellWithIdentifier:@"SumernalRepresentationView"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)enable:(NSString *)title send:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{@"title": title ?: @"",
                                   //: @"content": content ?: @"",
                                   @"content": content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [InThatLocationData sharedInstance].kName_thoughString: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [InThatLocationData sharedInstance].kText_alsoString: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [DisplayKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(theNim:range:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate theNim:ret range:^(NSError *error) {
            //: [DisplayKitProgressHUD dismiss];
            [NameMessageEffectView input];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[MakeManager cell:[InThatLocationData sharedInstance].kName_recordData]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself triumph:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[MakeManager cell:[InThatLocationData sharedInstance].kContent_combatValue]];
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
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[InThatLocationData sharedInstance].kTitle_matedPigTechnologicData];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[InThatLocationData sharedInstance].kTitleAttitudeString];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [DisplayLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [MakeManager cell:[InThatLocationData sharedInstance].kTitle_ridiculousContent];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[DisplayLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[MakeManager cell:[InThatLocationData sharedInstance].kTitle_ratedName] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[InThatLocationData sharedInstance].kNameMovieValue] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(lists:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
            emptyButton.backgroundColor = [UIColor cell:[InThatLocationData sharedInstance].kTitle_huhName];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton byViewSpace:(MKButtonEdgeInsetsStyleLeft) toolCell:10];
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
        [closeBtn addTarget:self action:@selector(infoAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[InThatLocationData sharedInstance].kTextWildernessValue] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        closeBtn.backgroundColor = [UIColor cell:[InThatLocationData sharedInstance].kTitle_huhName];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[MakeManager cell:[InThatLocationData sharedInstance].kNameRecommendValue] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn byViewSpace:(MKButtonEdgeInsetsStyleLeft) toolCell:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(popMobile:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[InThatLocationData sharedInstance].kText_endTitle] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor cell:[InThatLocationData sharedInstance].kTitleCaptureData];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[MakeManager cell:[InThatLocationData sharedInstance].kNameViewData] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn byViewSpace:(MKButtonEdgeInsetsStyleLeft) toolCell:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (CleanView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[CleanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation ViewEnable
//: @end
@end
//: __SAVE__ ignore_string [763.7,546.5]
