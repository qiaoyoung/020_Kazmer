
#import <Foundation/Foundation.h>

typedef struct {
    Byte civil;
    Byte *vitamin;
    unsigned int transit;
	int graySuggest;
	int reservationTool;
	int ditheredColor;
} StructNameModelData;

@interface NameModelData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NameModelData

+ (NSData *)NameModelDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: code
- (NSString *)kTextEnableScienceString {
    /* static */ NSString *kTextEnableScienceString = nil;
    if (!kTextEnableScienceString) {
		NSArray<NSNumber *> *origin = @[@171, @167, @172, @173, @8];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){200, (Byte *)data.bytes, 4, 133, 38, 248};
        kTextEnableScienceString = [self StringFromNameModelData:&value];
    }
    return kTextEnableScienceString;
}

//: 扩展消息
- (NSString *)kContentCropFileString {
    /* static */ NSString *kContentCropFileString = nil;
    if (!kContentCropFileString) {
		NSArray<NSNumber *> *origin = @[@53, @90, @122, @54, @98, @70, @53, @101, @91, @53, @82, @124, @233];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){211, (Byte *)data.bytes, 12, 78, 137, 33};
        kContentCropFileString = [self StringFromNameModelData:&value];
    }
    return kContentCropFileString;
}

//: 邀请你加入讨论组
- (NSString *)kNamePinValue {
    /* static */ NSString *kNamePinValue = nil;
    if (!kNamePinValue) {
		NSArray<NSNumber *> *origin = @[@223, @180, @182, @222, @153, @129, @210, @139, @150, @211, @188, @150, @211, @179, @147, @222, @152, @158, @222, @152, @140, @209, @141, @178, @198];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){54, (Byte *)data.bytes, 24, 172, 193, 253};
        kNamePinValue = [self StringFromNameModelData:&value];
    }
    return kNamePinValue;
}

//: group_info_activity_op_failed
- (NSString *)kTitle_messageString {
    /* static */ NSString *kTitle_messageString = nil;
    if (!kTitle_messageString) {
		NSArray<NSNumber *> *origin = @[@167, @178, @175, @181, @176, @159, @169, @174, @166, @175, @159, @161, @163, @180, @169, @182, @169, @180, @185, @159, @175, @176, @159, @166, @161, @169, @172, @165, @164, @111];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){192, (Byte *)data.bytes, 29, 235, 142, 83};
        kTitle_messageString = [self StringFromNameModelData:&value];
    }
    return kTitle_messageString;
}

//: attach
- (NSString *)kNameWithString {
    /* static */ NSString *kNameWithString = nil;
    if (!kNameWithString) {
		NSArray<NSNumber *> *origin = @[@208, @197, @197, @208, @210, @217, @64];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){177, (Byte *)data.bytes, 6, 193, 105, 99};
        kNameWithString = [self StringFromNameModelData:&value];
    }
    return kNameWithString;
}

//: modify_activity_modify_success
- (NSString *)kTitleWheatValue {
    /* static */ NSString *kTitleWheatValue = nil;
    if (!kTitleWheatValue) {
		NSArray<NSNumber *> *origin = @[@108, @110, @101, @104, @103, @120, @94, @96, @98, @117, @104, @119, @104, @117, @120, @94, @108, @110, @101, @104, @103, @120, @94, @114, @116, @98, @98, @100, @114, @114, @42];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){1, (Byte *)data.bytes, 30, 130, 35, 126};
        kTitleWheatValue = [self StringFromNameModelData:&value];
    }
    return kTitleWheatValue;
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)kContentCellCropString {
    /* static */ NSString *kContentCellCropString = nil;
    if (!kContentCellCropString) {
		NSArray<NSNumber *> *origin = @[@29, @56, @63, @59, @34, @19, @23, @27, @58, @31, @5, @2, @50, @23, @2, @23, @34, @19, @23, @27, @59, @19, @27, @20, @19, @4, @5, @53, @30, @23, @24, @17, @19, @18, @64];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){118, (Byte *)data.bytes, 34, 168, 187, 170};
        kContentCellCropString = [self StringFromNameModelData:&value];
    }
    return kContentCellCropString;
}

