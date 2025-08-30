
#import <Foundation/Foundation.h>

@interface MigrationData : NSObject

@end

@implementation MigrationData

//: ic_topno
+ (NSString *)kNameTeamData {
    /* static */ NSString *kNameTeamData = nil;
    if (!kNameTeamData) {
		NSString *origin = @"080e08f5651e57535b55516661626061b6";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameTeamData = [self StringFromMigrationData:value];
    }
    return kNameTeamData;
}

//: warm_prompt
+ (NSString *)kText_playData {
    /* static */ NSString *kText_playData = nil;
    if (!kText_playData) {
		NSString *origin = @"0b2403533d4e493b4c4e4b494c5004";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_playData = [self StringFromMigrationData:value];
    }
    return kText_playData;
}

//: globalsign
+ (NSString *)kTitleMigrationValue {
    /* static */ NSString *kTitleMigrationValue = nil;
    if (!kTitleMigrationValue) {
		NSString *origin = @"0a5b08a3c61badcc0c1114070611180e0c13ff";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMigrationValue = [self StringFromMigrationData:value];
    }
    return kTitleMigrationValue;
}

//: add_friend_activity_add_friend
+ (NSString *)kName_textData {
    /* static */ NSString *kName_textData = nil;
    if (!kName_textData) {
		NSString *origin = @"1e2904a4383b3b363d49403c453b36383a4b404d404b5036383b3b363d49403c453bfe";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_textData = [self StringFromMigrationData:value];
    }
    return kName_textData;
}

//: ic_delete
+ (NSString *)kNameScienceData {
    /* static */ NSString *kNameScienceData = nil;
    if (!kNameScienceData) {
		NSString *origin = @"095b08165f2665980e0804090a110a190a73";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScienceData = [self StringFromMigrationData:value];
    }
    return kNameScienceData;
}

//: ic_scan
+ (NSString *)kText_tapString {
    /* static */ NSString *kText_tapString = nil;
    if (!kText_tapString) {
		NSString *origin = @"070b066bb46b5e585468585663fd";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_tapString = [self StringFromMigrationData:value];
    }
    return kText_tapString;
}

//: tag_activity_set
+ (NSString *)kTitleScienceTeamData {
    /* static */ NSString *kTitleScienceTeamData = nil;
    if (!kTitleScienceTeamData) {
		NSString *origin = @"105f0cf912dd7340e784119b150208000204150a170a151a0014061577";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleScienceTeamData = [self StringFromMigrationData:value];
    }
    return kTitleScienceTeamData;
}

//: jpg
+ (NSString *)kName_cropColorHeightData {
    /* static */ NSString *kName_cropColorHeightData = nil;
    if (!kName_cropColorHeightData) {
		NSString *origin = @"035f06a80a5f0b1108a2";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_cropColorHeightData = [self StringFromMigrationData:value];
    }
    return kName_cropColorHeightData;
}

//: icon_session_list_empty
+ (NSString *)kTitle_keyAtData {
    /* static */ NSString *kTitle_keyAtData = nil;
    if (!kTitle_keyAtData) {
		NSString *origin = @"173907d635667d302a3635263a2c3a3a3036352633303a3b262c34373b4063";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_keyAtData = [self StringFromMigrationData:value];
    }
    return kTitle_keyAtData;
}

+ (NSString *)StringFromMigrationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MigrationDataToCache:data]];
}

//: tname
+ (NSString *)kTitle_rawData {
    /* static */ NSString *kTitle_rawData = nil;
    if (!kTitle_rawData) {
		NSString *origin = @"050f05acfd655f525e5696";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_rawData = [self StringFromMigrationData:value];
    }
    return kTitle_rawData;
}

//: invite_you_group
+ (NSString *)kText_selectedContent {
    /* static */ NSString *kText_selectedContent = nil;
    if (!kText_selectedContent) {
		NSString *origin = @"10590b64f122eccb1e536010151d101b0c0620161c060e19161c17e2";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_selectedContent = [self StringFromMigrationData:value];
    }
    return kText_selectedContent;
}

//: activity_user_profile_chat
+ (NSString *)kNameConsumptionTitle {
    /* static */ NSString *kNameConsumptionTitle = nil;
    if (!kNameConsumptionTitle) {
		NSString *origin = @"1a2b0599183638493e4b3e494e344a483a47344547443b3e413a34383d364928";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameConsumptionTitle = [self StringFromMigrationData:value];
    }
    return kNameConsumptionTitle;
}

//: home_create_group
+ (NSString *)kName_fantasticString {
    /* static */ NSString *kName_fantasticString = nil;
    if (!kName_fantasticString) {
		NSString *origin = @"113e0de73db7aff38dcc6375ef2a312f27212534272336272129343137327c";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fantasticString = [self StringFromMigrationData:value];
    }
    return kName_fantasticString;
}

//: notification
+ (NSString *)kNameMonthText {
    /* static */ NSString *kNameMonthText = nil;
    if (!kNameMonthText) {
		NSString *origin = @"0c3b074a5d53d03334392e2b2e2826392e34331f";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameMonthText = [self StringFromMigrationData:value];
    }
    return kNameMonthText;
}

//: [有人@你]
+ (NSString *)kTextCropData {
    /* static */ NSString *kTextCropData = nil;
    if (!kTextCropData) {
		NSString *origin = @"0c3f031ca75d4aa57b7b01a57e611e83";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextCropData = [self StringFromMigrationData:value];
    }
    return kTextCropData;
}

//: quick_icon
+ (NSString *)kText_standardString {
    /* static */ NSString *kText_standardString = nil;
    if (!kText_standardString) {
		NSString *origin = @"0a1d085f3524447d54584c464e424c46525177";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_standardString = [self StringFromMigrationData:value];
    }
    return kText_standardString;
}

//: type
+ (NSString *)kTitleHardwareString {
    /* static */ NSString *kTitleHardwareString = nil;
    if (!kTitleHardwareString) {
		NSString *origin = @"04050a6e93bdaa884f526f746b6007";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleHardwareString = [self StringFromMigrationData:value];
    }
    return kTitleHardwareString;
}

//: /user/checkcreateteam
+ (NSString *)kContentColorData {
    /* static */ NSString *kContentColorData = nil;
    if (!kContentColorData) {
		NSString *origin = @"151b03145a584a5714484d4a485048574a46594a594a465294";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentColorData = [self StringFromMigrationData:value];
    }
    return kContentColorData;
}

//: setting_privacy_camera
+ (NSString *)kTextDetailValue {
    /* static */ NSString *kTextDetailValue = nil;
    if (!kTextDetailValue) {
		NSString *origin = @"16260afb057bfd3ffaf34d3f4e4e434841394a4c43503b3d53393d3b473f4c3bea";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextDetailValue = [self StringFromMigrationData:value];
    }
    return kTextDetailValue;
}

//: home_add_friend
+ (NSString *)kTextStopValue {
    /* static */ NSString *kTextStopValue = nil;
    if (!kTextStopValue) {
		NSString *origin = @"0f230c3a060935f67169c5b6454c4a423c3e41413c434f46424b4177";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStopValue = [self StringFromMigrationData:value];
    }
    return kTextStopValue;
}

//: my_computer
+ (NSString *)kContent_monthValue {
    /* static */ NSString *kContent_monthValue = nil;
    if (!kContent_monthValue) {
		NSString *origin = @"0b410545d82c381e222e2c2f3433243187";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_monthValue = [self StringFromMigrationData:value];
    }
    return kContent_monthValue;
}

//: no_conversation
+ (NSString *)kNameWheatRecentData {
    /* static */ NSString *kNameWheatRecentData = nil;
    if (!kNameWheatRecentData) {
		NSString *origin = @"0f1c05a7f45253434753525a49565745584d53527e";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameWheatRecentData = [self StringFromMigrationData:value];
    }
    return kNameWheatRecentData;
}

//: (未连接)
+ (NSString *)kNameViolationString {
    /* static */ NSString *kNameViolationString = nil;
    if (!kNameViolationString) {
		NSString *origin = @"0b220b4ce8d3f0ccd3901b06c47a88c69d7cc46c830780";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameViolationString = [self StringFromMigrationData:value];
    }
    return kNameViolationString;
}

