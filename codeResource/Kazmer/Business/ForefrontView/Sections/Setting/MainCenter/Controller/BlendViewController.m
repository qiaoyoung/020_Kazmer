
#import <Foundation/Foundation.h>

@interface CivilianData : NSObject

@end

@implementation CivilianData

//: back_arrow_bl
+ (NSString *)kText_sciencePlayValue {
    /* static */ NSString *kText_sciencePlayValue = nil;
    if (!kText_sciencePlayValue) {
		NSArray<NSNumber *> *origin = @[@13, @10, @117, @125, @30, @34, @212, @231, @102, @68, @108, @98, @95, @119, @111, @114, @114, @97, @95, @107, @99, @97, @98, @89];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_sciencePlayValue = [self StringFromCivilianData:value];
    }
    return kText_sciencePlayValue;
}

//: activity_comment_setting_cancel_account
+ (NSString *)kTextPlayTitleString {
    /* static */ NSString *kTextPlayTitleString = nil;
    if (!kTextPlayTitleString) {
		NSArray<NSNumber *> *origin = @[@39, @11, @233, @111, @21, @147, @220, @179, @179, @49, @72, @116, @110, @117, @111, @99, @99, @97, @95, @108, @101, @99, @110, @97, @99, @95, @103, @110, @105, @116, @116, @101, @115, @95, @116, @110, @101, @109, @109, @111, @99, @95, @121, @116, @105, @118, @105, @116, @99, @97, @219];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextPlayTitleString = [self StringFromCivilianData:value];
    }
    return kTextPlayTitleString;
}

//: AccountDeletion_ko.html
+ (NSString *)kTextReservationValue {
    /* static */ NSString *kTextReservationValue = nil;
    if (!kTextReservationValue) {
		NSArray<NSNumber *> *origin = @[@23, @2, @108, @109, @116, @104, @46, @111, @107, @95, @110, @111, @105, @116, @101, @108, @101, @68, @116, @110, @117, @111, @99, @99, @65, @45];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextReservationValue = [self StringFromCivilianData:value];
    }
    return kTextReservationValue;
}  

//: black_list_activity_black
+ (NSString *)kNameScaleText {
    /* static */ NSString *kNameScaleText = nil;
    if (!kNameScaleText) {
		NSArray<NSNumber *> *origin = @[@25, @3, @171, @107, @99, @97, @108, @98, @95, @121, @116, @105, @118, @105, @116, @99, @97, @95, @116, @115, @105, @108, @95, @107, @99, @97, @108, @98, @195];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScaleText = [self StringFromCivilianData:value];
    }
    return kNameScaleText;
}

