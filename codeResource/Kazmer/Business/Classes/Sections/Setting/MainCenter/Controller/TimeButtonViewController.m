
#import <Foundation/Foundation.h>

NSString *StringFromPatrolData(Byte *data);


//: safe_changepsd
Byte kStatusName[] = {30, 14, 6, 57, 180, 204, 100, 115, 112, 101, 103, 110, 97, 104, 99, 95, 101, 102, 97, 115, 25};

//: hant
Byte mStatePath[] = {43, 4, 4, 46, 116, 110, 97, 104, 205};

//: deactivate_account
Byte userFishingPath[] = {67, 18, 12, 234, 207, 112, 254, 81, 213, 249, 210, 103, 116, 110, 117, 111, 99, 99, 97, 95, 101, 116, 97, 118, 105, 116, 99, 97, 101, 100, 75};

//: #F6F7FA
Byte show_cropValue[] = {48, 7, 7, 74, 50, 127, 130, 65, 70, 55, 70, 54, 70, 35, 54};

//: activity_comment_setting_cancel_account
Byte mDeerName[] = {78, 39, 9, 117, 222, 115, 12, 104, 45, 116, 110, 117, 111, 99, 99, 97, 95, 108, 101, 99, 110, 97, 99, 95, 103, 110, 105, 116, 116, 101, 115, 95, 116, 110, 101, 109, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 63};

//: modify_activity_title
Byte showViewMessage[] = {55, 21, 11, 10, 40, 185, 46, 177, 99, 217, 28, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 153};

//: PrivacyPolicy.html
Byte appImagePath[] = {16, 18, 11, 71, 184, 108, 14, 23, 195, 21, 18, 108, 109, 116, 104, 46, 121, 99, 105, 108, 111, 80, 121, 99, 97, 118, 105, 114, 80, 94};

//: AccountDeletion_en.html
Byte k_speculationMessage[] = {6, 23, 12, 122, 230, 26, 167, 237, 172, 16, 230, 241, 108, 109, 116, 104, 46, 110, 101, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 202};

//: AccountDeletion_hant.html
Byte userTransportTitle[] = {31, 25, 6, 239, 209, 89, 108, 109, 116, 104, 46, 116, 110, 97, 104, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 116};

//: safe_accountdelete
Byte app_manPath[] = {44, 18, 10, 63, 150, 103, 131, 237, 1, 60, 101, 116, 101, 108, 101, 100, 116, 110, 117, 111, 99, 99, 97, 95, 101, 102, 97, 115, 169};

//: black_list_activity_black
Byte m_viaValue[] = {85, 25, 12, 249, 233, 179, 211, 128, 180, 215, 131, 244, 107, 99, 97, 108, 98, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 247};

//: NotificationLogout
Byte user_addKey[] = {62, 18, 7, 6, 4, 84, 209, 116, 117, 111, 103, 111, 76, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 97};

//: safe_setting_activity_title
Byte showMeatMessage[] = {54, 27, 6, 148, 57, 118, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 110, 105, 116, 116, 101, 115, 95, 101, 102, 97, 115, 106};

//: back_arrow_bl
Byte k_monthValue[] = {5, 13, 7, 80, 245, 114, 160, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 248};

//: AccountDeletion_ja.html
Byte k_hormoneTapMessage[] = {51, 23, 11, 134, 12, 250, 21, 133, 134, 216, 160, 108, 109, 116, 104, 46, 97, 106, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 61};

//: safe_blacklist
Byte dream_atPath[] = {22, 14, 10, 35, 27, 142, 130, 219, 137, 249, 116, 115, 105, 108, 107, 99, 97, 108, 98, 95, 101, 102, 97, 115, 96};

//: AccountDeletion_ko.html
Byte mainFishingCombinationKey[] = {24, 23, 9, 245, 202, 57, 232, 76, 119, 108, 109, 116, 104, 46, 111, 107, 95, 110, 111, 105, 116, 101, 108, 101, 68, 116, 110, 117, 111, 99, 99, 65, 86};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TimeButtonViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "TimeButtonViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "VisualizationViewCell.h"
//: #import "NTESChangePasswordController.h"
#import "WornViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "QuickViewCell.h"
//: #import "LEEAlert.h"
#import "SetupObject.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "FindViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "AnalogDigitalConverterView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "BoundsView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "OldView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "LifeSizeView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "ModePositionView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "InfoViewController.h"
//: #import "DeleteAccountTipView.h"
#import "EraseView.h"
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface TimeButtonViewController ()<UITableViewDataSource,UITableViewDelegate,ChaseDelegate,PinTitleDelegate,ModeMake>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) AnalogDigitalConverterView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) BoundsView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) OldView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) LifeSizeView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) ModePositionView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) EraseView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation TimeButtonViewController

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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:StringFromPatrolData(show_cropValue)];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromPatrolData(k_monthValue)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:StringFromPatrolData(showMeatMessage)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initToView];
}

