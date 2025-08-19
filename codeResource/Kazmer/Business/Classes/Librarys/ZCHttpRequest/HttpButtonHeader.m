
#import <Foundation/Foundation.h>

@interface PrimaryContentData : NSObject

+ (instancetype)sharedInstance;

//: iPhone12,5
@property (nonatomic, copy) NSString *main_dynamicsValue;

//: iPhone 6
@property (nonatomic, copy) NSString *appBondName;

//: iphone
@property (nonatomic, copy) NSString *main_userBasketTitle;

//: iPhone 7 Plus
@property (nonatomic, copy) NSString *app_untilText;

//: appName
@property (nonatomic, copy) NSString *user_attendanceFormat;

//: iPhone SE
@property (nonatomic, copy) NSString *notiMuscleIndividualData;

//: iPhone 11 Pro
@property (nonatomic, copy) NSString *noti_rapidlyUntilMsg;

//: iPhone8,4
@property (nonatomic, copy) NSString *userCollectorStr;

//: Astrologie
@property (nonatomic, copy) NSString *showApproximatelyTitle;

//: iPhone13
@property (nonatomic, copy) NSString *app_lipText;

//: iPhone 8 Plus
@property (nonatomic, copy) NSString *main_medalPath;

//: iPhone8,1
@property (nonatomic, copy) NSString *m_effectiveFormat;

//: iPhone 11
@property (nonatomic, copy) NSString *m_cloudUrl;

//: x86_64
@property (nonatomic, copy) NSString *app_mediaImageFormat;

//: 0100
@property (nonatomic, copy) NSString *kAcidIdent;

//: iPhone5,1
@property (nonatomic, copy) NSString *dreamChangeContent;

//: iPhone 1G
@property (nonatomic, copy) NSString *mScalePath;

//: iPhone3,2
@property (nonatomic, copy) NSString *mEvolveText;

//: version
@property (nonatomic, copy) NSString *user_scramRegnantPath;

//: iPhone10,4
@property (nonatomic, copy) NSString *kEmployId;

//: iPhone9,4
@property (nonatomic, copy) NSString *main_clothPath;

//: macAddress
@property (nonatomic, copy) NSString *user_operationMessage;

//: zh-CN
@property (nonatomic, copy) NSString *m_introductionCueColorPath;

//: iPhone5,2
@property (nonatomic, copy) NSString *appShootId;

//: APPID
@property (nonatomic, copy) NSString *mEndId;

//: iPhone 4S
@property (nonatomic, copy) NSString *dream_regulationMinBidIdent;

//: iPhone
@property (nonatomic, copy) NSString *notiEconomicallyMessage;

//: iPhone6,2
@property (nonatomic, copy) NSString *noti_retailerStr;

//: iPhone1,1
@property (nonatomic, copy) NSString *mainStreakPath;

//: deviceNumber
@property (nonatomic, copy) NSString *noti_destinationStr;

//: iPhone1,2
@property (nonatomic, copy) NSString *mainDuringId;

//: app
@property (nonatomic, copy) NSString *app_bowKey;

//: appVersion
@property (nonatomic, copy) NSString *show_drinkIdent;

//: iPhone9,3
@property (nonatomic, copy) NSString *kCrushData;

//: Accept-Language
@property (nonatomic, copy) NSString *show_uglyMessage;

//: iPhone 6 Plus
@property (nonatomic, copy) NSString *main_originIdent;

//: iPhone5,4
@property (nonatomic, copy) NSString *k_mindUrl;

//: iPhone 6s Plus
@property (nonatomic, copy) NSString *main_givingAmendmentFormat;

//: iPhone X
@property (nonatomic, copy) NSString *appFiftyKey;

//: Verizon iPhone 4
@property (nonatomic, copy) NSString *main_effectiveClubUrl;

//: iPhone6,1
@property (nonatomic, copy) NSString *user_sueName;

//: App Store
@property (nonatomic, copy) NSString *show_sueUrnFormat;

//: iPhone3,1
@property (nonatomic, copy) NSString *show_differencePowerName;

//: iPhone12,3
@property (nonatomic, copy) NSString *userSilverName;

//: iPhone 11 Pro Max
@property (nonatomic, copy) NSString *notiMyShootFormat;

//: iPhone4,1
@property (nonatomic, copy) NSString *noti_ligationMessage;

//: iPhone12,1
@property (nonatomic, copy) NSString *dream_controlTitle;

//: sys
@property (nonatomic, copy) NSString *kCrushDistinctiveMsg;

//: channel
@property (nonatomic, copy) NSString *m_markIdent;

//: iPhone9,1
@property (nonatomic, copy) NSString *dream_transportStr;

//: iPhone 8
@property (nonatomic, copy) NSString *dreamThanksCartMsg;

//: iPhone 5S
@property (nonatomic, copy) NSString *m_feedUrl;

//: iPhone10,3
@property (nonatomic, copy) NSString *mUglyKey;

//: iPhone 5
@property (nonatomic, copy) NSString *appSpecializeFormat;

//: nettype
@property (nonatomic, copy) NSString *show_admitStr;

//: iPhone2,1
@property (nonatomic, copy) NSString *app_onFormat;

//: iPhone8,2
@property (nonatomic, copy) NSString *appNameKey;

//: iPhone 3G
@property (nonatomic, copy) NSString *mHistoryPath;

//: iPhone7,2
@property (nonatomic, copy) NSString *appEverythingUrl;

//: iPhone10,1
@property (nonatomic, copy) NSString *user_suggestPath;

//: ios
@property (nonatomic, copy) NSString *kMinStr;

//: iPhone 5C
@property (nonatomic, copy) NSString *appShowSueRationalMsg;

//: iPhone 3GS
@property (nonatomic, copy) NSString *main_brokenText;

//: 1.0.0
@property (nonatomic, copy) NSString *userFeverDominateValue;

//: iPhone 7
@property (nonatomic, copy) NSString *noti_dateData;

//: iPhone5,3
@property (nonatomic, copy) NSString *m_transformationMsg;

//: WIFI
@property (nonatomic, copy) NSString *noti_fearValue;