//: canAddFriend
- (NSString *)kNameSendStopString {
    /* static */ NSString *kNameSendStopString = nil;
    if (!kNameSendStopString) {
		NSArray<NSNumber *> *origin = @[@249, @251, @244, @219, @254, @254, @220, @232, @243, @255, @244, @254, @171];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){154, (Byte *)data.bytes, 12, 27, 127, 3};
        kNameSendStopString = [self StringFromNameModelData:&value];
    }
    return kNameSendStopString;
}

//: #4B43DE
- (NSString *)kTitleViewValue {
    /* static */ NSString *kTitleViewValue = nil;
    if (!kTitleViewValue) {
		NSArray<NSNumber *> *origin = @[@210, @197, @179, @197, @194, @181, @180, @52];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){241, (Byte *)data.bytes, 7, 143, 174, 162};
        kTitleViewValue = [self StringFromNameModelData:&value];
    }
    return kTitleViewValue;
}

//: group_info_activity_team_member
- (NSString *)kContent_thoughData {
    /* static */ NSString *kContent_thoughData = nil;
    if (!kContent_thoughData) {
		NSArray<NSNumber *> *origin = @[@89, @76, @81, @75, @78, @97, @87, @80, @88, @81, @97, @95, @93, @74, @87, @72, @87, @74, @71, @97, @74, @91, @95, @83, @97, @83, @91, @83, @92, @91, @76, @208];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){62, (Byte *)data.bytes, 31, 230, 101, 131};
        kContent_thoughData = [self StringFromNameModelData:&value];
    }
    return kContent_thoughData;
}

//: 邀请你加入高级群
- (NSString *)kName_tapCommitValue {
    /* static */ NSString *kName_tapCommitValue = nil;
    if (!kName_tapCommitValue) {
		NSArray<NSNumber *> *origin = @[@103, @12, @14, @102, @33, @57, @106, @51, @46, @107, @4, @46, @107, @11, @43, @103, @37, @22, @105, @52, @41, @105, @48, @42, @191];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){142, (Byte *)data.bytes, 24, 192, 31, 3};
        kName_tapCommitValue = [self StringFromNameModelData:&value];
    }
    return kName_tapCommitValue;
}

+ (instancetype)sharedInstance {
    static NameModelData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (NSString *)StringFromNameModelData:(StructNameModelData *)data {
    return [NSString stringWithUTF8String:(char *)[self NameModelDataToByte:data]];
}

//: back_arrow_bl
- (NSString *)kTextCommitString {
    /* static */ NSString *kTextCommitString = nil;
    if (!kTextCommitString) {
		NSArray<NSNumber *> *origin = @[@58, @57, @59, @51, @7, @57, @42, @42, @55, @47, @7, @58, @52, @44];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){88, (Byte *)data.bytes, 13, 129, 168, 233};
        kTextCommitString = [self StringFromNameModelData:&value];
    }
    return kTextCommitString;
}

//: /team/getTeamSetting
- (NSString *)kTextPlaceData {
    /* static */ NSString *kTextPlaceData = nil;
    if (!kTextPlaceData) {
		NSArray<NSNumber *> *origin = @[@191, @228, @245, @241, @253, @191, @247, @245, @228, @196, @245, @241, @253, @195, @245, @228, @228, @249, @254, @247, @65];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){144, (Byte *)data.bytes, 20, 193, 237, 150};
        kTextPlaceData = [self StringFromNameModelData:&value];
    }
    return kTextPlaceData;
}

//: postscript
- (NSString *)kContentRetireValue {
    /* static */ NSString *kContentRetireValue = nil;
    if (!kContentRetireValue) {
		NSArray<NSNumber *> *origin = @[@74, @85, @73, @78, @73, @89, @72, @83, @74, @78, @72];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){58, (Byte *)data.bytes, 10, 69, 139, 63};
        kContentRetireValue = [self StringFromNameModelData:&value];
    }
    return kContentRetireValue;
}

