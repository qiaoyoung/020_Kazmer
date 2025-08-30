
#import <Foundation/Foundation.h>

@interface RecentData : NSObject

+ (instancetype)sharedInstance;

//: contact_fragment_group
@property (nonatomic, copy) NSString *kContent_cropData;

//: #EEEEEE
@property (nonatomic, copy) NSString *kNameValueString;

//: #F7D2F3
@property (nonatomic, copy) NSString *kName_sharedData;

//: contact_group
@property (nonatomic, copy) NSString *kText_contentString;

//: user_id
@property (nonatomic, copy) NSString *kContentTextPinSelectedValue;

//: contact_add_friend
@property (nonatomic, copy) NSString *kContentKeyString;

//: ids
@property (nonatomic, copy) NSString *kTextWithTapString;

//: ic_none_ContactList
@property (nonatomic, copy) NSString *kName_valueData;

//: owner
@property (nonatomic, copy) NSString *kText_deviceAddTitle;

//: /team/create
@property (nonatomic, copy) NSString *kName_fileContentString;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *kTitleImageStepTapData;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *kContentColorItemData;

//: tag_activity_set
@property (nonatomic, copy) NSString *kText_sendValue;

//: E3F4AA
@property (nonatomic, copy) NSString *kTextPlayData;

//: contact_notice
@property (nonatomic, copy) NSString *kContentValueString;

//: icon
@property (nonatomic, copy) NSString *kNameModelValue;

//: tname
@property (nonatomic, copy) NSString *kNameRedValue;

//: type
@property (nonatomic, copy) NSString *kContent_stepString;

//: code
@property (nonatomic, copy) NSString *kContent_recentName;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *kTextEndName;

//: #F6F6F6
@property (nonatomic, copy) NSString *kTitle_messageData;

//: selName
@property (nonatomic, copy) NSString *kNameCropString;

//: #999999
@property (nonatomic, copy) NSString *kNameDateContent;

//: #CCECFC
@property (nonatomic, copy) NSString *kName_toolData;

//: #4B43DE
@property (nonatomic, copy) NSString *kText_targetString;

//: contact_tag_fragment_friend
@property (nonatomic, copy) NSString *kContentToolString;

//: invite_you_group
@property (nonatomic, copy) NSString *kName_sendData;

//: notification
@property (nonatomic, copy) NSString *kNameItemLoopTitle;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kText_withData;

//: uid
@property (nonatomic, copy) NSString *kTitle_hideString;

//: contact_fragment_friend
@property (nonatomic, copy) NSString *kContent_endValue;

//: group_info_activity_without
@property (nonatomic, copy) NSString *kText_keyString;

//: #5D5F66
@property (nonatomic, copy) NSString *kNameNimData;

//: warm_prompt
@property (nonatomic, copy) NSString *kTitleShowString;

//: jpg
@property (nonatomic, copy) NSString *kTitleNameLoopData;

//: badge
@property (nonatomic, copy) NSString *kTextLoopString;

//: /group/
@property (nonatomic, copy) NSString *kName_toValue;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *kNameHideContent;

//: #2C3042
@property (nonatomic, copy) NSString *kName_sharedRecentString;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *kNameTargetValue;

//: tid
@property (nonatomic, copy) NSString *kTitle_showName;

@end

@implementation RecentData

//: selName
- (NSString *)kNameCropString {
    if (!_kNameCropString) {
		NSString *origin = @"075609b3dbc5dec6211d0f16f80b170f5a";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameCropString = [self StringFromRecentData:value];
    }
    return _kNameCropString;
}