//: iPhone10,5
@property (nonatomic, copy) NSString *user_studyMsg;

//: primaryKey
@property (nonatomic, copy) NSString *mainHelicopterValue;

//: iPhone9,2
@property (nonatomic, copy) NSString *showScramText;

//: iPhone10,6
@property (nonatomic, copy) NSString *noti_deliverMessage;

//: iPhone 4
@property (nonatomic, copy) NSString *appAtMsg;

//: iPhone7,1
@property (nonatomic, copy) NSString *appCabinName;

//: deviceType
@property (nonatomic, copy) NSString *showSurgeryId;

//: iPhone 6s
@property (nonatomic, copy) NSString *app_markKnowledgeKey;

//: iPhone10,2
@property (nonatomic, copy) NSString *notiBowMattePath;

//: netType
@property (nonatomic, copy) NSString *dreamBanStr;

@end

@implementation PrimaryContentData

+ (instancetype)sharedInstance {
    static PrimaryContentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PrimaryContentDataToCache:(Byte *)data {
    int viewPool = data[0];
    Byte corn = data[1];
    int parameter = data[2];
    for (int i = parameter; i < parameter + viewPool; i++) {
        int value = data[i] + corn;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[parameter + viewPool] = 0;
    return data + parameter;
}

- (NSString *)StringFromPrimaryContentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PrimaryContentDataToCache:data]];
}

//: iPhone 3G
- (NSString *)mHistoryPath {
    if (!_mHistoryPath) {
        Byte value[] = {9, 73, 6, 17, 79, 167, 32, 7, 31, 38, 37, 28, 215, 234, 254, 140};
        _mHistoryPath = [self StringFromPrimaryContentData:value];
    }
    return _mHistoryPath;
}

//: iPhone5,4
- (NSString *)k_mindUrl {
    if (!_k_mindUrl) {
        Byte value[] = {9, 76, 8, 11, 34, 190, 233, 104, 29, 4, 28, 35, 34, 25, 233, 224, 232, 248};
        _k_mindUrl = [self StringFromPrimaryContentData:value];
    }
    return _k_mindUrl;
}

//: iPhone 4
- (NSString *)appAtMsg {
    if (!_appAtMsg) {
        Byte value[] = {8, 45, 13, 231, 111, 187, 213, 220, 55, 76, 13, 153, 3, 60, 35, 59, 66, 65, 56, 243, 7, 27};
        _appAtMsg = [self StringFromPrimaryContentData:value];
    }
    return _appAtMsg;
}

//: iPhone 11 Pro Max
- (NSString *)notiMyShootFormat {
    if (!_notiMyShootFormat) {
        Byte value[] = {17, 47, 10, 162, 7, 46, 7, 46, 9, 81, 58, 33, 57, 64, 63, 54, 241, 2, 2, 241, 33, 67, 64, 241, 30, 50, 73, 153};
        _notiMyShootFormat = [self StringFromPrimaryContentData:value];
    }
    return _notiMyShootFormat;
}

//: app
- (NSString *)app_bowKey {
    if (!_app_bowKey) {
        Byte value[] = {3, 75, 9, 2, 192, 73, 228, 207, 130, 22, 37, 37, 246};
        _app_bowKey = [self StringFromPrimaryContentData:value];
    }
    return _app_bowKey;
}

//: ios
- (NSString *)kMinStr {
    if (!_kMinStr) {
        Byte value[] = {3, 38, 11, 37, 122, 69, 26, 30, 254, 121, 126, 67, 73, 77, 91};
        _kMinStr = [self StringFromPrimaryContentData:value];
    }
    return _kMinStr;
}

//: iPhone 5S
- (NSString *)m_feedUrl {
    if (!_m_feedUrl) {
        Byte value[] = {9, 11, 4, 190, 94, 69, 93, 100, 99, 90, 21, 42, 72, 234};
        _m_feedUrl = [self StringFromPrimaryContentData:value];
    }
    return _m_feedUrl;
}

//: iPhone 5
- (NSString *)appSpecializeFormat {
    if (!_appSpecializeFormat) {
        Byte value[] = {8, 31, 11, 119, 84, 101, 65, 134, 196, 147, 252, 74, 49, 73, 80, 79, 70, 1, 22, 163};
        _appSpecializeFormat = [self StringFromPrimaryContentData:value];
    }
    return _appSpecializeFormat;
}

//: channel
- (NSString *)m_markIdent {
    if (!_m_markIdent) {
        Byte value[] = {7, 12, 6, 8, 177, 111, 87, 92, 85, 98, 98, 89, 96, 2};
        _m_markIdent = [self StringFromPrimaryContentData:value];
    }
    return _m_markIdent;
}

//: iPhone 6
- (NSString *)appBondName {
    if (!_appBondName) {
        Byte value[] = {8, 69, 7, 46, 220, 131, 195, 36, 11, 35, 42, 41, 32, 219, 241, 133};
        _appBondName = [self StringFromPrimaryContentData:value];
    }
    return _appBondName;
}

//: iPhone9,1
- (NSString *)dream_transportStr {
    if (!_dream_transportStr) {
        Byte value[] = {9, 60, 12, 131, 78, 38, 88, 71, 138, 71, 112, 10, 45, 20, 44, 51, 50, 41, 253, 240, 245, 120};
        _dream_transportStr = [self StringFromPrimaryContentData:value];
    }
    return _dream_transportStr;
}

//: macAddress
- (NSString *)user_operationMessage {
    if (!_user_operationMessage) {
        Byte value[] = {10, 71, 7, 208, 150, 151, 134, 38, 26, 28, 250, 29, 29, 43, 30, 44, 44, 217};
        _user_operationMessage = [self StringFromPrimaryContentData:value];
    }
    return _user_operationMessage;
}

//: iPhone 8
- (NSString *)dreamThanksCartMsg {
    if (!_dreamThanksCartMsg) {
        Byte value[] = {8, 59, 13, 99, 69, 197, 134, 100, 192, 93, 244, 200, 126, 46, 21, 45, 52, 51, 42, 229, 253, 132};
        _dreamThanksCartMsg = [self StringFromPrimaryContentData:value];
    }
    return _dreamThanksCartMsg;
}

