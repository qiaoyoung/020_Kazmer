
#import <Foundation/Foundation.h>

typedef struct {
    Byte chickCell;
    Byte *targetTitle;
    unsigned int teamOutdoor;
	int dataModel;
	int viewFierce;
} StructShoppingData;

@interface ShoppingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShoppingData

//: ic_sex_woman
- (NSString *)kTitle_valueData {
    /* static */ NSString *kTitle_valueData = nil;
    if (!kTitle_valueData) {
		NSString *origin = @"F0FAC6EAFCE1C6EEF6F4F8F768";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){153, (Byte *)data.bytes, 12, 245, 83};
        kTitle_valueData = [self StringFromShoppingData:&value];
    }
    return kTitle_valueData;
}

//: #4B43DE
- (NSString *)kContentHideData {
    /* static */ NSString *kContentHideData = nil;
    if (!kContentHideData) {
		NSString *origin = @"EEF98FF9FE8988DC";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){205, (Byte *)data.bytes, 7, 188, 121};
        kContentHideData = [self StringFromShoppingData:&value];
    }
    return kContentHideData;
}

+ (instancetype)sharedInstance {
    static ShoppingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #2C3042
- (NSString *)kContent_scienceString {
    /* static */ NSString *kContent_scienceString = nil;
    if (!kContent_scienceString) {
		NSString *origin = @"DBCABBCBC8CCCA63";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){248, (Byte *)data.bytes, 7, 125, 177};
        kContent_scienceString = [self StringFromShoppingData:&value];
    }
    return kContent_scienceString;
}

//: #8A8E98
- (NSString *)kTextReservationTitle {
    /* static */ NSString *kTextReservationTitle = nil;
    if (!kTextReservationTitle) {
		NSString *origin = @"1E057C057804051A";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){61, (Byte *)data.bytes, 7, 76, 137};
        kTextReservationTitle = [self StringFromShoppingData:&value];
    }
    return kTextReservationTitle;
}

//: code
- (NSString *)kTitleMagnitudeactData {
    /* static */ NSString *kTitleMagnitudeactData = nil;
    if (!kTitleMagnitudeactData) {
		NSString *origin = @"727E757474";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){17, (Byte *)data.bytes, 4, 220, 115};
        kTitleMagnitudeactData = [self StringFromShoppingData:&value];
    }
    return kTitleMagnitudeactData;
}

//: /user/detail
- (NSString *)kText_topValue {
    /* static */ NSString *kText_topValue = nil;
    if (!kText_topValue) {
		NSString *origin = @"7B212731267B303120353D386E";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){84, (Byte *)data.bytes, 12, 65, 87};
        kText_topValue = [self StringFromShoppingData:&value];
    }
    return kText_topValue;
}

//: group_info_activity_op_failed
- (NSString *)kTextWheatData {
    /* static */ NSString *kTextWheatData = nil;
    if (!kTextWheatData) {
		NSString *origin = @"0F1A071D183701060E0737090B1C011E011C11370718370E0901040D0CAF";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){104, (Byte *)data.bytes, 29, 112, 175};
        kTextWheatData = [self StringFromShoppingData:&value];
    }
    return kTextWheatData;
}

//: #ECECEC
- (NSString *)kName_viewString {
    /* static */ NSString *kName_viewString = nil;
    if (!kName_viewString) {
		NSString *origin = @"C8AEA8AEA8AEA811";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){235, (Byte *)data.bytes, 7, 40, 21};
        kName_viewString = [self StringFromShoppingData:&value];
    }
    return kName_viewString;
}

//: ic_invite
- (NSString *)kTitle_monthValue {
    /* static */ NSString *kTitle_monthValue = nil;
    if (!kTitle_monthValue) {
		NSString *origin = @"515B6751564E514C5D17";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){56, (Byte *)data.bytes, 9, 142, 93};
        kTitle_monthValue = [self StringFromShoppingData:&value];
    }
    return kTitle_monthValue;
}

//: #F6F7FA
- (NSString *)kNameFierceContent {
    /* static */ NSString *kNameFierceContent = nil;
    if (!kNameFierceContent) {
		NSString *origin = @"1673037302737445";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){53, (Byte *)data.bytes, 7, 138, 65};
        kNameFierceContent = [self StringFromShoppingData:&value];
    }
    return kNameFierceContent;
}

