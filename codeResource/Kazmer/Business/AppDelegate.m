
#import <Foundation/Foundation.h>

@interface LegislativeBranchData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LegislativeBranchData

+ (instancetype)sharedInstance {
    static LegislativeBranchData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LegislativeBranchDataToCache:(Byte *)data {
    int valueFeed = data[0];
    Byte precisely = data[1];
    int themPosition = data[2];
    for (int i = themPosition; i < themPosition + valueFeed; i++) {
        int value = data[i] + precisely;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[themPosition + valueFeed] = 0;
    return data + themPosition;
}

- (NSString *)StringFromLegislativeBranchData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LegislativeBranchDataToCache:data]];
}

//: 自动登录失败
- (NSString *)appDirectorId {
    /* static */ NSString *appDirectorId = nil;
    if (!appDirectorId) {
        Byte value[] = {18, 69, 11, 157, 38, 25, 217, 23, 220, 95, 11, 163, 66, 101, 160, 69, 99, 162, 84, 118, 160, 120, 80, 160, 95, 108, 163, 111, 96, 218};
        appDirectorId = [self StringFromLegislativeBranchData:value];
    }
    return appDirectorId;
}

//: line://
- (NSString *)show_accessibleText {
    /* static */ NSString *show_accessibleText = nil;
    if (!show_accessibleText) {
        Byte value[] = {7, 9, 10, 5, 213, 225, 153, 180, 1, 92, 99, 96, 101, 92, 49, 38, 38, 166};
        show_accessibleText = [self StringFromLegislativeBranchData:value];
    }
    return show_accessibleText;
}

//: whatsapp://
- (NSString *)mRacyMidTitle {
    /* static */ NSString *mRacyMidTitle = nil;
    if (!mRacyMidTitle) {
        Byte value[] = {11, 19, 9, 114, 237, 68, 98, 22, 196, 100, 85, 78, 97, 96, 78, 93, 93, 39, 28, 28, 218};
        mRacyMidTitle = [self StringFromLegislativeBranchData:value];
    }
    return mRacyMidTitle;
}

//: pool
- (NSString *)k_curClusterFormat {
    /* static */ NSString *k_curClusterFormat = nil;
    if (!k_curClusterFormat) {
        Byte value[] = {4, 78, 12, 10, 39, 50, 154, 199, 253, 172, 214, 102, 34, 33, 33, 30, 1};
        k_curClusterFormat = [self StringFromLegislativeBranchData:value];
    }
    return k_curClusterFormat;
}

//: hant
- (NSString *)k_hugePath {
    /* static */ NSString *k_hugePath = nil;
    if (!k_hugePath) {
        Byte value[] = {4, 18, 5, 85, 190, 86, 79, 92, 98, 251};
        k_hugePath = [self StringFromLegislativeBranchData:value];
    }
    return k_hugePath;
}

//: youtube://
- (NSString *)userSilverTechDrinkKey {
    /* static */ NSString *userSilverTechDrinkKey = nil;
    if (!userSilverTechDrinkKey) {
        Byte value[] = {10, 20, 7, 56, 163, 120, 5, 101, 91, 97, 96, 97, 78, 81, 38, 27, 27, 192};
        userSilverTechDrinkKey = [self StringFromLegislativeBranchData:value];
    }
    return userSilverTechDrinkKey;
}

//: twitter://
- (NSString *)show_barMessage {
    /* static */ NSString *show_barMessage = nil;
    if (!show_barMessage) {
        Byte value[] = {10, 37, 7, 253, 19, 103, 112, 79, 82, 68, 79, 79, 64, 77, 21, 10, 10, 65};
        show_barMessage = [self StringFromLegislativeBranchData:value];
    }
    return show_barMessage;
}

//: fageone
- (NSString *)appCedeBalanceTitle {
    /* static */ NSString *appCedeBalanceTitle = nil;
    if (!appCedeBalanceTitle) {
        Byte value[] = {7, 90, 12, 17, 155, 212, 165, 123, 61, 100, 67, 92, 12, 7, 13, 11, 21, 20, 11, 134};
        appCedeBalanceTitle = [self StringFromLegislativeBranchData:value];
    }
    return appCedeBalanceTitle;
}

//: act
- (NSString *)app_crowdedFormat {
    /* static */ NSString *app_crowdedFormat = nil;
    if (!app_crowdedFormat) {
        Byte value[] = {3, 34, 8, 235, 152, 32, 167, 78, 63, 65, 82, 197};
        app_crowdedFormat = [self StringFromLegislativeBranchData:value];
    }
    return app_crowdedFormat;
}

//: https://api.wyntrameg.com/api/fage?name=fage900
- (NSString *)user_showMsg {
    /* static */ NSString *user_showMsg = nil;
    if (!user_showMsg) {
        Byte value[] = {47, 83, 3, 21, 33, 33, 29, 32, 231, 220, 220, 14, 29, 22, 219, 36, 38, 27, 33, 31, 14, 26, 18, 20, 219, 16, 28, 26, 220, 14, 29, 22, 220, 19, 14, 20, 18, 236, 27, 14, 26, 18, 234, 19, 14, 20, 18, 230, 221, 221, 168};
        user_showMsg = [self StringFromLegislativeBranchData:value];
    }
    return user_showMsg;
}

//: 10004
- (NSString *)mTeenageValue {
    /* static */ NSString *mTeenageValue = nil;
    if (!mTeenageValue) {
        Byte value[] = {5, 55, 3, 250, 249, 249, 249, 253, 114};
        mTeenageValue = [self StringFromLegislativeBranchData:value];
    }
    return mTeenageValue;
}

//: contact_tag_fragment_sure
- (NSString *)user_extraTableValue {
    /* static */ NSString *user_extraTableValue = nil;
    if (!user_extraTableValue) {
        Byte value[] = {25, 45, 4, 208, 54, 66, 65, 71, 52, 54, 71, 50, 71, 52, 58, 50, 57, 69, 52, 58, 64, 56, 65, 71, 50, 70, 72, 69, 56, 125};
        user_extraTableValue = [self StringFromLegislativeBranchData:value];
    }
    return user_extraTableValue;
}