//: home_notice
+ (NSString *)kTitleToolString {
    /* static */ NSString *kTitleToolString = nil;
    if (!kTitleToolString) {
		NSString *origin = @"0b4c052a7d1c232119132223281d171993";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleToolString = [self StringFromMigrationData:value];
    }
    return kTitleToolString;
}

//: ic_distrub
+ (NSString *)kText_withValue {
    /* static */ NSString *kText_withValue = nil;
    if (!kText_withValue) {
		NSString *origin = @"0a4b05efa41e1814191e2829272a171f";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_withValue = [self StringFromMigrationData:value];
    }
    return kText_withValue;
}

//: #5D5F66
+ (NSString *)kName_shoppingText {
    /* static */ NSString *kName_shoppingText = nil;
    if (!kName_shoppingText) {
		NSString *origin = @"07350568beee000f00110101d0";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_shoppingText = [self StringFromMigrationData:value];
    }
    return kName_shoppingText;
}

//: activity_create_group_name_create_group
+ (NSString *)kTitle_recentAddName {
    /* static */ NSString *kTitle_recentAddName = nil;
    if (!kTitle_recentAddName) {
		NSString *origin = @"275e06985c240305160b180b161b010514070316070109141117120110030f0701051407031607010914111712c2";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_recentAddName = [self StringFromMigrationData:value];
    }
    return kTitle_recentAddName;
}

//: code
+ (NSString *)kContent_currentString {
    /* static */ NSString *kContent_currentString = nil;
    if (!kContent_currentString) {
		NSString *origin = @"04160c9cab306bc46c4113674d594e4f31";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_currentString = [self StringFromMigrationData:value];
    }
    return kContent_currentString;
}