//: personcart_profile_bg
- (NSString *)kTitleCrawValue {
    /* static */ NSString *kTitleCrawValue = nil;
    if (!kTitleCrawValue) {
		NSString *origin = @"F6E3F4F5E9E8E5E7F4F2D9F6F4E9E0EFEAE3D9E4E102";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){134, (Byte *)data.bytes, 21, 166, 247};
        kTitleCrawValue = [self StringFromShoppingData:&value];
    }
    return kTitleCrawValue;
}

+ (NSData *)ShoppingDataToData:(NSString *)value {
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

- (Byte *)ShoppingDataToByte:(StructShoppingData *)data {
    for (int i = 0; i < data->teamOutdoor; i++) {
        data->targetTitle[i] ^= data->chickCell;
    }
    data->targetTitle[data->teamOutdoor] = 0;
	if (data->teamOutdoor >= 2) {
		data->dataModel = data->targetTitle[0];
		data->viewFierce = data->targetTitle[1];
	}
    return data->targetTitle;
}

//: message_remark_name
- (NSString *)kTextColorString {
    /* static */ NSString *kTextColorString = nil;
    if (!kTextColorString) {
		NSString *origin = @"B3BBADADBFB9BB81ACBBB3BFACB581B0BFB3BBC7";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){222, (Byte *)data.bytes, 19, 254, 152};
        kTextColorString = [self StringFromShoppingData:&value];
    }
    return kTextColorString;
}

//: modify_activity_modify_success
- (NSString *)kName_consumptionString {
    /* static */ NSString *kName_consumptionString = nil;
    if (!kName_consumptionString) {
		NSString *origin = @"E0E2E9E4EBF4D2ECEEF9E4FBE4F9F4D2E0E2E9E4EBF4D2FEF8EEEEE8FEFE19";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){141, (Byte *)data.bytes, 30, 191, 137};
        kName_consumptionString = [self StringFromShoppingData:&value];
    }
    return kName_consumptionString;
}

//: ic_identity_authentication
- (NSString *)kTitleRecentText {
    /* static */ NSString *kTitleRecentText = nil;
    if (!kTitleRecentText) {
		NSString *origin = @"2D271B2D20212A302D303D1B2531302C212A302D2725302D2B2A56";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){68, (Byte *)data.bytes, 26, 185, 98};
        kTitleRecentText = [self StringFromShoppingData:&value];
    }
    return kTitleRecentText;
}

//: #FF483D
- (NSString *)kTitle_recentData {
    /* static */ NSString *kTitle_recentData = nil;
    if (!kTitle_recentData) {
		NSString *origin = @"EB8E8EFCF0FB8CDD";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){200, (Byte *)data.bytes, 7, 240, 94};
        kTitle_recentData = [self StringFromShoppingData:&value];
    }
    return kTitle_recentData;
}

//: #EEEEEE
- (NSString *)kName_hideStableData {
    /* static */ NSString *kName_hideStableData = nil;
    if (!kName_hideStableData) {
		NSString *origin = @"89EFEFEFEFEFEF42";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){170, (Byte *)data.bytes, 7, 48, 51};
        kName_hideStableData = [self StringFromShoppingData:&value];
    }
    return kName_hideStableData;
}

//: back_arrow_bl
- (NSString *)kName_bridgeString {
    /* static */ NSString *kName_bridgeString = nil;
    if (!kName_bridgeString) {
		NSString *origin = @"696A6860546A7979647C54696795";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){11, (Byte *)data.bytes, 13, 60, 64};
        kName_bridgeString = [self StringFromShoppingData:&value];
    }
    return kName_bridgeString;
}

//: head_default
- (NSString *)kName_inventData {
    /* static */ NSString *kName_inventData = nil;
    if (!kName_inventData) {
		NSString *origin = @"95989C99A299989B9C889189FA";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){253, (Byte *)data.bytes, 12, 250, 30};
        kName_inventData = [self StringFromShoppingData:&value];
    }
    return kName_inventData;
}