//: 668796b6940d5a4c4982f056
- (NSString *)m_pitcherKey {
    /* static */ NSString *m_pitcherKey = nil;
    if (!m_pitcherKey) {
        Byte value[] = {24, 60, 10, 71, 105, 176, 170, 33, 228, 245, 250, 250, 252, 251, 253, 250, 38, 250, 253, 248, 244, 40, 249, 37, 248, 39, 248, 253, 252, 246, 42, 244, 249, 250, 82};
        m_pitcherKey = [self StringFromLegislativeBranchData:value];
    }
    return m_pitcherKey;
}

//: langType : %@
- (NSString *)dreamQueenConsultantData {
    /* static */ NSString *dreamQueenConsultantData = nil;
    if (!dreamQueenConsultantData) {
        Byte value[] = {13, 64, 9, 23, 232, 196, 149, 164, 177, 44, 33, 46, 39, 20, 57, 48, 37, 224, 250, 224, 229, 0, 5};
        dreamQueenConsultantData = [self StringFromLegislativeBranchData:value];
    }
    return dreamQueenConsultantData;
}

//: zh-Hans-US
- (NSString *)mainDiversityName {
    /* static */ NSString *mainDiversityName = nil;
    if (!mainDiversityName) {
        Byte value[] = {10, 82, 5, 162, 121, 40, 22, 219, 246, 15, 28, 33, 219, 3, 1, 115};
        mainDiversityName = [self StringFromLegislativeBranchData:value];
    }
    return mainDiversityName;
}

//: code
- (NSString *)userFrequencyKey {
    /* static */ NSString *userFrequencyKey = nil;
    if (!userFrequencyKey) {
        Byte value[] = {4, 15, 7, 131, 224, 172, 155, 84, 96, 85, 86, 73};
        userFrequencyKey = [self StringFromLegislativeBranchData:value];
    }
    return userFrequencyKey;
}

//: msg
- (NSString *)m_ragClubMessage {
    /* static */ NSString *m_ragClubMessage = nil;
    if (!m_ragClubMessage) {
        Byte value[] = {3, 89, 3, 20, 26, 14, 100};
        m_ragClubMessage = [self StringFromLegislativeBranchData:value];
    }
    return m_ragClubMessage;
}

//: 请开启推送功能否则无法收到推送通知
- (NSString *)userExperienceQuickFormat {
    /* static */ NSString *userExperienceQuickFormat = nil;
    if (!userExperienceQuickFormat) {
        Byte value[] = {51, 75, 3, 157, 100, 108, 154, 113, 53, 154, 69, 100, 155, 67, 93, 158, 53, 54, 154, 63, 84, 157, 56, 114, 154, 69, 91, 154, 61, 78, 155, 76, 85, 155, 104, 74, 155, 73, 107, 154, 61, 101, 155, 67, 93, 158, 53, 54, 158, 53, 79, 156, 84, 90, 62};
        userExperienceQuickFormat = [self StringFromLegislativeBranchData:value];
    }
    return userExperienceQuickFormat;
}

//: data
- (NSString *)dreamCreateerIdent {
    /* static */ NSString *dreamCreateerIdent = nil;
    if (!dreamCreateerIdent) {
        Byte value[] = {4, 27, 6, 81, 66, 140, 73, 70, 89, 70, 58};
        dreamCreateerIdent = [self StringFromLegislativeBranchData:value];
    }
    return dreamCreateerIdent;
}

//: zh-Hant
- (NSString *)m_rugFormat {
    /* static */ NSString *m_rugFormat = nil;
    if (!m_rugFormat) {
        Byte value[] = {7, 95, 13, 179, 175, 129, 169, 251, 221, 47, 221, 64, 241, 27, 9, 206, 233, 2, 15, 21, 248};
        m_rugFormat = [self StringFromLegislativeBranchData:value];
    }
    return m_rugFormat;
}

//: DeviceName
- (NSString *)app_eaterId {
    /* static */ NSString *app_eaterId = nil;
    if (!app_eaterId) {
        Byte value[] = {10, 39, 11, 82, 90, 255, 71, 58, 186, 203, 248, 29, 62, 79, 66, 60, 62, 39, 58, 70, 62, 106};
        app_eaterId = [self StringFromLegislativeBranchData:value];
    }
    return app_eaterId;
}

//: app_nshow
- (NSString *)dreamViewMsg {
    /* static */ NSString *dreamViewMsg = nil;
    if (!dreamViewMsg) {
        Byte value[] = {9, 90, 4, 67, 7, 22, 22, 5, 20, 25, 14, 21, 29, 239};
        dreamViewMsg = [self StringFromLegislativeBranchData:value];
    }
    return dreamViewMsg;
}

//: spa
- (NSString *)k_cabinUrl {
    /* static */ NSString *k_cabinUrl = nil;
    if (!k_cabinUrl) {
        Byte value[] = {3, 52, 4, 12, 63, 60, 45, 210};
        k_cabinUrl = [self StringFromLegislativeBranchData:value];
    }
    return k_cabinUrl;
}

//: ini
- (NSString *)mScramName {
    /* static */ NSString *mScramName = nil;
    if (!mScramName) {
        Byte value[] = {3, 98, 13, 61, 186, 195, 101, 82, 211, 28, 15, 114, 80, 7, 12, 7, 253};
        mScramName = [self StringFromLegislativeBranchData:value];
    }
    return mScramName;
}

//: NotificationLogout
- (NSString *)noti_minName {
    /* static */ NSString *noti_minName = nil;
    if (!noti_minName) {
        Byte value[] = {18, 60, 8, 113, 4, 201, 84, 220, 18, 51, 56, 45, 42, 45, 39, 37, 56, 45, 51, 50, 16, 51, 43, 51, 57, 56, 32};
        noti_minName = [self StringFromLegislativeBranchData:value];
    }
    return noti_minName;
}

