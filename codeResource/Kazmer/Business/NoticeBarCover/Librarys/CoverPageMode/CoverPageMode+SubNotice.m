
#import <Foundation/Foundation.h>

@interface AchieveData : NSObject

+ (instancetype)sharedInstance;

//: isclear
@property (nonatomic, copy) NSString *noti_maxWeepText;

//: sex
@property (nonatomic, copy) NSString *mainDeletePath;

//: isspeakingtime
@property (nonatomic, copy) NSString *app_developerStr;

//: umappkey_ios
@property (nonatomic, copy) NSString *noti_garlicCreateerKey;

//: istsbutton
@property (nonatomic, copy) NSString *user_skyMessage;

//: https://imapi.9idbq.cn/api/user/edit
@property (nonatomic, copy) NSString *mainFlowUrl;

//: autoLogin
@property (nonatomic, copy) NSString *m_loserBarreName;

//: Content-Length
@property (nonatomic, copy) NSString *noti_palUrl;

//: birth
@property (nonatomic, copy) NSString *noti_undertakeMessage;

//: /user/generateUser
@property (nonatomic, copy) NSString *userMagnitudeKey;

//: nickname
@property (nonatomic, copy) NSString *k_positionPath;

//: email
@property (nonatomic, copy) NSString *noti_companyValue;

//: mobile
@property (nonatomic, copy) NSString *main_manName;

//: umappkey_android
@property (nonatomic, copy) NSString *mainCabinKey;

//: getpassword
@property (nonatomic, copy) NSString *kUglyShootMessageStr;

//: chatnotify
@property (nonatomic, copy) NSString *showHugeMessage;

//: /user/getBookStatus
@property (nonatomic, copy) NSString *notiSultanTitle;

//: /other/systemSetting
@property (nonatomic, copy) NSString *userSystemMessage;

//: logininfo
@property (nonatomic, copy) NSString *user_necessaryUrl;

//: application/json
@property (nonatomic, copy) NSString *dream_marchStrangeIdent;

//: isweixinlogin
@property (nonatomic, copy) NSString *notiBubbleMsg;

//: /user/deleteUser
@property (nonatomic, copy) NSString *userRemoveIdent;

//: password
@property (nonatomic, copy) NSString *appDominateId;

//: Messageread
@property (nonatomic, copy) NSString *mViewKey;

//: avatar
@property (nonatomic, copy) NSString *userColorChooseStudyIdent;

//: sign
@property (nonatomic, copy) NSString *userCoveId;

//: allowdeletion
@property (nonatomic, copy) NSString *mSurgeryKey;

//: redpacket
@property (nonatomic, copy) NSString *user_developerMessage;

//: POST
@property (nonatomic, copy) NSString *app_lanceFormat;

//: account
@property (nonatomic, copy) NSString *notiDifferenceMsg;

//: isinvitecode
@property (nonatomic, copy) NSString *mainFishingTitle;

//: globalsign
@property (nonatomic, copy) NSString *notiEngagementUreaPorterFormat;

//: Content-Type
@property (nonatomic, copy) NSString *appPopFormat;

//: /other/appSetting
@property (nonatomic, copy) NSString *app_vanishValue;

//: /user/checkmoments
@property (nonatomic, copy) NSString *mainCurMsg;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *k_pointeName;

//: servicer
@property (nonatomic, copy) NSString *mFiftyKey;

//: isavatar
@property (nonatomic, copy) NSString *dream_shareholderPath;

//: yinnihione
@property (nonatomic, copy) NSString *k_boomUrl;

//: birthday
@property (nonatomic, copy) NSString *kEverythingMessage;

//: issecret
@property (nonatomic, copy) NSString *dreamAirValue;

//: isregitor
@property (nonatomic, copy) NSString *main_shouldMsg;

//: ismustmobile
@property (nonatomic, copy) NSString *userMarchData;

//: islogin
@property (nonatomic, copy) NSString *kBasketUrl;

//: https://www.riverla.net/privacy.html
@property (nonatomic, copy) NSString *mStatePloyEaterIdent;

//: gender
@property (nonatomic, copy) NSString *notiVeteranIdent;

//: code
@property (nonatomic, copy) NSString *userMemoryMsg;

//: data
@property (nonatomic, copy) NSString *userElbowValue;

@end

@implementation AchieveData

+ (instancetype)sharedInstance {
    static AchieveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AchieveDataToCache:(Byte *)data {
    int tally = data[0];
    int outlaw = data[1];
    for (int i = 0; i < tally / 2; i++) {
        int begin = outlaw + i;
        int end = outlaw + tally - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[outlaw + tally] = 0;
    return data + outlaw;
}

- (NSString *)StringFromAchieveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AchieveDataToCache:data]];
}  

