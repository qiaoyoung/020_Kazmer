
#import <Foundation/Foundation.h>

@interface EconomistMeaningData : NSObject

+ (instancetype)sharedInstance;

//: ic_reminde_all
@property (nonatomic, copy) NSString *appDiskContent;

//: icon_team_creator
@property (nonatomic, copy) NSString *mainTableFormat;

//: icon_team_manager
@property (nonatomic, copy) NSString *notiWheneverStr;

//: Reject_anyone
@property (nonatomic, copy) NSString *dreamEconomistMsg;

//: group_info_activity_open
@property (nonatomic, copy) NSString *notiParishPath;

//: ic_yanzheng_yes
@property (nonatomic, copy) NSString *kPatrolPath;

//: group_info_activity_close
@property (nonatomic, copy) NSString *dreamTowardsUrl;

//: group_info_activity_team_notify_all
@property (nonatomic, copy) NSString *mGivingPath;

//: ic_reminde_all_no
@property (nonatomic, copy) NSString *dream_developerData;

//: Group_Everyone
@property (nonatomic, copy) NSString *mainRepairUrl;

//: online_state_event_manager_unknown
@property (nonatomic, copy) NSString *kDestinationName;

//: No_Need_verification
@property (nonatomic, copy) NSString *mMessageUrl;

//: group_info_activity_team_member
@property (nonatomic, copy) NSString *user_studyName;

//: ic_all
@property (nonatomic, copy) NSString *mDemandUntilKey;

//: group_member_info_activity_team_admin
@property (nonatomic, copy) NSString *m_arrestThanksName;

//: Allow_anyone
@property (nonatomic, copy) NSString *showOriginText;

//: ic_all_no
@property (nonatomic, copy) NSString *dreamMatteKey;

//: ic_yanzheng_no
@property (nonatomic, copy) NSString *m_educationalName;

//: group_info_activity_team_notify_mute
@property (nonatomic, copy) NSString *mainShowKey;

//: ic_all_yes
@property (nonatomic, copy) NSString *main_dancerId;

//: group_member_info_activity_team_creator
@property (nonatomic, copy) NSString *notiAtFormat;

//: ic_reminde_manager
@property (nonatomic, copy) NSString *show_heavyStr;

//: Need_verification
@property (nonatomic, copy) NSString *userThreshId;

//: ic_guanliyuan
@property (nonatomic, copy) NSString *appTallyData;

//: group_info_activity_team_notify_manager
@property (nonatomic, copy) NSString *app_principalValue;

@end

@implementation EconomistMeaningData

+ (instancetype)sharedInstance {
    static EconomistMeaningData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EconomistMeaningDataToCache:(Byte *)data {
    int weltanschauung = data[0];
    Byte commentAudience = data[1];
    int timeFishing = data[2];
    for (int i = timeFishing; i < timeFishing + weltanschauung; i++) {
        int value = data[i] + commentAudience;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[timeFishing + weltanschauung] = 0;
    return data + timeFishing;
}

- (NSString *)StringFromEconomistMeaningData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EconomistMeaningDataToCache:data]];
}

//: ic_all_no
- (NSString *)dreamMatteKey {
    if (!_dreamMatteKey) {
        Byte value[] = {9, 62, 13, 53, 24, 205, 232, 198, 109, 108, 169, 180, 105, 43, 37, 33, 35, 46, 46, 33, 48, 49, 200};
        _dreamMatteKey = [self StringFromEconomistMeaningData:value];
    }
    return _dreamMatteKey;
}

//: Reject_anyone
- (NSString *)dreamEconomistMsg {
    if (!_dreamEconomistMsg) {
        Byte value[] = {13, 71, 11, 88, 178, 238, 94, 147, 21, 222, 169, 11, 30, 35, 30, 28, 45, 24, 26, 39, 50, 40, 39, 30, 220};
        _dreamEconomistMsg = [self StringFromEconomistMeaningData:value];
    }
    return _dreamEconomistMsg;
}

//: group_info_activity_team_notify_mute
- (NSString *)mainShowKey {
    if (!_mainShowKey) {
        Byte value[] = {36, 93, 4, 64, 10, 21, 18, 24, 19, 2, 12, 17, 9, 18, 2, 4, 6, 23, 12, 25, 12, 23, 28, 2, 23, 8, 4, 16, 2, 17, 18, 23, 12, 9, 28, 2, 16, 24, 23, 8, 149};
        _mainShowKey = [self StringFromEconomistMeaningData:value];
    }
    return _mainShowKey;
}