+ (instancetype)sharedInstance {
    static RecentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RecentDataToCache:(Byte *)data {
    int itemSearched = data[0];
    Byte color = data[1];
    int target = data[2];
    for (int i = target; i < target + itemSearched; i++) {
        int value = data[i] + color;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[target + itemSearched] = 0;
    return data + target;
}

//: type
- (NSString *)kContent_stepString {
    if (!_kContent_stepString) {
		NSString *origin = @"04010a9d426ee9fb586373786f6410";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_stepString = [self StringFromRecentData:value];
    }
    return _kContent_stepString;
}

- (NSString *)StringFromRecentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecentDataToCache:data]];
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)kNameTargetValue {
    if (!_kNameTargetValue) {
		NSString *origin = @"274b067a494d2a281a27141e231b2414162b291e2b1e292e142a252124161914162b16291627141b161e211a1979";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameTargetValue = [self StringFromRecentData:value];
    }
    return _kNameTargetValue;
}

//: code
- (NSString *)kContent_recentName {
    if (!_kContent_recentName) {
		NSString *origin = @"041d05c06146524748d9";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_recentName = [self StringFromRecentData:value];
    }
    return _kContent_recentName;
}

//: tag_activity_set
- (NSString *)kText_sendValue {
    if (!_kText_sendValue) {
		NSString *origin = @"1029034b383e36383a4b404d404b50364a3c4b47";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_sendValue = [self StringFromRecentData:value];
    }
    return _kText_sendValue;
}

//: user_id
- (NSString *)kContentTextPinSelectedValue {
    if (!_kContentTextPinSelectedValue) {
		NSString *origin = @"07160c3126c19fc23bee727c5f5d4f5c49534ef0";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentTextPinSelectedValue = [self StringFromRecentData:value];
    }
    return _kContentTextPinSelectedValue;
}

//: contact_fragment_friend
- (NSString *)kContent_endValue {
    if (!_kContent_endValue) {
		NSString *origin = @"1711050bd3525e5d635052634e556150565c545d634e556158545d5361";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_endValue = [self StringFromRecentData:value];
    }
    return _kContent_endValue;
}

//: #4B43DE
- (NSString *)kText_targetString {
    if (!_kText_targetString) {
		NSString *origin = @"0724084a1f01e785ff101e100f202109";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_targetString = [self StringFromRecentData:value];
    }
    return _kText_targetString;
}

//: /team/create
- (NSString *)kName_fileContentString {
    if (!_kName_fileContentString) {
		NSString *origin = @"0c03032c71625e6a2c606f625e716255";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_fileContentString = [self StringFromRecentData:value];
    }
    return _kName_fileContentString;
}

//: icon
- (NSString *)kNameModelValue {
    if (!_kNameModelValue) {
		NSString *origin = @"041a068c4aa04f4955546d";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameModelValue = [self StringFromRecentData:value];
    }
    return _kNameModelValue;
}

//: owner
- (NSString *)kText_deviceAddTitle {
    if (!_kText_deviceAddTitle) {
		NSString *origin = @"050a09bdaf60cfe537656d645b68e4";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_deviceAddTitle = [self StringFromRecentData:value];
    }
    return _kText_deviceAddTitle;
}

//: setting_privacy_camera
- (NSString *)kContentColorItemData {
    if (!_kContentColorItemData) {
		NSString *origin = @"164006843d1c33253434292e271f303229362123391f23212d253221f9";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentColorItemData = [self StringFromRecentData:value];
    }
    return _kContentColorItemData;
}

//: /group/
- (NSString *)kName_toValue {
    if (!_kName_toValue) {
		NSString *origin = @"070d085c8247bd97225a65626863220f";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_toValue = [self StringFromRecentData:value];
    }
    return _kName_toValue;
}

//: warm_prompt
- (NSString *)kTitleShowString {
    if (!_kTitleShowString) {
		NSString *origin = @"0b5b070c4b17291c0617120415171412151914";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleShowString = [self StringFromRecentData:value];
    }
    return _kTitleShowString;
}

//: add_friend_activity_add_friend
- (NSString *)kTextEndName {
    if (!_kTextEndName) {
		NSString *origin = @"1e1904ca484b4b464d59504c554b46484a5b505d505b6046484b4b464d59504c554b04";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextEndName = [self StringFromRecentData:value];
    }
    return _kTextEndName;
}