//: iPhone 4S
- (NSString *)dream_regulationMinBidIdent {
    if (!_dream_regulationMinBidIdent) {
        Byte value[] = {9, 49, 10, 20, 179, 5, 130, 25, 218, 37, 56, 31, 55, 62, 61, 52, 239, 3, 34, 192};
        _dream_regulationMinBidIdent = [self StringFromPrimaryContentData:value];
    }
    return _dream_regulationMinBidIdent;
}

//: iPhone 7
- (NSString *)noti_dateData {
    if (!_noti_dateData) {
        Byte value[] = {8, 22, 13, 197, 109, 15, 65, 12, 91, 243, 222, 210, 158, 83, 58, 82, 89, 88, 79, 10, 33, 48};
        _noti_dateData = [self StringFromPrimaryContentData:value];
    }
    return _noti_dateData;
}

//: iPhone9,2
- (NSString *)showScramText {
    if (!_showScramText) {
        Byte value[] = {9, 57, 12, 227, 148, 116, 180, 50, 206, 36, 209, 219, 48, 23, 47, 54, 53, 44, 0, 243, 249, 191};
        _showScramText = [self StringFromPrimaryContentData:value];
    }
    return _showScramText;
}

//: iPhone SE
- (NSString *)notiMuscleIndividualData {
    if (!_notiMuscleIndividualData) {
        Byte value[] = {9, 60, 13, 228, 90, 187, 135, 5, 242, 24, 72, 80, 78, 45, 20, 44, 51, 50, 41, 228, 23, 9, 146};
        _notiMuscleIndividualData = [self StringFromPrimaryContentData:value];
    }
    return _notiMuscleIndividualData;
}

//: iPhone12,3
- (NSString *)userSilverName {
    if (!_userSilverName) {
        Byte value[] = {10, 79, 4, 203, 26, 1, 25, 32, 31, 22, 226, 227, 221, 228, 179};
        _userSilverName = [self StringFromPrimaryContentData:value];
    }
    return _userSilverName;
}

//: iPhone3,2
- (NSString *)mEvolveText {
    if (!_mEvolveText) {
        Byte value[] = {9, 84, 7, 164, 107, 44, 36, 21, 252, 20, 27, 26, 17, 223, 216, 222, 67};
        _mEvolveText = [self StringFromPrimaryContentData:value];
    }
    return _mEvolveText;
}

//: iPhone10,6
- (NSString *)noti_deliverMessage {
    if (!_noti_deliverMessage) {
        Byte value[] = {10, 89, 7, 51, 17, 182, 110, 16, 247, 15, 22, 21, 12, 216, 215, 211, 221, 151};
        _noti_deliverMessage = [self StringFromPrimaryContentData:value];
    }
    return _noti_deliverMessage;
}

//: iPhone12,1
- (NSString *)dream_controlTitle {
    if (!_dream_controlTitle) {
        Byte value[] = {10, 73, 10, 27, 89, 58, 79, 174, 216, 210, 32, 7, 31, 38, 37, 28, 232, 233, 227, 232, 30};
        _dream_controlTitle = [self StringFromPrimaryContentData:value];
    }
    return _dream_controlTitle;
}

//: iPhone12,5
- (NSString *)main_dynamicsValue {
    if (!_main_dynamicsValue) {
        Byte value[] = {10, 20, 6, 255, 195, 46, 85, 60, 84, 91, 90, 81, 29, 30, 24, 33, 157};
        _main_dynamicsValue = [self StringFromPrimaryContentData:value];
    }
    return _main_dynamicsValue;
}

//: iPhone6,2
- (NSString *)noti_retailerStr {
    if (!_noti_retailerStr) {
        Byte value[] = {9, 34, 7, 41, 74, 101, 15, 71, 46, 70, 77, 76, 67, 20, 10, 16, 140};
        _noti_retailerStr = [self StringFromPrimaryContentData:value];
    }
    return _noti_retailerStr;
}

//: iPhone9,4
- (NSString *)main_clothPath {
    if (!_main_clothPath) {
        Byte value[] = {9, 1, 6, 226, 224, 160, 104, 79, 103, 110, 109, 100, 56, 43, 51, 6};
        _main_clothPath = [self StringFromPrimaryContentData:value];
    }
    return _main_clothPath;
}

//: iPhone7,2
- (NSString *)appEverythingUrl {
    if (!_appEverythingUrl) {
        Byte value[] = {9, 1, 4, 190, 104, 79, 103, 110, 109, 100, 54, 43, 49, 150};
        _appEverythingUrl = [self StringFromPrimaryContentData:value];
    }
    return _appEverythingUrl;
}

//: App Store
- (NSString *)show_sueUrnFormat {
    if (!_show_sueUrnFormat) {
        Byte value[] = {9, 42, 12, 38, 204, 205, 218, 28, 184, 172, 81, 222, 23, 70, 70, 246, 41, 74, 69, 72, 59, 31};
        _show_sueUrnFormat = [self StringFromPrimaryContentData:value];
    }
    return _show_sueUrnFormat;
}

//: iPhone8,4
- (NSString *)userCollectorStr {
    if (!_userCollectorStr) {
        Byte value[] = {9, 45, 3, 60, 35, 59, 66, 65, 56, 11, 255, 7, 110};
        _userCollectorStr = [self StringFromPrimaryContentData:value];
    }
    return _userCollectorStr;
}

//: iPhone10,4
- (NSString *)kEmployId {
    if (!_kEmployId) {
        Byte value[] = {10, 43, 11, 71, 38, 205, 104, 205, 185, 196, 57, 62, 37, 61, 68, 67, 58, 6, 5, 1, 9, 101};
        _kEmployId = [self StringFromPrimaryContentData:value];
    }
    return _kEmployId;
}

//: APPID
- (NSString *)mEndId {
    if (!_mEndId) {
        Byte value[] = {5, 30, 11, 245, 219, 109, 167, 179, 87, 66, 247, 35, 50, 50, 43, 38, 81};
        _mEndId = [self StringFromPrimaryContentData:value];
    }
    return _mEndId;
}