//: icon_me_arrow
- (NSString *)kTitle_withData {
    /* static */ NSString *kTitle_withData = nil;
    if (!kTitle_withData) {
		NSString *origin = @"E7EDE1E0D1E3EBD1EFFCFCE1F959";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){142, (Byte *)data.bytes, 13, 228, 190};
        kTitle_withData = [self StringFromShoppingData:&value];
    }
    return kTitle_withData;
}

//: #fffDisplay
- (NSString *)kText_cellData {
    /* static */ NSString *kText_cellData = nil;
    if (!kText_cellData) {
		NSString *origin = @"2065656565656561";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){3, (Byte *)data.bytes, 7, 12, 78};
        kText_cellData = [self StringFromShoppingData:&value];
    }
    return kText_cellData;
}

//: personCard_bg
- (NSString *)kContentTextPullValue {
    /* static */ NSString *kContentTextPullValue = nil;
    if (!kContentTextPullValue) {
		NSString *origin = @"647166677B7A577566704B76737D";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){20, (Byte *)data.bytes, 13, 9, 190};
        kContentTextPullValue = [self StringFromShoppingData:&value];
    }
    return kContentTextPullValue;
}

//: 移出本群
- (NSString *)kName_hardwareData {
    /* static */ NSString *kName_hardwareData = nil;
    if (!kName_hardwareData) {
		NSString *origin = @"A2E2FEA0C2FFA3D9E9A2FBE1CA";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){69, (Byte *)data.bytes, 12, 93, 155};
        kName_hardwareData = [self StringFromShoppingData:&value];
    }
    return kName_hardwareData;
}

//: group_member_info_activity_mute_msg
- (NSString *)kName_selectedKeyData {
    /* static */ NSString *kName_selectedKeyData = nil;
    if (!kName_selectedKeyData) {
		NSString *origin = @"D1C4D9C3C6E9DBD3DBD4D3C4E9DFD8D0D9E9D7D5C2DFC0DFC2CFE9DBC3C2D3E9DBC5D1F1";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){182, (Byte *)data.bytes, 35, 236, 65};
        kName_selectedKeyData = [self StringFromShoppingData:&value];
    }
    return kName_selectedKeyData;
}

- (NSString *)StringFromShoppingData:(StructShoppingData *)data {
    return [NSString stringWithUTF8String:(char *)[self ShoppingDataToByte:data]];
}

//: ic_sex_man
- (NSString *)kNameTeamMainString {
    /* static */ NSString *kNameTeamMainString = nil;
    if (!kNameTeamMainString) {
		NSString *origin = @"F8F2CEE2F4E9CEFCF0DisplayA";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){145, (Byte *)data.bytes, 10, 171, 209};
        kNameTeamMainString = [self StringFromShoppingData:&value];
    }
    return kNameTeamMainString;
}

//: activity_group_member_info2_inviter
- (NSString *)kNameTopDenseSculptureContent {
    /* static */ NSString *kNameTopDenseSculptureContent = nil;
    if (!kNameTopDenseSculptureContent) {
		NSString *origin = @"EBE9FEE3FCE3FEF3D5EDF8E5DisplayAD5E7EFE7E8EFF8D5E3E4ECE5B8D5E3E4FCE3FEEFF8E0";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){138, (Byte *)data.bytes, 35, 199, 119};
        kNameTopDenseSculptureContent = [self StringFromShoppingData:&value];
    }
    return kNameTopDenseSculptureContent;
}

//: 本地不存在
- (NSString *)kTitleMigrationData {
    /* static */ NSString *kTitleMigrationData = nil;
    if (!kTitleMigrationData) {
		NSString *origin = @"89F3C38AF3DF8BD7E28AC2F78AF3C747";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){111, (Byte *)data.bytes, 15, 175, 15};
        kTitleMigrationData = [self StringFromShoppingData:&value];
    }
    return kTitleMigrationData;
}

//: user_id
- (NSString *)kTitleScienceValue {
    /* static */ NSString *kTitleScienceValue = nil;
    if (!kTitleScienceValue) {
		NSString *origin = @"D3D5C3D4F9CFC25C";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){166, (Byte *)data.bytes, 7, 55, 117};
        kTitleScienceValue = [self StringFromShoppingData:&value];
    }
    return kTitleScienceValue;
}