//: group_info_activity_team_notify_all
- (NSString *)mGivingPath {
    if (!_mGivingPath) {
        Byte value[] = {35, 60, 6, 28, 133, 19, 43, 54, 51, 57, 52, 35, 45, 50, 42, 51, 35, 37, 39, 56, 45, 58, 45, 56, 61, 35, 56, 41, 37, 49, 35, 50, 51, 56, 45, 42, 61, 35, 37, 48, 48, 25};
        _mGivingPath = [self StringFromEconomistMeaningData:value];
    }
    return _mGivingPath;
}

//: icon_team_creator
- (NSString *)mainTableFormat {
    if (!_mainTableFormat) {
        Byte value[] = {17, 31, 3, 74, 68, 80, 79, 64, 85, 70, 66, 78, 64, 68, 83, 70, 66, 85, 80, 83, 47};
        _mainTableFormat = [self StringFromEconomistMeaningData:value];
    }
    return _mainTableFormat;
}

//: group_info_activity_team_notify_manager
- (NSString *)app_principalValue {
    if (!_app_principalValue) {
        Byte value[] = {39, 9, 4, 84, 94, 105, 102, 108, 103, 86, 96, 101, 93, 102, 86, 88, 90, 107, 96, 109, 96, 107, 112, 86, 107, 92, 88, 100, 86, 101, 102, 107, 96, 93, 112, 86, 100, 88, 101, 88, 94, 92, 105, 170};
        _app_principalValue = [self StringFromEconomistMeaningData:value];
    }
    return _app_principalValue;
}

//: online_state_event_manager_unknown
- (NSString *)kDestinationName {
    if (!_kDestinationName) {
        Byte value[] = {34, 66, 8, 107, 18, 153, 144, 182, 45, 44, 42, 39, 44, 35, 29, 49, 50, 31, 50, 35, 29, 35, 52, 35, 44, 50, 29, 43, 31, 44, 31, 37, 35, 48, 29, 51, 44, 41, 44, 45, 53, 44, 39};
        _kDestinationName = [self StringFromEconomistMeaningData:value];
    }
    return _kDestinationName;
}

//: icon_team_manager
- (NSString *)notiWheneverStr {
    if (!_notiWheneverStr) {
        Byte value[] = {17, 36, 12, 57, 40, 159, 235, 207, 196, 178, 25, 108, 69, 63, 75, 74, 59, 80, 65, 61, 73, 59, 73, 61, 74, 61, 67, 65, 78, 77};
        _notiWheneverStr = [self StringFromEconomistMeaningData:value];
    }
    return _notiWheneverStr;
}

//: No_Need_verification
- (NSString *)mMessageUrl {
    if (!_mMessageUrl) {
        Byte value[] = {20, 71, 10, 89, 122, 26, 75, 194, 171, 194, 7, 40, 24, 7, 30, 30, 29, 24, 47, 30, 43, 34, 31, 34, 28, 26, 45, 34, 40, 39, 227};
        _mMessageUrl = [self StringFromEconomistMeaningData:value];
    }
    return _mMessageUrl;
}

//: ic_all
- (NSString *)mDemandUntilKey {
    if (!_mDemandUntilKey) {
        Byte value[] = {6, 91, 3, 14, 8, 4, 6, 17, 17, 53};
        _mDemandUntilKey = [self StringFromEconomistMeaningData:value];
    }
    return _mDemandUntilKey;
}

//: Need_verification
- (NSString *)userThreshId {
    if (!_userThreshId) {
        Byte value[] = {17, 17, 5, 34, 189, 61, 84, 84, 83, 78, 101, 84, 97, 88, 85, 88, 82, 80, 99, 88, 94, 93, 123};
        _userThreshId = [self StringFromEconomistMeaningData:value];
    }
    return _userThreshId;
}

