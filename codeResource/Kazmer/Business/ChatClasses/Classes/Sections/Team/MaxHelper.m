
#import <Foundation/Foundation.h>

@interface EasyData : NSObject

@end

@implementation EasyData

+ (Byte *)EasyDataToCache:(Byte *)data {
    int pound = data[0];
    Byte vivid = data[1];
    int placeStory = data[2];
    for (int i = placeStory; i < placeStory + pound; i++) {
        int value = data[i] - vivid;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[placeStory + pound] = 0;
    return data + placeStory;
}

+ (NSString *)StringFromEasyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EasyDataToCache:data]];
}

//: ic_reminde_manager
+ (NSString *)kText_lowlyValue {
    /* static */ NSString *kText_lowlyValue = nil;
    if (!kText_lowlyValue) {
        Byte value[] = {18, 55, 5, 23, 14, 160, 154, 150, 169, 156, 164, 160, 165, 155, 156, 150, 164, 152, 165, 152, 158, 156, 169, 185};
        kText_lowlyValue = [self StringFromEasyData:value];
    }
    return kText_lowlyValue;
}

//: Group_Everyone
+ (NSString *)kTextIronValue {
    /* static */ NSString *kTextIronValue = nil;
    if (!kTextIronValue) {
        Byte value[] = {14, 33, 11, 46, 216, 201, 48, 26, 195, 78, 226, 104, 147, 144, 150, 145, 128, 102, 151, 134, 147, 154, 144, 143, 134, 56};
        kTextIronValue = [self StringFromEasyData:value];
    }
    return kTextIronValue;
}

//: ic_all
+ (NSString *)kNameSaveValue {
    /* static */ NSString *kNameSaveValue = nil;
    if (!kNameSaveValue) {
        Byte value[] = {6, 74, 11, 83, 10, 245, 216, 156, 182, 178, 74, 179, 173, 169, 171, 182, 182, 220};
        kNameSaveValue = [self StringFromEasyData:value];
    }
    return kNameSaveValue;
}

//: ic_yanzheng_yes
+ (NSString *)kNamePackOutdoorString {
    /* static */ NSString *kNamePackOutdoorString = nil;
    if (!kNamePackOutdoorString) {
        Byte value[] = {15, 32, 5, 19, 67, 137, 131, 127, 153, 129, 142, 154, 136, 133, 142, 135, 127, 153, 133, 147, 139};
        kNamePackOutdoorString = [self StringFromEasyData:value];
    }
    return kNamePackOutdoorString;
}

//: ic_all_yes
+ (NSString *)kContent_fanValue {
    /* static */ NSString *kContent_fanValue = nil;
    if (!kContent_fanValue) {
        Byte value[] = {10, 66, 8, 107, 28, 70, 2, 214, 171, 165, 161, 163, 174, 174, 161, 187, 167, 181, 61};
        kContent_fanValue = [self StringFromEasyData:value];
    }
    return kContent_fanValue;
}

//: ic_reminde_all_no
+ (NSString *)kName_varietyContent {
    /* static */ NSString *kName_varietyContent = nil;
    if (!kName_varietyContent) {
        Byte value[] = {17, 73, 7, 241, 14, 121, 118, 178, 172, 168, 187, 174, 182, 178, 183, 173, 174, 168, 170, 181, 181, 168, 183, 184, 156};
        kName_varietyContent = [self StringFromEasyData:value];
    }
    return kName_varietyContent;
}

//: ic_reminde_all
+ (NSString *)kTitle_subsidyName {
    /* static */ NSString *kTitle_subsidyName = nil;
    if (!kTitle_subsidyName) {
        Byte value[] = {14, 20, 11, 112, 124, 57, 187, 126, 210, 11, 217, 125, 119, 115, 134, 121, 129, 125, 130, 120, 121, 115, 117, 128, 128, 240};
        kTitle_subsidyName = [self StringFromEasyData:value];
    }
    return kTitle_subsidyName;
}