//: yinnihione
- (NSString *)k_boomUrl {
    if (!_k_boomUrl) {
        Byte value[] = {10, 7, 57, 201, 236, 120, 230, 101, 110, 111, 105, 104, 105, 110, 110, 105, 121, 19};
        _k_boomUrl = [self StringFromAchieveData:value];
    }
    return _k_boomUrl;
}

//: isregitor
- (NSString *)main_shouldMsg {
    if (!_main_shouldMsg) {
        Byte value[] = {9, 10, 64, 49, 252, 111, 111, 36, 164, 252, 114, 111, 116, 105, 103, 101, 114, 115, 105, 141};
        _main_shouldMsg = [self StringFromAchieveData:value];
    }
    return _main_shouldMsg;
}

//: account
- (NSString *)notiDifferenceMsg {
    if (!_notiDifferenceMsg) {
        Byte value[] = {7, 4, 247, 226, 116, 110, 117, 111, 99, 99, 97, 99};
        _notiDifferenceMsg = [self StringFromAchieveData:value];
    }
    return _notiDifferenceMsg;
}

//: umappkey_android
- (NSString *)mainCabinKey {
    if (!_mainCabinKey) {
        Byte value[] = {16, 8, 180, 4, 31, 87, 247, 166, 100, 105, 111, 114, 100, 110, 97, 95, 121, 101, 107, 112, 112, 97, 109, 117, 218};
        _mainCabinKey = [self StringFromAchieveData:value];
    }
    return _mainCabinKey;
}

//: mobile
- (NSString *)main_manName {
    if (!_main_manName) {
        Byte value[] = {6, 4, 98, 82, 101, 108, 105, 98, 111, 109, 115};
        _main_manName = [self StringFromAchieveData:value];
    }
    return _main_manName;
}

//: isspeakingtime
- (NSString *)app_developerStr {
    if (!_app_developerStr) {
        Byte value[] = {14, 3, 249, 101, 109, 105, 116, 103, 110, 105, 107, 97, 101, 112, 115, 115, 105, 15};
        _app_developerStr = [self StringFromAchieveData:value];
    }
    return _app_developerStr;
}

//: avatar
- (NSString *)userColorChooseStudyIdent {
    if (!_userColorChooseStudyIdent) {
        Byte value[] = {6, 4, 81, 167, 114, 97, 116, 97, 118, 97, 224};
        _userColorChooseStudyIdent = [self StringFromAchieveData:value];
    }
    return _userColorChooseStudyIdent;
}

//: /user/ismustmobile
- (NSString *)k_pointeName {
    if (!_k_pointeName) {
        Byte value[] = {18, 2, 101, 108, 105, 98, 111, 109, 116, 115, 117, 109, 115, 105, 47, 114, 101, 115, 117, 47, 155};
        _k_pointeName = [self StringFromAchieveData:value];
    }
    return _k_pointeName;
}

//: umappkey_ios
- (NSString *)noti_garlicCreateerKey {
    if (!_noti_garlicCreateerKey) {
        Byte value[] = {12, 2, 115, 111, 105, 95, 121, 101, 107, 112, 112, 97, 109, 117, 114};
        _noti_garlicCreateerKey = [self StringFromAchieveData:value];
    }
    return _noti_garlicCreateerKey;
}

//: istsbutton
- (NSString *)user_skyMessage {
    if (!_user_skyMessage) {
        Byte value[] = {10, 9, 70, 113, 20, 83, 148, 248, 164, 110, 111, 116, 116, 117, 98, 115, 116, 115, 105, 223};
        _user_skyMessage = [self StringFromAchieveData:value];
    }
    return _user_skyMessage;
}

//: Content-Type
- (NSString *)appPopFormat {
    if (!_appPopFormat) {
        Byte value[] = {12, 4, 114, 52, 101, 112, 121, 84, 45, 116, 110, 101, 116, 110, 111, 67, 134};
        _appPopFormat = [self StringFromAchieveData:value];
    }
    return _appPopFormat;
}

//: isclear
- (NSString *)noti_maxWeepText {
    if (!_noti_maxWeepText) {
        Byte value[] = {7, 6, 87, 123, 154, 114, 114, 97, 101, 108, 99, 115, 105, 124};
        _noti_maxWeepText = [self StringFromAchieveData:value];
    }
    return _noti_maxWeepText;
}

