
#import <Foundation/Foundation.h>

@interface ImaginationImageData : NSObject

+ (instancetype)sharedInstance;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *mainChangeDateFormat;

//: tid
@property (nonatomic, copy) NSString *show_bubbleName;

//: owner
@property (nonatomic, copy) NSString *user_showMessage;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *showEndData;

//: E3F4AA
@property (nonatomic, copy) NSString *kOriginStr;

//: contact_tag_fragment_friend
@property (nonatomic, copy) NSString *mBarTitle;

//: name
@property (nonatomic, copy) NSString *userUpgradeBubbleMessage;

//: #2C3042
@property (nonatomic, copy) NSString *mCommentFormat;

//: tag_activity_set
@property (nonatomic, copy) NSString *dream_showKey;

//: #5D5F66
@property (nonatomic, copy) NSString *main_curId;

//: /team/create
@property (nonatomic, copy) NSString *user_valueName;

//: code
@property (nonatomic, copy) NSString *mainShowColorId;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *kFormatUpMsg;

//: notification
@property (nonatomic, copy) NSString *kMonthMsg;

//: warm_prompt
@property (nonatomic, copy) NSString *m_imageViewTitle;

//: contact_add_friend
@property (nonatomic, copy) NSString *mStatusRefreshMessage;

//: #CCECFC
@property (nonatomic, copy) NSString *m_maxValue;

//: /group/
@property (nonatomic, copy) NSString *user_placeKey;

//: data
@property (nonatomic, copy) NSString *mManValuePath;

//: #F6F6F6
@property (nonatomic, copy) NSString *noti_shouldAddTableValue;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *app_commentSuccessUrl;

//: #EEEEEE
@property (nonatomic, copy) NSString *main_minIdent;

//: contact_notice
@property (nonatomic, copy) NSString *main_toUrl;

//: user_id
@property (nonatomic, copy) NSString *m_extraValue;

//: tname
@property (nonatomic, copy) NSString *mCropData;

//: contact_group
@property (nonatomic, copy) NSString *app_dateKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *appBarCommentName;

//: #4B43DE
@property (nonatomic, copy) NSString *dreamOfData;

//: contact_fragment_friend
@property (nonatomic, copy) NSString *k_pressedStr;

//: ic_none_ContactList
@property (nonatomic, copy) NSString *user_keyIdent;

//: ids
@property (nonatomic, copy) NSString *appPointFormat;

//: #F7D2F3
@property (nonatomic, copy) NSString *noti_closeMsg;

//: contact_fragment_group
@property (nonatomic, copy) NSString *noti_pictureTitle;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *main_circleMsg;

//: group_info_activity_without
@property (nonatomic, copy) NSString *show_nameContent;

//: jpg
@property (nonatomic, copy) NSString *main_infoDoingTitle;

//: invite_you_group
@property (nonatomic, copy) NSString *show_atUrl;

//: type
@property (nonatomic, copy) NSString *main_changeValueFormat;

//: #999999
@property (nonatomic, copy) NSString *kStatusMessage;

@end

@implementation ImaginationImageData

+ (instancetype)sharedInstance {
    static ImaginationImageData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImaginationImageDataToCache:(Byte *)data {
    int of = data[0];
    Byte send = data[1];
    int clipBubble = data[2];
    for (int i = clipBubble; i < clipBubble + of; i++) {
        int value = data[i] + send;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[clipBubble + of] = 0;
    return data + clipBubble;
}

- (NSString *)StringFromImaginationImageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ImaginationImageDataToCache:data]];
}

//: notification
- (NSString *)kMonthMsg {
    if (!_kMonthMsg) {
        Byte value[] = {12, 25, 6, 89, 242, 125, 85, 86, 91, 80, 77, 80, 74, 72, 91, 80, 86, 85, 162};
        _kMonthMsg = [self StringFromImaginationImageData:value];
    }
    return _kMonthMsg;
}

//: #4B43DE
- (NSString *)dreamOfData {
    if (!_dreamOfData) {
        Byte value[] = {7, 30, 12, 230, 16, 228, 206, 133, 147, 176, 139, 248, 5, 22, 36, 22, 21, 38, 39, 65};
        _dreamOfData = [self StringFromImaginationImageData:value];
    }
    return _dreamOfData;
}