//: Allow_anyone
+ (NSString *)kName_gearData {
    /* static */ NSString *kName_gearData = nil;
    if (!kName_gearData) {
        Byte value[] = {12, 56, 11, 161, 59, 148, 157, 3, 20, 112, 16, 121, 164, 164, 167, 175, 151, 153, 166, 177, 167, 166, 157, 31};
        kName_gearData = [self StringFromEasyData:value];
    }
    return kName_gearData;
}

//: ic_all_no
+ (NSString *)kName_dealerString {
    /* static */ NSString *kName_dealerString = nil;
    if (!kName_dealerString) {
        Byte value[] = {9, 68, 12, 91, 68, 130, 19, 240, 9, 48, 166, 142, 173, 167, 163, 165, 176, 176, 163, 178, 179, 12};
        kName_dealerString = [self StringFromEasyData:value];
    }
    return kName_dealerString;
}

//: icon_team_manager
+ (NSString *)kTextDivineData {
    /* static */ NSString *kTextDivineData = nil;
    if (!kTextDivineData) {
        Byte value[] = {17, 37, 3, 142, 136, 148, 147, 132, 153, 138, 134, 146, 132, 146, 134, 147, 134, 140, 138, 151, 213};
        kTextDivineData = [self StringFromEasyData:value];
    }
    return kTextDivineData;
}

//: online_state_event_manager_unknown
+ (NSString *)kNamePlayerString {
    /* static */ NSString *kNamePlayerString = nil;
    if (!kNamePlayerString) {
        Byte value[] = {34, 20, 9, 139, 17, 178, 152, 162, 175, 131, 130, 128, 125, 130, 121, 115, 135, 136, 117, 136, 121, 115, 121, 138, 121, 130, 136, 115, 129, 117, 130, 117, 123, 121, 134, 115, 137, 130, 127, 130, 131, 139, 130, 98};
        kNamePlayerString = [self StringFromEasyData:value];
    }
    return kNamePlayerString;
}

//: group_info_activity_team_notify_all
+ (NSString *)kContentPrecedentUmBroadcastString {
    /* static */ NSString *kContentPrecedentUmBroadcastString = nil;
    if (!kContentPrecedentUmBroadcastString) {
        Byte value[] = {35, 22, 8, 177, 82, 49, 123, 220, 125, 136, 133, 139, 134, 117, 127, 132, 124, 133, 117, 119, 121, 138, 127, 140, 127, 138, 143, 117, 138, 123, 119, 131, 117, 132, 133, 138, 127, 124, 143, 117, 119, 130, 130, 101};
        kContentPrecedentUmBroadcastString = [self StringFromEasyData:value];
    }
    return kContentPrecedentUmBroadcastString;
}

//: group_member_info_activity_team_admin
+ (NSString *)kTitleFinStoryData {
    /* static */ NSString *kTitleFinStoryData = nil;
    if (!kTitleFinStoryData) {
        Byte value[] = {37, 3, 11, 89, 153, 110, 113, 41, 4, 179, 88, 106, 117, 114, 120, 115, 98, 112, 104, 112, 101, 104, 117, 98, 108, 113, 105, 114, 98, 100, 102, 119, 108, 121, 108, 119, 124, 98, 119, 104, 100, 112, 98, 100, 103, 112, 108, 113, 42};
        kTitleFinStoryData = [self StringFromEasyData:value];
    }
    return kTitleFinStoryData;
}

//: group_info_activity_close
+ (NSString *)kName_instructionValue {
    /* static */ NSString *kName_instructionValue = nil;
    if (!kName_instructionValue) {
        Byte value[] = {25, 13, 7, 122, 180, 3, 171, 116, 127, 124, 130, 125, 108, 118, 123, 115, 124, 108, 110, 112, 129, 118, 131, 118, 129, 134, 108, 112, 121, 124, 128, 114, 173};
        kName_instructionValue = [self StringFromEasyData:value];
    }
    return kName_instructionValue;
}