//: activity_create_group_name_create_group
- (NSString *)kNameHideContent {
    if (!_kNameHideContent) {
		NSString *origin = @"274b0c5022692ddf8a395f831618291e2b1e292e1418271a16291a141c27242a25142316221a1418271a16291a141c27242a2559";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHideContent = [self StringFromRecentData:value];
    }
    return _kNameHideContent;
}

//: contact_tag_fragment_friend
- (NSString *)kContentToolString {
    if (!_kContentToolString) {
		NSString *origin = @"1b3a06087eea2935343a27293a253a272d252c38272d332b343a252c382f2b342a8e";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentToolString = [self StringFromRecentData:value];
    }
    return _kContentToolString;
}

//: contact_notice
- (NSString *)kContentValueString {
    if (!_kContentValueString) {
		NSString *origin = @"0e3a07695a2cfd2935343a27293a2534353a2f292b5c";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentValueString = [self StringFromRecentData:value];
    }
    return _kContentValueString;
}

//: jpg
- (NSString *)kTitleNameLoopData {
    if (!_kTitleNameLoopData) {
		NSString *origin = @"032e0cd1514b8cc80b99f81d3c4239cd";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleNameLoopData = [self StringFromRecentData:value];
    }
    return _kTitleNameLoopData;
}

//: #F7D2F3
- (NSString *)kName_sharedData {
    if (!_kName_sharedData) {
		NSString *origin = @"0759057ca3caeddeebd9edda89";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_sharedData = [self StringFromRecentData:value];
    }
    return _kName_sharedData;
}

//: #F6F6F6
- (NSString *)kTitle_messageData {
    if (!_kTitle_messageData) {
		NSString *origin = @"073a0a97a14020a532b1e90cfc0cfc0cfcec";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_messageData = [self StringFromRecentData:value];
    }
    return _kTitle_messageData;
}

//: tname
- (NSString *)kNameRedValue {
    if (!_kNameRedValue) {
		NSString *origin = @"053a0a8de175e0f9c3f63a3427332bd1";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameRedValue = [self StringFromRecentData:value];
    }
    return _kNameRedValue;
}

//: ic_none_ContactList
- (NSString *)kName_valueData {
    if (!_kName_valueData) {
		NSString *origin = @"132f0b0a57ef0cde493d5a3a34303f403f363014403f453234451d3a4445f5";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_valueData = [self StringFromRecentData:value];
    }
    return _kName_valueData;
}

//: invite_you_group
- (NSString *)kName_sendData {
    if (!_kName_sendData) {
		NSString *origin = @"10230afc8bf27d369819464b534651423c564c523c444f4c524dff";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_sendData = [self StringFromRecentData:value];
    }
    return _kName_sendData;
}

//: badge
- (NSString *)kTextLoopString {
    if (!_kTextLoopString) {
		NSString *origin = @"054a0593f618171a1d1bca";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextLoopString = [self StringFromRecentData:value];
    }
    return _kTextLoopString;
}