//: link-sg.netease.im:7000
- (NSString *)notiAdviseData {
    /* static */ NSString *notiAdviseData = nil;
    if (!notiAdviseData) {
        Byte value[] = {23, 39, 7, 89, 223, 14, 73, 69, 66, 71, 68, 6, 76, 64, 7, 71, 62, 77, 62, 58, 76, 62, 7, 66, 70, 19, 16, 9, 9, 9, 186};
        notiAdviseData = [self StringFromLegislativeBranchData:value];
    }
    return notiAdviseData;
}

//: tiktok://
- (NSString *)app_heavilyValue {
    /* static */ NSString *app_heavilyValue = nil;
    if (!app_heavilyValue) {
        Byte value[] = {9, 9, 3, 107, 96, 98, 107, 102, 98, 49, 38, 38, 35};
        app_heavilyValue = [self StringFromLegislativeBranchData:value];
    }
    return app_heavilyValue;
}

//: kakaotalk://
- (NSString *)user_engagementId {
    /* static */ NSString *user_engagementId = nil;
    if (!user_engagementId) {
        Byte value[] = {12, 44, 4, 22, 63, 53, 63, 53, 67, 72, 53, 64, 63, 14, 3, 3, 25};
        user_engagementId = [self StringFromLegislativeBranchData:value];
    }
    return user_engagementId;
}

//: 6a845f0dd8
- (NSString *)dreamPlaceYouKey {
    /* static */ NSString *dreamPlaceYouKey = nil;
    if (!dreamPlaceYouKey) {
        Byte value[] = {10, 98, 13, 148, 251, 215, 98, 163, 229, 57, 88, 42, 44, 212, 255, 214, 210, 211, 4, 206, 2, 2, 214, 211};
        dreamPlaceYouKey = [self StringFromLegislativeBranchData:value];
    }
    return dreamPlaceYouKey;
}

//: instagram://
- (NSString *)mainMeaningName {
    /* static */ NSString *mainMeaningName = nil;
    if (!mainMeaningName) {
        Byte value[] = {12, 58, 12, 4, 24, 57, 212, 103, 79, 244, 48, 122, 47, 52, 57, 58, 39, 45, 56, 39, 51, 0, 245, 245, 31};
        mainMeaningName = [self StringFromLegislativeBranchData:value];
    }
    return mainMeaningName;
}

//: messenger://
- (NSString *)appCommentFormat {
    /* static */ NSString *appCommentFormat = nil;
    if (!appCommentFormat) {
        Byte value[] = {12, 39, 13, 159, 159, 204, 42, 238, 209, 30, 112, 207, 150, 70, 62, 76, 76, 62, 71, 64, 62, 75, 19, 8, 8, 118};
        appCommentFormat = [self StringFromLegislativeBranchData:value];
    }
    return appCommentFormat;
}

//: islogin
- (NSString *)kTennisValue {
    /* static */ NSString *kTennisValue = nil;
    if (!kTennisValue) {
        Byte value[] = {7, 84, 8, 39, 163, 101, 211, 12, 21, 31, 24, 27, 19, 21, 26, 200};
        kTennisValue = [self StringFromLegislativeBranchData:value];
    }
    return kTennisValue;
}

//: /other/setClearStatus
- (NSString *)k_patiencePath {
    /* static */ NSString *k_patiencePath = nil;
    if (!k_patiencePath) {
        Byte value[] = {21, 43, 9, 73, 122, 6, 50, 255, 35, 4, 68, 73, 61, 58, 71, 4, 72, 58, 73, 24, 65, 58, 54, 71, 40, 73, 54, 73, 74, 72, 173};
        k_patiencePath = [self StringFromLegislativeBranchData:value];
    }
    return k_patiencePath;
}

//: app
- (NSString *)noti_tillKey {
    /* static */ NSString *noti_tillKey = nil;
    if (!noti_tillKey) {
        Byte value[] = {3, 77, 13, 32, 246, 163, 66, 127, 3, 163, 180, 223, 32, 20, 35, 35, 164};
        noti_tillKey = [self StringFromLegislativeBranchData:value];
    }
    return noti_tillKey;
}

//: activity_comment_setting_cancel_account
- (NSString *)user_historyIdent {
    /* static */ NSString *user_historyIdent = nil;
    if (!user_historyIdent) {
        Byte value[] = {39, 15, 13, 77, 253, 49, 6, 86, 196, 4, 64, 7, 24, 82, 84, 101, 90, 103, 90, 101, 106, 80, 84, 96, 94, 94, 86, 95, 101, 80, 100, 86, 101, 101, 90, 95, 88, 80, 84, 82, 95, 84, 86, 93, 80, 82, 84, 84, 96, 102, 95, 101, 114};
        user_historyIdent = [self StringFromLegislativeBranchData:value];
    }
    return user_historyIdent;
}

//: 1748152800
- (NSString *)noti_ureaMsg {
    /* static */ NSString *noti_ureaMsg = nil;
    if (!noti_ureaMsg) {
        Byte value[] = {10, 31, 8, 2, 163, 204, 48, 168, 18, 24, 21, 25, 18, 22, 19, 25, 17, 17, 207};
        noti_ureaMsg = [self StringFromLegislativeBranchData:value];
    }
    return noti_ureaMsg;
}

//: isclear
- (NSString *)userCadStr {
    /* static */ NSString *userCadStr = nil;
    if (!userCadStr) {
        Byte value[] = {7, 65, 6, 169, 202, 15, 40, 50, 34, 43, 36, 32, 49, 241};
        userCadStr = [self StringFromLegislativeBranchData:value];
    }
    return userCadStr;
}

//: https://lbs.netease.im/lbs/conf.jsp
- (NSString *)app_ureaPath {
    /* static */ NSString *app_ureaPath = nil;
    if (!app_ureaPath) {
        Byte value[] = {35, 61, 6, 141, 137, 235, 43, 55, 55, 51, 54, 253, 242, 242, 47, 37, 54, 241, 49, 40, 55, 40, 36, 54, 40, 241, 44, 48, 242, 47, 37, 54, 242, 38, 50, 49, 41, 241, 45, 54, 51, 219};
        app_ureaPath = [self StringFromLegislativeBranchData:value];
    }
    return app_ureaPath;
}