//: ic_all_yes
- (NSString *)main_dancerId {
    if (!_main_dancerId) {
        Byte value[] = {10, 86, 10, 155, 31, 183, 176, 151, 240, 147, 19, 13, 9, 11, 22, 22, 9, 35, 15, 29, 229};
        _main_dancerId = [self StringFromEconomistMeaningData:value];
    }
    return _main_dancerId;
}

//: group_info_activity_close
- (NSString *)dreamTowardsUrl {
    if (!_dreamTowardsUrl) {
        Byte value[] = {25, 1, 13, 212, 15, 141, 58, 27, 12, 159, 17, 160, 28, 102, 113, 110, 116, 111, 94, 104, 109, 101, 110, 94, 96, 98, 115, 104, 117, 104, 115, 120, 94, 98, 107, 110, 114, 100, 194};
        _dreamTowardsUrl = [self StringFromEconomistMeaningData:value];
    }
    return _dreamTowardsUrl;
}

//: group_info_activity_team_member
- (NSString *)user_studyName {
    if (!_user_studyName) {
        Byte value[] = {31, 4, 6, 113, 244, 253, 99, 110, 107, 113, 108, 91, 101, 106, 98, 107, 91, 93, 95, 112, 101, 114, 101, 112, 117, 91, 112, 97, 93, 105, 91, 105, 97, 105, 94, 97, 110, 128};
        _user_studyName = [self StringFromEconomistMeaningData:value];
    }
    return _user_studyName;
}

//: ic_yanzheng_yes
- (NSString *)kPatrolPath {
    if (!_kPatrolPath) {
        Byte value[] = {15, 87, 10, 128, 100, 17, 94, 216, 45, 197, 18, 12, 8, 34, 10, 23, 35, 17, 14, 23, 16, 8, 34, 14, 28, 165};
        _kPatrolPath = [self StringFromEconomistMeaningData:value];
    }
    return _kPatrolPath;
}

//: group_member_info_activity_team_creator
- (NSString *)notiAtFormat {
    if (!_notiAtFormat) {
        Byte value[] = {39, 61, 5, 95, 34, 42, 53, 50, 56, 51, 34, 48, 40, 48, 37, 40, 53, 34, 44, 49, 41, 50, 34, 36, 38, 55, 44, 57, 44, 55, 60, 34, 55, 40, 36, 48, 34, 38, 53, 40, 36, 55, 50, 53, 20};
        _notiAtFormat = [self StringFromEconomistMeaningData:value];
    }
    return _notiAtFormat;
}

//: ic_reminde_all_no
- (NSString *)dream_developerData {
    if (!_dream_developerData) {
        Byte value[] = {17, 64, 9, 81, 48, 58, 171, 19, 144, 41, 35, 31, 50, 37, 45, 41, 46, 36, 37, 31, 33, 44, 44, 31, 46, 47, 187};
        _dream_developerData = [self StringFromEconomistMeaningData:value];
    }
    return _dream_developerData;
}

//: Allow_anyone
- (NSString *)showOriginText {
    if (!_showOriginText) {
        Byte value[] = {12, 55, 7, 143, 100, 124, 85, 10, 53, 53, 56, 64, 40, 42, 55, 66, 56, 55, 46, 249};
        _showOriginText = [self StringFromEconomistMeaningData:value];
    }
    return _showOriginText;
}

//: group_info_activity_open
- (NSString *)notiParishPath {
    if (!_notiParishPath) {
        Byte value[] = {24, 32, 7, 19, 108, 57, 20, 71, 82, 79, 85, 80, 63, 73, 78, 70, 79, 63, 65, 67, 84, 73, 86, 73, 84, 89, 63, 79, 80, 69, 78, 140};
        _notiParishPath = [self StringFromEconomistMeaningData:value];
    }
    return _notiParishPath;
}

//: ic_yanzheng_no
- (NSString *)m_educationalName {
    if (!_m_educationalName) {
        Byte value[] = {14, 30, 10, 105, 143, 137, 248, 225, 111, 215, 75, 69, 65, 91, 67, 80, 92, 74, 71, 80, 73, 65, 80, 81, 196};
        _m_educationalName = [self StringFromEconomistMeaningData:value];
    }
    return _m_educationalName;
}