//: iPhone 11
- (NSString *)m_cloudUrl {
    if (!_m_cloudUrl) {
        Byte value[] = {9, 46, 5, 42, 134, 59, 34, 58, 65, 64, 55, 242, 3, 3, 43};
        _m_cloudUrl = [self StringFromPrimaryContentData:value];
    }
    return _m_cloudUrl;
}

//: iPhone 6 Plus
- (NSString *)main_originIdent {
    if (!_main_originIdent) {
        Byte value[] = {13, 34, 6, 180, 67, 132, 71, 46, 70, 77, 76, 67, 254, 20, 254, 46, 74, 83, 81, 127};
        _main_originIdent = [self StringFromPrimaryContentData:value];
    }
    return _main_originIdent;
}

//: version
- (NSString *)user_scramRegnantPath {
    if (!_user_scramRegnantPath) {
        Byte value[] = {7, 19, 7, 194, 30, 41, 215, 99, 82, 95, 96, 86, 92, 91, 33};
        _user_scramRegnantPath = [self StringFromPrimaryContentData:value];
    }
    return _user_scramRegnantPath;
}

//: iPhone 3GS
- (NSString *)main_brokenText {
    if (!_main_brokenText) {
        Byte value[] = {10, 31, 5, 79, 153, 74, 49, 73, 80, 79, 70, 1, 20, 40, 52, 209};
        _main_brokenText = [self StringFromPrimaryContentData:value];
    }
    return _main_brokenText;
}

//: nettype
- (NSString *)show_admitStr {
    if (!_show_admitStr) {
        Byte value[] = {7, 41, 6, 116, 76, 248, 69, 60, 75, 75, 80, 71, 60, 118};
        _show_admitStr = [self StringFromPrimaryContentData:value];
    }
    return _show_admitStr;
}

//: deviceType
- (NSString *)showSurgeryId {
    if (!_showSurgeryId) {
        Byte value[] = {10, 48, 12, 68, 95, 210, 153, 181, 164, 128, 198, 199, 52, 53, 70, 57, 51, 53, 36, 73, 64, 53, 216};
        _showSurgeryId = [self StringFromPrimaryContentData:value];
    }
    return _showSurgeryId;
}

//: x86_64
- (NSString *)app_mediaImageFormat {
    if (!_app_mediaImageFormat) {
        Byte value[] = {6, 50, 4, 207, 70, 6, 4, 45, 4, 2, 119};
        _app_mediaImageFormat = [self StringFromPrimaryContentData:value];
    }
    return _app_mediaImageFormat;
}

//: iPhone4,1
- (NSString *)noti_ligationMessage {
    if (!_noti_ligationMessage) {
        Byte value[] = {9, 91, 8, 64, 180, 84, 233, 54, 14, 245, 13, 20, 19, 10, 217, 209, 214, 81};
        _noti_ligationMessage = [self StringFromPrimaryContentData:value];
    }
    return _noti_ligationMessage;
}

//: iPhone X
- (NSString *)appFiftyKey {
    if (!_appFiftyKey) {
        Byte value[] = {8, 23, 10, 241, 85, 19, 180, 97, 138, 173, 82, 57, 81, 88, 87, 78, 9, 65, 44};
        _appFiftyKey = [self StringFromPrimaryContentData:value];
    }
    return _appFiftyKey;
}

//: netType
- (NSString *)dreamBanStr {
    if (!_dreamBanStr) {
        Byte value[] = {7, 82, 9, 62, 189, 25, 204, 67, 126, 28, 19, 34, 2, 39, 30, 19, 167};
        _dreamBanStr = [self StringFromPrimaryContentData:value];
    }
    return _dreamBanStr;
}

//: iPhone2,1
- (NSString *)app_onFormat {
    if (!_app_onFormat) {
        Byte value[] = {9, 29, 10, 19, 228, 194, 143, 217, 164, 153, 76, 51, 75, 82, 81, 72, 21, 15, 20, 216};
        _app_onFormat = [self StringFromPrimaryContentData:value];
    }
    return _app_onFormat;
}

//: Astrologie
- (NSString *)showApproximatelyTitle {
    if (!_showApproximatelyTitle) {
        Byte value[] = {10, 39, 9, 169, 107, 230, 8, 244, 135, 26, 76, 77, 75, 72, 69, 72, 64, 66, 62, 56};
        _showApproximatelyTitle = [self StringFromPrimaryContentData:value];
    }
    return _showApproximatelyTitle;
}

//: iPhone10,5
- (NSString *)user_studyMsg {
    if (!_user_studyMsg) {
        Byte value[] = {10, 1, 10, 254, 69, 174, 248, 183, 200, 254, 104, 79, 103, 110, 109, 100, 48, 47, 43, 52, 43};
        _user_studyMsg = [self StringFromPrimaryContentData:value];
    }
    return _user_studyMsg;
}

//: iPhone1,1
- (NSString *)mainStreakPath {
    if (!_mainStreakPath) {
        Byte value[] = {9, 66, 13, 86, 106, 77, 67, 153, 145, 218, 133, 144, 115, 39, 14, 38, 45, 44, 35, 239, 234, 239, 156};
        _mainStreakPath = [self StringFromPrimaryContentData:value];
    }
    return _mainStreakPath;
}

//: iPhone 8 Plus
- (NSString *)main_medalPath {
    if (!_main_medalPath) {
        Byte value[] = {13, 99, 3, 6, 237, 5, 12, 11, 2, 189, 213, 189, 237, 9, 18, 16, 28};
        _main_medalPath = [self StringFromPrimaryContentData:value];
    }
    return _main_medalPath;
}

//: deviceNumber
- (NSString *)noti_destinationStr {
    if (!_noti_destinationStr) {
        Byte value[] = {12, 43, 5, 48, 117, 57, 58, 75, 62, 56, 58, 35, 74, 66, 55, 58, 71, 162};
        _noti_destinationStr = [self StringFromPrimaryContentData:value];
    }
    return _noti_destinationStr;
}