//: gender
- (NSString *)notiVeteranIdent {
    if (!_notiVeteranIdent) {
        Byte value[] = {6, 3, 202, 114, 101, 100, 110, 101, 103, 136};
        _notiVeteranIdent = [self StringFromAchieveData:value];
    }
    return _notiVeteranIdent;
}

//: /user/getBookStatus
- (NSString *)notiSultanTitle {
    if (!_notiSultanTitle) {
        Byte value[] = {19, 4, 88, 87, 115, 117, 116, 97, 116, 83, 107, 111, 111, 66, 116, 101, 103, 47, 114, 101, 115, 117, 47, 6};
        _notiSultanTitle = [self StringFromAchieveData:value];
    }
    return _notiSultanTitle;
}

//: nickname
- (NSString *)k_positionPath {
    if (!_k_positionPath) {
        Byte value[] = {8, 3, 187, 101, 109, 97, 110, 107, 99, 105, 110, 196};
        _k_positionPath = [self StringFromAchieveData:value];
    }
    return _k_positionPath;
}

//: getpassword
- (NSString *)kUglyShootMessageStr {
    if (!_kUglyShootMessageStr) {
        Byte value[] = {11, 12, 34, 10, 74, 15, 102, 140, 135, 229, 105, 239, 100, 114, 111, 119, 115, 115, 97, 112, 116, 101, 103, 229};
        _kUglyShootMessageStr = [self StringFromAchieveData:value];
    }
    return _kUglyShootMessageStr;
}

//: https://www.riverla.net/privacy.html
- (NSString *)mStatePloyEaterIdent {
    if (!_mStatePloyEaterIdent) {
        Byte value[] = {36, 3, 216, 108, 109, 116, 104, 46, 121, 99, 97, 118, 105, 114, 112, 47, 116, 101, 110, 46, 97, 108, 114, 101, 118, 105, 114, 46, 119, 119, 119, 47, 47, 58, 115, 112, 116, 116, 104, 185};
        _mStatePloyEaterIdent = [self StringFromAchieveData:value];
    }
    return _mStatePloyEaterIdent;
}

//: data
- (NSString *)userElbowValue {
    if (!_userElbowValue) {
        Byte value[] = {4, 9, 97, 234, 49, 149, 207, 29, 248, 97, 116, 97, 100, 55};
        _userElbowValue = [self StringFromAchieveData:value];
    }
    return _userElbowValue;
}

//: globalsign
- (NSString *)notiEngagementUreaPorterFormat {
    if (!_notiEngagementUreaPorterFormat) {
        Byte value[] = {10, 8, 32, 214, 118, 199, 213, 9, 110, 103, 105, 115, 108, 97, 98, 111, 108, 103, 68};
        _notiEngagementUreaPorterFormat = [self StringFromAchieveData:value];
    }
    return _notiEngagementUreaPorterFormat;
}

//: isinvitecode
- (NSString *)mainFishingTitle {
    if (!_mainFishingTitle) {
        Byte value[] = {12, 9, 161, 167, 32, 166, 161, 120, 16, 101, 100, 111, 99, 101, 116, 105, 118, 110, 105, 115, 105, 183};
        _mainFishingTitle = [self StringFromAchieveData:value];
    }
    return _mainFishingTitle;
}

//: POST
- (NSString *)app_lanceFormat {
    if (!_app_lanceFormat) {
        Byte value[] = {4, 7, 43, 79, 191, 47, 240, 84, 83, 79, 80, 88};
        _app_lanceFormat = [self StringFromAchieveData:value];
    }
    return _app_lanceFormat;
}

//: sign
- (NSString *)userCoveId {
    if (!_userCoveId) {
        Byte value[] = {4, 5, 175, 10, 250, 110, 103, 105, 115, 86};
        _userCoveId = [self StringFromAchieveData:value];
    }
    return _userCoveId;
}

//: birth
- (NSString *)noti_undertakeMessage {
    if (!_noti_undertakeMessage) {
        Byte value[] = {5, 3, 8, 104, 116, 114, 105, 98, 252};
        _noti_undertakeMessage = [self StringFromAchieveData:value];
    }
    return _noti_undertakeMessage;
}

//: ismustmobile
- (NSString *)userMarchData {
    if (!_userMarchData) {
        Byte value[] = {12, 3, 42, 101, 108, 105, 98, 111, 109, 116, 115, 117, 109, 115, 105, 66};
        _userMarchData = [self StringFromAchieveData:value];
    }
    return _userMarchData;
}

//: isweixinlogin
- (NSString *)notiBubbleMsg {
    if (!_notiBubbleMsg) {
        Byte value[] = {13, 2, 110, 105, 103, 111, 108, 110, 105, 120, 105, 101, 119, 115, 105, 154};
        _notiBubbleMsg = [self StringFromAchieveData:value];
    }
    return _notiBubbleMsg;
}