//: - (void)initTableView{
- (void)initToView{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;


}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
    //: return 16.f;
    return 16.f;
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSafetyTableViewCell *cell = [NTESSafetyTableViewCell cellWithTableView:tableView];
    QuickViewCell *cell = [QuickViewCell container:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromPatrolData(dream_atPath)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromPatrolData(m_viaValue)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromPatrolData(kStatusName)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromPatrolData(showViewMessage)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 2){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_accountDeactivate"];
//        cell.titleLabel.text = LangKey(@"deactivate_account");
//        cell.labSubtitle.hidden = YES;
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_accountdelete"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromPatrolData(app_manPath)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [PaintedNaturalLanguageTo exhibit:StringFromPatrolData(mDeerName)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 4){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_email"];
//        cell.titleLabel.text = LangKey(@"user_profile_avtivity_email");
//        cell.labSubtitle.hidden = NO;
//        cell.labSubtitle.text = self.bindEmail;
//    }

    //: return cell;
    return cell;


}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self min];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self byReply];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self spaceCounterval];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)readName
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView margin:[PaintedNaturalLanguageTo exhibit:StringFromPatrolData(userFishingPath)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView tipTo];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
//        [self.deactivateNextView animationClose];
//        [self.view addSubview:self.deactivateSuccessView];
//        [self.deactivateSuccessView reloadWithNickname:LangKey(@"deactivated_success")];
//        [self.deactivateSuccessView animationShow];

    //: };
    };
}

//: - (void)didTouchDeleteSureButton
- (void)shankValue
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView margin:[PaintedNaturalLanguageTo exhibit:StringFromPatrolData(mDeerName)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView tipTo];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView impendentImage];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [CoverPageMode eventContent:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromPatrolData(user_addKey) object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)canClock
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    InfoViewController *vc = [[InfoViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[EmptyTing intervalegrated] panoramicView] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromPatrolData(appImagePath)]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)toCurrent
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView reply];
}
//: - (void)didTouchDeleteProtocolButton
- (void)tingOf
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    InfoViewController *vc = [[InfoViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = twineInside([OnName user].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = StringFromPatrolData(k_speculationMessage);
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = StringFromPatrolData(k_hormoneTapMessage);
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = StringFromPatrolData(mainFishingCombinationKey);
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:StringFromPatrolData(mStatePath)]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = StringFromPatrolData(userTransportTitle);
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = StringFromPatrolData(k_speculationMessage);
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[EmptyTing intervalegrated] panoramicView] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)blacklist {
- (void)min {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    FindViewController *vc = [[FindViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)byReply {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    WornViewController *vc = [[WornViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)bindPhoneVC {
//    KEKEBindPhoneViewController *vc = [[KEKEBindPhoneViewController alloc] init];
//    vc.bindPhone = self.bindPhone;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)bindEmailVC {
//    KEKEBindEmailViewController *vc = [[KEKEBindEmailViewController alloc] init];
//    vc.bindEmail = self.bindEmail;
//    [self.navigationController pushViewController:vc animated:YES];
//}

//: - (void)deactivateAccount {
- (void)query {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView animation];

}


//: - (void)cancelaccount {
- (void)spaceCounterval {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView cellActivity];

}


//-(void)changePassWord{
//    WornViewController *vc = [[WornViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    NTESChangeQuestionViewController *vc = [[NTESChangeQuestionViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//-(void)findPayPassWord{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"contact_customer_service") preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:LangKey(@"got_it") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alert addAction:alertA];
//    [self.navigationController presentViewController:alert animated:YES completion:nil];
//}
//
//-(void)changePayPassword{
//
//    NTESVerifyPayPasswordController *vc = [[NTESVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        NTESChangePayPasswordController *vc = [[NTESChangePayPasswordController alloc] initWithType:NTESPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (AnalogDigitalConverterView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[AnalogDigitalConverterView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (BoundsView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[BoundsView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (LifeSizeView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[LifeSizeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (ModePositionView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[ModePositionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (OldView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[OldView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (EraseView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[EraseView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}

//: @end
@end

Byte * PatrolDataToCache(Byte *data) {
    int separation = data[0];
    int utiliser = data[1];
    int dog = data[2];
    if (!separation) return data + dog;
    for (int i = 0; i < utiliser / 2; i++) {
        int begin = dog + i;
        int end = dog + utiliser - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[dog + utiliser] = 0;
    return data + dog;
}

NSString *StringFromPatrolData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PatrolDataToCache(data)];
}  