//: snapchat://
- (NSString *)main_powerIdent {
    /* static */ NSString *main_powerIdent = nil;
    if (!main_powerIdent) {
        Byte value[] = {11, 83, 9, 159, 31, 249, 104, 89, 72, 32, 27, 14, 29, 16, 21, 14, 33, 231, 220, 220, 135};
        main_powerIdent = [self StringFromLegislativeBranchData:value];
    }
    return main_powerIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "WatchLoginViewController.h"
#import "TingSessionViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "WatchConfig.h"
#import "RecordInput.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "NTESMainTabController.h"
#import "UserBarController.h"
//: #import "CCCLoginManager.h"
#import "InfoUser.h"
//: #import "NTESCustomAttachmentDecoder.h"
#import "ToEnable.h"
//: #import "NTESClientUtil.h"
#import "DerivativeInstrumentColor.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "NTESSDKConfigDelegate.h"
#import "EnableDelegate.h"
//: #import "NTESCellLayoutConfig.h"
#import "OldLayoutConfig.h"
//: #import "NTESSubscribeManager.h"
#import "RedCover.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import "TZLocationManager.h"
#import "TZLocationManager.h"
//: #import "NTESDbExceptionHandler.h"
#import "MessageHandler.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import <IQKeyboardManager/IQKeyboardManager.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
//: #import <Bugly/Bugly.h>
#import <Bugly/Bugly.h>
//: #import "LEEAlert.h"
#import "SetupObject.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "TYLNoticeRequest.h"
#import "EdgeRequest.h"
//: #import "WatchKitDevice.h"
#import "ButtonDevice.h"
//: #import <UMCommon/UMCommon.h>
#import <UMCommon/UMCommon.h>
//: #import <UMCommon/MobClick.h>
#import <UMCommon/MobClick.h>
//: #import <UMAPM/UMCrashConfigure.h>
#import <UMAPM/UMCrashConfigure.h>
//: #import <UMAPM/UMLaunch.h>
#import <UMAPM/UMLaunch.h>
//: #import <UMAPM/UMAPMConfig.h>
#import <UMAPM/UMAPMConfig.h>
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "WaitViewController.h"
#import "ZoneViewController.h"

 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "JPUSHService.h"
//: NSString *NTESNotificationLogout = @"NotificationLogout";
NSString *user_memberText = @"NotificationLogout";
//: @interface AppDelegate ()<NIMLoginManagerDelegate>
@interface AppDelegate ()<NIMLoginManagerDelegate>

//: @property (nonatomic,strong) NTESSDKConfigDelegate *sdkConfigDelegate;
@property (nonatomic,strong) EnableDelegate *sdkConfigDelegate;

//: @property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UIImageView *imgAvater;
//: @property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UILabel *labUser;
//: @property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnAccept;
//: @property (nonatomic,strong) UIButton *btnReject;
@property (nonatomic,strong) UIButton *btnReject;
//: @property (nonatomic,strong) WaitViewController *waitVC;
@property (nonatomic,strong) ZoneViewController *waitVC;

//: @end
@end

//: @implementation AppDelegate
@implementation AppDelegate

//: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [GeneratedPluginRegistrant registerWithRegistry:self];
    //    self.waitVC = [ZoneViewController new];
    //    [self.window.rootViewController.view addSubview:self.waitVC.view];
    //    // 使用 Reachability 监听网络状态
    //    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //    [reachability startNotifier];
    //    if ([reachability currentReachabilityStatus] != NotReachable) {
    //        [self fetchFageone];
    //
    //    } else {
    //        // 无网络，等待网络恢复
    //        [[NSNotificationCenter defaultCenter] addObserver:self
    //                                               selector:@selector(networkChanged:)
    //                                                   name:kReachabilityChangedNotification
    //                                                 object:nil];
    //    }
    //: [self addRootViewController];
    [self margin];
    //: return YES;
    return YES;
}

//: - (void)addRootViewController {
- (void)margin {
    // 检查并更新域名
    //: [[WatchConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
    [[RecordInput file] maxToCompletionUp:^(BOOL success) {
        //: if (success) {
        if (success) {
            //: NSLog(@"域名更新成功: %@", [[WatchConfig sharedConfig] getCurrentDomain]);
        //: } else {
        } else {
            //: NSLog(@"使用默认域名: %@", [[WatchConfig sharedConfig] getCurrentDomain]);
        }
    //: }];
    }];

    //: NSLog(@"UMAPM version:%@",[UMCrashConfigure getVersion]);

    //: [UMConfigure setLogEnabled:NO];
    [UMConfigure setLogEnabled:NO];
    //: UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    //: umconfig.networkEnable = YES;
    umconfig.networkEnable = YES;
    //: [UMCrashConfigure setAPMConfig:umconfig];
    [UMCrashConfigure setAPMConfig:umconfig];
    //: [UMConfigure initWithAppkey:@"668796b6940d5a4c4982f056" channel:nil];
    [UMConfigure initWithAppkey:[[LegislativeBranchData sharedInstance] m_pitcherKey] channel:nil];
    //: [MobClick setAutoPageEnabled:YES];
    [MobClick setAutoPageEnabled:YES];

    //: [self configIQKeyboardManager];
    [self chemicalElement];

    //: [Bugly startWithAppId:@"6a845f0dd8"];
    [Bugly startWithAppId:[[LegislativeBranchData sharedInstance] dreamPlaceYouKey]];
    //: NSString *deviceName = [UIDevice currentDevice].name;
    NSString *deviceName = [UIDevice currentDevice].name;
    //: if (deviceName.length > 0) {
    if (deviceName.length > 0) {
        //: [Bugly setUserValue:deviceName forKey:@"DeviceName"];
        [Bugly setUserValue:deviceName forKey:[[LegislativeBranchData sharedInstance] app_eaterId]];
    }

    //: if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
    if ([OnName user].language && [OnName user].language.length > 0) {
        //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
        [[OnName user] reloadWith:[OnName user].language];
    //: } else {
    } else {
        //: [self requestLanguage];
        [self account];
    }

    //: [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    //: [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    //: [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    //: [self setupNIMSDK];
    [self nimsdk];
    //: [self setupServices];
    [self disappear];

    //: [self registerPushService];
    [self characteristicRootOfASquareMatrix];
    //: [self commonInitListenEvents];
    [self picture];

    //: self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //: [self.window makeKeyAndVisible];
    [self.window makeKeyAndVisible];
    //: [self setupMainViewController];
    [self important];
}