+ (NSData *)MigrationDataToData:(NSString *)value {
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

//: (连接中)
+ (NSString *)kNameQueryedShowData {
    /* static */ NSString *kNameQueryedShowData = nil;
    if (!kNameQueryedShowData) {
		NSString *origin = @"0b1f096828ef0c293b09c9a07fc76f86c5998e0ab4";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameQueryedShowData = [self StringFromMigrationData:value];
    }
    return kNameQueryedShowData;
}

//: please_contact_your_administrator
+ (NSString *)kTextRetireName {
    /* static */ NSString *kTextRetireName = nil;
    if (!kTextRetireName) {
		NSString *origin = @"213504ad3b37302c3e302a2e3a393f2c2e3f2a443a403d2a2c2f383439343e3f3d2c3f3a3d84";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRetireName = [self StringFromMigrationData:value];
    }
    return kTextRetireName;
}

//: #875FFA
+ (NSString *)kTitle_standardData {
    /* static */ NSString *kTitle_standardData = nil;
    if (!kTitle_standardData) {
		NSString *origin = @"074e0a9698f84341678ed5eae9e7f8f8f3e6";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_standardData = [self StringFromMigrationData:value];
    }
    return kTitle_standardData;
}

//: /team/create
+ (NSString *)kContent_keyText {
    /* static */ NSString *kContent_keyText = nil;
    if (!kContent_keyText) {
		NSString *origin = @"0c0a0dae1cd6d4a86e3f92551e256a5b57632559685b576a5b76";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_keyText = [self StringFromMigrationData:value];
    }
    return kContent_keyText;
}

//: tid
+ (NSString *)kTitle_chickValue {
    /* static */ NSString *kTitle_chickValue = nil;
    if (!kTitle_chickValue) {
		NSString *origin = @"030b07ac13544b695e5919";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_chickValue = [self StringFromMigrationData:value];
    }
    return kTitle_chickValue;
}

//: ic_add_fiend
+ (NSString *)kName_atContent {
    /* static */ NSString *kName_atContent = nil;
    if (!kName_atContent) {
		NSString *origin = @"0c2c0d65704b2e2c69a5849b063d3733353838333a3d3942382d";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_atContent = [self StringFromMigrationData:value];
    }
    return kName_atContent;
}

//: #999999
+ (NSString *)kTitle_viewData {
    /* static */ NSString *kTitle_viewData = nil;
    if (!kTitle_viewData) {
		NSString *origin = @"074807f0c90d1edbf1f1f1f1f1f1f1";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_viewData = [self StringFromMigrationData:value];
    }
    return kTitle_viewData;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)kContentErrorValue {
    /* static */ NSString *kContentErrorValue = nil;
    if (!kContentErrorValue) {
		NSString *origin = @"275b078702c2e31a180a17040e130b1404061b190e1b0e191e041a151114060904061b06190617040b060e110a095d";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentErrorValue = [self StringFromMigrationData:value];
    }
    return kContentErrorValue;
}

//: (同步数据)
+ (NSString *)kTitleRecordData {
    /* static */ NSString *kTitleRecordData = nil;
    if (!kTitleRecordData) {
		NSString *origin = @"0e3b069f54b2edaa5551ab726aab5a75ab5273ee89";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRecordData = [self StringFromMigrationData:value];
    }
    return kTitleRecordData;
}

//: ic_top
+ (NSString *)kTitle_textValue {
    /* static */ NSString *kTitle_textValue = nil;
    if (!kTitle_textValue) {
		NSString *origin = @"063d06b557d12c2622373233d0";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_textValue = [self StringFromMigrationData:value];
    }
    return kTitle_textValue;
}

//: ic_nodistrub
+ (NSString *)kName_viewValue {
    /* static */ NSString *kName_viewValue = nil;
    if (!kName_viewValue) {
		NSString *origin = @"0c0403655f5b6a6b60656f706e715e81";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_viewValue = [self StringFromMigrationData:value];
    }
    return kName_viewValue;
}

//: ic_create_chat
+ (NSString *)kTitle_alsoValue {
    /* static */ NSString *kTitle_alsoValue = nil;
    if (!kTitle_alsoValue) {
		NSString *origin = @"0e4b0878cf6e04b91e181418271a16291a14181d162906";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_alsoValue = [self StringFromMigrationData:value];
    }
    return kTitle_alsoValue;
}

//: #fffDisplay
+ (NSString *)kName_redData {
    /* static */ NSString *kName_redData = nil;
    if (!kName_redData) {
		NSString *origin = @"07040be40c788d16b1bd791f626262626262db";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_redData = [self StringFromMigrationData:value];
    }
    return kName_redData;
}

//: retracted_message
+ (NSString *)kName_tapValue {
    /* static */ NSString *kName_tapValue = nil;
    if (!kName_tapValue) {
		NSString *origin = @"115c092731fa69d0891609181605071809080311091717050b0905";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_tapValue = [self StringFromMigrationData:value];
    }
    return kName_tapValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)kTextFantasticString {
    /* static */ NSString *kTextFantasticString = nil;
    if (!kTextFantasticString) {
		NSString *origin = @"1b34061ab4ba2f3b3a402d2f402b402d332b323e2d3339313a402b2f2d3a2f31385c";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextFantasticString = [self StringFromMigrationData:value];
    }
    return kTextFantasticString;
}

//: owner
+ (NSString *)kText_crawWithData {
    /* static */ NSString *kText_crawWithData = nil;
    if (!kText_crawWithData) {
		NSString *origin = @"051f0786a8c2cc50584f46533b";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_crawWithData = [self StringFromMigrationData:value];
    }
    return kText_crawWithData;
}

//: quickchat
+ (NSString *)kNameScienceString {
    /* static */ NSString *kNameScienceString = nil;
    if (!kNameScienceString) {
		NSString *origin = @"0953092691f2ca575a1e2216101810150e2132";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScienceString = [self StringFromMigrationData:value];
    }
    return kNameScienceString;
}

//: fragment_contact_new_scan
+ (NSString *)kContentToothString {
    /* static */ NSString *kContentToothString = nil;
    if (!kContentToothString) {
		NSString *origin = @"195d0c6b249aedcb1fd695e70915040a1008111702061211170406170211081a021606041177";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentToothString = [self StringFromMigrationData:value];
    }
    return kContentToothString;
}

//: team_create_helper_create_failed
+ (NSString *)kText_toValue {
    /* static */ NSString *kText_toValue = nil;
    if (!kText_toValue) {
		NSString *origin = @"20540df06e0feeffd76bed5fca20110d190b0f1e110d20110b1411181c111e0b0f1e110d20110b120d1518111089";
		NSData *data = [MigrationData MigrationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_toValue = [self StringFromMigrationData:value];
    }
    return kText_toValue;
}

+ (Byte *)MigrationDataToCache:(Byte *)data {
    int loopShallow = data[0];
    Byte bridge = data[1];
    int consumption = data[2];
    for (int i = consumption; i < consumption + loopShallow; i++) {
        int value = data[i] + bridge;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[consumption + loopShallow] = 0;
    return data + consumption;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TopViewController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionListViewController.h"
#import "TopViewController.h"
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "USERListHeader.h"
#import "FlipRecordView.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "USERMessageUtil.h"
#import "PrimrosePathUtil.h"
//: #import "NSString+USER.h"
#import "NSString+Turn.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <Toast/UIView+Toast.h>
#import <Toast/UIView+Toast.h>
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "USERContactAddFriendViewController.h"
#import "RecordViewController.h"
//: #import "CCCContactScanViewController.h"
#import "MessageNameViewController.h"
//: #import "DisplayContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "USERSystemSignNotificationSheet.h"
#import "LabelView.h"
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "DisplayTextHighlight.h"
#import "SpectralColorTitleHighlight.h"
//: #import "DisplayInputEmoticonParser.h"
#import "MessageParser.h"
//: #import "DisplayInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "USERSystemNotificationViewController.h"
#import "ImageViewController.h"
//: #import "USERNotificationView.h"
#import "ResultView.h"
//: #import "UIButton+Badge.h"
#import "UIButton+PlaceContent.h"
//: #import "CCCContactsViewController.h"
#import "ActionViewController.h"
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"
//: #import "DisplayKitFileLocationHelper.h"
#import "PageHelper.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "BeggarMyNeighbourPolicyView.h"

//: @interface USERSessionListViewController ()<NIMLoginManagerDelegate,USERListHeaderDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,USERSystemSignNotificationDelegate,NIMSystemNotificationManagerDelegate>
@interface TopViewController ()<NIMLoginManagerDelegate,ControlDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,PageRow,NIMSystemNotificationManagerDelegate>

//: @property (nonatomic, strong) UIButton *mesBtn;
@property (nonatomic, strong) UIButton *mesBtn;
/** 下拉菜单 */

//: @property (nonatomic, strong) NSString *creatTeam;
@property (nonatomic, strong) NSString *creatTeam;
//: @property (nonatomic,strong) USERListHeader *header;
@property (nonatomic,strong) FlipRecordView *header;

//: @property (nonatomic,assign) BOOL supportsForceTouch;
@property (nonatomic,assign) BOOL supportsForceTouch;

//: @property (nonatomic, strong) USERNotificationView *noticeView;
@property (nonatomic, strong) ResultView *noticeView;
;@property (nonatomic, strong) FFDropDownMenuView *dropdownMenu;
//: @property (nonatomic, strong) UIView *reqView;
@property (nonatomic, strong) UIView *reqView;

//: @property (nonatomic, strong) UIButton *resqBtn;
@property (nonatomic, strong) UIButton *resqBtn;

//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) BeggarMyNeighbourPolicyView *policyView;
//: @property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;
@property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;

//: @property (nonatomic,strong) NSMutableDictionary *previews;
@property (nonatomic,strong) NSMutableDictionary *previews;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) TopYearView *loadingView;

//: @property (nonatomic, strong) UIButton *QuickChatBtn;
@property (nonatomic, strong) UIButton *QuickChatBtn;


//: @end
@end

//: @implementation USERSessionListViewController
@implementation TopViewController

//: - (UIButton *)QuickChatBtn
- (UIButton *)QuickChatBtn
{
    //: if (!_QuickChatBtn) {
    if (!_QuickChatBtn) {
        //: _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        //: [_QuickChatBtn setImage:[UIImage imageNamed:@"quick_icon"] forState:UIControlStateNormal];
        [_QuickChatBtn setImage:[UIImage imageNamed:[MigrationData kText_standardString]] forState:UIControlStateNormal];
        //: [_QuickChatBtn addTarget:self action:@selector(handlerQuickChat) forControlEvents:UIControlEventTouchUpInside];
        [_QuickChatBtn addTarget:self action:@selector(handlerReadEnable) forControlEvents:UIControlEventTouchUpInside];
        //: _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_QuickChatBtn setTitle:[DisplayLanguageManager getTextWithKey:@"quickchat"] forState:UIControlStateNormal];
        [_QuickChatBtn setTitle:[MakeManager cell:[MigrationData kNameScienceString]] forState:UIControlStateNormal];
        //: [_QuickChatBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_QuickChatBtn byViewSpace:(MKButtonEdgeInsetsStyleLeft) toolCell:10];
        //: _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        //: _QuickChatBtn.layer.cornerRadius = 20;
        _QuickChatBtn.layer.cornerRadius = 20;
        //: _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        //: _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        //: _QuickChatBtn.layer.shadowOpacity = 1;
        _QuickChatBtn.layer.shadowOpacity = 1;
        //: _QuickChatBtn.layer.shadowRadius = 12;
        _QuickChatBtn.layer.shadowRadius = 12;
    }
    //: return _QuickChatBtn;
    return _QuickChatBtn;
}

//: - (void)quickChatpresentMemberSelector:(ContactSelectFinishBlock) block{
- (void)comment:(ContactSelectFinishBlock) block{
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
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //初始化联系人选择器
    //: DisplayContactSelectViewController *vc = [[DisplayContactSelectViewController alloc] initWithConfig:config];
    RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc recent];
}

//: -(void)checkCreateTeam{
-(void)societalMetric{
    //: __weak typeof(self) weakself = self;
    __weak typeof(self) weakself = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkcreateteam"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[MigrationData kContentColorData]] query:nil showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[MigrationData kContent_currentString]];
        //: weakself.creatTeam = code;
        weakself.creatTeam = code;
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (ZMONPrivacyPolicyView *)policyView
- (BeggarMyNeighbourPolicyView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[BeggarMyNeighbourPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _policyView.hidden = YES;
    }
    //: return _policyView;
    return _policyView;
}

//: - (void)handlerQuickChat
- (void)handlerReadEnable
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self quickChatpresentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self comment:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if(uids.count>1){
        if(uids.count>1){
            //: NSString *groupName = @"";
            NSString *groupName = @"";
            //: NSMutableArray *nameArray = [NSMutableArray array];
            NSMutableArray *nameArray = [NSMutableArray array];
            //: for (NSString *userId in uids) {
            for (NSString *userId in uids) {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: [nameArray addObject:user.userInfo.nickName];
                [nameArray addObject:user.userInfo.nickName];
            }

            //: NSArray *firstFourNames = nil;
            NSArray *firstFourNames = nil;
            // 确保数组至少有 4 个元素，避免越界
            //: if (nameArray.count >= 4) {
            if (nameArray.count >= 4) {
                //: firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
                firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
            //: } else {
            } else {
                //: firstFourNames = nameArray; 
                firstFourNames = nameArray; // 如果不足 4 个，就取全部
            }

            // 拼接成字符串，用逗号分隔
            //: groupName = [firstFourNames componentsJoinedByString:@", "];
            groupName = [firstFourNames componentsJoinedByString:@", "];

            //: NSLog(@"前 4 个名字: %@", groupName);

            //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = groupName;
            option.name = groupName;
            //: option.avatarUrl = @"";
            option.avatarUrl = @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [DisplayLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [MakeManager cell:[MigrationData kText_selectedContent]];
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
                    [self valueType:teamId anyView:option.name from:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self pinText:option.name vergeId:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[MakeManager cell:[MigrationData kText_toValue]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];

        //: }else if(uids.count == 1){
        }else if(uids.count == 1){

            //: NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
            WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }

        }
    //: ];
    ];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)pledge:(ContactSelectFinishBlock) block{
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

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
//    CGFloat width = SCREEN_WIDTH/4;
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;
}

//: - (void)setUpNavItem{
- (void)hide{

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 180)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum], [[UIScreen mainScreen] bounds].size.width, 180)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"activity_user_profile_chat"];
    labtitle.text = [MakeManager cell:[MigrationData kNameConsumptionTitle]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    //: [moreBtn addTarget:self action:@selector(requestAuthorizationForVideo) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn addTarget:self action:@selector(containerLight) forControlEvents:UIControlEventTouchUpInside];
    //: [moreBtn setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [moreBtn setImage:[UIImage imageNamed:[MigrationData kText_tapString]] forState:UIControlStateNormal];
    //: moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: moreBtn.layer.cornerRadius = 16;
    moreBtn.layer.cornerRadius = 16;
    //: moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    //: moreBtn.layer.shadowOpacity = 1;
    moreBtn.layer.shadowOpacity = 1;
    //: moreBtn.layer.shadowRadius = 12;
    moreBtn.layer.shadowRadius = 12;
    //: [topview addSubview:moreBtn];
    [topview addSubview:moreBtn];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    //: [topview addSubview:box1];
    [topview addSubview:box1];
    //: box1.userInteractionEnabled = YES;
    box1.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddfriend)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(itemInfo)];
    //: [box1 addGestureRecognizer:singleTap1];
    [box1 addGestureRecognizer:singleTap1];
    //: UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_add_friend"]];
    UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MigrationData kTextStopValue]]];
    //: image1.frame = CGRectMake(0, 0, width+5, 116);
    image1.frame = CGRectMake(0, 0, width+5, 116);
    //: image1.contentMode = UIViewContentModeScaleAspectFill;
    image1.contentMode = UIViewContentModeScaleAspectFill;
    //: [box1 addSubview:image1];
    [box1 addSubview:image1];
    //: UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    //: label12.font = [UIFont systemFontOfSize:16.f];
    label12.font = [UIFont systemFontOfSize:16.f];