//: isavatar
- (NSString *)dream_shareholderPath {
    if (!_dream_shareholderPath) {
        Byte value[] = {8, 9, 240, 134, 251, 116, 163, 72, 101, 114, 97, 116, 97, 118, 97, 115, 105, 12};
        _dream_shareholderPath = [self StringFromAchieveData:value];
    }
    return _dream_shareholderPath;
}

//: autoLogin
- (NSString *)m_loserBarreName {
    if (!_m_loserBarreName) {
        Byte value[] = {9, 10, 7, 27, 12, 20, 79, 236, 136, 210, 110, 105, 103, 111, 76, 111, 116, 117, 97, 180};
        _m_loserBarreName = [self StringFromAchieveData:value];
    }
    return _m_loserBarreName;
}

//: Messageread
- (NSString *)mViewKey {
    if (!_mViewKey) {
        Byte value[] = {11, 8, 135, 147, 98, 4, 165, 222, 100, 97, 101, 114, 101, 103, 97, 115, 115, 101, 77, 77};
        _mViewKey = [self StringFromAchieveData:value];
    }
    return _mViewKey;
}

//: /user/deleteUser
- (NSString *)userRemoveIdent {
    if (!_userRemoveIdent) {
        Byte value[] = {16, 6, 52, 129, 89, 63, 114, 101, 115, 85, 101, 116, 101, 108, 101, 100, 47, 114, 101, 115, 117, 47, 195};
        _userRemoveIdent = [self StringFromAchieveData:value];
    }
    return _userRemoveIdent;
}

//: sex
- (NSString *)mainDeletePath {
    if (!_mainDeletePath) {
        Byte value[] = {3, 4, 237, 104, 120, 101, 115, 128};
        _mainDeletePath = [self StringFromAchieveData:value];
    }
    return _mainDeletePath;
}

//: https://imapi.9idbq.cn/api/user/edit
- (NSString *)mainFlowUrl {
    if (!_mainFlowUrl) {
        Byte value[] = {36, 6, 193, 238, 248, 248, 116, 105, 100, 101, 47, 114, 101, 115, 117, 47, 105, 112, 97, 47, 110, 99, 46, 113, 98, 100, 105, 57, 46, 105, 112, 97, 109, 105, 47, 47, 58, 115, 112, 116, 116, 104, 141};
        _mainFlowUrl = [self StringFromAchieveData:value];
    }
    return _mainFlowUrl;
}

//: logininfo
- (NSString *)user_necessaryUrl {
    if (!_user_necessaryUrl) {
        Byte value[] = {9, 3, 82, 111, 102, 110, 105, 110, 105, 103, 111, 108, 246};
        _user_necessaryUrl = [self StringFromAchieveData:value];
    }
    return _user_necessaryUrl;
}

//: issecret
- (NSString *)dreamAirValue {
    if (!_dreamAirValue) {
        Byte value[] = {8, 7, 87, 163, 9, 154, 65, 116, 101, 114, 99, 101, 115, 115, 105, 23};
        _dreamAirValue = [self StringFromAchieveData:value];
    }
    return _dreamAirValue;
}

//: code
- (NSString *)userMemoryMsg {
    if (!_userMemoryMsg) {
        Byte value[] = {4, 2, 101, 100, 111, 99, 57};
        _userMemoryMsg = [self StringFromAchieveData:value];
    }
    return _userMemoryMsg;
}

//: application/json
- (NSString *)dream_marchStrangeIdent {
    if (!_dream_marchStrangeIdent) {
        Byte value[] = {16, 2, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 101};
        _dream_marchStrangeIdent = [self StringFromAchieveData:value];
    }
    return _dream_marchStrangeIdent;
}

//: /user/generateUser
- (NSString *)userMagnitudeKey {
    if (!_userMagnitudeKey) {
        Byte value[] = {18, 8, 136, 232, 170, 48, 171, 239, 114, 101, 115, 85, 101, 116, 97, 114, 101, 110, 101, 103, 47, 114, 101, 115, 117, 47, 235};
        _userMagnitudeKey = [self StringFromAchieveData:value];
    }
    return _userMagnitudeKey;
}

//: password
- (NSString *)appDominateId {
    if (!_appDominateId) {
        Byte value[] = {8, 8, 158, 153, 165, 98, 209, 140, 100, 114, 111, 119, 115, 115, 97, 112, 162};
        _appDominateId = [self StringFromAchieveData:value];
    }
    return _appDominateId;
}