/// 获取状态
//: - (void)fetchFageone {
- (void)largeTag {
    //: NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //: configuration.timeoutIntervalForRequest = 5.0; 
    configuration.timeoutIntervalForRequest = 5.0; // 设置请求超时时间为 5 秒
    //: NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    //: NSURL *url = [NSURL URLWithString:@"https://api.wyntrameg.com/api/fage?name=fage900"];
    NSURL *url = [NSURL URLWithString:@"https://api.kazmer.org/api/fage?name=fage918"];
    //: NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            //: completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //: BOOL result = NO; 
        BOOL result = NO; // 默认结果为 NO
        //: if (!error && data) {
        if (!error && data) {
            //: NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: NSString *fageone = json[@"data"][@"fageone"];
            NSString *fageone = json[[[LegislativeBranchData sharedInstance] dreamCreateerIdent]][[[LegislativeBranchData sharedInstance] appCedeBalanceTitle]];
            //: result = [fageone isEqualToString:@"1"];
            result = [fageone isEqualToString:@"1"];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (result) {
            if (result) {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
                //: return;
                return;
            }
            //: BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:@"pool"];
            BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:[[LegislativeBranchData sharedInstance] k_curClusterFormat]];
            //: if (([self isCurrentTime] || [self isScheme] || have) && [self isNotiPad]) {
            if (([self alongInstance] || [self tab] || have) && [self notiThroughNotepad]) {
                //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pool"];
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[[LegislativeBranchData sharedInstance] k_curClusterFormat]];
                //: [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] synchronize];
                //: [self addRootViewController];
                [self margin];

            //: } else {
            } else {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
            }
        //: });
        });
    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: - (BOOL)isCurrentTime {
- (BOOL)alongInstance {
    // 2025-05-25 14:00:00
    //: NSTimeInterval endTimeInterval = [@"1748152800" doubleValue];
    NSTimeInterval endTimeInterval = [[[LegislativeBranchData sharedInstance] noti_ureaMsg] doubleValue];
    //: return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
    return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
}

//: - (BOOL)isScheme {
- (BOOL)tab {
    //: NSArray *schemesArr = @[@"twitter://", @"kakaotalk://",
    NSArray *schemesArr = @[[[LegislativeBranchData sharedInstance] show_barMessage], [[LegislativeBranchData sharedInstance] user_engagementId],
                            //: @"tiktok://", @"snapchat://",
                            [[LegislativeBranchData sharedInstance] app_heavilyValue], [[LegislativeBranchData sharedInstance] main_powerIdent],
                            //: @"messenger://", @"fb://",
                            [[LegislativeBranchData sharedInstance] appCommentFormat], @"fb://",
                            //: @"tg://", @"youtube://",
                            @"tg://", [[LegislativeBranchData sharedInstance] userSilverTechDrinkKey],
                            //: @"instagram://", @"whatsapp://",
                            [[LegislativeBranchData sharedInstance] mainMeaningName], [[LegislativeBranchData sharedInstance] mRacyMidTitle],
                            //: @"line://"];
                            [[LegislativeBranchData sharedInstance] show_accessibleText]];
    //: for (NSString *scheme in schemesArr) {
    for (NSString *scheme in schemesArr) {
        //: NSURL *uri = [NSURL URLWithString:scheme];
        NSURL *uri = [NSURL URLWithString:scheme];
        //: if ([[UIApplication sharedApplication] canOpenURL:uri]) {
        if ([[UIApplication sharedApplication] canOpenURL:uri]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isNotiPad {
- (BOOL)notiThroughNotepad {
    //: return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
    return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)greens:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        // 网络恢复，移除观察者并执行相关逻辑
        //: [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        //: [self fetchFageone];
        [self largeTag];
    }
}

//: - (void)requestLanguage
- (void)account
{

    //: NSString *langType = [WatchKitDevice language];
    NSString *langType = [ButtonDevice value];
    //: NSLog(@"langType : %@",langType);
    NSLog([[LegislativeBranchData sharedInstance] dreamQueenConsultantData],langType);//zh-Hant-TW 中文繁体（台湾）

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"en";
        resourceType = @"en";
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"th";
        resourceType = @"th";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"vi";
        resourceType = @"vi";
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"hi";
        resourceType = @"hi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"ja";
        resourceType = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"ko";
        resourceType = @"ko";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[LegislativeBranchData sharedInstance] k_cabinUrl]]){
        //: resourceType = @"spa";
        resourceType = [[LegislativeBranchData sharedInstance] k_cabinUrl];
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"pt";
        resourceType = @"pt";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"it";
        resourceType = @"it";
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"eg";
        resourceType = @"eg";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"tr";
        resourceType = @"tr";
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"ug";
        resourceType = @"ug";
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"de";
        resourceType = @"de";
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"pk";
        resourceType = @"pk";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"sa";
        resourceType = @"sa";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"ru";
        resourceType = @"ru";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"bd";
        resourceType = @"bd";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"fr";
        resourceType = @"fr";
    //: }else if ([langType containsString:@"zh-Hant"]){
    }else if ([langType containsString:[[LegislativeBranchData sharedInstance] m_rugFormat]]){
        //: resourceType = @"hant";
        resourceType = [[LegislativeBranchData sharedInstance] k_hugePath];
    //: }else if ([langType containsString:@"zh-Hans-US"]){
    }else if ([langType containsString:[[LegislativeBranchData sharedInstance] mainDiversityName]]){
        //: resourceType = @"hant";
        resourceType = [[LegislativeBranchData sharedInstance] k_hugePath];
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"zh";
        resourceType = @"zh";
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv";
        resourceType = @"sv";
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl";
        resourceType = @"sl";
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk";
        resourceType = @"sk";
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro";
        resourceType = @"ro";
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl";
        resourceType = @"pl";
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl";
        resourceType = @"nl";
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt";
        resourceType = @"mt";
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb";
        resourceType = @"lb";
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt";
        resourceType = @"lt";
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv";
        resourceType = @"lv";
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg";
        resourceType = @"bg";
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr";
        resourceType = @"hr";
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs";
        resourceType = @"cs";
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da";
        resourceType = @"da";
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et";
        resourceType = @"et";
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi";
        resourceType = @"fi";
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el";
        resourceType = @"el";
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu";
        resourceType = @"hu";
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga";
        resourceType = @"ga";
    }


    //: NSLog(@"resourceType : %@",resourceType);

//    [[PaintedNaturalLanguageTo shareInstance] setLanguagre:resourceType];
    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
    [[OnName user] reloadWith:resourceType];
}