//: invite_you_group
- (NSString *)show_atUrl {
    if (!_show_atUrl) {
        Byte value[] = {16, 74, 11, 210, 247, 219, 26, 208, 49, 194, 105, 31, 36, 44, 31, 42, 27, 21, 47, 37, 43, 21, 29, 40, 37, 43, 38, 136};
        _show_atUrl = [self StringFromImaginationImageData:value];
    }
    return _show_atUrl;
}

//: contact_fragment_group
- (NSString *)noti_pictureTitle {
    if (!_noti_pictureTitle) {
        Byte value[] = {22, 3, 10, 183, 242, 245, 196, 101, 90, 138, 96, 108, 107, 113, 94, 96, 113, 92, 99, 111, 94, 100, 106, 98, 107, 113, 92, 100, 111, 108, 114, 109, 247};
        _noti_pictureTitle = [self StringFromImaginationImageData:value];
    }
    return _noti_pictureTitle;
}

//: #5D5F66
- (NSString *)main_curId {
    if (!_main_curId) {
        Byte value[] = {7, 46, 4, 90, 245, 7, 22, 7, 24, 8, 8, 192};
        _main_curId = [self StringFromImaginationImageData:value];
    }
    return _main_curId;
}

//: contact_notice
- (NSString *)main_toUrl {
    if (!_main_toUrl) {
        Byte value[] = {14, 43, 9, 97, 173, 10, 58, 252, 13, 56, 68, 67, 73, 54, 56, 73, 52, 67, 68, 73, 62, 56, 58, 165};
        _main_toUrl = [self StringFromImaginationImageData:value];
    }
    return _main_toUrl;
}

//: user_id
- (NSString *)m_extraValue {
    if (!_m_extraValue) {
        Byte value[] = {7, 90, 7, 28, 251, 131, 137, 27, 25, 11, 24, 5, 15, 10, 185};
        _m_extraValue = [self StringFromImaginationImageData:value];
    }
    return _m_extraValue;
}

//: tid
- (NSString *)show_bubbleName {
    if (!_show_bubbleName) {
        Byte value[] = {3, 34, 7, 120, 119, 148, 18, 82, 71, 66, 64};
        _show_bubbleName = [self StringFromImaginationImageData:value];
    }
    return _show_bubbleName;
}

//: contact_tag_fragment_cancel
- (NSString *)appBarCommentName {
    if (!_appBarCommentName) {
        Byte value[] = {27, 32, 3, 67, 79, 78, 84, 65, 67, 84, 63, 84, 65, 71, 63, 70, 82, 65, 71, 77, 69, 78, 84, 63, 67, 65, 78, 67, 69, 76, 196};
        _appBarCommentName = [self StringFromImaginationImageData:value];
    }
    return _appBarCommentName;
}

//: contact_add_friend
- (NSString *)mStatusRefreshMessage {
    if (!_mStatusRefreshMessage) {
        Byte value[] = {18, 12, 4, 38, 87, 99, 98, 104, 85, 87, 104, 83, 85, 88, 88, 83, 90, 102, 93, 89, 98, 88, 71};
        _mStatusRefreshMessage = [self StringFromImaginationImageData:value];
    }
    return _mStatusRefreshMessage;
}

//: ic_none_ContactList
- (NSString *)user_keyIdent {
    if (!_user_keyIdent) {
        Byte value[] = {19, 28, 9, 235, 93, 141, 48, 17, 14, 77, 71, 67, 82, 83, 82, 73, 67, 39, 83, 82, 88, 69, 71, 88, 48, 77, 87, 88, 164};
        _user_keyIdent = [self StringFromImaginationImageData:value];
    }
    return _user_keyIdent;
}

//: tag_activity_set
- (NSString *)dream_showKey {
    if (!_dream_showKey) {
        Byte value[] = {16, 48, 4, 30, 68, 49, 55, 47, 49, 51, 68, 57, 70, 57, 68, 73, 47, 67, 53, 68, 99};
        _dream_showKey = [self StringFromImaginationImageData:value];
    }
    return _dream_showKey;
}