//: chatnotify
- (NSString *)showHugeMessage {
    if (!_showHugeMessage) {
        Byte value[] = {10, 5, 202, 210, 145, 121, 102, 105, 116, 111, 110, 116, 97, 104, 99, 5};
        _showHugeMessage = [self StringFromAchieveData:value];
    }
    return _showHugeMessage;
}

//: /other/systemSetting
- (NSString *)userSystemMessage {
    if (!_userSystemMessage) {
        Byte value[] = {20, 12, 60, 205, 71, 94, 29, 127, 57, 155, 153, 60, 103, 110, 105, 116, 116, 101, 83, 109, 101, 116, 115, 121, 115, 47, 114, 101, 104, 116, 111, 47, 176};
        _userSystemMessage = [self StringFromAchieveData:value];
    }
    return _userSystemMessage;
}

//: birthday
- (NSString *)kEverythingMessage {
    if (!_kEverythingMessage) {
        Byte value[] = {8, 3, 162, 121, 97, 100, 104, 116, 114, 105, 98, 55};
        _kEverythingMessage = [self StringFromAchieveData:value];
    }
    return _kEverythingMessage;
}

//: islogin
- (NSString *)kBasketUrl {
    if (!_kBasketUrl) {
        Byte value[] = {7, 2, 110, 105, 103, 111, 108, 115, 105, 120};
        _kBasketUrl = [self StringFromAchieveData:value];
    }
    return _kBasketUrl;
}

//: /other/appSetting
- (NSString *)app_vanishValue {
    if (!_app_vanishValue) {
        Byte value[] = {17, 11, 231, 178, 60, 35, 3, 159, 140, 16, 73, 103, 110, 105, 116, 116, 101, 83, 112, 112, 97, 47, 114, 101, 104, 116, 111, 47, 38};
        _app_vanishValue = [self StringFromAchieveData:value];
    }
    return _app_vanishValue;
}

//: allowdeletion
- (NSString *)mSurgeryKey {
    if (!_mSurgeryKey) {
        Byte value[] = {13, 5, 137, 108, 158, 110, 111, 105, 116, 101, 108, 101, 100, 119, 111, 108, 108, 97, 158};
        _mSurgeryKey = [self StringFromAchieveData:value];
    }
    return _mSurgeryKey;
}

//: servicer
- (NSString *)mFiftyKey {
    if (!_mFiftyKey) {
        Byte value[] = {8, 12, 199, 122, 169, 210, 150, 169, 117, 103, 244, 15, 114, 101, 99, 105, 118, 114, 101, 115, 161};
        _mFiftyKey = [self StringFromAchieveData:value];
    }
    return _mFiftyKey;
}

//: redpacket
- (NSString *)user_developerMessage {
    if (!_user_developerMessage) {
        Byte value[] = {9, 4, 193, 99, 116, 101, 107, 99, 97, 112, 100, 101, 114, 163};
        _user_developerMessage = [self StringFromAchieveData:value];
    }
    return _user_developerMessage;
}

//: /user/checkmoments
- (NSString *)mainCurMsg {
    if (!_mainCurMsg) {
        Byte value[] = {18, 5, 220, 90, 163, 115, 116, 110, 101, 109, 111, 109, 107, 99, 101, 104, 99, 47, 114, 101, 115, 117, 47, 128};
        _mainCurMsg = [self StringFromAchieveData:value];
    }
    return _mainCurMsg;
}

//: Content-Length
- (NSString *)noti_palUrl {
    if (!_noti_palUrl) {
        Byte value[] = {14, 8, 195, 132, 200, 87, 42, 182, 104, 116, 103, 110, 101, 76, 45, 116, 110, 101, 116, 110, 111, 67, 202};
        _noti_palUrl = [self StringFromAchieveData:value];
    }
    return _noti_palUrl;
}