//: group_member_info_activity_team_admin
- (NSString *)m_arrestThanksName {
    if (!_m_arrestThanksName) {
        Byte value[] = {37, 88, 5, 208, 196, 15, 26, 23, 29, 24, 7, 21, 13, 21, 10, 13, 26, 7, 17, 22, 14, 23, 7, 9, 11, 28, 17, 30, 17, 28, 33, 7, 28, 13, 9, 21, 7, 9, 12, 21, 17, 22, 237};
        _m_arrestThanksName = [self StringFromEconomistMeaningData:value];
    }
    return _m_arrestThanksName;
}

//: ic_reminde_manager
- (NSString *)show_heavyStr {
    if (!_show_heavyStr) {
        Byte value[] = {18, 13, 3, 92, 86, 82, 101, 88, 96, 92, 97, 87, 88, 82, 96, 84, 97, 84, 90, 88, 101, 184};
        _show_heavyStr = [self StringFromEconomistMeaningData:value];
    }
    return _show_heavyStr;
}

//: ic_reminde_all
- (NSString *)appDiskContent {
    if (!_appDiskContent) {
        Byte value[] = {14, 63, 10, 95, 157, 228, 236, 19, 225, 140, 42, 36, 32, 51, 38, 46, 42, 47, 37, 38, 32, 34, 45, 45, 139};
        _appDiskContent = [self StringFromEconomistMeaningData:value];
    }
    return _appDiskContent;
}

//: ic_guanliyuan
- (NSString *)appTallyData {
    if (!_appTallyData) {
        Byte value[] = {13, 31, 6, 221, 129, 173, 74, 68, 64, 72, 86, 66, 79, 77, 74, 90, 86, 66, 79, 241};
        _appTallyData = [self StringFromEconomistMeaningData:value];
    }
    return _appTallyData;
}

//: Group_Everyone
- (NSString *)mainRepairUrl {
    if (!_mainRepairUrl) {
        Byte value[] = {14, 12, 12, 219, 68, 223, 145, 224, 9, 175, 206, 172, 59, 102, 99, 105, 100, 83, 57, 106, 89, 102, 109, 99, 98, 89, 21};
        _mainRepairUrl = [self StringFromEconomistMeaningData:value];
    }
    return _mainRepairUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeBubble.m
// ButtonKit
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamHelper.h"
#import "MakeBubble.h"
//: #import "WatchTeamCardRowItem.h"
#import "ShowKey.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"

//: static NSString *const kTeamHelperText = @"kTeamHelperText";
static NSString *const user_shareMinId = @"kTeamHelperText";
//: static NSString *const kTeamHelperValue = @"kTeamHelperValue";
static NSString *const kBackId = @"kTeamHelperValue";
//: static NSString *const kTeamHelperImg = @"kTeamHelperImg";
static NSString *const k_indexContentResourceMessage = @"kTeamHelperImg";

//: @implementation WatchTeamHelper
@implementation MakeBubble

//: #pragma mark - 验证方式
#pragma mark - 验证方式
//: + (NSArray<NSDictionary *> *)allJoinModes {
+ (NSArray<NSDictionary *> *)fraught {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNoAuth),
                         kBackId : @(NIMTeamJoinModeNoAuth),
                         //: kTeamHelperText : [WatchTeamHelper jonModeText:NIMTeamJoinModeNoAuth],
                         user_shareMinId : [MakeBubble title:NIMTeamJoinModeNoAuth],
                         //: kTeamHelperImg: @"ic_all_yes",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].main_dancerId,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeNeedAuth),
                         kBackId : @(NIMTeamJoinModeNeedAuth),
                         //: kTeamHelperText : [WatchTeamHelper jonModeText:NIMTeamJoinModeNeedAuth],
                         user_shareMinId : [MakeBubble title:NIMTeamJoinModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].kPatrolPath,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamJoinModeRejectAll),
                         kBackId : @(NIMTeamJoinModeRejectAll),
                         //: kTeamHelperText : [WatchTeamHelper jonModeText:NIMTeamJoinModeRejectAll],
                         user_shareMinId : [MakeBubble title:NIMTeamJoinModeRejectAll],
                         //: kTeamHelperImg: @"ic_all_no",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].dreamMatteKey,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode {
+ (NSString *)title:(NIMTeamJoinMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamJoinModeNoAuth:
        case NIMTeamJoinModeNoAuth:
            //: return [WatchLanguageManager getTextWithKey:@"Allow_anyone"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].showOriginText];//@"允许任何人".;
        //: case NIMTeamJoinModeNeedAuth:
        case NIMTeamJoinModeNeedAuth:
            //: return [WatchLanguageManager getTextWithKey:@"Need_verification"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].userThreshId];//@"需要验证".;
        //: case NIMTeamJoinModeRejectAll:
        case NIMTeamJoinModeRejectAll:
            //: return [WatchLanguageManager getTextWithKey:@"Reject_anyone"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].dreamEconomistMsg];//@"拒绝任何人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)bottom:(NIMTeamJoinMode)mode {
    //: return [self itemsWithListDic:[self allJoinModes] selectValue:mode];
    return [self background:[self fraught] search:mode];
}

//: #pragma mark - 邀请模式
#pragma mark - 邀请模式
//: + (NSArray<NSDictionary *> *)allInviteModes {
+ (NSArray<NSDictionary *> *)message {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeManager),
                         kBackId : @(NIMTeamInviteModeManager),
                         //: kTeamHelperText : [WatchTeamHelper InviteModeText:NIMTeamInviteModeManager],
                         user_shareMinId : [MakeBubble with:NIMTeamInviteModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].appTallyData,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamInviteModeAll),
                         kBackId : @(NIMTeamInviteModeAll),
                         //: kTeamHelperText : [WatchTeamHelper InviteModeText:NIMTeamInviteModeAll],
                         user_shareMinId : [MakeBubble with:NIMTeamInviteModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].mDemandUntilKey,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode {
+ (NSString *)with:(NIMTeamInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamInviteModeManager:
        case NIMTeamInviteModeManager:
            //: return [WatchLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].m_arrestThanksName];//@"管理员".;
        //: case NIMTeamInviteModeAll:
        case NIMTeamInviteModeAll:
            //: return [WatchLanguageManager getTextWithKey:@"Group_Everyone"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].mainRepairUrl];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)pastSeleced:(NIMTeamInviteMode)mode {
    //: return [self itemsWithListDic:[self allInviteModes] selectValue:mode];
    return [self background:[self message] search:mode];
}

//: #pragma mark - 被邀请模式
#pragma mark - 被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes {
+ (NSArray<NSDictionary *> *)betweenMaxModes {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNeedAuth),
                         kBackId : @(NIMTeamBeInviteModeNeedAuth),
                         //: kTeamHelperText : [WatchTeamHelper beInviteModeText:NIMTeamBeInviteModeNeedAuth],
                         user_shareMinId : [MakeBubble property:NIMTeamBeInviteModeNeedAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_yes",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].kPatrolPath,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamBeInviteModeNoAuth),
                         kBackId : @(NIMTeamBeInviteModeNoAuth),
                         //: kTeamHelperText : [WatchTeamHelper beInviteModeText:NIMTeamBeInviteModeNoAuth],
                         user_shareMinId : [MakeBubble property:NIMTeamBeInviteModeNoAuth],
                         //: kTeamHelperImg: @"ic_yanzheng_no",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].m_educationalName,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode {
+ (NSString *)property:(NIMTeamBeInviteMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamBeInviteModeNeedAuth:
        case NIMTeamBeInviteModeNeedAuth:
            //: return [WatchLanguageManager getTextWithKey:@"Need_verification"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].userThreshId];//@"需要验证".;
        //: case NIMTeamBeInviteModeNoAuth:
        case NIMTeamBeInviteModeNoAuth:
            //: return [WatchLanguageManager getTextWithKey:@"No_Need_verification"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].mMessageUrl];//@"不需要验证".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)name:(NIMTeamBeInviteMode)mode {
    //: return [self itemsWithListDic:[self allBeInviteModes] selectValue:mode];
    return [self background:[self betweenMaxModes] search:mode];
}

//: #pragma mark - 信息修改权限
#pragma mark - 信息修改权限
//: + (NSArray<NSDictionary *> *)allUpdateInfoModes {
+ (NSArray<NSDictionary *> *)modify {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeManager),
                         kBackId : @(NIMTeamUpdateInfoModeManager),
                         //: kTeamHelperText : [WatchTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeManager],
                         user_shareMinId : [MakeBubble message:NIMTeamUpdateInfoModeManager],
                         //: kTeamHelperImg: @"ic_guanliyuan",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].appTallyData,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamUpdateInfoModeAll),
                         kBackId : @(NIMTeamUpdateInfoModeAll),
                         //: kTeamHelperText : [WatchTeamHelper updateInfoModeText:NIMTeamUpdateInfoModeAll],
                         user_shareMinId : [MakeBubble message:NIMTeamUpdateInfoModeAll],
                         //: kTeamHelperImg: @"ic_all",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].mDemandUntilKey,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode {
+ (NSString *)message:(NIMTeamUpdateInfoMode)mode {
    //: switch (mode) {
    switch (mode) {
        //: case NIMTeamUpdateInfoModeManager:
        case NIMTeamUpdateInfoModeManager:
            //: return [WatchLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].m_arrestThanksName];//@"管理员".;
        //: case NIMTeamUpdateInfoModeAll:
        case NIMTeamUpdateInfoModeAll:
            //: return [WatchLanguageManager getTextWithKey:@"Group_Everyone"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].mainRepairUrl];//@"所有人".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)signalSeleced:(NIMTeamUpdateInfoMode)mode {
    //: return [self itemsWithListDic:[self allUpdateInfoModes] selectValue:mode];
    return [self background:[self modify] search:mode];
}

//: #pragma mark - 消息接受状态
#pragma mark - 消息接受状态
//: + (NSArray<NSDictionary *> *)allNotifyStates {
+ (NSArray<NSDictionary *> *)everyLast {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         kBackId : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [WatchTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         user_shareMinId : [MakeBubble findFrame:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].appDiskContent,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         kBackId : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [WatchTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         user_shareMinId : [MakeBubble findFrame:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].dream_developerData,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateOnlyManager),
                         kBackId : @(NIMTeamNotifyStateOnlyManager),
                         //: kTeamHelperText : [WatchTeamHelper notifyStateText:NIMTeamNotifyStateOnlyManager],
                         user_shareMinId : [MakeBubble findFrame:NIMTeamNotifyStateOnlyManager],
                         //: kTeamHelperImg: @"ic_reminde_manager",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].show_heavyStr,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSArray<NSDictionary *> *)allSuperNotifyStates {
+ (NSArray<NSDictionary *> *)standIn {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateAll),
                         kBackId : @(NIMTeamNotifyStateAll),
                         //: kTeamHelperText : [WatchTeamHelper notifyStateText:NIMTeamNotifyStateAll],
                         user_shareMinId : [MakeBubble findFrame:NIMTeamNotifyStateAll],
                         //: kTeamHelperImg: @"ic_reminde_all",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].appDiskContent,
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NIMTeamNotifyStateNone),
                         kBackId : @(NIMTeamNotifyStateNone),
                         //: kTeamHelperText : [WatchTeamHelper notifyStateText:NIMTeamNotifyStateNone],
                         user_shareMinId : [MakeBubble findFrame:NIMTeamNotifyStateNone],
                         //: kTeamHelperImg: @"ic_reminde_all_no",
                         k_indexContentResourceMessage: [EconomistMeaningData sharedInstance].dream_developerData,
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}

//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state {
+ (NSString *)findFrame:(NIMTeamNotifyState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMTeamNotifyStateAll:
        case NIMTeamNotifyStateAll:
            //: return [WatchLanguageManager getTextWithKey:@"group_info_activity_team_notify_all"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].mGivingPath];//@"提醒所有消息".;
        //: case NIMTeamNotifyStateNone:
        case NIMTeamNotifyStateNone:
            //: return [WatchLanguageManager getTextWithKey:@"group_info_activity_team_notify_mute"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].mainShowKey];//@"不提醒任何消息".;
        //: case NIMTeamNotifyStateOnlyManager:
        case NIMTeamNotifyStateOnlyManager:
            //: return [WatchLanguageManager getTextWithKey:@"group_info_activity_team_notify_manager"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].app_principalValue];//@"只提醒管理员消息".;
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)tingViewSeleced:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allNotifyStates] selectValue:state];
    return [self background:[self everyLast] search:state];
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)label:(NIMTeamNotifyState)state {
    //: return [self itemsWithListDic:[self allSuperNotifyStates] selectValue:state];
    return [self background:[self standIn] search:state];
}