+ (NSData *)RecentDataToData:(NSString *)value {
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

//: contact_group
- (NSString *)kText_contentString {
    if (!_kText_contentString) {
		NSString *origin = @"0d0909c6f01ce521fb5a66656b585a6b565e69666c677f";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_contentString = [self StringFromRecentData:value];
    }
    return _kText_contentString;
}

//: contact_tag_fragment_cancel
- (NSString *)kText_withData {
    if (!_kText_withData) {
		NSString *origin = @"1b6307edd23ed1000c0b11fe0011fc11fe04fc030ffe040a020b11fc00fe0b000209ba";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_withData = [self StringFromRecentData:value];
    }
    return _kText_withData;
}

//: ids
- (NSString *)kTextWithTapString {
    if (!_kTextWithTapString) {
		NSString *origin = @"033904c4302b3af9";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextWithTapString = [self StringFromRecentData:value];
    }
    return _kTextWithTapString;
}

//: contact_fragment_group
- (NSString *)kContent_cropData {
    if (!_kContent_cropData) {
		NSString *origin = @"163904062a36353b282a3b262d39282e342c353b262e39363c37fb";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_cropData = [self StringFromRecentData:value];
    }
    return _kContent_cropData;
}

//: team_create_helper_create_failed
- (NSString *)kTitleImageStepTapData {
    if (!_kTitleImageStepTapData) {
		NSString *origin = @"201b05644d594a46524448574a46594a444d4a51554a574448574a46594a444b464e514a499b";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleImageStepTapData = [self StringFromRecentData:value];
    }
    return _kTitleImageStepTapData;
}

//: contact_add_friend
- (NSString *)kContentKeyString {
    if (!_kContentKeyString) {
		NSString *origin = @"121a034955545a47495a45474a4a454c584f4b544a71";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentKeyString = [self StringFromRecentData:value];
    }
    return _kContentKeyString;
}

//: #EEEEEE
- (NSString *)kNameValueString {
    if (!_kNameValueString) {
		NSString *origin = @"07240c57ebf3c77e12aa5d19ff21212121212107";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameValueString = [self StringFromRecentData:value];
    }
    return _kNameValueString;
}

//: E3F4AA
- (NSString *)kTextPlayData {
    if (!_kTextPlayData) {
		NSString *origin = @"06180dbd8737d91956f49650882d1b2e1c2929e6";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextPlayData = [self StringFromRecentData:value];
    }
    return _kTextPlayData;
}

//: tid
- (NSString *)kTitle_showName {
    if (!_kTitle_showName) {
		NSString *origin = @"03390b8fc15832415289b03b302b0e";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_showName = [self StringFromRecentData:value];
    }
    return _kTitle_showName;
}

//: group_info_activity_without
- (NSString *)kText_keyString {
    if (!_kText_keyString) {
		NSString *origin = @"1b4a0a621733fef969cb1d28252b26151f241c251517192a1f2c1f2a2f152d1f2a1e252b2aa6";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_keyString = [self StringFromRecentData:value];
    }
    return _kText_keyString;
}

//: notification
- (NSString *)kNameItemLoopTitle {
    if (!_kNameItemLoopTitle) {
		NSString *origin = @"0c28099759e511332b46474c413e413b394c414746e7";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameItemLoopTitle = [self StringFromRecentData:value];
    }
    return _kNameItemLoopTitle;
}

//: #5D5F66
- (NSString *)kNameNimData {
    if (!_kNameNimData) {
		NSString *origin = @"074403dff100f102f2f23a";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameNimData = [self StringFromRecentData:value];
    }
    return _kNameNimData;
}

//: #999999
- (NSString *)kNameDateContent {
    if (!_kNameDateContent) {
		NSString *origin = @"07630cc574c0d9fe4dbf690fc0d6d6d6d6d6d669";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameDateContent = [self StringFromRecentData:value];
    }
    return _kNameDateContent;
}

//: #2C3042
- (NSString *)kName_sharedRecentString {
    if (!_kName_sharedRecentString) {
		NSString *origin = @"071c06e4d90907162717141816f2";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_sharedRecentString = [self StringFromRecentData:value];
    }
    return _kName_sharedRecentString;
}

//: uid
- (NSString *)kTitle_hideString {
    if (!_kTitle_hideString) {
		NSString *origin = @"03160948b3e71a9ed45f534e03";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_hideString = [self StringFromRecentData:value];
    }
    return _kTitle_hideString;
}

//: #CCECFC
- (NSString *)kName_toolData {
    if (!_kName_toolData) {
		NSString *origin = @"075503ceeeeef0eef1ee49";
		NSData *data = [RecentData RecentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_toolData = [self StringFromRecentData:value];
    }
    return _kName_toolData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "USERContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "ActionViewController.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "USERContactUtilItem.h"
#import "BlendAt.h"
//: #import "USERContactDefines.h"
#import "USERContactDefines.h"
//: #import "USERGroupedContacts.h"
#import "MessageDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERCustomNotificationDB.h"
#import "ContentCell.h"
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "UIActionSheet+USERBlock.h"
#import "UIActionSheet+NameAddContent.h"
//: #import "USERContactAddFriendViewController.h"
#import "RecordViewController.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERContactUtilCell.h"
#import "ManView.h"
//: #import "USERContactDataCell.h"
#import "StandardContactDataCell.h"
//: #import "DisplayContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "USERUserUtil.h"
#import "ViewUtil.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERContactSearchViewController.h"
#import "CheckTableViewController.h"
//: #import "USERSystemNotificationViewController.h"
#import "ImageViewController.h"
//: #import "CCCBlackListViewController.h"
#import "CropViewController.h"
//: #import "USERContactHeaderView.h"
#import "CancelView.h"
//: #import "CCCContactScanViewController.h"
#import "MessageNameViewController.h"
//: #import "USERContactTableHeader.h"
#import "LabelColorView.h"
//: #import "USERContactGroupCell.h"
#import "MaxViewCell.h"
//: #import "CCCAddressBookManager.h"
#import "FlushManager.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "USERFriendListTableViewCell.h"
#import "CalendarViewCell.h"
//: #import "DisplayKitFileLocationHelper.h"
#import "PageHelper.h"

//: static const NSString *contactCellUtilIcon = @"icon";

static const NSString *dreamAccountEndPath (NSString *value) {
    if (value) {
        return [value.lowercaseString stringByAppendingString:@"comment"];
    }
    return  [RecentData sharedInstance].kNameModelValue;
};
//: static const NSString *contactCellUtilVC = @"vc";

static const NSString *dreamRetKey (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"edge"];
    }
    return  @"vc";
};
//: static const NSString *contactCellUtilBadge = @"badge";

static const NSString *mainMakeStr (NSString *value) {
    if (value) {
        return [value.lowercaseString stringByAppendingString:@"request"];
    }
    return  [RecentData sharedInstance].kTextLoopString;
};
//: static const NSString *contactCellUtilTitle = @"title";

static const NSString *app_oppositeData (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"block"];
    }
    return  @"title";
};
//: static const NSString *contactCellUtilUid = @"uid";