//    label12.textAlignment = NSTextAlignmentCenter;
    //: label12.textColor = [UIColor whiteColor];
    label12.textColor = [UIColor whiteColor];
    //: label12.text = [DisplayLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    label12.text = [MakeManager cell:[MigrationData kName_textData]];
    //: label12.numberOfLines = 0;
    label12.numberOfLines = 0;
    //: [box1 addSubview:label12];
    [box1 addSubview:label12];

    //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    //: [topview addSubview:box2];
    [topview addSubview:box2];
    //: box2.userInteractionEnabled = YES;
    box2.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddgroup)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerFromField)];
    //: [box2 addGestureRecognizer:singleTap2];
    [box2 addGestureRecognizer:singleTap2];

    //: UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_notice"]];
    UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MigrationData kTitleToolString]]];
    //: image2.frame = CGRectMake(0, 0, width-10, 52);
    image2.frame = CGRectMake(0, 0, width-10, 52);
    //: image2.contentMode = UIViewContentModeScaleAspectFill;
    image2.contentMode = UIViewContentModeScaleAspectFill;
    //: [box2 addSubview:image2];
    [box2 addSubview:image2];
    //: UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label2.font = [UIFont systemFontOfSize:16.f];
    label2.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label2.textColor = [UIColor whiteColor];
    label2.textColor = [UIColor whiteColor];
    //: label2.text = [DisplayLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    label2.text = [MakeManager cell:[MigrationData kTitle_recentAddName]];
    //: [box2 addSubview:label2];
    [box2 addSubview:label2];

    //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    //: [topview addSubview:box4];
    [topview addSubview:box4];

    //: UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_create_group"]];
    UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MigrationData kName_fantasticString]]];
    //: image3.frame = CGRectMake(0, 0, width-5, 52);
    image3.frame = CGRectMake(0, 0, width-5, 52);
    //: image3.contentMode = UIViewContentModeScaleAspectFill;
    image3.contentMode = UIViewContentModeScaleAspectFill;
    //: [box4 addSubview:image3];
    [box4 addSubview:image3];

    //: _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
    _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
//    [_resqBtn setImage:[UIImage imageNamed:@"home_create_group"] forState:UIControlStateNormal];
    //: [_resqBtn addTarget:self action:@selector(handlerNotice) forControlEvents:UIControlEventTouchUpInside];
    [_resqBtn addTarget:self action:@selector(tipComplete) forControlEvents:UIControlEventTouchUpInside];
     //: [box4 addSubview:_resqBtn];
     [box4 addSubview:_resqBtn];

    //: UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label3.font = [UIFont systemFontOfSize:16.f];
    label3.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label3.textColor = [UIColor whiteColor];
    label3.textColor = [UIColor whiteColor];
    //: label3.text = [DisplayLanguageManager getTextWithKey:@"notification"];
    label3.text = [MakeManager cell:[MigrationData kNameMonthText]];
    //: [box4 addSubview:label3];
    [box4 addSubview:label3];

    //: NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;

}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step {
- (void)onLogin:(NIMLoginStep)step {

    //: ((AppDelegate*)([UIApplication sharedApplication].delegate)).ontoOver = step;
    ((AppDelegate*)([UIApplication sharedApplication].delegate)).ontoOver = step;

    //: [super onLogin:step];
    [super onLogin:step];
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
            //: self.navigationItem.title = @"(未连接)".user_localized;
            self.navigationItem.title = [MigrationData kNameViolationString].nominate;
            //: break;
            break;
        //: case NIMLoginStepLinking:
        case NIMLoginStepLinking:
            //: self.navigationItem.title = @"(连接中)".user_localized;
            self.navigationItem.title = [MigrationData kNameQueryedShowData].nominate;
            //: break;
            break;
        //: case NIMLoginStepLinkOK:
        case NIMLoginStepLinkOK:
        //: case NIMLoginStepSyncOK:
        case NIMLoginStepSyncOK:
            //: self.navigationItem.title = @"";
            self.navigationItem.title = @"";
            //: break;
            break;
        //: case NIMLoginStepSyncing:
        case NIMLoginStepSyncing:
            //: self.navigationItem.title = @"(同步数据)".user_localized;
            self.navigationItem.title = [MigrationData kTitleRecordData].nominate;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header theKey:ListHeaderTypeNetStauts dogTag:@(step)];
    //: [self refreshSubview];
    [self row];
}

//: - (void)handlerRequests {
- (void)memberShould {
    //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _resqBtn.backgroundColor = [UIColor cell:[MigrationData kTitle_standardData]];
    //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor cell:[MigrationData kName_shoppingText]] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor clearColor];
    _mesBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = NO;
    self.noticeView.hidden = NO;
    //: self.tableView.hidden = YES;
    self.tableView.hidden = YES;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
}