//: icon_team_creator
+ (NSString *)kContentHateData {
    /* static */ NSString *kContentHateData = nil;
    if (!kContentHateData) {
        Byte value[] = {17, 75, 3, 180, 174, 186, 185, 170, 191, 176, 172, 184, 170, 174, 189, 176, 172, 191, 186, 189, 173};
        kContentHateData = [self StringFromEasyData:value];
    }
    return kContentHateData;
}

//: No_Need_verification
+ (NSString *)kNameFlowerText {
    /* static */ NSString *kNameFlowerText = nil;
    if (!kNameFlowerText) {
        Byte value[] = {20, 77, 8, 230, 40, 31, 192, 199, 155, 188, 172, 155, 178, 178, 177, 172, 195, 178, 191, 182, 179, 182, 176, 174, 193, 182, 188, 187, 202};
        kNameFlowerText = [self StringFromEasyData:value];
    }
    return kNameFlowerText;
}

//: ic_yanzheng_no
+ (NSString *)kTextDiscoverString {
    /* static */ NSString *kTextDiscoverString = nil;
    if (!kTextDiscoverString) {
        Byte value[] = {14, 22, 13, 230, 12, 196, 106, 94, 150, 34, 39, 120, 252, 127, 121, 117, 143, 119, 132, 144, 126, 123, 132, 125, 117, 132, 133, 124};
        kTextDiscoverString = [self StringFromEasyData:value];
    }
    return kTextDiscoverString;
}

//: Need_verification
+ (NSString *)kTitle_deserveString {
    /* static */ NSString *kTitle_deserveString = nil;
    if (!kTitle_deserveString) {
        Byte value[] = {17, 89, 7, 104, 192, 37, 135, 167, 190, 190, 189, 184, 207, 190, 203, 194, 191, 194, 188, 186, 205, 194, 200, 199, 86};
        kTitle_deserveString = [self StringFromEasyData:value];
    }
    return kTitle_deserveString;
}

//: group_info_activity_open
+ (NSString *)kTitle_grateData {
    /* static */ NSString *kTitle_grateData = nil;
    if (!kTitle_grateData) {
        Byte value[] = {24, 93, 6, 145, 248, 212, 196, 207, 204, 210, 205, 188, 198, 203, 195, 204, 188, 190, 192, 209, 198, 211, 198, 209, 214, 188, 204, 205, 194, 203, 242};
        kTitle_grateData = [self StringFromEasyData:value];
    }
    return kTitle_grateData;
}

//: ic_guanliyuan
+ (NSString *)kTitleDiscoverData {
    /* static */ NSString *kTitleDiscoverData = nil;
    if (!kTitleDiscoverData) {
        Byte value[] = {13, 91, 3, 196, 190, 186, 194, 208, 188, 201, 199, 196, 212, 208, 188, 201, 40};
        kTitleDiscoverData = [self StringFromEasyData:value];
    }
    return kTitleDiscoverData;
}

//: group_info_activity_team_notify_mute
+ (NSString *)kTitleThereData {
    /* static */ NSString *kTitleThereData = nil;
    if (!kTitleThereData) {
        Byte value[] = {36, 62, 11, 78, 215, 46, 238, 21, 21, 166, 116, 165, 176, 173, 179, 174, 157, 167, 172, 164, 173, 157, 159, 161, 178, 167, 180, 167, 178, 183, 157, 178, 163, 159, 171, 157, 172, 173, 178, 167, 164, 183, 157, 171, 179, 178, 163, 197};
        kTitleThereData = [self StringFromEasyData:value];
    }
    return kTitleThereData;
}

//: group_info_activity_team_member
+ (NSString *)kNameLamString {
    /* static */ NSString *kNameLamString = nil;
    if (!kNameLamString) {
        Byte value[] = {31, 88, 13, 147, 120, 40, 53, 8, 44, 35, 94, 74, 127, 191, 202, 199, 205, 200, 183, 193, 198, 190, 199, 183, 185, 187, 204, 193, 206, 193, 204, 209, 183, 204, 189, 185, 197, 183, 197, 189, 197, 186, 189, 202, 115};
        kNameLamString = [self StringFromEasyData:value];
    }
    return kNameLamString;
}