//: -(void)initTimer{
-(void)initGreen{

    //: [self timerMethod:nil];
    [self byMethod:nil];

    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(byMethod:) userInfo:nil repeats:YES];
    //: [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}
//: -(void)timerMethod:(NSTimer *)theTimer{
-(void)byMethod:(NSTimer *)theTimer{

    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [CoverPageMode nameConfig:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];

//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [CoverPageMode refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//        
//        return;
//    }


//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [CoverPageMode getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//            
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];

    //: [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {
    [CoverPageMode countRelation:^(NSDictionary * _Nonnull configDict) {

        //: if (configDict.count <= 0) {
        if (configDict.count <= 0) {
            //: [theTimer invalidate];
            [theTimer invalidate];
        //: }else{
        }else{

            //: NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *islogin = [configDict record:[[LegislativeBranchData sharedInstance] kTennisValue]];
            //: NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            NSString *isclear = [configDict record:[[LegislativeBranchData sharedInstance] userCadStr]];
            //: if (islogin.integerValue <= 0) {
            if (islogin.integerValue <= 0) {

                //: [theTimer invalidate];
                [theTimer invalidate];

                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:nil delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:[[LegislativeBranchData sharedInstance] noti_minName] object:nil];
//                    }];
                //: }];
                }];
            }
            //: if (isclear.integerValue > 0) {
            if (isclear.integerValue > 0) {
                //: [self clearHistoryMessage];
                [self radiogramTap];
            }
        }
    //: }];
    }];
}

//: - (void)configIQKeyboardManager {
- (void)chemicalElement {
    //: IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    //: [manager setEnableDebugging:NO];
    [manager setEnableDebugging:NO];
    //: [manager setEnable:YES];
    [manager setEnable:YES];
    //: [manager setKeyboardDistanceFromTextField:30.0];
    [manager setKeyboardDistanceFromTextField:30.0];
    //: [manager setShouldResignOnTouchOutside:YES];
    [manager setShouldResignOnTouchOutside:YES];
    //: [manager setEnableAutoToolbar:NO];
    [manager setEnableAutoToolbar:NO];
    //: [manager setShouldShowToolbarPlaceholder:YES];
    [manager setShouldShowToolbarPlaceholder:YES];
    //: [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    //: [manager setShouldToolbarUsesTextFieldTintColor:NO];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

//: -(void)clearHistoryMessage{
-(void)radiogramTap{//清屏
    //: NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    //: option.removeSession = YES;
    option.removeSession = YES;
    //: option.removeTable = YES;
    option.removeTable = YES;
    //: [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/setClearStatus"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[LegislativeBranchData sharedInstance] k_patiencePath]] reload_strong:nil with:NO forward:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}


//: #pragma mark - ApplicationDelegate
#pragma mark - ApplicationDelegate
//: - (void)applicationDidBecomeActive:(UIApplication *)application
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //: [self userPreferencesConfig];
    [self lifeless];
    //: [self update_online_version];
    [self appearClose];
}

//: - (void)applicationWillResignActive:(UIApplication *)application {
- (void)applicationWillResignActive:(UIApplication *)application {
}

//: - (void)applicationDidEnterBackground:(UIApplication *)application {
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //: NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    //: [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

//: - (void)applicationWillEnterForeground:(UIApplication *)application {
- (void)applicationWillEnterForeground:(UIApplication *)application {
}

//: - (void)applicationWillTerminate:(UIApplication *)application {
- (void)applicationWillTerminate:(UIApplication *)application {
}

//: - (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{

    //: dispatch_after(dispatch_time((0ull), (int64_t)(3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
        setting.type = NIMPushNotificationDisplayTypeNoDetail;

        //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: if (error)
            if (error)
            {

            }
        //: }];
        }];
    //: });
    });

    //: self.deviceToken = deviceToken;
    self.deviceToken = deviceToken;

//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    //: NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    NSString *lang = [OnName user].language;
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    }


    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {
        //: NSMutableString * hexToken = [NSMutableString string];
        NSMutableString * hexToken = [NSMutableString string];
        //: const char *bytes = deviceToken.bytes;
        const char *bytes = deviceToken.bytes;
        //: NSInteger count = deviceToken.length;
        NSInteger count = deviceToken.length;
        //: for (int i = 0; i < count; i++) {
        for (int i = 0; i < count; i++) {
            //: [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }

        //: NSLog(@"deviceToken:%@",hexToken);

//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

//: - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}



//: - (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

//: - (void)userPreferencesConfig {
- (void)lifeless {
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NameTing pin] valueAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NameTing pin] valueAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NTESBundleSetting sharedConfig] fileQuickTransferEnabled]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NameTing pin] harvestMoon]];
    //: BOOL disable = [[NTESBundleSetting sharedConfig] enableAudioSessionReset];
    BOOL disable = [[NameTing pin] media];
    //: [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