//: ic_group_addmember
- (NSString *)kTitleMainName {
    /* static */ NSString *kTitleMainName = nil;
    if (!kTitleMainName) {
		NSArray<NSNumber *> *origin = @[@195, @201, @245, @205, @216, @197, @223, @218, @245, @203, @206, @206, @199, @207, @199, @200, @207, @216, @165];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){170, (Byte *)data.bytes, 18, 155, 17, 198};
        kTitleMainName = [self StringFromNameModelData:&value];
    }
    return kTitleMainName;
}

//: 邀请你加入超大群
- (NSString *)kName_teamValue {
    /* static */ NSString *kName_teamValue = nil;
    if (!kName_teamValue) {
		NSArray<NSNumber *> *origin = @[@5, @110, @108, @4, @67, @91, @8, @81, @76, @9, @102, @76, @9, @105, @73, @4, @90, @105, @9, @72, @75, @11, @82, @72, @235];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){236, (Byte *)data.bytes, 24, 77, 18, 159};
        kName_teamValue = [self StringFromNameModelData:&value];
    }
    return kName_teamValue;
}

- (Byte *)NameModelDataToByte:(StructNameModelData *)data {
    for (int i = 0; i < data->transit; i++) {
        data->vitamin[i] ^= data->civil;
    }
    data->vitamin[data->transit] = 0;
	if (data->transit >= 3) {
		data->graySuggest = data->vitamin[0];
		data->reservationTool = data->vitamin[1];
		data->ditheredColor = data->vitamin[2];
	}
    return data->vitamin;
}

//: group_member_info_activity_team_creator
- (NSString *)kTitleRecentString {
    /* static */ NSString *kTitleRecentString = nil;
    if (!kTitleRecentString) {
		NSArray<NSNumber *> *origin = @[@99, @118, @107, @113, @116, @91, @105, @97, @105, @102, @97, @118, @91, @109, @106, @98, @107, @91, @101, @103, @112, @109, @114, @109, @112, @125, @91, @112, @97, @101, @105, @91, @103, @118, @97, @101, @112, @107, @118, @162];
		NSData *data = [NameModelData NameModelDataToData:origin];
        StructNameModelData value = (StructNameModelData){4, (Byte *)data.bytes, 39, 123, 56, 98};
        kTitleRecentString = [self StringFromNameModelData:&value];
    }
    return kTitleRecentString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCTeamMemberListViewController.h"
#import "MaxViewController.h"
//: #import "FFFCardHeaderCell.h"
#import "SwitchenceReusableView.h"
//: #import "FFFTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "FFFTeamMemberCardViewController.h"
#import "RowViewController.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "NameMessageEffectView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "FFFTeamListDataManager.h"
#import "MentionManager.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "USERContactDataCell.h"
#import "StandardContactDataCell.h"
//: #import "FFFGroupMemberTableViewCell.h"
#import "StandardViewCell.h"
//: #import "FFFContactSelectViewController.h"
#import "RecordTitleViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface MaxViewController ()<UITableViewDataSource,UITableViewDelegate,LengthDelegate,RotarianPageDelegateView>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <AccountSource> dataSource;
//: @property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,copy) NSArray *muteArray;
@property (nonatomic ,copy) NSArray *muteArray;
//: @property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *nextBtn;
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, assign) NSInteger totalPageCount;

//: @property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) UIButton *lastBtn;

//: @end
@end