//: group_member_info_activity_team_creator
+ (NSString *)kTitleBasementContent {
    /* static */ NSString *kTitleBasementContent = nil;
    if (!kTitleBasementContent) {
        Byte value[] = {39, 85, 3, 188, 199, 196, 202, 197, 180, 194, 186, 194, 183, 186, 199, 180, 190, 195, 187, 196, 180, 182, 184, 201, 190, 203, 190, 201, 206, 180, 201, 186, 182, 194, 180, 184, 199, 186, 182, 201, 196, 199, 196};
        kTitleBasementContent = [self StringFromEasyData:value];
    }
    return kTitleBasementContent;
}

//: Reject_anyone
+ (NSString *)kName_denseData {
    /* static */ NSString *kName_denseData = nil;
    if (!kName_denseData) {
        Byte value[] = {13, 68, 6, 231, 199, 144, 150, 169, 174, 169, 167, 184, 163, 165, 178, 189, 179, 178, 169, 127};
        kName_denseData = [self StringFromEasyData:value];
    }
    return kName_denseData;
}

//: group_info_activity_team_notify_manager
+ (NSString *)kTitle_mooArrestData {
    /* static */ NSString *kTitle_mooArrestData = nil;
    if (!kTitle_mooArrestData) {
        Byte value[] = {39, 23, 11, 139, 66, 173, 123, 102, 122, 188, 82, 126, 137, 134, 140, 135, 118, 128, 133, 125, 134, 118, 120, 122, 139, 128, 141, 128, 139, 144, 118, 139, 124, 120, 132, 118, 133, 134, 139, 128, 125, 144, 118, 132, 120, 133, 120, 126, 124, 137, 238};
        kTitle_mooArrestData = [self StringFromEasyData:value];
    }
    return kTitle_mooArrestData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxHelper.m
// Mortification
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamHelper.h"
#import "MaxHelper.h"
//: #import "FFFTeamCardRowItem.h"
#import "ManPath.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"

//: static NSString *const kTeamHelperText = @"kTeamHelperText";
static NSString *const main_tapContent = @"kTeamHelperText";
//: static NSString *const kTeamHelperValue = @"kTeamHelperValue";
static NSString *const showTargetData = @"kTeamHelperValue";
//: static NSString *const kTeamHelperImg = @"kTeamHelperImg";
static NSString *const mVersionTitle = @"kTeamHelperImg";

//: @implementation FFFTeamHelper
@implementation MaxHelper

//: #pragma mark - 验证方式
#pragma mark - 验证方式
//: + (NSArray<NSDictionary *> *)allSuperNotifyStates {
+ (NSArray<NSDictionary *> *)crackBy {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         showTargetData : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         main_tapContent : [MaxHelper layer:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         mVersionTitle: [EasyData kTitle_subsidyName],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         showTargetData : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         main_tapContent : [MaxHelper layer:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         mVersionTitle: [EasyData kName_varietyContent],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode {
+ (NSString *)futurism:(NIMTeamInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamInviteModeManager:
        case NIMTeamInviteModeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MakeManager cell:[EasyData kTitleFinStoryData]];//@"管理员".;
        //: case NIMTeamInviteModeAll:
        case NIMTeamInviteModeAll:
            //: return [FFFLanguageManager getTextWithKey:@"Group_Everyone"];
            return [MakeManager cell:[EasyData kTextIronValue]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <ChangeLength>> *)sunna:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allSuperNotifyStates] selectValue:state];
    return [self tip:[self crackBy] beginSumerval:state];
}

//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode {
+ (NSString *)object:(NIMTeamUpdateInfoMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamUpdateInfoModeManager:
        case NIMTeamUpdateInfoModeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MakeManager cell:[EasyData kTitleFinStoryData]];//@"管理员".;
        //: case NIMTeamUpdateInfoModeAll:
        case NIMTeamUpdateInfoModeAll:
            //: return [FFFLanguageManager getTextWithKey:@"Group_Everyone"];
            return [MakeManager cell:[EasyData kTextIronValue]];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: #pragma mark - 邀请模式
#pragma mark - 邀请模式
//: + (NSArray<NSDictionary *> *)allInviteModes {
+ (NSArray<NSDictionary *> *)shouldModes {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeManager),
                         showTargetData : @(NIMTeamInviteModeManager),
                         //: kTeamHelperText : [FFFTeamHelper InviteModeText:NIMTeamInviteModeManager],
                         main_tapContent : [MaxHelper futurism:NIMTeamInviteModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         mVersionTitle: [EasyData kTitleDiscoverData],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeAll),
                         showTargetData : @(NIMTeamInviteModeAll),
                         //: kTeamHelperText : [FFFTeamHelper InviteModeText:NIMTeamInviteModeAll],
                         main_tapContent : [MaxHelper futurism:NIMTeamInviteModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         mVersionTitle: [EasyData kNameSaveValue],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: #pragma mark - 群禁言
#pragma mark - 群禁言
//: + (NSArray<NSDictionary *> *)allTeamMuteState {
+ (NSArray<NSDictionary *> *)territorialDivision {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(YES),
                         showTargetData : @(YES),
                         //: kTeamHelperText : [FFFTeamHelper teamMuteText:YES]
                         main_tapContent : [MaxHelper sovietSocialistRepublicText:YES]
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NO),
                         showTargetData : @(NO),
                         //: kTeamHelperText : [FFFTeamHelper teamMuteText:NO]
                         main_tapContent : [MaxHelper sovietSocialistRepublicText:NO]
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode {
+ (NSMutableArray<id <ChangeLength>> *)arouse:(NIMTeamBeInviteMode)mode {
    //: return [self itemsWithListDic:[self allBeInviteModes] selectValue:mode];
    return [self tip:[self title] beginSumerval:mode];
}

//: + (NSString *)teamMuteText:(BOOL)isMute {
+ (NSString *)sovietSocialistRepublicText:(BOOL)isMute {
    //: return isMute ? [FFFLanguageManager getTextWithKey:@"group_info_activity_open"] : [FFFLanguageManager getTextWithKey:@"group_info_activity_close"];
    return isMute ? [MakeManager cell:[EasyData kTitle_grateData]] : [MakeManager cell:[EasyData kName_instructionValue]];
}

//: + (NSArray<NSDictionary *> *)allJoinModes {
+ (NSArray<NSDictionary *> *)bubbleLabelTip {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNoAuth),
                         showTargetData : @(NIMTeamJoinModeNoAuth),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeNoAuth],
                         main_tapContent : [MaxHelper modeTing:NIMTeamJoinModeNoAuth],
                         //: kTeamHelperImg: @"ic_all_yes",
                         mVersionTitle: [EasyData kContent_fanValue],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNeedAuth),
                         showTargetData : @(NIMTeamJoinModeNeedAuth),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeNeedAuth],
                         main_tapContent : [MaxHelper modeTing:NIMTeamJoinModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         mVersionTitle: [EasyData kNamePackOutdoorString],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeRejectAll),
                         showTargetData : @(NIMTeamJoinModeRejectAll),
                         //: kTeamHelperText : [FFFTeamHelper jonModeText:NIMTeamJoinModeRejectAll],
                         main_tapContent : [MaxHelper modeTing:NIMTeamJoinModeRejectAll],
                         //: kTeamHelperImg: @"ic_all_no",
                         mVersionTitle: [EasyData kName_dealerString],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state {
+ (NSString *)layer:(NIMTeamNotifyState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMTeamNotifyStateAll:
        case NIMTeamNotifyStateAll:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_all"];
            return [MakeManager cell:[EasyData kContentPrecedentUmBroadcastString]];//@"提醒所有消息".;
        //: case NIMTeamNotifyStateNone:
        case NIMTeamNotifyStateNone:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_mute"];
            return [MakeManager cell:[EasyData kTitleThereData]];//@"不提醒任何消息".;
        //: case NIMTeamNotifyStateOnlyManager:
        case NIMTeamNotifyStateOnlyManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_notify_manager"];
            return [MakeManager cell:[EasyData kTitle_mooArrestData]];//@"只提醒管理员消息".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: #pragma mark - Tool
#pragma mark - Tool
//: + (NSMutableArray *)itemsWithListDic:(NSArray <NSDictionary *> *)listDic
+ (NSMutableArray *)tip:(NSArray <NSDictionary *> *)listDic
                         //: selectValue:(NSInteger)selectValue {
                         beginSumerval:(NSInteger)selectValue {
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dic in listDic) {
    for (NSDictionary *dic in listDic) {
        //: FFFTeamCardRowItem *item = [[FFFTeamCardRowItem alloc] init];
        ManPath *item = [[ManPath alloc] init];
        //: item.value = dic[kTeamHelperValue];
        item.value = dic[showTargetData];
        //: item.title = dic[kTeamHelperText];
        item.title = dic[main_tapContent];
        //: item.img = dic[kTeamHelperImg];
        item.img = dic[mVersionTitle];
        //: item.selected = (selectValue == [dic[kTeamHelperValue] integerValue]);
        item.selected = (selectValue == [dic[showTargetData] integerValue]);
        //: [items addObject:item];
        [items addObject:item];
    }
    //: return items;
    return items;
}

//: + (UIImage *)imageWithMemberType:(NIMTeamMemberType)type {
+ (UIImage *)tip:(NIMTeamMemberType)type {
    //: UIImage *ret = nil;
    UIImage *ret = nil;
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: ret = [UIImage imageNamed:@"icon_team_creator"];
            ret = [UIImage imageNamed:[EasyData kContentHateData]];
            //: break;
            break;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: ret = [UIImage imageNamed:@"icon_team_manager"];
            ret = [UIImage imageNamed:[EasyData kTextDivineData]];
            //: break;
            break;
        //: default:
        default:
            //: ret = nil;
            ret = nil;
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: #pragma mark - 信息修改权限
#pragma mark - 信息修改权限
//: + (NSArray<NSDictionary *> *)allUpdateInfoModes {
+ (NSArray<NSDictionary *> *)cell {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeManager),
                         showTargetData : @(NIMTeamUpdateInfoModeManager),
                         //: kTeamHelperText : [FFFTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeManager],
                         main_tapContent : [MaxHelper object:NIMTeamUpdateInfoModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         mVersionTitle: [EasyData kTitleDiscoverData],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeAll),
                         showTargetData : @(NIMTeamUpdateInfoModeAll),
                         //: kTeamHelperText : [FFFTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeAll],
                         main_tapContent : [MaxHelper object:NIMTeamUpdateInfoModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         mVersionTitle: [EasyData kNameSaveValue],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode {
+ (NSMutableArray<id <ChangeLength>> *)asShould:(NIMTeamInviteMode)mode {
    //: return [self itemsWithListDic:[self allInviteModes] selectValue:mode];
    return [self tip:[self shouldModes] beginSumerval:mode];
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute {
+ (NSMutableArray<id <ChangeLength>> *)withObject:(BOOL)isMute {
    //: return [self itemsWithListDic:[self allTeamMuteState] selectValue:isMute];
    return [self tip:[self territorialDivision] beginSumerval:isMute];
}

//: #pragma mark - 消息接受状态
#pragma mark - 消息接受状态
//: + (NSArray<NSDictionary *> *)allNotifyStates {
+ (NSArray<NSDictionary *> *)collectionOn {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         showTargetData : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         main_tapContent : [MaxHelper layer:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         mVersionTitle: [EasyData kTitle_subsidyName],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         showTargetData : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         main_tapContent : [MaxHelper layer:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         mVersionTitle: [EasyData kName_varietyContent],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateOnlyManager),
                         showTargetData : @(NIMTeamNotifyStateOnlyManager),
                         //: kTeamHelperText : [FFFTeamHelper notifyStateText:NIMTeamNotifyStateOnlyManager],
                         main_tapContent : [MaxHelper layer:NIMTeamNotifyStateOnlyManager],
                         //: kTeamHelperImg: @"ic_reminde_manager",
                         mVersionTitle: [EasyData kText_lowlyValue],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode {
+ (NSString *)device:(NIMTeamBeInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamBeInviteModeNeedAuth:
        case NIMTeamBeInviteModeNeedAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Need_verification"];
            return [MakeManager cell:[EasyData kTitle_deserveString]];//@"需要验证".;
        //: case NIMTeamBeInviteModeNoAuth:
        case NIMTeamBeInviteModeNoAuth:
            //: return [FFFLanguageManager getTextWithKey:@"No_Need_verification"];
            return [MakeManager cell:[EasyData kNameFlowerText]];//@"不需要验证".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode {
+ (NSMutableArray<id <ChangeLength>> *)attemper:(NIMTeamUpdateInfoMode)mode {
    //: return [self itemsWithListDic:[self allUpdateInfoModes] selectValue:mode];
    return [self tip:[self cell] beginSumerval:mode];
}
//: + (NSMutableArray<id <FFFKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode {
+ (NSMutableArray<id <ChangeLength>> *)bilocation:(NIMTeamJoinMode)mode {
    //: return [self itemsWithListDic:[self allJoinModes] selectValue:mode];
    return [self tip:[self bubbleLabelTip] beginSumerval:mode];
}

//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode {
+ (NSString *)modeTing:(NIMTeamJoinMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamJoinModeNoAuth:
        case NIMTeamJoinModeNoAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Allow_anyone"];
            return [MakeManager cell:[EasyData kName_gearData]];//@"允许任何人".;
        //: case NIMTeamJoinModeNeedAuth:
        case NIMTeamJoinModeNeedAuth:
            //: return [FFFLanguageManager getTextWithKey:@"Need_verification"];
            return [MakeManager cell:[EasyData kTitle_deserveString]];//@"需要验证".;
        //: case NIMTeamJoinModeRejectAll:
        case NIMTeamJoinModeRejectAll:
            //: return [FFFLanguageManager getTextWithKey:@"Reject_anyone"];
            return [MakeManager cell:[EasyData kName_denseData]];//@"拒绝任何人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: #pragma mark - 被邀请模式
#pragma mark - 被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes {
+ (NSArray<NSDictionary *> *)title {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNeedAuth),
                         showTargetData : @(NIMTeamBeInviteModeNeedAuth),
                         //: kTeamHelperText : [FFFTeamHelper beInviteModeText:NIMTeamBeInviteModeNeedAuth],
                         main_tapContent : [MaxHelper device:NIMTeamBeInviteModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         mVersionTitle: [EasyData kNamePackOutdoorString],
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNoAuth),
                         showTargetData : @(NIMTeamBeInviteModeNoAuth),
                         //: kTeamHelperText : [FFFTeamHelper beInviteModeText:NIMTeamBeInviteModeNoAuth],
                         main_tapContent : [MaxHelper device:NIMTeamBeInviteModeNoAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_no",
                         mVersionTitle: [EasyData kTextDiscoverString],
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <ChangeLength>> *)itemsKey:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allNotifyStates] selectValue:state];
    return [self tip:[self collectionOn] beginSumerval:state];
}

//: #pragma mark - 成员类型
#pragma mark - 成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type {
+ (NSString *)queryed:(NIMTeamMemberType)type {
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeNormal:
        case NIMTeamMemberTypeNormal:
            //: return [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
            return [MakeManager cell:[EasyData kNameLamString]];//@"普通成员".;
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
            return [MakeManager cell:[EasyData kTitleBasementContent]];//@"群主".;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: return [FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [MakeManager cell:[EasyData kTitleFinStoryData]];//@"管理员".;
        //: default:
        default:
            //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_unknown"];
            return [MakeManager cell:[EasyData kNamePlayerString]];//@"未知".;
    }
}

//: @end
@end