//: ic_card_edit
- (NSString *)kContent_stopData {
    /* static */ NSString *kContent_stopData = nil;
    if (!kContent_stopData) {
		NSString *origin = @"C4CEF2CECCDFC9F2C8C9C4D932";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){173, (Byte *)data.bytes, 12, 10, 30};
        kContent_stopData = [self StringFromShoppingData:&value];
    }
    return kContent_stopData;
}

//: activity_group_member_info2_shenfen
- (NSString *)kTextTopValue {
    /* static */ NSString *kTextTopValue = nil;
    if (!kTextTopValue) {
		NSString *origin = @"B7B5A2BFA0BFA2AF89B1A4B9A3A689BBB3BBB4B3A489BFB8B0B9E489A5BEB3B8B0B3B8CD";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){214, (Byte *)data.bytes, 35, 222, 179};
        kTextTopValue = [self StringFromShoppingData:&value];
    }
    return kTextTopValue;
}

//: ic_group_lists
- (NSString *)kContentDateData {
    /* static */ NSString *kContentDateData = nil;
    if (!kContentDateData) {
		NSString *origin = @"4E44784055485257784B4E5453546D";
		NSData *data = [ShoppingData ShoppingDataToData:origin];
        StructShoppingData value = (StructShoppingData){39, (Byte *)data.bytes, 14, 54, 193};
        kContentDateData = [self StringFromShoppingData:&value];
    }
    return kContentDateData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTeamMemberCardViewController.h"
#import "RowViewController.h"
//: #import "DisplayCommonTableData.h"
#import "DisplayCommonTableData.h"
//: #import "DisplayCommonTableDelegate.h"
#import "TeamMake.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "DisplayTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "YearView.h"
//: #import "DisplayKitColorButtonCell.h"
#import "KitView.h"
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "DisplayTeamHelper.h"
#import "MaxHelper.h"

//: @interface DisplayTeamMemberCardViewController ()<NIMUserManagerDelegate>
@interface RowViewController ()<NIMUserManagerDelegate>

//: @property (nonatomic,strong) DisplayCommonTableDelegate *delegator;
@property (nonatomic,strong) TeamMake *delegator;

//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;

//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;

//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;

//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;
//: @property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) NSArray *data;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic,weak) id <DisplayTeamMemberListDataSource> dataSource;
@property (nonatomic,weak) id <AccountSource> dataSource;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) YearView *groupNickNameView;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;

//: @end
@end

//: @implementation DisplayTeamMemberCardViewController
@implementation RowViewController