//: zh-CN
- (NSString *)m_introductionCueColorPath {
    if (!_m_introductionCueColorPath) {
        Byte value[] = {5, 69, 12, 250, 77, 117, 226, 112, 172, 113, 54, 81, 53, 35, 232, 254, 9, 79};
        _m_introductionCueColorPath = [self StringFromPrimaryContentData:value];
    }
    return _m_introductionCueColorPath;
}

//: iPhone 1G
- (NSString *)mScalePath {
    if (!_mScalePath) {
        Byte value[] = {9, 33, 11, 154, 199, 119, 121, 208, 96, 156, 119, 72, 47, 71, 78, 77, 68, 255, 16, 38, 87};
        _mScalePath = [self StringFromPrimaryContentData:value];
    }
    return _mScalePath;
}

//: iPhone13
- (NSString *)app_lipText {
    if (!_app_lipText) {
        Byte value[] = {8, 58, 10, 195, 226, 126, 149, 197, 32, 131, 47, 22, 46, 53, 52, 43, 247, 249, 49};
        _app_lipText = [self StringFromPrimaryContentData:value];
    }
    return _app_lipText;
}

//: 1.0.0
- (NSString *)userFeverDominateValue {
    if (!_userFeverDominateValue) {
        Byte value[] = {5, 51, 3, 254, 251, 253, 251, 253, 19};
        _userFeverDominateValue = [self StringFromPrimaryContentData:value];
    }
    return _userFeverDominateValue;
}

//: iPhone1,2
- (NSString *)mainDuringId {
    if (!_mainDuringId) {
        Byte value[] = {9, 22, 6, 47, 123, 168, 83, 58, 82, 89, 88, 79, 27, 22, 28, 240};
        _mainDuringId = [self StringFromPrimaryContentData:value];
    }
    return _mainDuringId;
}

//: iPhone10,2
- (NSString *)notiBowMattePath {
    if (!_notiBowMattePath) {
        Byte value[] = {10, 55, 6, 197, 248, 51, 50, 25, 49, 56, 55, 46, 250, 249, 245, 251, 213};
        _notiBowMattePath = [self StringFromPrimaryContentData:value];
    }
    return _notiBowMattePath;
}

//: iPhone 11 Pro
- (NSString *)noti_rapidlyUntilMsg {
    if (!_noti_rapidlyUntilMsg) {
        Byte value[] = {13, 33, 13, 3, 146, 220, 19, 10, 171, 75, 153, 111, 183, 72, 47, 71, 78, 77, 68, 255, 16, 16, 255, 47, 81, 78, 66};
        _noti_rapidlyUntilMsg = [self StringFromPrimaryContentData:value];
    }
    return _noti_rapidlyUntilMsg;
}

//: iPhone 7 Plus
- (NSString *)app_untilText {
    if (!_app_untilText) {
        Byte value[] = {13, 56, 12, 148, 244, 49, 153, 37, 52, 227, 91, 167, 49, 24, 48, 55, 54, 45, 232, 255, 232, 24, 52, 61, 59, 243};
        _app_untilText = [self StringFromPrimaryContentData:value];
    }
    return _app_untilText;
}

//: 0100
- (NSString *)kAcidIdent {
    if (!_kAcidIdent) {
        Byte value[] = {4, 17, 8, 128, 243, 57, 109, 205, 31, 32, 31, 31, 56};
        _kAcidIdent = [self StringFromPrimaryContentData:value];
    }
    return _kAcidIdent;
}

//: iPhone5,2
- (NSString *)appShootId {
    if (!_appShootId) {
        Byte value[] = {9, 59, 11, 189, 77, 230, 150, 180, 134, 232, 56, 46, 21, 45, 52, 51, 42, 250, 241, 247, 206};
        _appShootId = [self StringFromPrimaryContentData:value];
    }
    return _appShootId;
}

//: iPhone5,3
- (NSString *)m_transformationMsg {
    if (!_m_transformationMsg) {
        Byte value[] = {9, 80, 12, 207, 39, 118, 125, 194, 72, 150, 47, 254, 25, 0, 24, 31, 30, 21, 229, 220, 227, 240};
        _m_transformationMsg = [self StringFromPrimaryContentData:value];
    }
    return _m_transformationMsg;
}

//: iPhone 6s
- (NSString *)app_markKnowledgeKey {
    if (!_app_markKnowledgeKey) {
        Byte value[] = {9, 53, 5, 65, 189, 52, 27, 51, 58, 57, 48, 235, 1, 62, 122};
        _app_markKnowledgeKey = [self StringFromPrimaryContentData:value];
    }
    return _app_markKnowledgeKey;
}

//: iPhone6,1
- (NSString *)user_sueName {
    if (!_user_sueName) {
        Byte value[] = {9, 19, 10, 158, 215, 153, 45, 243, 40, 198, 86, 61, 85, 92, 91, 82, 35, 25, 30, 159};
        _user_sueName = [self StringFromPrimaryContentData:value];
    }
    return _user_sueName;
}

//: primaryKey
- (NSString *)mainHelicopterValue {
    if (!_mainHelicopterValue) {
        Byte value[] = {10, 43, 6, 148, 4, 218, 69, 71, 62, 66, 54, 71, 78, 32, 58, 78, 78};
        _mainHelicopterValue = [self StringFromPrimaryContentData:value];
    }
    return _mainHelicopterValue;
}

//: Verizon iPhone 4
- (NSString *)main_effectiveClubUrl {
    if (!_main_effectiveClubUrl) {
        Byte value[] = {16, 90, 11, 27, 240, 208, 122, 246, 72, 150, 110, 252, 11, 24, 15, 32, 21, 20, 198, 15, 246, 14, 21, 20, 11, 198, 218, 148};
        _main_effectiveClubUrl = [self StringFromPrimaryContentData:value];
    }
    return _main_effectiveClubUrl;
}