static const NSString *m_itemMsg (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"make"];
    }
    return  [RecentData sharedInstance].kTitle_hideString;
};
//: static const NSString *contactCellUtilSelectorName = @"selName";

static const NSString *m_memberValue (NSString *value) {
    if (value) {
        return [value.lowercaseString stringByAppendingString:@"step"];
    }
    return  [RecentData sharedInstance].kNameCropString;
};


//: @interface CCCContactsViewController ()<USERUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface ActionViewController ()<EasyLayDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: USERContactUtilCellDelegate,
ReplyDelegate,
//: DisplayContactDataCellDelegate,
DenominateDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: USERContactSearchDelegate> {
TargetDelegate> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: USERGroupedContacts *_contacts;
    MessageDataCollection *_contacts;
}


//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;
//: @property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnScan;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) NSArray * datas;
//: @property (nonatomic ,strong) NSMutableArray *tempOpenArray;
@property (nonatomic ,strong) NSMutableArray *tempOpenArray;


//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;
//: @property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *friendheaderView;

//: @property (nonatomic,strong) UIButton *btnCreatgroup;
@property (nonatomic,strong) UIButton *btnCreatgroup;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic,strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic,strong) TopYearView *loadingView;
//: @property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) UIView *groupheaderView;

//: @property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,strong) NSArray *advancedTeamArray;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation ActionViewController