//: #pragma mark - Private
#pragma mark - Private
//: - (void)showToastMsg:(NSString *)msg {
- (void)start:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}
//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)updateMute:(UISwitch *)switcher
- (void)countMute:(UISwitch *)switcher
{
    //: BOOL mute = switcher.on;
    BOOL mute = switcher.on;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
    [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                             //: userId:self.memberId
                                             userId:self.memberId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
        //: NSString *msg = nil;
        NSString *msg = nil;
        //: if (!error) {
        if (!error) {
            //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
            msg = [MakeManager cell:[[ShoppingData sharedInstance] kName_consumptionString]];
        //: }else{
        }else{
            //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
            msg = [MakeManager cell:[[ShoppingData sharedInstance] kTextWheatData]];
            //: switcher.on = !mute;
            switcher.on = !mute;
        }
        //: [self showToastMsg:msg];
        [self start:msg];
     //: }];
     }];
}
//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (YearView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[YearView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)removeMember
-(void)netVoice
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
    [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
                                     //: fromTeam:self.teamListManager.team.teamId
                                     fromTeam:self.teamListManager.team.teamId
                                   //: completion:^(NSError *error) {
                                   completion:^(NSError *error) {
        //: [weakSelf.navigationController popViewControllerAnimated:NO];
        [weakSelf.navigationController popViewControllerAnimated:NO];
    //: }];
    }];
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:nameView];
        [contView addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateTeamNick)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(formatBlue)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kContent_stopData]];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labTitleRemark.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.labTitleRemark.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContent_scienceString]];
        //: self.labTitleRemark.text = [DisplayLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [MakeManager cell:[[ShoppingData sharedInstance] kTextColorString]];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor cell:[[ShoppingData sharedInstance] kTextReservationTitle]];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitle_withData]];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor cell:[[ShoppingData sharedInstance] kName_viewString]];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

        //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box2];
        [contView addSubview:box2];
        //: UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon2.image = [UIImage imageNamed:@"ic_identity_authentication"];
        icon2.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitleRecentText]];
        //: [box2 addSubview:icon2];
        [box2 addSubview:icon2];
        //: UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        //: lab2.font = [UIFont systemFontOfSize:14];
        lab2.font = [UIFont systemFontOfSize:14];
        //: lab2.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab2.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContent_scienceString]];
        //: lab2.text = [DisplayLanguageManager getTextWithKey:@"activity_group_member_info2_shenfen"];
        lab2.text = [MakeManager cell:[[ShoppingData sharedInstance] kTextTopValue]];
        //: [box2 addSubview:lab2];
        [box2 addSubview:lab2];
        //: UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        //: sublab2.font = [UIFont systemFontOfSize:12];
        sublab2.font = [UIFont systemFontOfSize:12];
        //: sublab2.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        sublab2.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContentHideData]];
        //: sublab2.text = [DisplayTeamHelper memberTypeText:self.member.type];
        sublab2.text = [MaxHelper queryed:self.member.type];
        //: [box2 addSubview:sublab2];
        [box2 addSubview:sublab2];
        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow2.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow2.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitle_withData]];
        //: [box2 addSubview:arrow2];
        [box2 addSubview:arrow2];
        //: UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line2.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line2.backgroundColor = [UIColor cell:[[ShoppingData sharedInstance] kName_viewString]];
        //: [box2 addSubview:line2];
        [box2 addSubview:line2];

        //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box3];
        [contView addSubview:box3];
        //: UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon3.image = [UIImage imageNamed:@"ic_invite"];
        icon3.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitle_monthValue]];
        //: [box3 addSubview:icon3];
        [box3 addSubview:icon3];
        //: UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        //: lab3.font = [UIFont systemFontOfSize:14];
        lab3.font = [UIFont systemFontOfSize:14];
        //: lab3.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab3.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContent_scienceString]];
        //: lab3.text = [DisplayLanguageManager getTextWithKey:@"activity_group_member_info2_inviter"];
        lab3.text = [MakeManager cell:[[ShoppingData sharedInstance] kNameTopDenseSculptureContent]];
        //: [box3 addSubview:lab3];
        [box3 addSubview:lab3];
        //: UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        //: sublab3.font = [UIFont systemFontOfSize:12];
        sublab3.font = [UIFont systemFontOfSize:12];
        //: sublab3.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        sublab3.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContentHideData]];
        //: sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : @"本地不存在".nim_localized;
        sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : [[ShoppingData sharedInstance] kTitleMigrationData].disable;
        //: [box3 addSubview:sublab3];
        [box3 addSubview:sublab3];
        //: UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow3.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow3.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitle_withData]];
        //: [box3 addSubview:arrow3];
        [box3 addSubview:arrow3];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor cell:[[ShoppingData sharedInstance] kName_viewString]];
        //: [box3 addSubview:line3];
        [box3 addSubview:line3];

        //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        //: [contView addSubview:box4];
        [contView addSubview:box4];
        //: UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: icon4.image = [UIImage imageNamed:@"ic_group_lists"];
        icon4.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kContentDateData]];
        //: [box4 addSubview:icon4];
        [box4 addSubview:icon4];
        //: UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        //: lab4.font = [UIFont systemFontOfSize:14];
        lab4.font = [UIFont systemFontOfSize:14];
        //: lab4.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab4.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContent_scienceString]];
        //: lab4.text = [DisplayLanguageManager getTextWithKey:@"group_member_info_activity_mute_msg"];
        lab4.text = [MakeManager cell:[[ShoppingData sharedInstance] kName_selectedKeyData]];
        //: [box4 addSubview:lab4];
        [box4 addSubview:lab4];
        //: UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        //: [pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#4B43DE"]];
        [pushSwitch setOnTintColor: [UIColor cell:[[ShoppingData sharedInstance] kContentHideData]]];
        //: [pushSwitch addTarget:self action:@selector(updateMute:) forControlEvents:UIControlEventValueChanged];
        [pushSwitch addTarget:self action:@selector(countMute:) forControlEvents:UIControlEventValueChanged];
        //: pushSwitch.on = _member.isMuted;
        pushSwitch.on = _member.isMuted;
        //: [box4 addSubview:pushSwitch];
        [box4 addSubview:pushSwitch];


        //: BOOL canEdit = [DisplayKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
        BOOL canEdit = [AtPull location:self.teamListManager.myTeamInfo];
        //: if(canEdit){
        if(canEdit){
            //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            //: self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
            [self.btnDelete setTitleColor:[UIColor cell:[[ShoppingData sharedInstance] kTitle_recentData]] forState:UIControlStateNormal];
            //: [self.btnDelete setTitle:@"移出本群".nim_localized forState:UIControlStateNormal];
            [self.btnDelete setTitle:[[ShoppingData sharedInstance] kName_hardwareData].disable forState:UIControlStateNormal];
            //: [self.btnDelete addTarget:self action:@selector(removeMember) forControlEvents:UIControlEventTouchUpInside];
            [self.btnDelete addTarget:self action:@selector(netVoice) forControlEvents:UIControlEventTouchUpInside];
            //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
            self.btnDelete.backgroundColor = [UIColor cell:[[ShoppingData sharedInstance] kText_cellData]];
            //: self.btnDelete.layer.borderWidth = 1;
            self.btnDelete.layer.borderWidth = 1;
            //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
            self.btnDelete.layer.borderColor = [UIColor cell:[[ShoppingData sharedInstance] kName_hideStableData]].CGColor;
            //: self.btnDelete.layer.cornerRadius = 24;
            self.btnDelete.layer.cornerRadius = 24;
            //: [_personView addSubview:self.btnDelete];
            [_personView addSubview:self.btnDelete];
        }


    }
    //: return _personView;
    return _personView;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[[ShoppingData sharedInstance] kNameFierceContent]];

    //: self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];
    self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];


    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: [scrollView addSubview:self.userView];
    [scrollView addSubview:self.userView];
    //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);
    self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);
    self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);