//: group_info_activity_without
- (NSString *)show_nameContent {
    if (!_show_nameContent) {
        Byte value[] = {27, 51, 8, 163, 37, 163, 230, 104, 52, 63, 60, 66, 61, 44, 54, 59, 51, 60, 44, 46, 48, 65, 54, 67, 54, 65, 70, 44, 68, 54, 65, 53, 60, 66, 65, 251};
        _show_nameContent = [self StringFromImaginationImageData:value];
    }
    return _show_nameContent;
}

//: code
- (NSString *)mainShowColorId {
    if (!_mainShowColorId) {
        Byte value[] = {4, 43, 5, 155, 190, 56, 68, 57, 58, 194};
        _mainShowColorId = [self StringFromImaginationImageData:value];
    }
    return _mainShowColorId;
}

//: #2C3042
- (NSString *)mCommentFormat {
    if (!_mCommentFormat) {
        Byte value[] = {7, 39, 6, 33, 3, 16, 252, 11, 28, 12, 9, 13, 11, 85};
        _mCommentFormat = [self StringFromImaginationImageData:value];
    }
    return _mCommentFormat;
}

//: add_friend_activity_add_friend
- (NSString *)app_commentSuccessUrl {
    if (!_app_commentSuccessUrl) {
        Byte value[] = {30, 43, 13, 236, 135, 178, 133, 117, 17, 16, 206, 94, 240, 54, 57, 57, 52, 59, 71, 62, 58, 67, 57, 52, 54, 56, 73, 62, 75, 62, 73, 78, 52, 54, 57, 57, 52, 59, 71, 62, 58, 67, 57, 37};
        _app_commentSuccessUrl = [self StringFromImaginationImageData:value];
    }
    return _app_commentSuccessUrl;
}

//: type
- (NSString *)main_changeValueFormat {
    if (!_main_changeValueFormat) {
        Byte value[] = {4, 25, 11, 11, 235, 12, 237, 195, 134, 168, 127, 91, 96, 87, 76, 65};
        _main_changeValueFormat = [self StringFromImaginationImageData:value];
    }
    return _main_changeValueFormat;
}

//: setting_privacy_camera
- (NSString *)main_circleMsg {
    if (!_main_circleMsg) {
        Byte value[] = {22, 23, 11, 174, 149, 227, 141, 177, 234, 99, 96, 92, 78, 93, 93, 82, 87, 80, 72, 89, 91, 82, 95, 74, 76, 98, 72, 76, 74, 86, 78, 91, 74, 31};
        _main_circleMsg = [self StringFromImaginationImageData:value];
    }
    return _main_circleMsg;
}

//: data
- (NSString *)mManValuePath {
    if (!_mManValuePath) {
        Byte value[] = {4, 88, 13, 147, 187, 239, 122, 104, 81, 171, 112, 103, 173, 12, 9, 28, 9, 218};
        _mManValuePath = [self StringFromImaginationImageData:value];
    }
    return _mManValuePath;
}

//: E3F4AA
- (NSString *)kOriginStr {
    if (!_kOriginStr) {
        Byte value[] = {6, 38, 9, 32, 72, 11, 98, 140, 245, 31, 13, 32, 14, 27, 27, 3};
        _kOriginStr = [self StringFromImaginationImageData:value];
    }
    return _kOriginStr;
}

//: activity_create_group_name_create_group
- (NSString *)kFormatUpMsg {
    if (!_kFormatUpMsg) {
        Byte value[] = {39, 74, 11, 27, 13, 104, 65, 250, 12, 116, 97, 23, 25, 42, 31, 44, 31, 42, 47, 21, 25, 40, 27, 23, 42, 27, 21, 29, 40, 37, 43, 38, 21, 36, 23, 35, 27, 21, 25, 40, 27, 23, 42, 27, 21, 29, 40, 37, 43, 38, 72};
        _kFormatUpMsg = [self StringFromImaginationImageData:value];
    }
    return _kFormatUpMsg;
}

//: #EEEEEE
- (NSString *)main_minIdent {
    if (!_main_minIdent) {
        Byte value[] = {7, 68, 12, 239, 250, 143, 35, 42, 150, 194, 141, 21, 223, 1, 1, 1, 1, 1, 1, 56};
        _main_minIdent = [self StringFromImaginationImageData:value];
    }
    return _main_minIdent;
}