//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent{
- (NSString *)languageUnitAndExecutiveSession:(NIMRecentSession *)recent{
    //: if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: return [DisplayLanguageManager getTextWithKey:@"my_computer"];
        return [MakeManager cell:[MigrationData kContent_monthValue]];
    }
    //: return [super nameForRecentSession:recent];
    return [super languageUnitAndExecutiveSession:recent];
}
//: - (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
    //: UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;

    //: return nil;
    return nil;
}
//: - (void)handlerNotice {
- (void)tipComplete {
    //: USERSystemNotificationViewController *vc = [[USERSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    ImageViewController *vc = [[ImageViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)leftAction {
- (void)blockEconomy {
    //: [self requestAuthorizationForVideo];
    [self containerLight];
}

//: - (UIImage *)imageWithView:(UIView *)view {
- (UIImage *)memoryImageView:(UIView *)view {
    //: UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    //: [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return image;
    return image;
}


//: - (void)viewDidLoad{
- (void)viewDidLoad{
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;
    self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];

    //: self.definesPresentationContext = YES;
    self.definesPresentationContext = YES;
    //: [self setUpNavItem];
    [self hide];

    /** 初始化下拉菜单 */
//    [self setupDropDownMenu];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
    contentView.backgroundColor = [UIColor cell:[MigrationData kName_redData]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    //: [contentView addSubview:self.tableView];
    [contentView addSubview:self.tableView];

    //: [self.view addSubview:self.QuickChatBtn];
    [self.view addSubview:self.QuickChatBtn];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: self.header = [[USERListHeader alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    self.header = [[FlipRecordView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: self.emptyImageView = [[UIImageView alloc] init];
    self.emptyImageView = [[UIImageView alloc] init];
    //: self.emptyImageView.hidden = YES;
    self.emptyImageView.hidden = YES;
    //: self.emptyImageView.image = [UIImage imageNamed:@"icon_session_list_empty"];
    self.emptyImageView.image = [UIImage imageNamed:[MigrationData kTitle_keyAtData]];
    //: [self.view addSubview:self.emptyImageView];
    [self.view addSubview:self.emptyImageView];
    //: [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.centerY.mas_offset(0).mas_offset(-50);
        make.centerY.mas_offset(0).mas_offset(-50);
        //: make.width.mas_equalTo(213);
        make.width.mas_equalTo(213);
        //: make.height.mas_offset(148);
        make.height.mas_offset(148);
    //: }];
    }];

    //: self.emptyTipLabel = [[UILabel alloc] init];
    self.emptyTipLabel = [[UILabel alloc] init];
    //: self.emptyTipLabel.hidden = YES;
    self.emptyTipLabel.hidden = YES;
    //: self.emptyTipLabel.text = [DisplayLanguageManager getTextWithKey:@"no_conversation"];
    self.emptyTipLabel.text = [MakeManager cell:[MigrationData kNameWheatRecentData]];//@"还没有会话，在通讯录中找个人聊聊吧".user_localized;
    //: self.emptyTipLabel.numberOfLines = 0;
    self.emptyTipLabel.numberOfLines = 0;
    //: self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    //: self.emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    self.emptyTipLabel.textColor = [UIColor cell:[MigrationData kTitle_viewData]];
    //: self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.emptyTipLabel];
    [self.view addSubview:self.emptyTipLabel];
    //: [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(self.emptyImageView);
        make.centerX.mas_equalTo(self.emptyImageView);
        //: make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        //: make.height.mas_equalTo(60);
        make.height.mas_equalTo(60);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
    //: }];
    }];

    //: if(![[NIMUserDefaults standardUserDefaults].yspop isEqualToString:@"1"]){
    if(![[TableContext name].yspop isEqualToString:@"1"]){
        //: UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        //: [window addSubview:self.policyView];
        [window addSubview:self.policyView];
    }


    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [BlendView worldwideTagConfig:^(NSDictionary * _Nonnull configDict) {
        //: if (configDict.allKeys.count > 0) {
        if (configDict.allKeys.count > 0) {
            //: NSString *globalsign = [configDict newStringValueForKey:@"globalsign"];
            NSString *globalsign = [configDict comment:[MigrationData kTitleMigrationValue]];
            //: if (globalsign.integerValue > 0) {
            if (globalsign.integerValue > 0) {
                //: USERSystemSignNotificationSheet *sheet = [[USERSystemSignNotificationSheet alloc] initWithFrame:self.view.bounds dictionary:@{}];
                LabelView *sheet = [[LabelView alloc] initWithCenter:self.view.bounds with:@{}];
                //: sheet.delegate = self;
                sheet.delegate = self;
                //: [sheet show];
                [sheet canBy];
            }
        }
    //: }];
    }];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;
            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: }];
            }];
        //: });
        });
}

//: - (void)onMultiLoginClientsChanged
- (void)onMultiLoginClientsChanged
{
//    [self.header refreshWithType:ListHeaderTypeLoginClients value:[NIMSDK sharedSDK].loginManager.currentLoginClients];
//    [self refreshSubview];
}

//: - (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        //: [self unregisterForPreviewingWithContext:preview];
        [self unregisterForPreviewingWithContext:preview];
        //: [self.previews removeObjectForKey:@(indexPath.section)];
        [self.previews removeObjectForKey:@(indexPath.section)];
    }
}

//: - (NIMMessage *)lastMessageWithNoRevocationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)showStatus:(NIMMessage *)recentMsg {

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
        if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
            //: return [self lastMessageWithNoRevocationMessage:msg];
            return [self showStatus:msg];
        }
    }
    //: return msg;
    return msg;
}

//: - (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
- (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
{
    //: self.stickTopInfos[removedInfo.session] = nil;
    self.stickTopInfos[removedInfo.session] = nil;
    //: [self refresh];
    [self character];
}

//: - (void)onSelectedRecent:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath{
- (void)graduatedTable:(NIMRecentSession *)recent caterer:(NSIndexPath *)indexPath{
    //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:recent.session];
    WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:recent.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
- (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
{
    //: if (response.hasChange) {
    if (response.hasChange) {
        //: [self.stickTopInfos removeAllObjects];
        [self.stickTopInfos removeAllObjects];
        //: [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: self.stickTopInfos[obj.session] = obj;
            self.stickTopInfos[obj.session] = obj;
        //: }];
        }];
        //: [self refresh];
        [self character];
    }
}

//: - (NSMutableAttributedString *)transformEmojiDescToEomjiImageWithAttributedString:(NSAttributedString *)attributedString {
- (NSMutableAttributedString *)chromaticMonth:(NSAttributedString *)attributedString {
    // 匹配 [表情]
    //: NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    //: if (attrM.length > 0) {
    if (attrM.length > 0) {

        //: NSArray<NSTextCheckingResult *> *emoticonResults = [[USERSessionListViewController regexEmoticon] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        NSArray<NSTextCheckingResult *> *emoticonResults = [[TopViewController data] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        //: UIFont *fontSize = [UIFont systemFontOfSize:13];
        UIFont *fontSize = [UIFont systemFontOfSize:13];
        //: NSTextAlignment textAlignment = attrM.yy_alignment;
        NSTextAlignment textAlignment = attrM.yy_alignment;
        //: CGFloat lineSpacing = attrM.yy_lineSpacing;
        CGFloat lineSpacing = attrM.yy_lineSpacing;

        //: [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
        [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSRange range = emo.range;
            NSRange range = emo.range;
            //: if (range.location == NSNotFound && range.length <= 1) return;
            if (range.location == NSNotFound && range.length <= 1) return;

            //: if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            //: if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            //: NSString *emoString = [attrM.string substringWithRange:range];
            NSString *emoString = [attrM.string substringWithRange:range];

            //: NIMInputEmoticon *emoticon = [[DisplayInputEmoticonManager sharedManager] emoticonByTag:emoString];
            BubbleNameReload *emoticon = [[IndexManager item] disable:emoString];

            //: UIImage *image = [UIImage nim_emoticonInKit:emoticon.filename];
            UIImage *image = [UIImage kitDirectionInward:emoticon.filename];

            //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            //: attachment.image = image;
            attachment.image = image;
            //: CGFloat emojiHeight = fontSize.lineHeight;
            CGFloat emojiHeight = fontSize.lineHeight;
            //: attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);
            attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);

            //: NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            //: [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            //: [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];
            [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];

            //: if (!image && emoticon.unicode){
            if (!image && emoticon.unicode){
                //: emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
                [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            }

            //: DisplayTextHighlight *highlight = [[DisplayTextHighlight alloc] init];
            SpectralColorTitleHighlight *highlight = [[SpectralColorTitleHighlight alloc] init];
            //: highlight.type = DisplayTextHighlightTypeEmoji;
            highlight.type = DisplayTextHighlightTypeEmoji;
            //: highlight.text = emoString;
            highlight.text = emoString;
            //: [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            //: if (image || (!image && emoticon.unicode)) {
            if (image || (!image && emoticon.unicode)) {
                //: [attrM replaceCharactersInRange:range withAttributedString:emoText];
                [attrM replaceCharactersInRange:range withAttributedString:emoText];
            }
        //: }];
        }];
        //: attrM.yy_font = fontSize;
        attrM.yy_font = fontSize;
        //: attrM.yy_alignment = textAlignment;
        attrM.yy_alignment = textAlignment;
        //: attrM.yy_lineSpacing = lineSpacing;
        attrM.yy_lineSpacing = lineSpacing;
    }
    //: return attrM;
    return attrM;
}