//: @implementation CCCTeamMemberListViewController
@implementation MaxViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)lines:(NSString *)uid
{
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager moveCompletion:@[uid] holder:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}
//更新群成员禁言
//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
- (void)writtenRecord:(NSString *)uid behindMember:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];

    //: BOOL ismute = YES;
    BOOL ismute = YES;
    //: for (NIMTeamMember *member in self.muteArray) {
    for (NIMTeamMember *member in self.muteArray) {
        //: if([member.userId isEqualToString:uid]){
        if([member.userId isEqualToString:uid]){
            //: ismute = NO;
            ismute = NO;
        //: }else{
        }else{
            //: ismute = YES;
            ismute = YES;
        }
    }

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (uid) {
        if (uid) {
            //: [users addObject:uid];
            [users addObject:uid];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [self loadMuteListData];
            [self panoramicView];

        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 //: userId:uid
                                                 userId:uid
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [MakeManager cell:[[NameModelData sharedInstance] kTitleWheatValue]];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [MakeManager cell:[[NameModelData sharedInstance] kTitle_messageString]];
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self panoramicView];
         //: }];
         }];
    }
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}
//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: FFFGroupMemberTableViewCell *cell = [FFFGroupMemberTableViewCell cellWithTableView:tableView];
    StandardViewCell *cell = [StandardViewCell along:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.section];
    NSString *uId = _teamListManager.memberIds[indexPath.section];
    //: FFFKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];
    CancelTeamCorner *usrInfo = [[Mortification text] tingVoice:uId keepingOption:nil];

    //: [cell reloadWithUserId:uId];
    [cell my:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
    //: cell.subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    cell.subtitleLabel.text = [MakeManager cell:[[NameModelData sharedInstance] kTitleRecentString]];

    //: BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    //: if(isown){
    if(isown){
        //: cell.subtitleLabel.hidden = NO;
        cell.subtitleLabel.hidden = NO;
    //: }else{
    }else{
        //: cell.subtitleLabel.hidden = YES;
        cell.subtitleLabel.hidden = YES;
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: cell.muteBtn.hidden = NO;
        cell.muteBtn.hidden = NO;
        //: cell.removeBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        //: cell.muteBtn.selected = NO;
        cell.muteBtn.selected = NO;
        //: for (NIMTeamMember *member in self.muteArray) {
        for (NIMTeamMember *member in self.muteArray) {
            //: if([member.userId isEqualToString:uId] && member.isMuted){
            if([member.userId isEqualToString:uId] && member.isMuted){
                //: cell.muteBtn.selected = YES;
                cell.muteBtn.selected = YES;
            }
        }
    //: }else{
    }else{
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if(isown){
    if(isown){
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: return cell;
    return cell;
}

//: - (void)setupUI {
- (void)past {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[NameModelData sharedInstance] kTextCommitString]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [MakeManager cell:[[NameModelData sharedInstance] kContent_thoughData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice comeDownSuperphylum]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor cell:[[NameModelData sharedInstance] kTitleViewValue]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[[NameModelData sharedInstance] kTitleMainName]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(keyDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

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

//    [self.view addSubview:self.collectionView];

}


//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //: return 1;
    return 1;
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)emptySkimEnable:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self searchion:selectedContacts imageCompletion:nil];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return _teamListManager.memberIds.count;
    return _teamListManager.memberIds.count;
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)rightNavButtonClick{
- (void)keyDown{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        MakeAction *config = [[MakeAction alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc recent];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)searchion:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            imageCompletion:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[NameModelData sharedInstance] kNameWithString]] = [[NameModelData sharedInstance] kContentCropFileString];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[NameModelData sharedInstance] kContentRetireValue]] = [[NameModelData sharedInstance] kNamePinValue].disable;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[NameModelData sharedInstance] kContentRetireValue]] = [[NameModelData sharedInstance] kName_tapCommitValue].disable;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[NameModelData sharedInstance] kContentRetireValue]] = [[NameModelData sharedInstance] kName_teamValue].disable;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [NameMessageEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager length:userIds exceptName:info step:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [NameMessageEffectView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)tingModify:(NSNotification *)note {

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self past];
    //: [self loadMuteListData];
    [self panoramicView];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[[NameModelData sharedInstance] kTextPlaceData]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[[NameModelData sharedInstance] kTextEnableScienceString]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
    //: }];
    }];
}

//: - (instancetype)initWithDataSource:(FFFTeamListDataManager *)dataSource {
- (instancetype)initWithCellName:(MentionManager *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
        //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        NSString *kNIMTeamListDataTeamMembersChanged = [[NameModelData sharedInstance] kContentCellCropString];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tingModify:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];

//    [_collectionView reloadData];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)loadMuteListData {
- (void)panoramicView {

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}



//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig comment:[[NameModelData sharedInstance] kNameSendStopString]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.section];
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    RowViewController *vc = [[RowViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:uId];
        CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: @end
@end
//: __SAVE__ ignore_string [428.4,410.4]