//: #CCECFC
- (NSString *)m_maxValue {
    if (!_m_maxValue) {
        Byte value[] = {7, 36, 7, 245, 207, 220, 164, 255, 31, 31, 33, 31, 34, 31, 227};
        _m_maxValue = [self StringFromImaginationImageData:value];
    }
    return _m_maxValue;
}

//: warm_prompt
- (NSString *)m_imageViewTitle {
    if (!_m_imageViewTitle) {
        Byte value[] = {11, 47, 9, 217, 88, 27, 147, 123, 44, 72, 50, 67, 62, 48, 65, 67, 64, 62, 65, 69, 127};
        _m_imageViewTitle = [self StringFromImaginationImageData:value];
    }
    return _m_imageViewTitle;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)showEndData {
    if (!_showEndData) {
        Byte value[] = {39, 83, 13, 232, 17, 174, 107, 11, 140, 250, 218, 73, 195, 34, 32, 18, 31, 12, 22, 27, 19, 28, 12, 14, 35, 33, 22, 35, 22, 33, 38, 12, 34, 29, 25, 28, 14, 17, 12, 14, 35, 14, 33, 14, 31, 12, 19, 14, 22, 25, 18, 17, 36};
        _showEndData = [self StringFromImaginationImageData:value];
    }
    return _showEndData;
}

//: #F6F6F6
- (NSString *)noti_shouldAddTableValue {
    if (!_noti_shouldAddTableValue) {
        Byte value[] = {7, 8, 6, 146, 23, 161, 27, 62, 46, 62, 46, 62, 46, 231};
        _noti_shouldAddTableValue = [self StringFromImaginationImageData:value];
    }
    return _noti_shouldAddTableValue;
}

//: /team/create
- (NSString *)user_valueName {
    if (!_user_valueName) {
        Byte value[] = {12, 80, 10, 16, 190, 27, 252, 159, 2, 186, 223, 36, 21, 17, 29, 223, 19, 34, 21, 17, 36, 21, 239};
        _user_valueName = [self StringFromImaginationImageData:value];
    }
    return _user_valueName;
}

//: #F7D2F3
- (NSString *)noti_closeMsg {
    if (!_noti_closeMsg) {
        Byte value[] = {7, 56, 7, 171, 56, 176, 100, 235, 14, 255, 12, 250, 14, 251, 142};
        _noti_closeMsg = [self StringFromImaginationImageData:value];
    }
    return _noti_closeMsg;
}

//: #999999
- (NSString *)kStatusMessage {
    if (!_kStatusMessage) {
        Byte value[] = {7, 77, 7, 29, 55, 26, 173, 214, 236, 236, 236, 236, 236, 236, 182};
        _kStatusMessage = [self StringFromImaginationImageData:value];
    }
    return _kStatusMessage;
}

//: owner
- (NSString *)user_showMessage {
    if (!_user_showMessage) {
        Byte value[] = {5, 5, 9, 182, 91, 48, 90, 195, 170, 106, 114, 105, 96, 109, 30};
        _user_showMessage = [self StringFromImaginationImageData:value];
    }
    return _user_showMessage;
}

//: contact_fragment_friend
- (NSString *)k_pressedStr {
    if (!_k_pressedStr) {
        Byte value[] = {23, 16, 4, 151, 83, 95, 94, 100, 81, 83, 100, 79, 86, 98, 81, 87, 93, 85, 94, 100, 79, 86, 98, 89, 85, 94, 84, 188};
        _k_pressedStr = [self StringFromImaginationImageData:value];
    }
    return _k_pressedStr;
}

//: name
- (NSString *)userUpgradeBubbleMessage {
    if (!_userUpgradeBubbleMessage) {
        Byte value[] = {4, 32, 7, 239, 203, 242, 109, 78, 65, 77, 69, 53};
        _userUpgradeBubbleMessage = [self StringFromImaginationImageData:value];
    }
    return _userUpgradeBubbleMessage;
}

//: team_create_helper_create_failed
- (NSString *)mainChangeDateFormat {
    if (!_mainChangeDateFormat) {
        Byte value[] = {32, 47, 5, 127, 49, 69, 54, 50, 62, 48, 52, 67, 54, 50, 69, 54, 48, 57, 54, 61, 65, 54, 67, 48, 52, 67, 54, 50, 69, 54, 48, 55, 50, 58, 61, 54, 53, 191};
        _mainChangeDateFormat = [self StringFromImaginationImageData:value];
    }
    return _mainChangeDateFormat;
}