//: - (void)onTopRecentAtIndexPath:(NIMRecentSession *)recent
- (void)searchCourseOfActionTop:(NIMRecentSession *)recent
                   //: atIndexPath:(NSIndexPath *)indexPath
                   present:(NSIndexPath *)indexPath
                         //: isTop:(BOOL)isTop
                         ting:(BOOL)isTop
{
    //: if (isTop)
    if (isTop)
    {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
        [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[recent.session] = nil;
            self.stickTopInfos[recent.session] = nil;
            //: [self refresh];
            [self character];
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[newInfo.session] = newInfo;
            self.stickTopInfos[newInfo.session] = newInfo;
            //: [self refresh];
            [self character];
        //: }];
        }];
    }
}

/** 显示下拉菜单 */
//: - (void)showDropDownMenu {
- (void)all {
    //: [self.dropdownMenu showMenu];
    [self.dropdownMenu showMenu];
}


///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)itemSession:(NIMRecentSession *)recentSession; {
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: return isTop;
    return isTop;
}

//: - (void)onDeleteRecentAtIndexPath:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath
- (void)shank:(NIMRecentSession *)recent periodOfTime:(NSIndexPath *)indexPath
{
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    //: option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    //: [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
    [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: NSLog(@"deleteRecentSessionError:%@",error);
        //: if (!error) {
        if (!error) {
            //清理本地数据
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: self.recentSessions = [self customSortRecents:self.recentSessions];
            self.recentSessions = [self colorContainer:self.recentSessions];
            //: [self refresh];
            [self character];
        }
    //: }];
    }];

//    [manager deleteRecentSession:recent];

}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: [self refreshSubview];
    [self row];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)valueType:(NSString *)teamID anyView:(NSString *)teamName from:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[MigrationData kText_crawWithData]] = currentUserId;
    //: dict[@"type"] = type;
    dict[[MigrationData kTitleHardwareString]] = type;
    //: dict[@"tname"] = teamName;
    dict[[MigrationData kTitle_rawData]] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[MigrationData kTitle_chickValue]] = teamID;

}

//: - (void)addfriends {
- (void)light {
    //: USERContactAddFriendViewController *vc = [[USERContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    RecordViewController *vc = [[RecordViewController alloc] initWithNibName:nil bundle:nil];
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
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[MigrationData kText_playData]] message:[MakeManager cell:[MigrationData kTextDetailValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MigrationData kTextFantasticString]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MigrationData kTitleScienceTeamData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)coloration:(NIMRecentSession *)recent{
    //: NSAttributedString *content;
    NSAttributedString *content;
    //: if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    {
        //: NIMMessage *msg = recent.lastMessage;
        NIMMessage *msg = recent.lastMessage;
        //: if ([recent.lastMessage.text containsString:[DisplayLanguageManager getTextWithKey:@"retracted_message"]]) {
        if ([recent.lastMessage.text containsString:[MakeManager cell:[MigrationData kName_tapValue]]]) {
            //: msg = [self lastMessageWithNoRevocationMessage:recent.lastMessage];
            msg = [self showStatus:recent.lastMessage];
        }
        //: NSString *text = [USERMessageUtil messageContent:msg];
        NSString *text = [PrimrosePathUtil status:msg];
        //: if (recent.session.sessionType != NIMSessionTypeP2P)
        if (recent.session.sessionType != NIMSessionTypeP2P)
        {
            //: NSString *nickName = [USERSessionUtil showNick:msg.from inSession:msg.session];
            NSString *nickName = [SessionStandard hijabText:msg.from managerTeam:msg.session];
            //: text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
            text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        }
        //: content = [[NSAttributedString alloc] initWithString:text?:@""];
        content = [[NSAttributedString alloc] initWithString:text?:@""];
    }
    //: else
    else
    {
        //: content = [super contentForRecentSession:recent];
        content = [super coloration:recent];
    }
    //: NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    //: [self checkNeedAtTip:recent content:attContent];
    [self session:recent gammaHydroxybutyrate:attContent];
    //: [self checkOnlineState:recent content:attContent];
    [self indexOn:recent inscription:attContent];

    //: NSMutableAttributedString *resultS = [self transformEmojiDescToEomjiImageWithAttributedString:attContent];
    NSMutableAttributedString *resultS = [self chromaticMonth:attContent];

    //: return resultS;
    return resultS;
}

//: - (void)handlerMessage {
- (void)emptyMessage {
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor cell:[MigrationData kTitle_standardData]];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor cell:[MigrationData kName_shoppingText]] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor clearColor];
    _resqBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = YES;
    self.noticeView.hidden = YES;
    //: self.tableView.hidden = NO;
    self.tableView.hidden = NO;
}
//: - (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    //: UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    //: if ([touchCell isKindOfClass:[UITableViewCell class]]) {
    if ([touchCell isKindOfClass:[UITableViewCell class]]) {
        //: NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:recent.session];
        WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:recent.session];
        //: [self.navigationController showViewController:vc sender:nil];
        [self.navigationController showViewController:vc sender:nil];
    }
}
//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)colorContainer:(NSMutableArray *)recentSessions
{
    //: [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    //: return recentSessions;
    return recentSessions;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self loadStickTopSessions];
    [self flush];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self checkCreateTeam];
    [self societalMetric];
}

/** 获取菜单模型数组 */
//: - (NSArray *)getMenuModelsArray {
- (NSArray *)models {
    //菜单模型0
    //: NSString *add_friend = [DisplayLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    NSString *add_friend = [MakeManager cell:[MigrationData kName_textData]];
    //: FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:@"ic_add_fiend" menuBlock:^{
    FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:[MigrationData kName_atContent] menuBlock:^{
        //: USERContactAddFriendViewController *vc = [[USERContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
        RecordViewController *vc = [[RecordViewController alloc] initWithNibName:nil bundle:nil];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }];
    }];

    //: NSString *activity = [DisplayLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    NSString *activity = [MakeManager cell:[MigrationData kTitle_recentAddName]];

    //菜单模型1
    //: FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:@"ic_create_chat" menuBlock:^{
    FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:[MigrationData kTitle_alsoValue] menuBlock:^{
        //: if (_creatTeam.integerValue != 0) {
        if (_creatTeam.integerValue != 0) {
            //: [SVProgressHUD showMessage:[DisplayLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD firstTeam:[MakeManager cell:[MigrationData kTextRetireName]]];
        //: }else{
        }else{
            //: [self creatTeamGroup];
            [self humaneness];//创建群组
        }
    //: }];
    }];

    //菜单模型1
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[DisplayLanguageManager getTextWithKey:@"fragment_contact_new_scan"] menuItemIconName:@"ic_scan" menuBlock:^{
    FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[MakeManager cell:[MigrationData kContentToothString]] menuItemIconName:[MigrationData kText_tapString] menuBlock:^{
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [self requestAuthorizationForVideo];
        [self containerLight];
    //: }];
    }];

    //: NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    //: return menuModelArr;
    return menuModelArr;
}

//: - (void)loadStickTopSessions
- (void)flush
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
    [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
        //: __strong typeof(self) sself = wself;
        __strong typeof(self) sself = wself;
        //: if (!sself) return;
        if (!sself) return;
        //: sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        //: [sself refresh];
        [sself character];
    //: }];
    }];
}

//: - (void)checkOnlineState:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)indexOn:(NIMRecentSession *)recent inscription:(NSMutableAttributedString *)content
{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
//        NSString *state  = [SessionStandard onlineState:recent.session.sessionId detail:NO];
//        if (state.length) {
//            NSString *format = [NSString stringWithFormat:@"[%@] ",state];
//            NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:format attributes:nil];
//            [content insertAttributedString:atTip atIndex:0];
//        }
    }
}