//: appVersion
- (NSString *)show_drinkIdent {
    if (!_show_drinkIdent) {
        Byte value[] = {10, 25, 5, 87, 17, 72, 87, 87, 61, 76, 89, 90, 80, 86, 85, 101};
        _show_drinkIdent = [self StringFromPrimaryContentData:value];
    }
    return _show_drinkIdent;
}

//: iPhone7,1
- (NSString *)appCabinName {
    if (!_appCabinName) {
        Byte value[] = {9, 69, 5, 137, 83, 36, 11, 35, 42, 41, 32, 242, 231, 236, 199};
        _appCabinName = [self StringFromPrimaryContentData:value];
    }
    return _appCabinName;
}

//: iPhone8,2
- (NSString *)appNameKey {
    if (!_appNameKey) {
        Byte value[] = {9, 46, 11, 238, 186, 193, 175, 191, 185, 170, 65, 59, 34, 58, 65, 64, 55, 10, 254, 4, 211};
        _appNameKey = [self StringFromPrimaryContentData:value];
    }
    return _appNameKey;
}

//: iPhone10,3
- (NSString *)mUglyKey {
    if (!_mUglyKey) {
        Byte value[] = {10, 90, 3, 15, 246, 14, 21, 20, 11, 215, 214, 210, 217, 28};
        _mUglyKey = [self StringFromPrimaryContentData:value];
    }
    return _mUglyKey;
}

//: iPhone3,1
- (NSString *)show_differencePowerName {
    if (!_show_differencePowerName) {
        Byte value[] = {9, 15, 4, 208, 90, 65, 89, 96, 95, 86, 36, 29, 34, 158};
        _show_differencePowerName = [self StringFromPrimaryContentData:value];
    }
    return _show_differencePowerName;
}

//: iPhone8,1
- (NSString *)m_effectiveFormat {
    if (!_m_effectiveFormat) {
        Byte value[] = {9, 96, 9, 70, 121, 185, 75, 201, 232, 9, 240, 8, 15, 14, 5, 216, 204, 209, 218};
        _m_effectiveFormat = [self StringFromPrimaryContentData:value];
    }
    return _m_effectiveFormat;
}

//: iPhone10,1
- (NSString *)user_suggestPath {
    if (!_user_suggestPath) {
        Byte value[] = {10, 62, 4, 225, 43, 18, 42, 49, 48, 39, 243, 242, 238, 243, 8};
        _user_suggestPath = [self StringFromPrimaryContentData:value];
    }
    return _user_suggestPath;
}

//: iPhone
- (NSString *)notiEconomicallyMessage {
    if (!_notiEconomicallyMessage) {
        Byte value[] = {6, 79, 7, 181, 219, 203, 240, 26, 1, 25, 32, 31, 22, 217};
        _notiEconomicallyMessage = [self StringFromPrimaryContentData:value];
    }
    return _notiEconomicallyMessage;
}

//: iPhone 6s Plus
- (NSString *)main_givingAmendmentFormat {
    if (!_main_givingAmendmentFormat) {
        Byte value[] = {14, 53, 8, 172, 38, 121, 76, 174, 52, 27, 51, 58, 57, 48, 235, 1, 62, 235, 27, 55, 64, 62, 4};
        _main_givingAmendmentFormat = [self StringFromPrimaryContentData:value];
    }
    return _main_givingAmendmentFormat;
}

//: iPhone9,3
- (NSString *)kCrushData {
    if (!_kCrushData) {
        Byte value[] = {9, 52, 9, 196, 64, 201, 158, 141, 173, 53, 28, 52, 59, 58, 49, 5, 248, 255, 247};
        _kCrushData = [self StringFromPrimaryContentData:value];
    }
    return _kCrushData;
}

//: iphone
- (NSString *)main_userBasketTitle {
    if (!_main_userBasketTitle) {
        Byte value[] = {6, 54, 7, 4, 92, 130, 205, 51, 58, 50, 57, 56, 47, 178};
        _main_userBasketTitle = [self StringFromPrimaryContentData:value];
    }
    return _main_userBasketTitle;
}

//: WIFI
- (NSString *)noti_fearValue {
    if (!_noti_fearValue) {
        Byte value[] = {4, 42, 11, 72, 150, 144, 185, 234, 71, 99, 39, 45, 31, 28, 31, 163};
        _noti_fearValue = [self StringFromPrimaryContentData:value];
    }
    return _noti_fearValue;
}

//: sys
- (NSString *)kCrushDistinctiveMsg {
    if (!_kCrushDistinctiveMsg) {
        Byte value[] = {3, 20, 5, 64, 2, 95, 101, 95, 52};
        _kCrushDistinctiveMsg = [self StringFromPrimaryContentData:value];
    }
    return _kCrushDistinctiveMsg;
}

//: Accept-Language
- (NSString *)show_uglyMessage {
    if (!_show_uglyMessage) {
        Byte value[] = {15, 6, 4, 49, 59, 93, 93, 95, 106, 110, 39, 70, 91, 104, 97, 111, 91, 97, 95, 89};
        _show_uglyMessage = [self StringFromPrimaryContentData:value];
    }
    return _show_uglyMessage;
}

//: appName
- (NSString *)user_attendanceFormat {
    if (!_user_attendanceFormat) {
        Byte value[] = {7, 91, 11, 241, 150, 228, 209, 81, 190, 213, 154, 6, 21, 21, 243, 6, 18, 10, 60};
        _user_attendanceFormat = [self StringFromPrimaryContentData:value];
    }
    return _user_attendanceFormat;
}

//: iPhone 5C
- (NSString *)appShowSueRationalMsg {
    if (!_appShowSueRationalMsg) {
        Byte value[] = {9, 96, 3, 9, 240, 8, 15, 14, 5, 192, 213, 227, 135};
        _appShowSueRationalMsg = [self StringFromPrimaryContentData:value];
    }
    return _appShowSueRationalMsg;
}