//: contact_group
- (NSString *)app_dateKey {
    if (!_app_dateKey) {
        Byte value[] = {13, 39, 6, 58, 212, 208, 60, 72, 71, 77, 58, 60, 77, 56, 64, 75, 72, 78, 73, 157};
        _app_dateKey = [self StringFromImaginationImageData:value];
    }
    return _app_dateKey;
}

//: contact_tag_fragment_friend
- (NSString *)mBarTitle {
    if (!_mBarTitle) {
        Byte value[] = {27, 23, 12, 132, 166, 87, 137, 50, 233, 32, 64, 110, 76, 88, 87, 93, 74, 76, 93, 72, 93, 74, 80, 72, 79, 91, 74, 80, 86, 78, 87, 93, 72, 79, 91, 82, 78, 87, 77, 145};
        _mBarTitle = [self StringFromImaginationImageData:value];
    }
    return _mBarTitle;
}

//: jpg
- (NSString *)main_infoDoingTitle {
    if (!_main_infoDoingTitle) {
        Byte value[] = {3, 32, 6, 246, 155, 153, 74, 80, 71, 149};
        _main_infoDoingTitle = [self StringFromImaginationImageData:value];
    }
    return _main_infoDoingTitle;
}

//: /group/
- (NSString *)user_placeKey {
    if (!_user_placeKey) {
        Byte value[] = {7, 68, 8, 45, 199, 195, 22, 154, 235, 35, 46, 43, 49, 44, 235, 49};
        _user_placeKey = [self StringFromImaginationImageData:value];
    }
    return _user_placeKey;
}

//: tname
- (NSString *)mCropData {
    if (!_mCropData) {
        Byte value[] = {5, 25, 10, 51, 169, 232, 144, 193, 58, 114, 91, 85, 72, 84, 76, 169};
        _mCropData = [self StringFromImaginationImageData:value];
    }
    return _mCropData;
}

//: ids
- (NSString *)appPointFormat {
    if (!_appPointFormat) {
        Byte value[] = {3, 13, 10, 223, 33, 68, 227, 196, 211, 123, 92, 87, 102, 10};
        _appPointFormat = [self StringFromImaginationImageData:value];
    }
    return _appPointFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrimsonViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "NTESContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "CrimsonViewController.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"
//: #import "NTESContactUtilItem.h"
#import "NameTitle.h"
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"
//: #import "NTESGroupedContacts.h"
#import "ObjectDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomNotificationDB.h"
#import "ChanceImage.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+InputSub.h"
//: #import "NTESContactAddFriendViewController.h"
#import "SubContactViewController.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactUtilCell.h"
#import "RecentModeView.h"
//: #import "NTESContactDataCell.h"
#import "PlacementToCompartmentView.h"
//: #import "FFFContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "NTESUserUtil.h"
#import "RecordUtil.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESContactSearchViewController.h"
#import "EdgeMakeTableViewController.h"
//: #import "NTESSystemNotificationViewController.h"
#import "NoticeViewController.h"
//: #import "CCCBlackListViewController.h"
#import "FindViewController.h"
//: #import "NTESContactHeaderView.h"
#import "NoticeTextView.h"
//: #import "CCCContactScanViewController.h"
#import "OldSessionViewController.h"
//: #import "NTESContactTableHeader.h"
#import "CheckView.h"
//: #import "NTESContactGroupCell.h"
#import "DisplacementView.h"
//: #import "CCCAddressBookManager.h"
#import "InfoManager.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESFriendListTableViewCell.h"
#import "UtilizerView.h"
//: #import "FFFKitFileLocationHelper.h"
#import "ButtonHelper.h"

//: static const NSString *contactCellUtilIcon = @"icon";
static const NSString *user_kitName = @"icon";
//: static const NSString *contactCellUtilVC = @"vc";
static const NSString *dreamTapId = @"vc";
//: static const NSString *contactCellUtilBadge = @"badge";
static const NSString *noti_buttonUrl = @"badge";
//: static const NSString *contactCellUtilTitle = @"title";
static const NSString *app_contentFormat = @"title";
//: static const NSString *contactCellUtilUid = @"uid";
static const NSString *show_formatContextStr = @"uid";
//: static const NSString *contactCellUtilSelectorName = @"selName";
static const NSString *k_sizeData = @"selName";


//: @interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface CrimsonViewController ()<MakeTime,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: NTESContactUtilCellDelegate,
EmptySize,
//: FFFContactDataCellDelegate,
ZoneDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: NTESContactSearchDelegate> {
MannerDelegate> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: NTESGroupedContacts *_contacts;
    ObjectDataCollection *_contacts;
}


//: @property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) NSArray * datas;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnScan;
//: @property (nonatomic,strong) UIButton *btnCreatgroup;
@property (nonatomic,strong) UIButton *btnCreatgroup;


//: @property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,strong) NSArray *advancedTeamArray;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;

//: @property (nonatomic ,strong) NSMutableArray *tempOpenArray;
@property (nonatomic ,strong) NSMutableArray *tempOpenArray;

//: @property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *friendheaderView;
//: @property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) UIView *groupheaderView;
//: @property (nonatomic,strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic,strong) QueryStubView *loadingView;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation CrimsonViewController

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self prepareData];
    [self needInput];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self bluish];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self location];
}