//: - (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
- (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
{
    //: self.stickTopInfos[newInfo.session] = newInfo;
    self.stickTopInfos[newInfo.session] = newInfo;
    //: [self refresh];
    [self character];
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
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: if (recent.session.sessionType == NIMSessionTypeP2P) {
        if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: NSString *from = recent.session.sessionId;
            NSString *from = recent.session.sessionId;
            //: if ([ids containsObject:from]) {
            if ([ids containsObject:from]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }

    //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)title:(UIImage *)image addEnable:(void(^)(NSString *urlString ))complete {

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
    NSString *fileName = [PageHelper item:[MigrationData kName_cropColorHeightData]];
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
                [wself.view makeToast:[MakeManager cell:[MigrationData kContentErrorValue]]
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
        [self.view makeToast:[MakeManager cell:[MigrationData kContentErrorValue]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//: + (NSRegularExpression *)regexEmoticon {
+ (NSRegularExpression *)data {
    //: static NSRegularExpression *regex;
    static NSRegularExpression *regex;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
        regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
    //: });
    });
    //: return regex;
    return regex;
}

//: -(void)reloadUnreadCount{
-(void)value{
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];

    //: UINavigationController *nav = self.navigationController.viewControllers[0];
    UINavigationController *nav = self.navigationController.viewControllers[0];
    //: nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        //: [self.previews setObject:preview forKey:@(indexPath.section)];
        [self.previews setObject:preview forKey:@(indexPath.section)];
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
- (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
    //: if (error) {
    if (error) {
//        UIWindow *keyWindow = [UIApplication sharedApplication].windows.firstObject;
//        NSString *msg = [NSString stringWithFormat:@"session %@ type %@ mark fail.code:%@",
//                         session.sessionId, @(session.sessionType), @(error.code)];
//        [keyWindow makeToast:msg duration:2 position:CSToastPositionCenter];
    }
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {
        //: _previews = [[NSMutableDictionary alloc] init];
        _previews = [[NSMutableDictionary alloc] init];
        //: self.stickTopInfos = NSMutableDictionary.dictionary;
        self.stickTopInfos = NSMutableDictionary.dictionary;
        //: self.autoRemoveRemoteSession = [[USERBundleSetting sharedConfig] autoRemoveRemoteSession];
        self.autoRemoveRemoteSession = [[UserLabelMan user] successSession];
    }
    //: return self;
    return self;
}



//: - (USERNotificationView *)noticeView
- (ResultView *)noticeView
{
    //: if(!_noticeView){
    if(!_noticeView){
        //: _noticeView = [[USERNotificationView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        _noticeView = [[ResultView alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        //: _noticeView.hidden = YES;
        _noticeView.hidden = YES;
    }
    //: return _noticeView;
    return _noticeView;
}

//: -(void)moreClickDelegate{
-(void)takeAPowder{
    //: [self showDropDownMenu];
    [self all];
}

//: - (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES]; 
        [tableView setEditing:NO animated:YES]; // 这句很重要，退出编辑模式，隐藏左滑菜单

        //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        //: [self onDeleteRecentAtIndexPath:recentSession atIndexPath:indexPath];
        [self shank:recentSession periodOfTime:indexPath];
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];

        // 删除置顶
        //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        //: if (stickTopInfo) {
        if (stickTopInfo) {
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;

                //: if (!self) return;
                if (!self) return;
                //: if (!error) {
                if (!error) {
                    //: self.stickTopInfos[recentSession.session] = nil;
                    self.stickTopInfos[recentSession.session] = nil;
                }
            //: }];
            }];
        }
    //: }];
    }];

    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onTopRecentAtIndexPath:recentSession atIndexPath:indexPath isTop:isTop];
        [self searchCourseOfActionTop:recentSession present:indexPath ting:isTop];
    //: }];
    }];

    //: BOOL isDisnodistrub = NO;
    BOOL isDisnodistrub = NO;
    //: DisplayKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (recentSession.session.sessionType == NIMSessionTypeTeam) {
    if (recentSession.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recentSession.session.sessionId option:nil];
        info = [[Mortification text] ability:recentSession.session.sessionId naturalEvent_strong:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
        isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;

    //: } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
    } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
        //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = recentSession.session;
        option.session = recentSession.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recentSession.session.sessionId option:option];
        info = [[Mortification text] tingVoice:recentSession.session.sessionId keepingOption:option];
        //: isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
    }
    //: UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onDisnodistrubRecentAtIndexPath:recentSession isDis:isDisnodistrub];
        [self tapName:recentSession holderToDis:isDisnodistrub];
    //: }];
    }];

//    //只能设置背景颜色，图片，文字
    //: deleteAction1.backgroundColor = [UIColor whiteColor];
    deleteAction1.backgroundColor = [UIColor whiteColor];
    //: deleteAction1.image = [UIImage imageNamed:@"ic_delete"];
    deleteAction1.image = [UIImage imageNamed:[MigrationData kNameScienceData]];
//
    //: deleteAction2.backgroundColor = [UIColor whiteColor];
    deleteAction2.backgroundColor = [UIColor whiteColor];
    //: if(isTop){
    if(isTop){
        //: deleteAction2.image = [UIImage imageNamed:@"ic_topno"];
        deleteAction2.image = [UIImage imageNamed:[MigrationData kNameTeamData]];
    //: }else{
    }else{
        //: deleteAction2.image = [UIImage imageNamed:@"ic_top"];
        deleteAction2.image = [UIImage imageNamed:[MigrationData kTitle_textValue]];
    }


    //: deleteAction3.backgroundColor = [UIColor whiteColor];
    deleteAction3.backgroundColor = [UIColor whiteColor];
    //: if(isDisnodistrub){
    if(isDisnodistrub){
        //: deleteAction3.image = [UIImage imageNamed:@"ic_distrub"];
        deleteAction3.image = [UIImage imageNamed:[MigrationData kText_withValue]];
    //: }else{
    }else{
        //: deleteAction3.image = [UIImage imageNamed:@"ic_nodistrub"];
        deleteAction3.image = [UIImage imageNamed:[MigrationData kName_viewValue]];
    }
//    // 创建包含图片和文字的自定义视图
//    UIView *customView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView1.backgroundColor = [UIColor redColor];
//    // 图片
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView1.centerX = customView1.centerX;
//    imageView1.image = [UIImage imageNamed:@"ic_delete"];
//    [customView1 addSubview:imageView1];
//    // 文字
//    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label1.text = @"删除".nim_localized;
//    label1.textColor = [UIColor whiteColor];
//    label1.textAlignment = NSTextAlignmentCenter;
//    label1.font = [UIFont systemFontOfSize:12.0];
//    label1.centerX = customView1.centerX;
//    [customView1 addSubview:label1];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction1.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView1]];
//    // 创建包含图片和文字的自定义视图
//    UIView *customView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView2.backgroundColor = kCommonColor;
//    // 图片
//    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView2.centerX = customView2.centerX;
//    imageView2.image = [UIImage imageNamed:@"ic_top"];
//    [customView2 addSubview:imageView2];
//    // 文字
//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label2.text = isTop?@"取消置顶".nim_localized:@"置顶".nim_localized;
//    label2.textColor = [UIColor whiteColor];
//    label2.textAlignment = NSTextAlignmentCenter;
//    label2.font = [UIFont systemFontOfSize:12.0];
//    label2.centerX = customView2.centerX;
//    [customView2 addSubview:label2];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction2.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView2]];

//    // 创建包含图片和文字的自定义视图
//    UIView *customView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView3.backgroundColor = RGB_COLOR_String(@"#FFA339");
//    // 图片
//    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView3.centerX = customView3.centerX;
//    imageView3.image = [UIImage imageNamed:@"ic_nodistrub"];
//    [customView3 addSubview:imageView3];
//    // 文字
//    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label3.text = isDisnodistrub?LangKey(@"Block"):LangKey(@"unBlock");
//    label3.textColor = [UIColor whiteColor];
//    label3.textAlignment = NSTextAlignmentCenter;
//    label3.font = [UIFont systemFontOfSize:12.0];
//    label3.centerX = customView3.centerX;
//    [customView3 addSubview:label3];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction3.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView3]];

    //: NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    //: UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    //: actions.performsFirstActionWithFullSwipe = NO; 
    actions.performsFirstActionWithFullSwipe = NO; // 禁止侧滑无线拉伸
    //: return actions;
    return actions;
}