//: email
- (NSString *)noti_companyValue {
    if (!_noti_companyValue) {
        Byte value[] = {5, 7, 133, 43, 72, 208, 253, 108, 105, 97, 109, 101, 244};
        _noti_companyValue = [self StringFromAchieveData:value];
    }
    return _noti_companyValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverPageMode+SubNotice.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager+Addtionals.h"
#import "CoverPageMode+SubNotice.h"
//: #import "CCCAutoLoginManager.h"
#import "NameLoginOption.h"

//: @implementation ZCHttpManager (Addtionals)
@implementation CoverPageMode (SubNotice)


//: #pragma mark - 传入用户信息 转换出 请求修改参数
#pragma mark - 传入用户信息 转换出 请求修改参数
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo{
+(NSDictionary *)input:(NSDictionary *)userInfo{

    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"mobile"] = [userInfo newStringValueForKey:@"mobile"];
    dict[[AchieveData sharedInstance].main_manName] = [userInfo record:[AchieveData sharedInstance].main_manName];
    //: dict[@"avatar"] = [userInfo newStringValueForKey:@"avatar"];
    dict[[AchieveData sharedInstance].userColorChooseStudyIdent] = [userInfo record:[AchieveData sharedInstance].userColorChooseStudyIdent];
    //: dict[@"nickname"] = [userInfo newStringValueForKey:@"nickname"];
    dict[[AchieveData sharedInstance].k_positionPath] = [userInfo record:[AchieveData sharedInstance].k_positionPath];
    //: dict[@"sex"] = [userInfo newStringValueForKey:@"gender"];
    dict[[AchieveData sharedInstance].mainDeletePath] = [userInfo record:[AchieveData sharedInstance].notiVeteranIdent];
    //: dict[@"birth"] = [userInfo newStringValueForKey:@"birthday"];
    dict[[AchieveData sharedInstance].noti_undertakeMessage] = [userInfo record:[AchieveData sharedInstance].kEverythingMessage];
    //: dict[@"email"] = me.userInfo.email.length ? me.userInfo.email : @"";
    dict[[AchieveData sharedInstance].noti_companyValue] = me.userInfo.email.length ? me.userInfo.email : @"";
    //: dict[@"sign"] = [userInfo newStringValueForKey:@"sign"];
    dict[[AchieveData sharedInstance].userCoveId] = [userInfo record:[AchieveData sharedInstance].userCoveId];
    //: return dict;
    return dict;
}

//: #pragma mark - 修改操作
#pragma mark - 修改操作
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value{
+(void)modeNeedDoing:(NSDictionary *)userInfo fastenerImage:(NSString *)key show:(NSString *)value{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    //: [dict setObject:value forKey:key];
    [dict setObject:value forKey:key];
    //: [ZCHttpManager getWithUrl:@"https://imapi.9idbq.cn/api/user/edit" params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[AchieveData sharedInstance].mainFlowUrl reload_strong:dict with:YES forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = resultDict[@"code"];
        NSString *code = resultDict[[AchieveData sharedInstance].userMemoryMsg];
        //: if (code.integerValue > 0) {
        if (code.integerValue > 0) {

        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}




//: + (void)refreshRegistConfig:(GlobalConfigBlock)block{
+ (void)carmineConfig:(GlobalConfigBlock)block{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].k_pointeName] reload_strong:nil with:NO forward:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict successAdd:[AchieveData sharedInstance].userElbowValue];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *ismustmobile = [data newStringValueForKey:@"ismustmobile"];
            NSString *ismustmobile = [data record:[AchieveData sharedInstance].userMarchData];//客户端注册ID是否必须为手机号
            //: NSString *isinvitecode = [data newStringValueForKey:@"isinvitecode"];
            NSString *isinvitecode = [data record:[AchieveData sharedInstance].mainFishingTitle];//邀请码是否必填
            //: NSString *isavatar = [data newStringValueForKey:@"isavatar"];
            NSString *isavatar = [data record:[AchieveData sharedInstance].dream_shareholderPath];//是否强制上传头像
            //: NSString *issecret = [data newStringValueForKey:@"issecret"];
            NSString *issecret = [data record:[AchieveData sharedInstance].dreamAirValue];//是否强制密保
            //: NSString *logininfo = [data newStringValueForKey:@"logininfo"];
            NSString *logininfo = [data record:[AchieveData sharedInstance].user_necessaryUrl];//登录页自定义信息
            //: NSString *isregitor = [data newStringValueForKey:@"isregitor"];
            NSString *isregitor = [data record:[AchieveData sharedInstance].main_shouldMsg];//1 允许注册 0 不允许
            //: NSString *isweixinlogin = [data newStringValueForKey:@"isweixinlogin"];
            NSString *isweixinlogin = [data record:[AchieveData sharedInstance].notiBubbleMsg];//是/开启微信登录
            //: NSString *isspeakingtime = [data newStringValueForKey:@"isspeakingtime"];
            NSString *isspeakingtime = [data record:[AchieveData sharedInstance].app_developerStr];//是否控制发言间隔时间

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            OnName *userDefaults = [OnName user];
            //: userDefaults.ismustmobile = ismustmobile;
            userDefaults.ismustmobile = ismustmobile;
            //: userDefaults.isinvitecode = isinvitecode;
            userDefaults.isinvitecode = isinvitecode;
            //: userDefaults.isavatar = isavatar;
            userDefaults.isavatar = isavatar;
            //: userDefaults.issecret = issecret;
            userDefaults.issecret = issecret;
            //: userDefaults.logininfo = logininfo;
            userDefaults.logininfo = logininfo;
            //: userDefaults.isregitor = isregitor;
            userDefaults.isregitor = isregitor;
            //: userDefaults.isweixinlogin = isweixinlogin;
            userDefaults.isweixinlogin = isweixinlogin;
            //: userDefaults.isspeakingtime = isspeakingtime;
            userDefaults.isspeakingtime = isspeakingtime;
            //: !block ? :block(data);
            !block ? :block(data);
        //: }else{
        }else{
            //: !block ? :block(@{});
            !block ? :block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: !block ? :block(@{});
        !block ? :block(@{});
    //: }];
    }];
}