//: - (void)loadTheView
- (void)location
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts wellhead]>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }


    //: }else{
    }else{
        //: if(self.advancedTeamArray.count>0){
        if(self.advancedTeamArray.count>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }
    }

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setUpNavItem];
    [self chase];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat]; // 索引文字颜色
//        self.tableView.sectionIndexBackgroundColor = [UIColor clearColor]; // 索引背景色
//        self.tableView.sectionIndexTrackingBackgroundColor = [UIColor lightGrayColor]; // 选中时的背景色
    }

//    [self prepareData];
    //: self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];
    self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];

    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-140-(49.0f))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice tingHeight]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[ImaginationImageData sharedInstance].user_keyIdent];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:[ImaginationImageData sharedInstance].kStatusMessage];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].show_nameContent];


    }
    //: return _defView;
    return _defView;
}

//: -(void)getGroupData{
-(void)time{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[ImaginationImageData sharedInstance].user_placeKey] reload_strong:nil with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[ImaginationImageData sharedInstance].mainShowColorId];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[ImaginationImageData sharedInstance].m_extraValue];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].mBarTitle] forKey:[ImaginationImageData sharedInstance].userUpgradeBubbleMessage];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[ImaginationImageData sharedInstance].appPointFormat];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict viewKey:[ImaginationImageData sharedInstance].mManValuePath];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];


}

//: - (void)setUpNavItem
- (void)chase
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice tingHeight]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice tingHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].noti_shouldAddTableValue];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _btnfriend.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].dreamOfData];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].k_pressedStr] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor min:[ImaginationImageData sharedInstance].main_curId] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].noti_pictureTitle] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].main_minIdent];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