+ (Byte *)CivilianDataToCache:(Byte *)data {
    int cellTap = data[0];
    int sumelligence = data[1];
    for (int i = 0; i < cellTap / 2; i++) {
        int begin = sumelligence + i;
        int end = sumelligence + cellTap - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[sumelligence + cellTap] = 0;
    return data + sumelligence;
}

//: safe_changepsd
+ (NSString *)kContent_shoppingString {
    /* static */ NSString *kContent_shoppingString = nil;
    if (!kContent_shoppingString) {
		NSArray<NSNumber *> *origin = @[@14, @12, @252, @8, @2, @121, @235, @194, @75, @38, @91, @195, @100, @115, @112, @101, @103, @110, @97, @104, @99, @95, @101, @102, @97, @115, @25];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_shoppingString = [self StringFromCivilianData:value];
    }
    return kContent_shoppingString;
}

//: modify_activity_title
+ (NSString *)kName_modelContent {
    /* static */ NSString *kName_modelContent = nil;
    if (!kName_modelContent) {
		NSArray<NSNumber *> *origin = @[@21, @6, @21, @239, @120, @68, @101, @108, @116, @105, @116, @95, @121, @116, @105, @118, @105, @116, @99, @97, @95, @121, @102, @105, @100, @111, @109, @182];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_modelContent = [self StringFromCivilianData:value];
    }
    return kName_modelContent;
}

//: deactivate_account
+ (NSString *)kContentHideString {
    /* static */ NSString *kContentHideString = nil;
    if (!kContentHideString) {
		NSArray<NSNumber *> *origin = @[@18, @2, @116, @110, @117, @111, @99, @99, @97, @95, @101, @116, @97, @118, @105, @116, @99, @97, @101, @100, @186];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentHideString = [self StringFromCivilianData:value];
    }
    return kContentHideString;
}

//: AccountDeletion_hant.html
+ (NSString *)kNameToolText {
    /* static */ NSString *kNameToolText = nil;
    if (!kNameToolText) {
		NSArray<NSNumber *> *origin = @[@25, @12, @245, @80, @249, @219, @203, @118, @153, @100, @112, @83, @108, @109, @116, @104, @46, @116, @110, @97, @104, @95, @110, @111, @105, @116, @101, @108, @101, @68, @116, @110, @117, @111, @99, @99, @65, @128];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameToolText = [self StringFromCivilianData:value];
    }
    return kNameToolText;
}

//: safe_accountdelete
+ (NSString *)kTitle_mainValue {
    /* static */ NSString *kTitle_mainValue = nil;
    if (!kTitle_mainValue) {
		NSArray<NSNumber *> *origin = @[@18, @7, @86, @237, @75, @200, @73, @101, @116, @101, @108, @101, @100, @116, @110, @117, @111, @99, @99, @97, @95, @101, @102, @97, @115, @52];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_mainValue = [self StringFromCivilianData:value];
    }
    return kTitle_mainValue;
}

//: #F6F7FA
+ (NSString *)kTitle_colorValue {
    /* static */ NSString *kTitle_colorValue = nil;
    if (!kTitle_colorValue) {
		NSArray<NSNumber *> *origin = @[@7, @4, @180, @40, @65, @70, @55, @70, @54, @70, @35, @91];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_colorValue = [self StringFromCivilianData:value];
    }
    return kTitle_colorValue;
}

//: AccountDeletion_ja.html
+ (NSString *)kTextTapData {
    /* static */ NSString *kTextTapData = nil;
    if (!kTextTapData) {
		NSArray<NSNumber *> *origin = @[@23, @3, @79, @108, @109, @116, @104, @46, @97, @106, @95, @110, @111, @105, @116, @101, @108, @101, @68, @116, @110, @117, @111, @99, @99, @65, @216];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTapData = [self StringFromCivilianData:value];
    }
    return kTextTapData;
}

//: safe_blacklist
+ (NSString *)kTextGrayString {
    /* static */ NSString *kTextGrayString = nil;
    if (!kTextGrayString) {
		NSArray<NSNumber *> *origin = @[@14, @3, @230, @116, @115, @105, @108, @107, @99, @97, @108, @98, @95, @101, @102, @97, @115, @154];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextGrayString = [self StringFromCivilianData:value];
    }
    return kTextGrayString;
}

//: hant
+ (NSString *)kNameDateString {
    /* static */ NSString *kNameDateString = nil;
    if (!kNameDateString) {
		NSArray<NSNumber *> *origin = @[@4, @5, @209, @70, @141, @116, @110, @97, @104, @120];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDateString = [self StringFromCivilianData:value];
    }
    return kNameDateString;
}

//: PrivacyPolicy.html
+ (NSString *)kNameCommitString {
    /* static */ NSString *kNameCommitString = nil;
    if (!kNameCommitString) {
		NSArray<NSNumber *> *origin = @[@18, @12, @46, @151, @80, @66, @24, @199, @206, @86, @28, @98, @108, @109, @116, @104, @46, @121, @99, @105, @108, @111, @80, @121, @99, @97, @118, @105, @114, @80, @236];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCommitString = [self StringFromCivilianData:value];
    }
    return kNameCommitString;
}

//: NotificationLogout
+ (NSString *)kName_fileData {
    /* static */ NSString *kName_fileData = nil;
    if (!kName_fileData) {
		NSArray<NSNumber *> *origin = @[@18, @5, @116, @11, @167, @116, @117, @111, @103, @111, @76, @110, @111, @105, @116, @97, @99, @105, @102, @105, @116, @111, @78, @229];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fileData = [self StringFromCivilianData:value];
    }
    return kName_fileData;
}

+ (NSData *)CivilianDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: AccountDeletion_en.html
+ (NSString *)kText_shoppingValue {
    /* static */ NSString *kText_shoppingValue = nil;
    if (!kText_shoppingValue) {
		NSArray<NSNumber *> *origin = @[@23, @11, @48, @30, @13, @167, @240, @179, @80, @207, @230, @108, @109, @116, @104, @46, @110, @101, @95, @110, @111, @105, @116, @101, @108, @101, @68, @116, @110, @117, @111, @99, @99, @65, @146];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_shoppingValue = [self StringFromCivilianData:value];
    }
    return kText_shoppingValue;
}

//: safe_setting_activity_title
+ (NSString *)kName_titleData {
    /* static */ NSString *kName_titleData = nil;
    if (!kName_titleData) {
		NSArray<NSNumber *> *origin = @[@27, @5, @255, @178, @242, @101, @108, @116, @105, @116, @95, @121, @116, @105, @118, @105, @116, @99, @97, @95, @103, @110, @105, @116, @116, @101, @115, @95, @101, @102, @97, @115, @247];
		NSData *data = [CivilianData CivilianDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_titleData = [self StringFromCivilianData:value];
    }
    return kName_titleData;
}

+ (NSString *)StringFromCivilianData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CivilianDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSafetySetingController.h"
#import "BlendViewController.h"
//: #import "USERSafetySetingCell.h"
#import "UpgradeViewCell.h"
//: #import "USERChangePasswordController.h"
#import "OpenViewController.h"
//: #import "USERSafetyTableViewCell.h"
#import "CleanViewCell.h"
//: #import "LEEAlert.h"
#import "ControlTag.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "CropViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "AncientHistoryView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "ActionUserView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "BeggarMyNeighbourPolicyView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "CommingleView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "PerspectiveView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "PathViewController.h"
//: #import "DeleteAccountTipView.h"
#import "ActionView.h"
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: @interface USERSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,USERDeactivateAccountDelegate,USERDeleteAccountDelegate,USERDeleteAccountTIPDelegate>
@interface BlendViewController ()<UITableViewDataSource,UITableViewDelegate,TopUserDelegateMake,WithDelegate,IndexTipdelegate>

//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) AncientHistoryView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) ActionUserView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) BeggarMyNeighbourPolicyView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) CommingleView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) PerspectiveView *deactivateSuccessView;
//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) ActionView *deactivateTipView;



//: @end
@end

//: @implementation USERSafetySetingController
@implementation BlendViewController

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (void)didTouchNextButton
- (void)magnitudeImage
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[DisplayLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView toScale:[MakeManager cell:[CivilianData kContentHideString]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView book];
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
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: USERSafetyTableViewCell *cell = [USERSafetyTableViewCell cellWithTableView:tableView];
    CleanViewCell *cell = [CleanViewCell smart:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:[CivilianData kTextGrayString]];
        //: cell.titleLabel.text = [DisplayLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [MakeManager cell:[CivilianData kNameScaleText]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:[CivilianData kContent_shoppingString]];
        //: cell.titleLabel.text = [DisplayLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [MakeManager cell:[CivilianData kName_modelContent]];
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
        cell.iconImageView.image = [UIImage imageNamed:[CivilianData kTitle_mainValue]];
        //: cell.titleLabel.text = [DisplayLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [MakeManager cell:[CivilianData kTextPlayTitleString]];
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
- (void)sunnaItem {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView user];

}



//: - (void)changedpwd {
- (void)comment {
    //: USERChangePasswordController *vc = [[USERChangePasswordController alloc] init];
    OpenViewController *vc = [[OpenViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (PerspectiveView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[PerspectiveView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (ActionUserView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[ActionUserView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (void)didTouchDeleteNextButton
- (void)completeHolder
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView isAnimationBe];
}

//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (CommingleView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[CommingleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self impending];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self comment];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self frame];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (void)didTouchProtocolButton
- (void)forwardImage
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    PathViewController *vc = [[PathViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[PersonShould commonKey] info] stringByAppendingPathComponent:[NSString stringWithFormat:[CivilianData kNameCommitString]]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)didTouchDeleteProtocolButton
- (void)atPress
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    PathViewController *vc = [[PathViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = colorFill([TableContext name].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = [CivilianData kText_shoppingValue];
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = [CivilianData kTextTapData];
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = [CivilianData kTextReservationValue];
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:[CivilianData kNameDateString]]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = [CivilianData kNameToolText];
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = [CivilianData kText_shoppingValue];
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[PersonShould commonKey] info] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)didTouchDeleteSureButton
- (void)parentButton
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[DisplayLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView toScale:[MakeManager cell:[CivilianData kTextPlayTitleString]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView book];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView ingatheringBy];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [BlendView under:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:[CivilianData kName_fileData] object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
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


//: - (void)cancelaccount {
- (void)frame {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView text];

}

//: - (void)blacklist {
- (void)impending {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    CropViewController *vc = [[CropViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[CivilianData kTitle_colorValue]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[CivilianData kText_sciencePlayValue]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [MakeManager cell:[CivilianData kName_titleData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initAtDown];
}


//: - (void)initTableView{
- (void)initAtDown{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])) style:UITableViewStyleGrouped];
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


//-(void)changePassWord{
//    OpenViewController *vc = [[OpenViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    USERChangeQuestionViewController *vc = [[USERChangeQuestionViewController alloc] init];
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
//    USERVerifyPayPasswordController *vc = [[USERVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        USERChangePayPasswordController *vc = [[USERChangePayPasswordController alloc] initWithType:USERPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (AncientHistoryView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[AncientHistoryView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (DeleteAccountTipView *)deactivateTipView
- (ActionView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[ActionView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}
//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (ZMONPrivacyPolicyView *)policyView
- (BeggarMyNeighbourPolicyView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[BeggarMyNeighbourPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: @end
@end