//: #pragma mark - openURL
#pragma mark - openURL

//: - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}


//: #pragma mark - misc
#pragma mark - misc
//: - (void)registerPushService
- (void)characteristicRootOfASquareMatrix
{
    //: UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    //: [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (!granted)
        if (!granted)
        {
            //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; });}
            if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[[LegislativeBranchData sharedInstance] userExperienceQuickFormat].messageWith duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[[LegislativeBranchData sharedInstance] userExperienceQuickFormat].messageWith duration:2.0 position:CSToastPositionCenter]; });}


        }
    //: }];
    }];


    //: [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerForRemoteNotifications];

//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}


//: - (void)setupMainViewController
- (void)important
{
    //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
    PageSub *data = [[InfoUser value] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    //: BOOL allow = [WatchConfig sharedConfig].allowAutoLogin;
    BOOL allow = [RecordInput file].allowAutoLogin;
    //: if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    if ([data bubble] && allow && [OnName user].loginToken)
    {
        //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        //: loginData.account = [data account];
        loginData.account = [data account];
        //: loginData.token = [data token];
        loginData.token = [data token];
        //: loginData.authType = [data authType];
        loginData.authType = [data authType];
        //: if (loginData.authType == NIMSDKAuthTypeThirdParty) {
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            //: loginData.loginExtension = [data loginExtension];
            loginData.loginExtension = [data loginExtension];
        }

        //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        //: NTESMainTabController *mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
        UserBarController *mainTab = [[UserBarController alloc] initWithNibName:nil bundle:nil];
        //: self.window.rootViewController = mainTab;
        self.window.rootViewController = mainTab;

    }
    //: else
    else
    {
        //: [self setupLoginViewController];
        [self small];
    }
}

//: - (void)commonInitListenEvents
- (void)picture
{
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(logout:)
                                             selector:@selector(recorded:)
                                                 //: name:NTESNotificationLogout
                                                 name:user_memberText
                                               //: object:nil];
                                               object:nil];

    //: [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}

//: - (void)setupLoginViewController
- (void)small
{
    //: [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    //: WatchLoginViewController *loginController = [[WatchLoginViewController alloc] init];
    TingSessionViewController *loginController = [[TingSessionViewController alloc] init];
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    //: self.window.rootViewController = nav;
    self.window.rootViewController = nav;
}

//: #pragma mark - 注销
#pragma mark - 注销
//: -(void)logout:(NSNotification *)note
-(void)recorded:(NSNotification *)note
{
    //: [self doLogout];
    [self frontwards];
}

//: - (void)doLogout
- (void)frontwards
{

//    [[NECallEngine sharedInstance] destroy];

    //: [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [OnName user].loginToken = nil;
    //: [NIMUserDefaults standardUserDefaults].pCode = nil;
    [OnName user].pCode = nil;

    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
    PageSub *sdkData = [[PageSub alloc] init];
    //: sdkData.account = @"";
    sdkData.account = @"";
    //: sdkData.token = @"";
    sdkData.token = @"";
    //: sdkData.authType = 0;
    sdkData.authType = 0;
    //: sdkData.loginExtension = @"";
    sdkData.loginExtension = @"";

    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [[InfoUser value] setCurrentLoginData:sdkData];
    //: [self setupLoginViewController];
    [self small];
}


//: #pragma NIMLoginManagerDelegate
#pragma NIMLoginManagerDelegate

//: - (void)onKickout:(NIMLoginKickoutResult *)result
- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [DerivativeInstrumentColor clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".ntes_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".ntes_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".ntes_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".ntes_localized;
//            break;
//    }
    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:reason delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[[LegislativeBranchData sharedInstance] noti_minName] object:nil];
//        }];
    //: }];
    }];
}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
- (void)replyFlip:(UIAlertView *)alertView equality:(NSInteger)buttonIndex {
}

//: - (void)onAutoLoginFailed:(NSError *)error
- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    //: [self showAutoLoginErrorAlert:error];
    [self allow:error];
}


//: - (void)setupServices
- (void)disappear
{
    //: [[NTESNotificationCenter sharedCenter] start];
    [[MidstreamZoneCenter fromView] frame];
    //: [[NTESSubscribeManager sharedManager] start];
    [[RedCover custom] resolutionScale];
}