//: - (void)handleNotice
- (void)valueReply
{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    NoticeViewController *vc = [[NoticeViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)needInput{
    //: _contacts = [[NTESGroupedContacts alloc] init];
    _contacts = [[ObjectDataCollection alloc] init];
}

//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)frame{
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: - (NSMutableArray *)advancedDidFetchTeams {
- (NSMutableArray *)bluish {
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeAdvanced) {
        if (team.type == NIMTeamTypeAdvanced) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onEnterMyComputer{
- (void)border{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)input:(NSString *)teamID underArrangement:(NSString *)teamName activityMessage:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[ImaginationImageData sharedInstance].user_showMessage] = currentUserId;
    //: dict[@"type"] = type;
    dict[[ImaginationImageData sharedInstance].main_changeValueFormat] = type;
    //: dict[@"tname"] = teamName;
    dict[[ImaginationImageData sharedInstance].mCropData] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[ImaginationImageData sharedInstance].show_bubbleName] = teamID;

}

//: - (void)searchAction:(id)sender {
- (void)file:(id)sender {
    //: NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    EdgeMakeTableViewController *vc = [[EdgeMakeTableViewController alloc] init];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<InventoryItem> contactItem = (id<InventoryItem>)[_contacts content:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(heatherMixture)] && [contactItem heatherMixture].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem heatherMixture]);
            //: SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
            SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
        }
        //: else if (contactItem.vcName.length) {
        else if (contactItem.sumName.length) {
            //: Class clazz = NSClassFromString(contactItem.vcName);
            Class clazz = NSClassFromString(contactItem.sumName);
            //: UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }else if([contactItem respondsToSelector:@selector(userId)]){
        }else if([contactItem respondsToSelector:@selector(distanceRandom)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.distanceRandom;
            //: [self enterPersonalCard:friendId];
            [self inTheFleshBlockCard:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self sessionOf:team];
        //: if (session) {
        if (session) {
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<InventoryItem> contactItem = (id<InventoryItem>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)sessionOf:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts groupCount];
        return [_contacts wellhead];
    //: }else{
    }else{
        //: return _advancedTeamArray.count;
        return _advancedTeamArray.count;

    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts memberCountOfGroup:section];
        return [_contacts exceptName:section];
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
            //: return 30;
            return 30;
        }
        //: return 2.2250738585072014e-308;
        return 2.2250738585072014e-308;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
           //: UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           //: view.backgroundColor = [UIColor whiteColor];
           view.backgroundColor = [UIColor whiteColor];

           //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           //: label.text = [_contacts titleOfGroup:section];
           label.text = [_contacts size:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat];
           //: [view addSubview:label];
           [view addSubview:label];

           //: return view;
           return view;
       }
       //: return [[UIView alloc] init];
       return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    UtilizerView *cell = [UtilizerView ting:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts content:indexPath];
        //: [cell refreshUser:contactItem];
        [cell onBarUser:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell visualization:team];
    }

    //: return cell;
    return cell;
}

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts size:section];
    //: }else{
    }else{
        //: return @"";
        return @"";
    }
}

//: - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return _contacts.sortedGroupTitles;
        return _contacts.sortedGroupTitles;
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        //: for (int i = 0; i < itemArray.count; i++) {
        for (int i = 0; i < itemArray.count; i++) {
            //: [array addObject:@""];
            [array addObject:@""];
        }
        //: return array;
        return array;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    //: return index + 1;
    return index + 1;
}

//: #pragma mark - NTESUserListCellDelegate
#pragma mark - MakeTime
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)fastening:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESContactSearchDelegate
#pragma mark - MannerDelegate
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (BOOL)ignoreCase {
- (BOOL)viewCase {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: #pragma mark - FFFContactDataCellDelegate
#pragma mark - ZoneDelegate
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)optionLoad:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self inTheFleshBlockCard:memberId];
}

//: #pragma mark - NTESContactUtilCellDelegate
#pragma mark - EmptySize
//: - (void)onPressUtilImage:(NSString *)content{
- (void)utiling:(NSString *)content{

}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - DelegateZone
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)messaged:(NSArray *)selectedContacts{

}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self needInput];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: if (self.isViewLoaded) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            //: [self prepareData];
            [self needInput];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self team];
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self team];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self team];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self team];
}