//: -(void)creatTeamGroup{
-(void)powerhouse{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself origin:^(NSArray *uids, NSString *groupName, UIImage *avater) {
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
        //: option.postscript = [DisplayLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [MakeManager cell:[RecentData sharedInstance].kName_sendData];
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
                //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
                WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self groupShow:teamId instalment:option.name step_strong:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself redIn:option.name nameYear:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MakeManager cell:[RecentData sharedInstance].kTitleImageStepTapData] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
}

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

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id<USERContactItem> contactItem = (id<USERContactItem>)[_contacts memberOfIndex:indexPath];
        id<DoingAdd> contactItem = (id<DoingAdd>)[_contacts theGreen:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(windowText)] && [contactItem windowText].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem windowText]);
            //: SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
            [self performSelector:sel withObject:nil];
        }
        //: else if (contactItem.vcName.length) {
        else if (contactItem.vcName.length) {
            //: Class clazz = NSClassFromString(contactItem.vcName);
            Class clazz = NSClassFromString(contactItem.vcName);
            //: UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }else if([contactItem respondsToSelector:@selector(userId)]){
        }else if([contactItem respondsToSelector:@selector(userId)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.userId;
            //: [self enterPersonalCard:friendId];
            [self limit:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self direction:team];
        //: if (session) {
        if (session) {
            //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
            WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self steel];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (BOOL)ignoreCase {
- (BOOL)valueTip {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: -(void)addFriend{
-(void)chromaticColour{
    //: USERContactAddFriendViewController *vc = [[USERContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    RecordViewController *vc = [[RecordViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-140-(49.0f))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice comeDownSuperphylum]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[RecentData sharedInstance].kName_valueData];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[RecentData sharedInstance].kNameDateContent];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [DisplayLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MakeManager cell:[RecentData sharedInstance].kText_keyString];


    }
    //: return _defView;
    return _defView;
}

//: #pragma mark - USERUserListCellDelegate
#pragma mark - EasyLayDelegate
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)touchTingFastening:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
    WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - DisplayContactDataCellDelegate
#pragma mark - DenominateDelegate
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)instanceAvatar:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self limit:memberId];
}

//: - (void)handleNotice
- (void)infoIn
{
    //: USERSystemNotificationViewController *vc = [[USERSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    ImageViewController *vc = [[ImageViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)groupNotification{
-(void)gray{
    //: USERSystemNotificationViewController *vc = [[USERSystemNotificationViewController alloc] init];
    ImageViewController *vc = [[ImageViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self prepareData];
    [self steel];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self sendWith];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self present];
}

//: #pragma mark - USERContactHeaderDelegate
#pragma mark - LabelMax
//: -(void)searchClick{
-(void)beginSuper{
    //: [self searchAction:nil];
    [self actionOf:nil];
}


//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)before{
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

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - LengthDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)emptySkimEnable:(NSArray *)selectedContacts{

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

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
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
        editView.backgroundColor = [UIColor cell:[RecentData sharedInstance].kName_sharedData];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoIn)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[RecentData sharedInstance].kContentValueString];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString];
        //: labedit.text = [DisplayLanguageManager getTextWithKey:@"notification"];
        labedit.text = [MakeManager cell:[RecentData sharedInstance].kNameItemLoopTitle];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor cell:[RecentData sharedInstance].kTextPlayData];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(chromaticColour)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[RecentData sharedInstance].kContentKeyString];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString];
        //: lablang.text = [DisplayLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [MakeManager cell:[RecentData sharedInstance].kTextEndName];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _friendheaderView;
    return _friendheaderView;
}

//: -(void)blackFriendList{
-(void)sharedColor{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    CropViewController *vc = [[CropViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)enterPersonalCard:(NSString *)userId{
- (void)limit:(NSString *)userId{
    //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:userId];
    CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setUpNavItem];
    [self up];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString]; // 索引文字颜色
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
//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts groupCount];
        return [_contacts intervalSum];
    //: }else{
    }else{
        //: return _advancedTeamArray.count;
        return _advancedTeamArray.count;

    }
}