//: iPhone5,1
- (NSString *)dreamChangeContent {
    if (!_dreamChangeContent) {
        Byte value[] = {9, 3, 3, 102, 77, 101, 108, 107, 98, 50, 41, 46, 98};
        _dreamChangeContent = [self StringFromPrimaryContentData:value];
    }
    return _dreamChangeContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HttpButtonHeader.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpRequestHeader.h"
#import "HttpButtonHeader.h"
//: #import <net/if.h>
#import <net/if.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <net/if_dl.h>
#import <net/if_dl.h>
//: #import "sys/utsname.h"
#import "sys/utsname.h"

//: @implementation ZCHttpRequestHeader
@implementation HttpButtonHeader
//: +(NSDictionary *)getHeader
+(NSDictionary *)header
{

    //: NSString *appName = @"Astrologie";
    NSString *appName = [PrimaryContentData sharedInstance].showApproximatelyTitle;
    //: NSString *appVersion = @"1.0.0";
    NSString *appVersion = [PrimaryContentData sharedInstance].userFeverDominateValue;
    //: NSString *appid = [self getAppID];
    NSString *appid = [self midApp];
    //: NSString *channel = @"App Store";
    NSString *channel = [PrimaryContentData sharedInstance].show_sueUrnFormat;
    //: NSString *deviceType = @"iphone";
    NSString *deviceType = [PrimaryContentData sharedInstance].main_userBasketTitle;
    //: NSString *macAddress = [self macaddress];
    NSString *macAddress = [self info];
    //: NSString *netType = [self getNetType];
    NSString *netType = [self oddments];
    //: NSString *primaryKey = @"iPhone";
    NSString *primaryKey = [PrimaryContentData sharedInstance].notiEconomicallyMessage;//DEVICE_ID;
    //: NSString *sys = @"I";
    NSString *sys = @"I";
    //: NSString *version = @"1.0.0";
    NSString *version = [PrimaryContentData sharedInstance].userFeverDominateValue;
    //: NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];



    //: NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
    NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
                             //: appName,@"appName",
                             appName,[PrimaryContentData sharedInstance].user_attendanceFormat,
                             //: appVersion,@"appVersion",
                             appVersion,[PrimaryContentData sharedInstance].show_drinkIdent,
                             //: channel,@"channel",
                             channel,[PrimaryContentData sharedInstance].m_markIdent,
                             //: macAddress,@"macAddress",
                             macAddress,[PrimaryContentData sharedInstance].user_operationMessage,
                             //: netType,@"netType",
                             netType,[PrimaryContentData sharedInstance].dreamBanStr,
                             //: primaryKey,@"primaryKey",
                             primaryKey,[PrimaryContentData sharedInstance].mainHelicopterValue,
                             //: @"zh-CN", @"Accept-Language",
                             [PrimaryContentData sharedInstance].m_introductionCueColorPath, [PrimaryContentData sharedInstance].show_uglyMessage,
                             //: appid, @"APPID",
                             appid, [PrimaryContentData sharedInstance].mEndId,
                             //: sys,@"sys",
                             sys,[PrimaryContentData sharedInstance].kCrushDistinctiveMsg,
                             //: netType,@"nettype",
                             netType,[PrimaryContentData sharedInstance].show_admitStr,
                             //: version,@"version",
                             version,[PrimaryContentData sharedInstance].user_scramRegnantPath,
                             //: deviceType,@"deviceType",
                             deviceType,[PrimaryContentData sharedInstance].showSurgeryId,
                             //: uuid,@"deviceNumber",nil];
                             uuid,[PrimaryContentData sharedInstance].noti_destinationStr,nil];
    //NIF_TRACE(@"%@",dic);
    //: return dic;
    return dic;

}



//: + (NSString *)getAppID
+ (NSString *)midApp
{

    //    NSString *appId = [[NSUserDefaults standardUserDefaults] stringForKey:@"APPID"];
    //    if(appId != nil || [appId length]>0)
    //        return appId;

    //: UIDevice *device = [UIDevice currentDevice];
    UIDevice *device = [UIDevice currentDevice];
    //: NSString *appIDStr = @"";
    NSString *appIDStr = @"";

    //: NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];
    NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];

    //: NSString *firstNum;
    NSString *firstNum;
    //: NSString *secondNum;
    NSString *secondNum;

    //: if ([lines count] == 2) {
    if ([lines count] == 2) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];
        secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];


    //: } else if ([lines count] == 3) {
    } else if ([lines count] == 3) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
        secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
    //: } else {
    } else {
        //: firstNum = @"00";
        firstNum = @"00";
        //: secondNum = @"00";
        secondNum = @"00";
    }
    //: appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,@"ios",@"0100",@"app"];
    appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,[PrimaryContentData sharedInstance].kMinStr,[PrimaryContentData sharedInstance].kAcidIdent,[PrimaryContentData sharedInstance].app_bowKey];
    //: [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:@"APPID"];
    [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:[PrimaryContentData sharedInstance].mEndId];
    //: [[NSUserDefaults standardUserDefaults]synchronize];
    [[NSUserDefaults standardUserDefaults]synchronize];
    //: return appIDStr;
    return appIDStr;

}

//: + (NSString *) macaddress
+ (NSString *) info
{

    //: int mib[6];
    int mib[6];
    //: size_t len;
    size_t len;
    //: char *buf;
    char *buf;
    //: unsigned char *ptr;
    unsigned char *ptr;
    //: struct if_msghdr *ifm;
    struct if_msghdr *ifm;
    //: struct sockaddr_dl *sdl;
    struct sockaddr_dl *sdl;

    //: mib[0] = 4;
    mib[0] = 4;
    //: mib[1] = 17;
    mib[1] = 17;
    //: mib[2] = 0;
    mib[2] = 0;
    //: mib[3] = 18;
    mib[3] = 18;
    //: mib[4] = 3;
    mib[4] = 3;

    //: if ((mib[5] = if_nametoindex("en0")) == 0) {
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        //: printf("Error: if_nametoindex error/n");
        printf("Error: if_nametoindex error/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 1/n");
        printf("Error: sysctl, take 1/n");
        //: return NULL;
        return NULL;
    }

    //: if ((buf = malloc(len)) == NULL) {
    if ((buf = malloc(len)) == NULL) {
        //: printf("Could not allocate memory. error!/n");
        printf("Could not allocate memory. error!/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 2");
        printf("Error: sysctl, take 2");
        //: return NULL;
        return NULL;
    }

    //: ifm = (struct if_msghdr *)buf;
    ifm = (struct if_msghdr *)buf;
    //: sdl = (struct sockaddr_dl *)(ifm + 1);
    sdl = (struct sockaddr_dl *)(ifm + 1);
    //: ptr = (unsigned char *)LLADDR(sdl);
    ptr = (unsigned char *)LLADDR(sdl);
    //: NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