//    [self refresh];

    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.memberId;
    dict[[[ShoppingData sharedInstance] kTitleScienceValue]] = self.memberId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[[ShoppingData sharedInstance] kText_topValue]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[[ShoppingData sharedInstance] kTitleMagnitudeactData]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data comment:@"account"];
//            NSString *avatar = [data newStringValueForKey:@"avatar"];

            //: self.accountId.text = self.userAcount;
            self.accountId.text = self.userAcount;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kContentTextPullValue]];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice vg_statusBarHeight]+44+20, 345, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice comeDownSuperphylum]+44+20, 345, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitleCrawValue]];
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice comeDownSuperphylum]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[ShoppingData sharedInstance] kName_inventData]]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            sexImg.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kNameTeamMainString]];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            sexImg.image = [UIImage imageNamed:[[ShoppingData sharedInstance] kTitle_valueData]];
        }
        //: [_userView addSubview:sexImg];
        [_userView addSubview:sexImg];

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor cell:[[ShoppingData sharedInstance] kContent_scienceString]];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountId];
        [_userView addSubview:self.accountId];

        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[[ShoppingData sharedInstance] kName_bridgeString]] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice comeDownSuperphylum], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (void)updateTeamNick
- (void)formatBlue
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView animationQuick];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
            [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
                                                   //: newNick:Name
                                                   newNick:Name
                                                    //: inTeam:self.teamListManager.team.teamId
                                                    inTeam:self.teamListManager.team.teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
                //: self.accountNickname.text = Name;
                self.accountNickname.text = Name;
                //: [self.groupNickNameView animationClose];
                [self.groupNickNameView ingatheringBy];
            //: }];
            }];
        //: };
        };
}

//: - (void)dealloc {
- (void)dealloc {

}


//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}



//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4]