//: -(void)collectList{
-(void)press{

}


//: -(void)friendNotification{
-(void)tagAdd{
    //: USERSystemNotificationViewController *vc = [[USERSystemNotificationViewController alloc] init];
    ImageViewController *vc = [[ImageViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self tillIcon];
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
        editView.backgroundColor = [UIColor cell:[RecentData sharedInstance].kName_sharedData];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoIn)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[RecentData sharedInstance].kContentValueString];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString];
        //: labedit.text = [DisplayLanguageManager getTextWithKey:@"notification"];
        labedit.text = [MakeManager cell:[RecentData sharedInstance].kNameItemLoopTitle];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor cell:[RecentData sharedInstance].kName_toolData];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(streetwiseWith)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[RecentData sharedInstance].kText_contentString];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString];
        //: lablang.text = [DisplayLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [MakeManager cell:[RecentData sharedInstance].kNameHideContent];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)direction:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: -(void)newGroup{
-(void)streetwiseWith{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self origin:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView showPress];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self length:avater past:^(NSString *urlString) {

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
            //: option.postscript = [DisplayLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [MakeManager cell:[RecentData sharedInstance].kName_sendData];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView ingatheringBy];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
                    WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self groupShow:teamId instalment:option.name step_strong:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self redIn:option.name nameYear:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[MakeManager cell:[RecentData sharedInstance].kTitleImageStepTapData] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    //: return index + 1;
    return index + 1;
}


//: - (void)setUpNavItem
- (void)up
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice comeDownSuperphylum]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice comeDownSuperphylum]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor cell:[RecentData sharedInstance].kTitle_messageData];
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
    _btnfriend.backgroundColor = [UIColor cell:[RecentData sharedInstance].kText_targetString];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[DisplayLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[MakeManager cell:[RecentData sharedInstance].kContent_endValue] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(rangeClick:) forControlEvents:UIControlEventTouchUpInside];
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
    [_btngroup setTitleColor:[UIColor cell:[RecentData sharedInstance].kNameNimData] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[DisplayLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[MakeManager cell:[RecentData sharedInstance].kContent_cropData] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(rangeClick:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor cell:[RecentData sharedInstance].kNameValueString];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)containerLight {

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
                        MessageNameViewController *vc = [[MessageNameViewController alloc] init];
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
            MessageNameViewController *vc = [[MessageNameViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[RecentData sharedInstance].kTitleShowString] message:[MakeManager cell:[RecentData sharedInstance].kContentColorItemData] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[RecentData sharedInstance].kText_withData] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[RecentData sharedInstance].kText_sendValue] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts picture:section];
    //: }else{
    }else{
        //: return @"";
        return @"";
    }
}

//: - (NSMutableArray *)advancedDidFetchTeams {
- (NSMutableArray *)sendWith {
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

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)origin:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    MakeAction *config = [[MakeAction alloc] init];
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
    //: DisplayContactSelectViewController *vc = [[DisplayContactSelectViewController alloc] initWithConfig:config];
    RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc recent];
}

//: -(void)scan{
-(void)sessionScan{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    MessageNameViewController *vc = [[MessageNameViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)steel{
    //: _contacts = [[USERGroupedContacts alloc] init];
    _contacts = [[MessageDataCollection alloc] init];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: USERFriendListTableViewCell *cell = [USERFriendListTableViewCell cellWithTableView:tableView];
    CalendarViewCell *cell = [CalendarViewCell tingView:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts theGreen:indexPath];
        //: [cell refreshUser:contactItem];
        [cell numerosity:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell member:team];
    }

    //: return cell;
    return cell;
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)length:(UIImage *)image past:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image be:CGSizeMake(375, 375)];
    //: NSString *fileName = [DisplayKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [PageHelper item:[RecentData sharedInstance].kTitleNameLoopData];
    //: NSString *filePath = [[DisplayKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[PageHelper cell] stringByAppendingPathComponent:fileName];
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
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[MakeManager cell:[RecentData sharedInstance].kNameTargetValue]
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
        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[MakeManager cell:[RecentData sharedInstance].kNameTargetValue]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

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
           label.text = [_contacts picture:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor cell:[RecentData sharedInstance].kName_sharedRecentString];
           //: [view addSubview:label];
           [view addSubview:label];

           //: return view;
           return view;
       }
       //: return [[UIView alloc] init];
       return [[UIView alloc] init];
}