//: #pragma mark - 群禁言
#pragma mark - 群禁言
//: + (NSArray<NSDictionary *> *)allTeamMuteState {
+ (NSArray<NSDictionary *> *)index {
    //: NSArray *ret = @[
    NSArray *ret = @[
                     //: @{
                     @{
                         //: kTeamHelperValue : @(YES),
                         kBackId : @(YES),
                         //: kTeamHelperText : [WatchTeamHelper teamMuteText:YES]
                         user_shareMinId : [MakeBubble text:YES]
                         //: },
                         },
                     //: @{
                     @{
                         //: kTeamHelperValue : @(NO),
                         kBackId : @(NO),
                         //: kTeamHelperText : [WatchTeamHelper teamMuteText:NO]
                         user_shareMinId : [MakeBubble text:NO]
                         //: },
                         },
                     //: ];
                     ];
    //: return ret;
    return ret;
}
//: + (NSString *)teamMuteText:(BOOL)isMute {
+ (NSString *)text:(BOOL)isMute {
    //: return isMute ? [WatchLanguageManager getTextWithKey:@"group_info_activity_open"] : [WatchLanguageManager getTextWithKey:@"group_info_activity_close"];
    return isMute ? [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].notiParishPath] : [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].dreamTowardsUrl];
}

//: + (NSMutableArray<id <WatchKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute {
+ (NSMutableArray<id <WatchKitSelectCardData>> *)max:(BOOL)isMute {
    //: return [self itemsWithListDic:[self allTeamMuteState] selectValue:isMute];
    return [self background:[self index] search:isMute];
}