//: - (void)onSelectedAvatar:(NIMRecentSession *)recent
- (void)element:(NIMRecentSession *)recent
             //: atIndexPath:(NSIndexPath *)indexPath{
             cut:(NSIndexPath *)indexPath{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: UIViewController *vc;
        UIViewController *vc;
        //: vc = [[USERPersonalCardViewController alloc] initWithUserId:recent.session.sessionId];
        vc = [[CornerViewController alloc] initWithRestoreSession:recent.session.sessionId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



//: - (void)checkNeedAtTip:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)session:(NIMRecentSession *)recent gammaHydroxybutyrate:(NSMutableAttributedString *)content
{
    //: if ([USERSessionUtil recentSessionIsMark:recent type:USERRecentSessionMarkTypeAt]) {
    if ([SessionStandard name:recent argumentThread:USERRecentSessionMarkTypeAt]) {
        //: NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:@"[有人@你]".user_localized attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:[MigrationData kTextCropData].nominate attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        //: [content insertAttributedString:atTip atIndex:0];
        [content insertAttributedString:atTip atIndex:0];
    }
}


//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 偶现侧滑数组越界，但并没有发现并发问题，暂且防护
    //: return indexPath.section < self.recentSessions.count;
    return indexPath.section < self.recentSessions.count;
}


//: - (void)onDisnodistrubRecentAtIndexPath:(NIMRecentSession *)recent isDis:(BOOL)isDis
- (void)tapName:(NIMRecentSession *)recent holderToDis:(BOOL)isDis
{
    //: DisplayKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (recent.session.sessionType == NIMSessionTypeTeam) {
    if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
        info = [[Mortification text] ability:recent.session.sessionId naturalEvent_strong:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;
        notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;

        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
            //: [self refresh];
            [self character];
        //: }];
        }];
    //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
    } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = recent.session;
        option.session = recent.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
        info = [[Mortification text] tingVoice:recent.session.sessionId keepingOption:option];
//        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰

        //: [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
            //: [self refresh];
            [self character];
        //: }];
        }];
    }
//
//    if(!isDis){
//        [self reloadUnreadCount];
//    }


}

//: - (void)handlerAddfriend {
- (void)itemInfo {
    //: USERContactAddFriendViewController *vc = [[USERContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    RecordViewController *vc = [[RecordViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)pinText:(NSString *)groupName vergeId:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[@"name"] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[MigrationData kContent_keyText]] query:dict showThan:NO green:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)onTeamUsersSyncFinished:(BOOL)success
- (void)onTeamUsersSyncFinished:(BOOL)success
{
}

//: #pragma mark - 下拉菜单
#pragma mark - 下拉菜单

/** 初始化下拉菜单 */
//: - (void)setupDropDownMenu {
- (void)disableMessage {
    //: NSArray *modelsArray = [self getMenuModelsArray];
    NSArray *modelsArray = [self models];


    //: self.dropdownMenu = [FFDropDownMenuView new];
    self.dropdownMenu = [FFDropDownMenuView new];

     //进行属性的赋值

     //若使用默认CGFloat值     请使用 FFDefaultFloat          、或者无需进行赋值
     //若使用默认CGSize值      请使用 FFDefaultSize           、或者无需进行赋值
     //若使用默认Cell值        请使用 FFDefaultCell           、或者无需进行赋值
     //若使用默认Color值       请使用 FFDefaultColor          、或者无需进行赋值
     //若使用默认ScaleType值   请使用 FFDefaultMenuScaleType  、或者无需进行赋值


     /** 下拉菜单模型数组 */
     //: self.dropdownMenu.menuModelsArray = modelsArray;
     self.dropdownMenu.menuModelsArray = modelsArray;
     /** cell的类名 */
     //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     /** 菜单的宽度(若不设置，默认为 150) */
     //: self.dropdownMenu.menuWidth = 120;
     self.dropdownMenu.menuWidth = 120;
     /** 菜单的圆角半径(若不设置，默认为5) */
     //: self.dropdownMenu.menuCornerRadius = -10.0;
     self.dropdownMenu.menuCornerRadius = -10.0;
     /** 每一个选项的高度(若不设置，默认为40) */
     //: self.dropdownMenu.eachMenuItemHeight = 50;
     self.dropdownMenu.eachMenuItemHeight = 50;
     /** 菜单条离屏幕右边的间距(若不设置，默认为10) */
     //: self.dropdownMenu.menuRightMargin = 10;
     self.dropdownMenu.menuRightMargin = 10;
     /** 三角形颜色(若不设置，默认为白色) */
     //: self.dropdownMenu.triangleColor = [UIColor whiteColor];
     self.dropdownMenu.triangleColor = [UIColor whiteColor];
     /** 三角形相对于keyWindow的y值,也就是相对于屏幕顶部的y值(若不设置，默认为64) */
     //: self.dropdownMenu.triangleY = [UIDevice vg_statusBarHeight] +30;
     self.dropdownMenu.triangleY = [UIDevice comeDownSuperphylum] +30;
     /** 三角形距离屏幕右边的间距(若不设置，默认为20) */
     //: self.dropdownMenu.triangleRightMargin = 20;
     self.dropdownMenu.triangleRightMargin = 20;
     /** 三角形的size  size.width:代表三角形底部边长，size.Height:代表三角形的高度(若不设置，默认为CGSizeMake(15, 10)) */
     //: self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     /** 背景颜色开始时的透明度(还没展示menu的透明度)(若不设置，默认为0.02) */
     //: self.dropdownMenu.bgColorbeginAlpha = 0;
     self.dropdownMenu.bgColorbeginAlpha = 0;
     /** 背景颜色结束的的透明度(menu完全展示的透明度)(若不设置，默认为0.2) */
     //: self.dropdownMenu.bgColorEndAlpha = 0.4;
     self.dropdownMenu.bgColorEndAlpha = 0.4;
     /** 动画效果时间(若不设置，默认为0.2) */
     //: self.dropdownMenu.animateDuration = -10.0;
     self.dropdownMenu.animateDuration = -10.0;
     /** 菜单的伸缩类型 */
     //: self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;
     self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;

    //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCustomCell";
    self.dropdownMenu.cellClassName = @"ControlViewCell";

     //所有属性赋值完 一定要调用 setup
     //: [self.dropdownMenu setup];
     [self.dropdownMenu setup];

}

//: - (void)handlerAddgroup {
- (void)handlerFromField {
    //: [self creatTeamGroup];
    [self humaneness];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)refreshSubview{
- (void)row{
    //: self.header.top = [UIDevice vg_statusBarHeight]+180;
    self.header.top = [UIDevice comeDownSuperphylum]+180;
//    self.tableView.top = SCREEN_STATUS_HEIGHT +44;
//    CGFloat offset = self.view.safeAreaInsets.bottom;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, offset, 0);
//
//    self.tableView.height = self.view.height - self.tableView.top;

}

//: - (void)refresh{
- (void)character{
    //: [super refresh];
    [super character];
    //: self.emptyTipLabel.hidden = self.recentSessions.count;
    self.emptyTipLabel.hidden = self.recentSessions.count;
    //: self.emptyImageView.hidden = self.recentSessions.count;
    self.emptyImageView.hidden = self.recentSessions.count;
    //: self.addBtn.hidden = self.recentSessions.count;
    self.addBtn.hidden = self.recentSessions.count;

}
//: -(void)creatTeamGroup{
-(void)humaneness{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self pledge:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView showPress];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self title:avater addEnable:^(NSString *urlString) {

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
            option.postscript = [MakeManager cell:[MigrationData kText_selectedContent]];
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
                    [self valueType:teamId anyView:option.name from:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self pinText:option.name vergeId:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[MakeManager cell:[MigrationData kText_toValue]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: @end
@end
//: __SAVE__ ignore_string [417.4]