//: - (void)refresh
- (void)team
{
    //: [self prepareData];
    [self needInput];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate

//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: [ids addObject:event.from];
        [ids addObject:event.from];
    }

    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {

        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<InventoryItem> contactItem = (id<InventoryItem>)[_contacts content:indexPath];
        //: if([contactItem respondsToSelector:@selector(userId)]){
        if([contactItem respondsToSelector:@selector(distanceRandom)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.distanceRandom;
            //: if ([ids containsObject:friendId]) {
            if ([ids containsObject:friendId]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }
    //: if (indexPaths.count > 0)
    if (indexPaths.count > 0)
    {
        //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
        [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)enterPersonalCard:(NSString *)userId{
- (void)inTheFleshBlockCard:(NSString *)userId{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)date:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    OldPin *config = [[OldPin alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc center];
}


//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice tingHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice tingHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
        UIEdgeInsets separatorInset = self.tableView.separatorInset;
        //: separatorInset.right = 0;
        separatorInset.right = 0;
        //: _tableView.separatorInset = separatorInset;
        _tableView.separatorInset = separatorInset;
        //: _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}


//: #pragma mark - NTESContactHeaderDelegate
#pragma mark - SubTingDelegate
//: -(void)searchClick{
-(void)sizeView{
    //: [self searchAction:nil];
    [self file:nil];
}

//: -(void)addFriend{
-(void)holderBrother{
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    SubContactViewController *vc = [[SubContactViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)newGroup{
-(void)textInterval{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self date:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView canUser];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self index:avater titleDoing:^(NSString *urlString) {

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = name;
            option.name = name;
            //: option.avatarUrl = urlString ? : @"";
            option.avatarUrl = urlString ? : @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].show_atUrl];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView impendentImage];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self input:teamId underArrangement:option.name activityMessage:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self show:option.name cropId:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].mainChangeDateFormat] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)index:(UIImage *)image titleDoing:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [ButtonHelper withKey:[ImaginationImageData sharedInstance].main_infoDoingTitle];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[ButtonHelper with] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: if (!error && wself) {
            if (!error && wself) {


            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].showEndData]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }

            //: !complete ? :complete(urlString);
            !complete ? :complete(urlString);
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].showEndData]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)show:(NSString *)groupName cropId:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[ImaginationImageData sharedInstance].userUpgradeBubbleMessage] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[ImaginationImageData sharedInstance].user_valueName] reload_strong:dict with:NO forward:^(id responseObject) {

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

//: -(void)friendNotification{
-(void)seekTime{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    NoticeViewController *vc = [[NoticeViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)groupNotification{
-(void)window{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    NoticeViewController *vc = [[NoticeViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: -(void)blackFriendList{
-(void)mustShow{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    FindViewController *vc = [[FindViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)collectList{
-(void)content{

}


//: -(void)sliderButtonClick:(UIButton *)sender
-(void)mentalPicture:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnfriend.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].dreamOfData];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor min:[ImaginationImageData sharedInstance].main_curId] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btngroup.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].dreamOfData];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor min:[ImaginationImageData sharedInstance].main_curId] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self location];

}

//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)snaplineToArray:(NSArray *)array {

    //: NSError *error = nil;
    NSError *error = nil;
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    //: NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    //: NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //: return jsonTemp;
    return jsonTemp;
}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)contentPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        OldSessionViewController *vc = [[OldSessionViewController alloc] init];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            OldSessionViewController *vc = [[OldSessionViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].m_imageViewTitle] message:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].main_circleMsg] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].appBarCommentName] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].dream_showKey] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

//: -(void)creatTeamGroup{
-(void)instance{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself date:^(NSArray *uids, NSString *groupName, UIImage *avater) {
        //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        //: option.name = groupName;
        option.name = groupName;
        //: option.type = NIMTeamTypeAdvanced;
        option.type = NIMTeamTypeAdvanced;
        //: option.joinMode = NIMTeamJoinModeNoAuth;
        option.joinMode = NIMTeamJoinModeNoAuth;
        //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].show_atUrl];
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
        [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error) {
            if (!error) {
                //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self input:teamId underArrangement:option.name activityMessage:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself show:option.name cropId:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].mainChangeDateFormat] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (ZMONCustomLoadingView *)loadingView
- (QueryStubView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[QueryStubView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}

//: - (UIView *)friendheaderView
- (UIView *)friendheaderView
{
    //: if (!_friendheaderView) {
    if (!_friendheaderView) {
        //: _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].noti_closeMsg];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(valueReply)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[ImaginationImageData sharedInstance].main_toUrl];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].kMonthMsg];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].kOriginStr];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(holderBrother)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[ImaginationImageData sharedInstance].mStatusRefreshMessage];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].app_commentSuccessUrl];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _friendheaderView;
    return _friendheaderView;
}
//: - (UIView *)groupheaderView
- (UIView *)groupheaderView
{
    //: if (!_groupheaderView) {
    if (!_groupheaderView) {
        //: _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].noti_closeMsg];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(valueReply)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[ImaginationImageData sharedInstance].main_toUrl];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].kMonthMsg];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor min:[ImaginationImageData sharedInstance].m_maxValue];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(textInterval)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[ImaginationImageData sharedInstance].app_dateKey];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor min:[ImaginationImageData sharedInstance].mCommentFormat];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [PaintedNaturalLanguageTo exhibit:[ImaginationImageData sharedInstance].kFormatUpMsg];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: @end
@end