//: #pragma mark - 成员类型
#pragma mark - 成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type {
+ (NSString *)kind:(NIMTeamMemberType)type {
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeNormal:
        case NIMTeamMemberTypeNormal:
            //: return [WatchLanguageManager getTextWithKey:@"group_info_activity_team_member"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].user_studyName];//@"普通成员".;
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: return [WatchLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].notiAtFormat];//@"群主".;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: return [WatchLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].m_arrestThanksName];//@"管理员".;
        //: default:
        default:
            //: return [WatchLanguageManager getTextWithKey:@"online_state_event_manager_unknown"];
            return [PaintedNaturalLanguageTo exhibit:[EconomistMeaningData sharedInstance].kDestinationName];//@"未知".;
    }
}

//: + (UIImage *)imageWithMemberType:(NIMTeamMemberType)type {
+ (UIImage *)streetwiseType:(NIMTeamMemberType)type {
    //: UIImage *ret = nil;
    UIImage *ret = nil;
    //: switch (type) {
    switch (type) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
            //: ret = [UIImage imageNamed:@"icon_team_creator"];
            ret = [UIImage imageNamed:[EconomistMeaningData sharedInstance].mainTableFormat];
            //: break;
            break;
        //: case NIMTeamMemberTypeManager:
        case NIMTeamMemberTypeManager:
            //: ret = [UIImage imageNamed:@"icon_team_manager"];
            ret = [UIImage imageNamed:[EconomistMeaningData sharedInstance].notiWheneverStr];
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

//: #pragma mark - Tool
#pragma mark - Tool
//: + (NSMutableArray *)itemsWithListDic:(NSArray <NSDictionary *> *)listDic
+ (NSMutableArray *)background:(NSArray <NSDictionary *> *)listDic
                         //: selectValue:(NSInteger)selectValue {
                         search:(NSInteger)selectValue {
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dic in listDic) {
    for (NSDictionary *dic in listDic) {
        //: WatchTeamCardRowItem *item = [[WatchTeamCardRowItem alloc] init];
        ShowKey *item = [[ShowKey alloc] init];
        //: item.value = dic[kTeamHelperValue];
        item.value = dic[kBackId];
        //: item.title = dic[kTeamHelperText];
        item.title = dic[user_shareMinId];
        //: item.img = dic[kTeamHelperImg];
        item.img = dic[k_indexContentResourceMessage];
        //: item.selected = (selectValue == [dic[kTeamHelperValue] integerValue]);
        item.selected = (selectValue == [dic[kBackId] integerValue]);
        //: [items addObject:item];
        [items addObject:item];
    }
    //: return items;
    return items;
}

//: @end
@end