//: #pragma mark - USERContactUtilCellDelegate
#pragma mark - ReplyDelegate
//: - (void)onPressUtilImage:(NSString *)content{
- (void)teamMax:(NSString *)content{

}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)groupShow:(NSString *)teamID instalment:(NSString *)teamName step_strong:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[RecentData sharedInstance].kText_deviceAddTitle] = currentUserId;
    //: dict[@"type"] = type;
    dict[[RecentData sharedInstance].kContent_stepString] = type;
    //: dict[@"tname"] = teamName;
    dict[[RecentData sharedInstance].kNameRedValue] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[RecentData sharedInstance].kTitle_showName] = teamID;

}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onEnterMyComputer{
- (void)computer{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
    WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (ZMONCustomLoadingView *)loadingView
- (TopYearView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[TopYearView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}


//: -(void)getGroupData{
-(void)regain{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[RecentData sharedInstance].kName_toValue] query:nil showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[RecentData sharedInstance].kContent_recentName];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[RecentData sharedInstance].kContentTextPinSelectedValue];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[MakeManager cell:[RecentData sharedInstance].kContentToolString] forKey:@"name"];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[RecentData sharedInstance].kTextWithTapString];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict empty:@"data"];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];


}


//: - (void)searchAction:(id)sender {
- (void)actionOf:(id)sender {
    //: USERContactSearchViewController *vc = [[USERContactSearchViewController alloc] init];
    CheckTableViewController *vc = [[CheckTableViewController alloc] init];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts memberCountOfGroup:section];
        return [_contacts colorTo:section];
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)redIn:(NSString *)groupName nameYear:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[@"name"] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[RecentData sharedInstance].kName_fileContentString] query:dict showThan:NO green:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self tillIcon];
}

//: - (void)loadTheView
- (void)present
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts intervalSum]>0){
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

//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: if (self.isViewLoaded) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            //: [self prepareData];
            [self steel];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self tillIcon];
}
//: -(void)sliderButtonClick:(UIButton *)sender
-(void)rangeClick:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnfriend.backgroundColor = [UIColor cell:[RecentData sharedInstance].kText_targetString];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor cell:[RecentData sharedInstance].kNameNimData] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btngroup.backgroundColor = [UIColor cell:[RecentData sharedInstance].kText_targetString];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor cell:[RecentData sharedInstance].kNameNimData] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self present];

}



//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<DoingAdd> contactItem = (id<DoingAdd>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
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


//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)linkSession:(NSArray *)array {

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

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self tillIcon];
}

//: #pragma mark - USERContactSearchDelegate
#pragma mark - TargetDelegate
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice comeDownSuperphylum]-64-(49.0f)) style:UITableViewStyleGrouped];
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

        //: id<USERContactItem> contactItem = (id<USERContactItem>)[_contacts memberOfIndex:indexPath];
        id<DoingAdd> contactItem = (id<DoingAdd>)[_contacts theGreen:indexPath];
        //: if([contactItem respondsToSelector:@selector(userId)]){
        if([contactItem respondsToSelector:@selector(userId)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.userId;
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

//: - (void)refresh
- (void)tillIcon
{
    //: [self prepareData];
    [self steel];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: @end
@end
//: __SAVE__ ignore_string [444.4,523.5,414.4,755.7,405.4,546.5,777.7,410.4,417.4]