/**
 "ismustmobile": 0,//客户端注册ID必须为手机号
 "isinvitecode": 1,//客户端注册邀请码为必填项
 "isweixinlogin": 1,////是/开启微信登录
 "isspeakingtime": 1,//是否控制发言间隔时间
 "isavatar": 0,//注册是否强制上传头像
 "issecret": 0,//注册是否强制密保
 "logininfo": "探索-发现"//登录页自定义信息
 "isregitor":1//1 允许注册 0 不允许
 */
//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block{
+(void)nameConfig:(GlobalConfigBlock)block{


    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/appSetting"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].app_vanishValue] reload_strong:nil with:NO forward:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict successAdd:[AchieveData sharedInstance].userElbowValue];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *servicer = [data newStringValueForKey:@"servicer"];
            NSString *servicer = [data record:[AchieveData sharedInstance].mFiftyKey];
            //: NSString *globalsign = [data newStringValueForKey:@"globalsign"];
            NSString *globalsign = [data record:[AchieveData sharedInstance].notiEngagementUreaPorterFormat];
            //: NSString *redpacket = [data newStringValueForKey:@"redpacket"];
            NSString *redpacket = [data record:[AchieveData sharedInstance].user_developerMessage];
            //: NSString *getpassword = [data newStringValueForKey:@"getpassword"];
            NSString *getpassword = [data record:[AchieveData sharedInstance].kUglyShootMessageStr];
            //: NSString *istsbutton = [data newStringValueForKey:@"istsbutton"];
            NSString *istsbutton = [data record:[AchieveData sharedInstance].user_skyMessage];
//            NSString *yshref = [data newStringValueForKey:@"yshref"];
            //: NSString *yshref = @"https://www.riverla.net/privacy.html";
            NSString *yshref = [AchieveData sharedInstance].mStatePloyEaterIdent;
            //: NSString *umappkey_android = [data newStringValueForKey:@"umappkey_android"];
            NSString *umappkey_android = [data record:[AchieveData sharedInstance].mainCabinKey];
            //: NSString *umappkey_ios = [data newStringValueForKey:@"umappkey_ios"];
            NSString *umappkey_ios = [data record:[AchieveData sharedInstance].noti_garlicCreateerKey];

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            OnName *userDefaults = [OnName user];
            //: userDefaults.globalsign = globalsign;
            userDefaults.globalsign = globalsign;
            //: userDefaults.redpacket = redpacket;
            userDefaults.redpacket = redpacket;
            //: userDefaults.yshref = yshref;
            userDefaults.yshref = yshref;
            //: userDefaults.istsbutton = istsbutton;
            userDefaults.istsbutton = istsbutton;
            //: userDefaults.servicer = servicer;
            userDefaults.servicer = servicer;
            //: userDefaults.umappkey_ios = umappkey_ios;
            userDefaults.umappkey_ios = umappkey_ios;

            //: userDefaults.allowdeletion = [data stringValueForKey:@"allowdeletion" defaultValue:@"1"];
            userDefaults.allowdeletion = [data key:[AchieveData sharedInstance].mSurgeryKey title:@"1"];

            //: NSString *autoLogin = [data newStringValueForKey:@"autoLogin"];
            NSString *autoLogin = [data record:[AchieveData sharedInstance].m_loserBarreName];
            //: userDefaults.autoLogin = autoLogin;
            userDefaults.autoLogin = autoLogin;

            //: userDefaults.chatnotify = [data newStringValueForKey:@"chatnotify"];
            userDefaults.chatnotify = [data record:[AchieveData sharedInstance].showHugeMessage];

            //: userDefaults.showMessageRead = [data stringValueForKey:@"Messageread" defaultValue:@"1"];
            userDefaults.showMessageRead = [data key:[AchieveData sharedInstance].mViewKey title:@"1"];
//            userDefaults.showMessageRead =  kConstant_1;

            //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
            [NameLoginOption sound].isRequestAutoLoginFinish = YES;

            //: userDefaults.yinnihione = [data stringValueForKey:@"yinnihione" defaultValue:@"1"];
            userDefaults.yinnihione = [data key:[AchieveData sharedInstance].k_boomUrl title:@"1"];

            //: block(data);
            block(data);

        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block{
+(void)greenDown:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/getBookStatus"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].notiSultanTitle] reload_strong:nil with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: block(resultDict);
        block(resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block {
+ (void)containerSelect:(NSDictionary *)params writtenMatter:(GlobalConfigBlock)block {

    //: NSString *urls = [NIMUserDefaults standardUserDefaults].chatnotify;
    NSString *urls = [OnName user].chatnotify;
    //: if (!urls) {
    if (!urls) {
        //: return;
        return;
    }

//    [CoverPageMode postWithUrl:url params:params isShow:NO success:^(id responseObject) {
//        
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSDictionary *data = [resultDict valueObjectForKey:@"data"];
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//
//        if (code.integerValue == 0 && data.count > 0) {
//            block(data);
//        }else{
//            block(@{});
//        }
//    } failed:^(id responseObject, NSError *error) {
//        block(@{});
//    }];


    //: AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: [securityPolicy setValidatesDomainName:NO];
    [securityPolicy setValidatesDomainName:NO];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: manager.securityPolicy = securityPolicy;
    manager.securityPolicy = securityPolicy;
    //: manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", nil];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[AchieveData sharedInstance].dream_marchStrangeIdent, nil];

    //: NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[AchieveData sharedInstance].app_lanceFormat];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[AchieveData sharedInstance].dream_marchStrangeIdent forHTTPHeaderField:[AchieveData sharedInstance].appPopFormat];

    // body
    //: NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];

    //: [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:[AchieveData sharedInstance].noti_palUrl];
    //: [request setHTTPBody:postData];
    [request setHTTPBody:postData];



    //: NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {

    //: } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {

    //: } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, id _Nullable responseObject, NSError * _Nullable error) {

        //: NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        NSMutableDictionary *mutDic = [NSMutableDictionary dictionaryWithDictionary:responseObject];
        //: block(mutDic);
        block(mutDic);

    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block {
+ (void)button:(GlobalConfigBlock)block {
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/generateUser"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].userMagnitudeKey] reload_strong:nil with:NO forward:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict successAdd:[AchieveData sharedInstance].userElbowValue];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[AchieveData sharedInstance].userMemoryMsg];

        //: if (code.integerValue == 0 && data.count > 0) {
        if (code.integerValue == 0 && data.count > 0) {
            //: block(data);
            block(data);
        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block{
+(void)tagCheckmoments:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkmoments"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].mainCurMsg] reload_strong:nil with:NO forward:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[AchieveData sharedInstance].userMemoryMsg];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"1";
            [OnName user].friendsCircle = @"1";
        //: }else{
        }else{
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"0";
            [OnName user].friendsCircle = @"0";
        }
        //: block(@{});
        block(@{});
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block{
+(void)countRelation:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/systemSetting"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].userSystemMessage] reload_strong:nil with:NO forward:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[AchieveData sharedInstance].userMemoryMsg];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[AchieveData sharedInstance].userElbowValue];
            //: [NIMUserDefaults standardUserDefaults].islogin = [data newStringValueForKey:@"islogin"];
            [OnName user].islogin = [data record:[AchieveData sharedInstance].kBasketUrl];
            //: [NIMUserDefaults standardUserDefaults].isclear = [data newStringValueForKey:@"isclear"];
            [OnName user].isclear = [data record:[AchieveData sharedInstance].noti_maxWeepText];
            //: block(data);
            block(data);
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)deleteUser:(GlobalConfigBlock)block{
+(void)eventContent:(GlobalConfigBlock)block{

    //: NSDictionary *params = @{@"account":[NIMUserDefaults standardUserDefaults].accountName?:@"" , @"password":[NIMUserDefaults standardUserDefaults].pCode?:@""};
    NSDictionary *params = @{[AchieveData sharedInstance].notiDifferenceMsg:[OnName user].accountName?:@"" , [AchieveData sharedInstance].appDominateId:[OnName user].pCode?:@""};
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/deleteUser"] params:params isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[AchieveData sharedInstance].userRemoveIdent] reload_strong:params with:YES forward:^(id responseObject) {

        //: block(@{});
        block(@{});

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}



//: @end
@end