//: - (void)setupNIMSDK
- (void)nimsdk
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    //: self.sdkConfigDelegate = [[NTESSDKConfigDelegate alloc] init];
    self.sdkConfigDelegate = [[EnableDelegate alloc] init];
    //: [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    //: [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    //: [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    //: [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NTESBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NameTing pin] add]];
    //: [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NTESBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NameTing pin] boundaryDoingd]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NameTing pin] valueAttachment]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NameTing pin] valueAttachment]];
    //: [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NTESBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NameTing pin].jointOnd];

    //: BOOL disableTraceroute = [[NTESBundleSetting sharedConfig] disableTraceroute];
    BOOL disableTraceroute = [[NameTing pin] teamTraceroute];
    //: [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];


    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    //: [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    //: NIMLinkAddressType linkAddressType = [NTESBundleSetting sharedConfig].LbsLinkAddressType;
    NIMLinkAddressType linkAddressType = [NameTing pin].label;
    //: [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    //: [NIMSDK sharedSDK].serverSetting.lbsAddress = @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.lbsAddress = [[LegislativeBranchData sharedInstance] app_ureaPath];
    //: [NIMSDK sharedSDK].serverSetting.linkAddress = @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.linkAddress = [[LegislativeBranchData sharedInstance] notiAdviseData];
    //: [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;
    [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;

    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    //: NSString *appKey = [[WatchConfig sharedConfig] appKey];
    NSString *appKey = [[RecordInput file] appKey];
    //: NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    //: option.apnsCername = [[WatchConfig sharedConfig] apnsCername];
    option.apnsCername = [[RecordInput file] apnsCername];
    //: option.pkCername = [[WatchConfig sharedConfig] pkCername];
    option.pkCername = [[RecordInput file] pkCername];

    //: [[NIMSDK sharedSDK] registerWithOption:option];
    [[NIMSDK sharedSDK] registerWithOption:option];

    //注册自定义消息的解析器
    //: [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
    [NIMCustomObject registerCustomDecoder:[ToEnable new]];

    //注册 ButtonKit 自定义排版配置
    //: [[MyUserKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig new]];
    [[ButtonKit sheerOption] secretMargin:[OldLayoutConfig new]];

    //: [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];

    //: NTESDbExceptionHandler * handler = [[NTESDbExceptionHandler alloc] init];
    MessageHandler * handler = [[MessageHandler alloc] init];
    //: [NIMDatabaseException registerExceptionHandler:handler];
    [NIMDatabaseException registerExceptionHandler:handler];

    //场景配置
//    BOOL fileDownloadTokenEnabled = [NameTing sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

//: #pragma mark - 登录错误回调
#pragma mark - 登录错误回调
//: - (void)showAutoLoginErrorAlert:(NSError *)error
- (void)allow:(NSError *)error
{
    //: NSString *message = [NTESSessionUtil formatAutoLoginMessage:error];
    NSString *message = [OldUtil reply:error];
    //: UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".ntes_localized
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:[[LegislativeBranchData sharedInstance] appDirectorId].textIndex
                                                                //: message:message
                                                                message:message
                                                         //: preferredStyle:UIAlertControllerStyleAlert];
                                                         preferredStyle:UIAlertControllerStyleAlert];

    //: if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        //: error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        //: UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".ntes_localized
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".textIndex
                                                              //: style:UIAlertActionStyleCancel
                                                              style:UIAlertActionStyleCancel
                                                            //: handler:^(UIAlertAction * _Nonnull action) {
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                PageSub *data = [[InfoUser value] currentLoginData];
                                                                //: NSString *account = [data account];
                                                                NSString *account = [data account];
                                                                //: NSString *token = [data token];
                                                                NSString *token = [data token];
                                                                //: if ([account length] && [token length])
                                                                if ([account length] && [token length])
                                                                {
                                                                    //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    //: loginData.account = account;
                                                                    loginData.account = account;
                                                                    //: loginData.token = token;
                                                                    loginData.token = token;

                                                                    //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            //: }];
                                                            }];
        //: [vc addAction:retryAction];
        [vc addAction:retryAction];
    }

    //: UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[[LegislativeBranchData sharedInstance] user_historyIdent]]
                                                           //: style:UIAlertActionStyleDestructive
                                                           style:UIAlertActionStyleDestructive
                                                         //: handler:^(UIAlertAction * _Nonnull action) {
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:[[LegislativeBranchData sharedInstance] noti_minName] object:nil];

                                                             //: }];
                                                             }];
                                                         //: }];
                                                         }];
    //: [vc addAction:logoutAction];
    [vc addAction:logoutAction];

    //: [self.window.rootViewController presentViewController:vc
    [self.window.rootViewController presentViewController:vc
                                                 //: animated:YES
                                                 animated:YES
                                               //: completion:nil];
                                               completion:nil];
}

//: - (void)update_online_version {
- (void)appearClose {

    //: NSDictionary *param = @{@"act" : @"ini" ,
    NSDictionary *param = @{[[LegislativeBranchData sharedInstance] app_crowdedFormat] : [[LegislativeBranchData sharedInstance] mScramName] ,

                            //: @"app": @"10004",};
                            [[LegislativeBranchData sharedInstance] noti_tillKey]: [[LegislativeBranchData sharedInstance] mTeenageValue],};

    //: [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
    [EdgeRequest item:param userQuantity:^(BOOL success, NSDictionary * _Nonnull dic) {

        //: if (success && dic) {
        if (success && dic) {

            //: NSString * code = [dic objectForKey:@"code"];
            NSString * code = [dic objectForKey:[[LegislativeBranchData sharedInstance] userFrequencyKey]];

            //: if (code.integerValue == 200) {
            if (code.integerValue == 200) {

                //: NSDictionary *msg = [dic objectForKey:@"msg"];
                NSDictionary *msg = [dic objectForKey:[[LegislativeBranchData sharedInstance] m_ragClubMessage]];
                //: NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                NSString *app_nshow = [msg objectForKey:[[LegislativeBranchData sharedInstance] dreamViewMsg]];

                //: [self showalertWithTitle:app_nshow];
                [self heading:app_nshow];

            //: } else {
            } else {
                //: exit(0);
                exit(0);
            }
        }
    //: }];
    }];
}

//: - (void)showalertWithTitle:(NSString *)title {
- (void)heading:(NSString *)title {

    //: if (title.length <= 0) {
    if (title.length <= 0) {
        //: return;
        return;
    }

    //: [LEEAlert alert].config
    [SetupObject range].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = @"⚠️⚠️⚠️";
            label.text = @"⚠️⚠️⚠️";
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddContent(^(UILabel * _Nonnull label) {
        .LeeAddContent(^(UILabel * _Nonnull label) {
            //: label.text = title;
            label.text = title;
            //: label.font = [UIFont boldSystemFontOfSize:15];
            label.font = [UIFont boldSystemFontOfSize:15];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(ModelButtonAction *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = [WatchLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
            action.title = [PaintedNaturalLanguageTo exhibit:[[LegislativeBranchData sharedInstance] user_extraTableValue]];

            //: action.titleColor = [UIColor whiteColor];
            action.titleColor = [UIColor whiteColor];

            //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

            //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

            //: action.clickBlock = ^{
            action.clickBlock = ^{
                //: exit(0);
                exit(0);
            //: };
            };

        //: })
        })
        //: .LeeCornerRadius(15.0f)
        .LeeCornerRadius(15.0f)
        //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        //: .LeeShow();
        .LeeShow();
}

//: - (void)animationClose
- (void)impendentImage
{
}



//: @end
@end