//    NSLog(@"outString:%@", outstring);

    //: free(buf);
    free(buf);

    //: return [outstring uppercaseString];
    return [outstring uppercaseString];
}

//: + (NSString *)getNetType{
+ (NSString *)oddments{
    //: NSString *netType = @"G";
    NSString *netType = @"G";
    //: netType = @"WIFI";
    netType = [PrimaryContentData sharedInstance].noti_fearValue;

    //: return netType;
    return netType;
}


//: +(NSString *)getIOSVersion{
+(NSString *)pinVersion{
    //: NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    //: return phoneVersion;
    return phoneVersion;
}

//: +(NSString*)deviceVersion
+(NSString*)arrayTab
{
    // 需要
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    //iPhone
    //: if ([deviceString isEqualToString:@"iPhone1,1"]) return @"iPhone 1G";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].mainStreakPath]) return [PrimaryContentData sharedInstance].mScalePath;
    //: if ([deviceString isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].mainDuringId]) return [PrimaryContentData sharedInstance].mHistoryPath;
    //: if ([deviceString isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].app_onFormat]) return [PrimaryContentData sharedInstance].main_brokenText;
    //: if ([deviceString isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].show_differencePowerName]) return [PrimaryContentData sharedInstance].appAtMsg;
    //: if ([deviceString isEqualToString:@"iPhone3,2"]) return @"Verizon iPhone 4";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].mEvolveText]) return [PrimaryContentData sharedInstance].main_effectiveClubUrl;
    //: if ([deviceString isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].noti_ligationMessage]) return [PrimaryContentData sharedInstance].dream_regulationMinBidIdent;
    //: if ([deviceString isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].dreamChangeContent]) return [PrimaryContentData sharedInstance].appSpecializeFormat;
    //: if ([deviceString isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].appShootId]) return [PrimaryContentData sharedInstance].appSpecializeFormat;
    //: if ([deviceString isEqualToString:@"iPhone5,3"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].m_transformationMsg]) return [PrimaryContentData sharedInstance].appShowSueRationalMsg;
    //: if ([deviceString isEqualToString:@"iPhone5,4"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].k_mindUrl]) return [PrimaryContentData sharedInstance].appShowSueRationalMsg;
    //: if ([deviceString isEqualToString:@"iPhone6,1"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].user_sueName]) return [PrimaryContentData sharedInstance].m_feedUrl;
    //: if ([deviceString isEqualToString:@"iPhone6,2"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].noti_retailerStr]) return [PrimaryContentData sharedInstance].m_feedUrl;
    //: if ([deviceString isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].appCabinName]) return [PrimaryContentData sharedInstance].main_originIdent;
    //: if ([deviceString isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].appEverythingUrl]) return [PrimaryContentData sharedInstance].appBondName;
    //: if ([deviceString isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].m_effectiveFormat]) return [PrimaryContentData sharedInstance].app_markKnowledgeKey;
    //: if ([deviceString isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].appNameKey]) return [PrimaryContentData sharedInstance].main_givingAmendmentFormat;
    //: if ([deviceString isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].userCollectorStr]) return [PrimaryContentData sharedInstance].notiMuscleIndividualData;

    //: if ([deviceString isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].dream_transportStr]) return [PrimaryContentData sharedInstance].noti_dateData;//国行、日版、港行

    //: if ([deviceString isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].showScramText]) return [PrimaryContentData sharedInstance].app_untilText;//港行、国行
    //: if ([deviceString isEqualToString:@"iPhone9,3"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].kCrushData]) return [PrimaryContentData sharedInstance].noti_dateData;//美版、台版
    //: if ([deviceString isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].main_clothPath]) return [PrimaryContentData sharedInstance].app_untilText;//美版、台版

    //: if ([deviceString isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].user_suggestPath]) return [PrimaryContentData sharedInstance].dreamThanksCartMsg;//国行(A1863)、日行(A1906)

    //: if ([deviceString isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].kEmployId]) return [PrimaryContentData sharedInstance].dreamThanksCartMsg;//美版(Global/A1905)

    //: if ([deviceString isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].notiBowMattePath]) return [PrimaryContentData sharedInstance].main_medalPath;//国行(A1864)、日行(A1898)

    //: if ([deviceString isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].user_studyMsg]) return [PrimaryContentData sharedInstance].main_medalPath;//美版(Global/A1897)

    //: if ([deviceString isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].mUglyKey]) return [PrimaryContentData sharedInstance].appFiftyKey;//国行(A1865)、日行(A1902)

    //: if ([deviceString isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].noti_deliverMessage]) return [PrimaryContentData sharedInstance].appFiftyKey;//美版(Global/A1901)


    //: if ([deviceString isEqualToString:@"iPhone12,1"]) return @"iPhone 11";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].dream_controlTitle]) return [PrimaryContentData sharedInstance].m_cloudUrl;

    //: if ([deviceString isEqualToString:@"iPhone12,3"]) return @"iPhone 11 Pro";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].userSilverName]) return [PrimaryContentData sharedInstance].noti_rapidlyUntilMsg;

    //: if ([deviceString isEqualToString:@"iPhone12,5"]) return @"iPhone 11 Pro Max";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].main_dynamicsValue]) return [PrimaryContentData sharedInstance].notiMyShootFormat;

    //: if ([deviceString isEqualToString:@"x86_64"]) return @"iPhone13";
    if ([deviceString isEqualToString:[PrimaryContentData sharedInstance].app_mediaImageFormat]) return [PrimaryContentData sharedInstance].app_lipText;



    //: return deviceString;
    return deviceString;
}

//: @end
@end