
#import <Foundation/Foundation.h>

typedef struct {
    Byte restore;
    Byte *gory;
    unsigned int survival;
} StructPorterData;

@interface PorterData : NSObject

+ (instancetype)sharedInstance;

//: activity_comment_setting_exit
@property (nonatomic, copy) NSString *appSurgeryEquallyFormat;

//: italiano
@property (nonatomic, copy) NSString *appMatteUrl;

//: #2C3042
@property (nonatomic, copy) NSString *app_quickData;

//: Romania
@property (nonatomic, copy) NSString *user_containerUrl;

//: 中文繁体
@property (nonatomic, copy) NSString *noti_accentId;

//: Hungary
@property (nonatomic, copy) NSString *showMyValue;

//: #4B43DE
@property (nonatomic, copy) NSString *mHoppingTitle;

//: Czech Republic
@property (nonatomic, copy) NSString *mainSalmonTitle;

//: Netherlands
@property (nonatomic, copy) NSString *showViewId;

//: user_ic_2
@property (nonatomic, copy) NSString *main_infoRumenFormat;

//: Croatia
@property (nonatomic, copy) NSString *mPipeAttendanceId;

//: CFBundleShortVersionString
@property (nonatomic, copy) NSString *notiGoryMsg;

//: Em alemão
@property (nonatomic, copy) NSString *show_textPath;

//: user_ic_1
@property (nonatomic, copy) NSString *app_loserAdmitKey;

//: icon_select_confirm
@property (nonatomic, copy) NSString *notiAtEducationalData;

//: user_ic_4
@property (nonatomic, copy) NSString *appMessagePipePath;

//: user_edit_lang
@property (nonatomic, copy) NSString *appPowerName;

//: Español
@property (nonatomic, copy) NSString *notiRegnantValue;

//: Denmark
@property (nonatomic, copy) NSString *mainNecessaryValue;

//: Malta
@property (nonatomic, copy) NSString *appCircleAmendmentContent;

//: #CCECFC
@property (nonatomic, copy) NSString *k_mayPath;

//: France
@property (nonatomic, copy) NSString *app_simplyPath;

//: user_qr_icon
@property (nonatomic, copy) NSString *m_combinationOriginNowherePath;

//: NotificationLogout
@property (nonatomic, copy) NSString *notiOffName;

//: Latvia
@property (nonatomic, copy) NSString *m_extraEnableStr;

//: Slovenija
@property (nonatomic, copy) NSString *m_viewMsg;

//: Poland
@property (nonatomic, copy) NSString *dream_rnaKey;

//: qrcode_activity_title
@property (nonatomic, copy) NSString *main_workplaceToKey;

//: Finland
@property (nonatomic, copy) NSString *kDuringText;

//: Kiswahili
@property (nonatomic, copy) NSString *dream_accentTitle;

//: #F7D2F3
@property (nonatomic, copy) NSString *mHormoneMessage;

//: receiver_model
@property (nonatomic, copy) NSString *main_heavilyStr;

//: btn_right
@property (nonatomic, copy) NSString *main_potName;

//: Bulgaria
@property (nonatomic, copy) NSString *showSalmonTitle;

//: icon_close
@property (nonatomic, copy) NSString *dream_givingId;

//: Slovakia
@property (nonatomic, copy) NSString *main_originValue;

//: Greece
@property (nonatomic, copy) NSString *mainCropContent;

//: my_log
@property (nonatomic, copy) NSString *show_addStr;

//: fragment_my_version
@property (nonatomic, copy) NSString *userHateNameData;

//: 5D5F66
@property (nonatomic, copy) NSString *user_matteMessage;

//: user_ic_3
@property (nonatomic, copy) NSString *dream_titleValue;

//: safe_setting_activity_title
@property (nonatomic, copy) NSString *userHeavyId;

//: user_ic_5
@property (nonatomic, copy) NSString *mDropAddMsg;

//: Sverige
@property (nonatomic, copy) NSString *app_streakId;

//: feedback_activity_title
@property (nonatomic, copy) NSString *main_tableName;

//: edit_profile
@property (nonatomic, copy) NSString *kKeyValue;

//: Luxembourg
@property (nonatomic, copy) NSString *userStoneValue;

//: common_bg
@property (nonatomic, copy) NSString *app_drinkMsg;

//: Việt nam
@property (nonatomic, copy) NSString *userGenetPath;

//: #fffWatch
@property (nonatomic, copy) NSString *mWeepFiftyStr;

//: Ireland
@property (nonatomic, copy) NSString *noti_textMessage;

//: #999999
@property (nonatomic, copy) NSString *user_placeFishingFormat;

//: Portugal
@property (nonatomic, copy) NSString *m_evaluateImageExtraTitle;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *showImageMsg;

//: enable
@property (nonatomic, copy) NSString *mEducationalData;

//: Lithuania
@property (nonatomic, copy) NSString *mainMaxKey;

//: spa
@property (nonatomic, copy) NSString *dreamAtNameHorribleIdent;

//: system_change_language_title
@property (nonatomic, copy) NSString *mainCountModerateTitle;

//: Estonia
@property (nonatomic, copy) NSString *dreamFormatName;

//: English
@property (nonatomic, copy) NSString *main_potUrl;

//: hant
@property (nonatomic, copy) NSString *dream_surgeryNameValue;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *userNameData;

//: user_edit_profile
@property (nonatomic, copy) NSString *m_premiseTitle;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *notiShouldIdent;

//: user_my_log
@property (nonatomic, copy) NSString *dreamPatrolMeatName;

//: Türkçe
@property (nonatomic, copy) NSString *appMayTitle;

@end

@implementation PorterData

+ (instancetype)sharedInstance {
    static PorterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PorterDataToByte:(StructPorterData *)data {
    for (int i = 0; i < data->survival; i++) {
        data->gory[i] ^= data->restore;
    }
    data->gory[data->survival] = 0;
    return data->gory;
}

- (NSString *)StringFromPorterData:(StructPorterData *)data {
    return [NSString stringWithUTF8String:(char *)[self PorterDataToByte:data]];
}

//: spa
- (NSString *)dreamAtNameHorribleIdent {
    if (!_dreamAtNameHorribleIdent) {
        StructPorterData value = (StructPorterData){159, (Byte []){236, 239, 254, 52}, 3};
        _dreamAtNameHorribleIdent = [self StringFromPorterData:&value];
    }
    return _dreamAtNameHorribleIdent;
}

//: Croatia
- (NSString *)mPipeAttendanceId {
    if (!_mPipeAttendanceId) {
        StructPorterData value = (StructPorterData){132, (Byte []){199, 246, 235, 229, 240, 237, 229, 24}, 7};
        _mPipeAttendanceId = [self StringFromPorterData:&value];
    }
    return _mPipeAttendanceId;
}

//: Kiswahili
- (NSString *)dream_accentTitle {
    if (!_dream_accentTitle) {
        StructPorterData value = (StructPorterData){72, (Byte []){3, 33, 59, 63, 41, 32, 33, 36, 33, 4}, 9};
        _dream_accentTitle = [self StringFromPorterData:&value];
    }
    return _dream_accentTitle;
}

//: #F7D2F3
- (NSString *)mHormoneMessage {
    if (!_mHormoneMessage) {
        StructPorterData value = (StructPorterData){110, (Byte []){77, 40, 89, 42, 92, 40, 93, 78}, 7};
        _mHormoneMessage = [self StringFromPorterData:&value];
    }
    return _mHormoneMessage;
}

//: contact_tag_fragment_cancel
- (NSString *)showImageMsg {
    if (!_showImageMsg) {
        StructPorterData value = (StructPorterData){87, (Byte []){52, 56, 57, 35, 54, 52, 35, 8, 35, 54, 48, 8, 49, 37, 54, 48, 58, 50, 57, 35, 8, 52, 54, 57, 52, 50, 59, 222}, 27};
        _showImageMsg = [self StringFromPorterData:&value];
    }
    return _showImageMsg;
}

//: Em alemão
- (NSString *)show_textPath {
    if (!_show_textPath) {
        StructPorterData value = (StructPorterData){182, (Byte []){243, 219, 150, 215, 218, 211, 219, 117, 21, 217, 245}, 10};
        _show_textPath = [self StringFromPorterData:&value];
    }
    return _show_textPath;
}

//: Lithuania
- (NSString *)mainMaxKey {
    if (!_mainMaxKey) {
        StructPorterData value = (StructPorterData){254, (Byte []){178, 151, 138, 150, 139, 159, 144, 151, 159, 210}, 9};
        _mainMaxKey = [self StringFromPorterData:&value];
    }
    return _mainMaxKey;
}

//: enable
- (NSString *)mEducationalData {
    if (!_mEducationalData) {
        StructPorterData value = (StructPorterData){54, (Byte []){83, 88, 87, 84, 90, 83, 108}, 6};
        _mEducationalData = [self StringFromPorterData:&value];
    }
    return _mEducationalData;
}

//: CFBundleShortVersionString
- (NSString *)notiGoryMsg {
    if (!_notiGoryMsg) {
        StructPorterData value = (StructPorterData){216, (Byte []){155, 158, 154, 173, 182, 188, 180, 189, 139, 176, 183, 170, 172, 142, 189, 170, 171, 177, 183, 182, 139, 172, 170, 177, 182, 191, 190}, 26};
        _notiGoryMsg = [self StringFromPorterData:&value];
    }
    return _notiGoryMsg;
}

//: English
- (NSString *)main_potUrl {
    if (!_main_potUrl) {
        StructPorterData value = (StructPorterData){163, (Byte []){230, 205, 196, 207, 202, 208, 203, 81}, 7};
        _main_potUrl = [self StringFromPorterData:&value];
    }
    return _main_potUrl;
}

//: France
- (NSString *)app_simplyPath {
    if (!_app_simplyPath) {
        StructPorterData value = (StructPorterData){94, (Byte []){24, 44, 63, 48, 61, 59, 205}, 6};
        _app_simplyPath = [self StringFromPorterData:&value];
    }
    return _app_simplyPath;
}

//: feedback_activity_title
- (NSString *)main_tableName {
    if (!_main_tableName) {
        StructPorterData value = (StructPorterData){205, (Byte []){171, 168, 168, 169, 175, 172, 174, 166, 146, 172, 174, 185, 164, 187, 164, 185, 180, 146, 185, 164, 185, 161, 168, 100}, 23};
        _main_tableName = [self StringFromPorterData:&value];
    }
    return _main_tableName;
}

//: user_my_log
- (NSString *)dreamPatrolMeatName {
    if (!_dreamPatrolMeatName) {
        StructPorterData value = (StructPorterData){157, (Byte []){232, 238, 248, 239, 194, 240, 228, 194, 241, 242, 250, 79}, 11};
        _dreamPatrolMeatName = [self StringFromPorterData:&value];
    }
    return _dreamPatrolMeatName;
}

//: fragment_my_version
- (NSString *)userHateNameData {
    if (!_userHateNameData) {
        StructPorterData value = (StructPorterData){78, (Byte []){40, 60, 47, 41, 35, 43, 32, 58, 17, 35, 55, 17, 56, 43, 60, 61, 39, 33, 32, 76}, 19};
        _userHateNameData = [self StringFromPorterData:&value];
    }
    return _userHateNameData;
}

//: my_log
- (NSString *)show_addStr {
    if (!_show_addStr) {
        StructPorterData value = (StructPorterData){3, (Byte []){110, 122, 92, 111, 108, 100, 45}, 6};
        _show_addStr = [self StringFromPorterData:&value];
    }
    return _show_addStr;
}

//: Latvia
- (NSString *)m_extraEnableStr {
    if (!_m_extraEnableStr) {
        StructPorterData value = (StructPorterData){123, (Byte []){55, 26, 15, 13, 18, 26, 60}, 6};
        _m_extraEnableStr = [self StringFromPorterData:&value];
    }
    return _m_extraEnableStr;
}

//: safe_setting_activity_title
- (NSString *)userHeavyId {
    if (!_userHeavyId) {
        StructPorterData value = (StructPorterData){145, (Byte []){226, 240, 247, 244, 206, 226, 244, 229, 229, 248, 255, 246, 206, 240, 242, 229, 248, 231, 248, 229, 232, 206, 229, 248, 229, 253, 244, 218}, 27};
        _userHeavyId = [self StringFromPorterData:&value];
    }
    return _userHeavyId;
}

//: Slovenija
- (NSString *)m_viewMsg {
    if (!_m_viewMsg) {
        StructPorterData value = (StructPorterData){76, (Byte []){31, 32, 35, 58, 41, 34, 37, 38, 45, 108}, 9};
        _m_viewMsg = [self StringFromPorterData:&value];
    }
    return _m_viewMsg;
}

//: Romania
- (NSString *)user_containerUrl {
    if (!_user_containerUrl) {
        StructPorterData value = (StructPorterData){144, (Byte []){194, 255, 253, 241, 254, 249, 241, 163}, 7};
        _user_containerUrl = [self StringFromPorterData:&value];
    }
    return _user_containerUrl;
}

//: #4B43DE
- (NSString *)mHoppingTitle {
    if (!_mHoppingTitle) {
        StructPorterData value = (StructPorterData){160, (Byte []){131, 148, 226, 148, 147, 228, 229, 76}, 7};
        _mHoppingTitle = [self StringFromPorterData:&value];
    }
    return _mHoppingTitle;
}

//: user_qr_icon
- (NSString *)m_combinationOriginNowherePath {
    if (!_m_combinationOriginNowherePath) {
        StructPorterData value = (StructPorterData){129, (Byte []){244, 242, 228, 243, 222, 240, 243, 222, 232, 226, 238, 239, 115}, 12};
        _m_combinationOriginNowherePath = [self StringFromPorterData:&value];
    }
    return _m_combinationOriginNowherePath;
}

//: contact_tag_fragment_sure
- (NSString *)userNameData {
    if (!_userNameData) {
        StructPorterData value = (StructPorterData){57, (Byte []){90, 86, 87, 77, 88, 90, 77, 102, 77, 88, 94, 102, 95, 75, 88, 94, 84, 92, 87, 77, 102, 74, 76, 75, 92, 43}, 25};
        _userNameData = [self StringFromPorterData:&value];
    }
    return _userNameData;
}

//: user_edit_profile
- (NSString *)m_premiseTitle {
    if (!_m_premiseTitle) {
        StructPorterData value = (StructPorterData){102, (Byte []){19, 21, 3, 20, 57, 3, 2, 15, 18, 57, 22, 20, 9, 0, 15, 10, 3, 92}, 17};
        _m_premiseTitle = [self StringFromPorterData:&value];
    }
    return _m_premiseTitle;
}

//: qrcode_activity_title
- (NSString *)main_workplaceToKey {
    if (!_main_workplaceToKey) {
        StructPorterData value = (StructPorterData){155, (Byte []){234, 233, 248, 244, 255, 254, 196, 250, 248, 239, 242, 237, 242, 239, 226, 196, 239, 242, 239, 247, 254, 119}, 21};
        _main_workplaceToKey = [self StringFromPorterData:&value];
    }
    return _main_workplaceToKey;
}

//: NotificationLogout
- (NSString *)notiOffName {
    if (!_notiOffName) {
        StructPorterData value = (StructPorterData){152, (Byte []){214, 247, 236, 241, 254, 241, 251, 249, 236, 241, 247, 246, 212, 247, 255, 247, 237, 236, 55}, 18};
        _notiOffName = [self StringFromPorterData:&value];
    }
    return _notiOffName;
}

//: icon_select_confirm
- (NSString *)notiAtEducationalData {
    if (!_notiAtEducationalData) {
        StructPorterData value = (StructPorterData){50, (Byte []){91, 81, 93, 92, 109, 65, 87, 94, 87, 81, 70, 109, 81, 93, 92, 84, 91, 64, 95, 140}, 19};
        _notiAtEducationalData = [self StringFromPorterData:&value];
    }
    return _notiAtEducationalData;
}

//: Hungary
- (NSString *)showMyValue {
    if (!_showMyValue) {
        StructPorterData value = (StructPorterData){76, (Byte []){4, 57, 34, 43, 45, 62, 53, 156}, 7};
        _showMyValue = [self StringFromPorterData:&value];
    }
    return _showMyValue;
}

//: activity_comment_setting_exit
- (NSString *)appSurgeryEquallyFormat {
    if (!_appSurgeryEquallyFormat) {
        StructPorterData value = (StructPorterData){122, (Byte []){27, 25, 14, 19, 12, 19, 14, 3, 37, 25, 21, 23, 23, 31, 20, 14, 37, 9, 31, 14, 14, 19, 20, 29, 37, 31, 2, 19, 14, 28}, 29};
        _appSurgeryEquallyFormat = [self StringFromPorterData:&value];
    }
    return _appSurgeryEquallyFormat;
}

//: system_change_language_title
- (NSString *)mainCountModerateTitle {
    if (!_mainCountModerateTitle) {
        StructPorterData value = (StructPorterData){19, (Byte []){96, 106, 96, 103, 118, 126, 76, 112, 123, 114, 125, 116, 118, 76, 127, 114, 125, 116, 102, 114, 116, 118, 76, 103, 122, 103, 127, 118, 238}, 28};
        _mainCountModerateTitle = [self StringFromPorterData:&value];
    }
    return _mainCountModerateTitle;
}

//: Poland
- (NSString *)dream_rnaKey {
    if (!_dream_rnaKey) {
        StructPorterData value = (StructPorterData){43, (Byte []){123, 68, 71, 74, 69, 79, 68}, 6};
        _dream_rnaKey = [self StringFromPorterData:&value];
    }
    return _dream_rnaKey;
}

//: Portugal
- (NSString *)m_evaluateImageExtraTitle {
    if (!_m_evaluateImageExtraTitle) {
        StructPorterData value = (StructPorterData){45, (Byte []){125, 66, 95, 89, 88, 74, 76, 65, 136}, 8};
        _m_evaluateImageExtraTitle = [self StringFromPorterData:&value];
    }
    return _m_evaluateImageExtraTitle;
}

//: common_bg
- (NSString *)app_drinkMsg {
    if (!_app_drinkMsg) {
        StructPorterData value = (StructPorterData){145, (Byte []){242, 254, 252, 252, 254, 255, 206, 243, 246, 157}, 9};
        _app_drinkMsg = [self StringFromPorterData:&value];
    }
    return _app_drinkMsg;
}

//: receiver_model
- (NSString *)main_heavilyStr {
    if (!_main_heavilyStr) {
        StructPorterData value = (StructPorterData){41, (Byte []){91, 76, 74, 76, 64, 95, 76, 91, 118, 68, 70, 77, 76, 69, 253}, 14};
        _main_heavilyStr = [self StringFromPorterData:&value];
    }
    return _main_heavilyStr;
}

//: italiano
- (NSString *)appMatteUrl {
    if (!_appMatteUrl) {
        StructPorterData value = (StructPorterData){223, (Byte []){182, 171, 190, 179, 182, 190, 177, 176, 234}, 8};
        _appMatteUrl = [self StringFromPorterData:&value];
    }
    return _appMatteUrl;
}

//: Việt nam
- (NSString *)userGenetPath {
    if (!_userGenetPath) {
        StructPorterData value = (StructPorterData){18, (Byte []){68, 123, 243, 169, 149, 102, 50, 124, 115, 127, 228}, 10};
        _userGenetPath = [self StringFromPorterData:&value];
    }
    return _userGenetPath;
}

//: Denmark
- (NSString *)mainNecessaryValue {
    if (!_mainNecessaryValue) {
        StructPorterData value = (StructPorterData){251, (Byte []){191, 158, 149, 150, 154, 137, 144, 85}, 7};
        _mainNecessaryValue = [self StringFromPorterData:&value];
    }
    return _mainNecessaryValue;
}

//: edit_profile
- (NSString *)kKeyValue {
    if (!_kKeyValue) {
        StructPorterData value = (StructPorterData){192, (Byte []){165, 164, 169, 180, 159, 176, 178, 175, 166, 169, 172, 165, 81}, 12};
        _kKeyValue = [self StringFromPorterData:&value];
    }
    return _kKeyValue;
}

//: Español
- (NSString *)notiRegnantValue {
    if (!_notiRegnantValue) {
        StructPorterData value = (StructPorterData){31, (Byte []){90, 108, 111, 126, 220, 174, 112, 115, 154}, 8};
        _notiRegnantValue = [self StringFromPorterData:&value];
    }
    return _notiRegnantValue;
}

//: Türkçe
- (NSString *)appMayTitle {
    if (!_appMayTitle) {
        StructPorterData value = (StructPorterData){165, (Byte []){241, 102, 25, 215, 206, 102, 2, 192, 198}, 8};
        _appMayTitle = [self StringFromPorterData:&value];
    }
    return _appMayTitle;
}

//: Luxembourg
- (NSString *)userStoneValue {
    if (!_userStoneValue) {
        StructPorterData value = (StructPorterData){166, (Byte []){234, 211, 222, 195, 203, 196, 201, 211, 212, 193, 15}, 10};
        _userStoneValue = [self StringFromPorterData:&value];
    }
    return _userStoneValue;
}

//: user_ic_4
- (NSString *)appMessagePipePath {
    if (!_appMessagePipePath) {
        StructPorterData value = (StructPorterData){1, (Byte []){116, 114, 100, 115, 94, 104, 98, 94, 53, 142}, 9};
        _appMessagePipePath = [self StringFromPorterData:&value];
    }
    return _appMessagePipePath;
}

//: 5D5F66
- (NSString *)user_matteMessage {
    if (!_user_matteMessage) {
        StructPorterData value = (StructPorterData){43, (Byte []){30, 111, 30, 109, 29, 29, 125}, 6};
        _user_matteMessage = [self StringFromPorterData:&value];
    }
    return _user_matteMessage;
}

//: user_ic_3
- (NSString *)dream_titleValue {
    if (!_dream_titleValue) {
        StructPorterData value = (StructPorterData){212, (Byte []){161, 167, 177, 166, 139, 189, 183, 139, 231, 105}, 9};
        _dream_titleValue = [self StringFromPorterData:&value];
    }
    return _dream_titleValue;
}

//: hant
- (NSString *)dream_surgeryNameValue {
    if (!_dream_surgeryNameValue) {
        StructPorterData value = (StructPorterData){242, (Byte []){154, 147, 156, 134, 41}, 4};
        _dream_surgeryNameValue = [self StringFromPorterData:&value];
    }
    return _dream_surgeryNameValue;
}

//: Sverige
- (NSString *)app_streakId {
    if (!_app_streakId) {
        StructPorterData value = (StructPorterData){183, (Byte []){228, 193, 210, 197, 222, 208, 210, 178}, 7};
        _app_streakId = [self StringFromPorterData:&value];
    }
    return _app_streakId;
}

//: Greece
- (NSString *)mainCropContent {
    if (!_mainCropContent) {
        StructPorterData value = (StructPorterData){26, (Byte []){93, 104, 127, 127, 121, 127, 52}, 6};
        _mainCropContent = [self StringFromPorterData:&value];
    }
    return _mainCropContent;
}

//: Ireland
- (NSString *)noti_textMessage {
    if (!_noti_textMessage) {
        StructPorterData value = (StructPorterData){18, (Byte []){91, 96, 119, 126, 115, 124, 118, 7}, 7};
        _noti_textMessage = [self StringFromPorterData:&value];
    }
    return _noti_textMessage;
}

//: icon_close
- (NSString *)dream_givingId {
    if (!_dream_givingId) {
        StructPorterData value = (StructPorterData){197, (Byte []){172, 166, 170, 171, 154, 166, 169, 170, 182, 160, 54}, 10};
        _dream_givingId = [self StringFromPorterData:&value];
    }
    return _dream_givingId;
}

//: Finland
- (NSString *)kDuringText {
    if (!_kDuringText) {
        StructPorterData value = (StructPorterData){193, (Byte []){135, 168, 175, 173, 160, 175, 165, 233}, 7};
        _kDuringText = [self StringFromPorterData:&value];
    }
    return _kDuringText;
}

//: Estonia
- (NSString *)dreamFormatName {
    if (!_dreamFormatName) {
        StructPorterData value = (StructPorterData){81, (Byte []){20, 34, 37, 62, 63, 56, 48, 134}, 7};
        _dreamFormatName = [self StringFromPorterData:&value];
    }
    return _dreamFormatName;
}

//: user_ic_1
- (NSString *)app_loserAdmitKey {
    if (!_app_loserAdmitKey) {
        StructPorterData value = (StructPorterData){28, (Byte []){105, 111, 121, 110, 67, 117, 127, 67, 45, 147}, 9};
        _app_loserAdmitKey = [self StringFromPorterData:&value];
    }
    return _app_loserAdmitKey;
}

//: activity_comment_setting_ys
- (NSString *)notiShouldIdent {
    if (!_notiShouldIdent) {
        StructPorterData value = (StructPorterData){187, (Byte []){218, 216, 207, 210, 205, 210, 207, 194, 228, 216, 212, 214, 214, 222, 213, 207, 228, 200, 222, 207, 207, 210, 213, 220, 228, 194, 200, 226}, 27};
        _notiShouldIdent = [self StringFromPorterData:&value];
    }
    return _notiShouldIdent;
}

//: #CCECFC
- (NSString *)k_mayPath {
    if (!_k_mayPath) {
        StructPorterData value = (StructPorterData){180, (Byte []){151, 247, 247, 241, 247, 242, 247, 220}, 7};
        _k_mayPath = [self StringFromPorterData:&value];
    }
    return _k_mayPath;
}

//: user_ic_5
- (NSString *)mDropAddMsg {
    if (!_mDropAddMsg) {
        StructPorterData value = (StructPorterData){173, (Byte []){216, 222, 200, 223, 242, 196, 206, 242, 152, 198}, 9};
        _mDropAddMsg = [self StringFromPorterData:&value];
    }
    return _mDropAddMsg;
}

//: Slovakia
- (NSString *)main_originValue {
    if (!_main_originValue) {
        StructPorterData value = (StructPorterData){112, (Byte []){35, 28, 31, 6, 17, 27, 25, 17, 123}, 8};
        _main_originValue = [self StringFromPorterData:&value];
    }
    return _main_originValue;
}

//: btn_right
- (NSString *)main_potName {
    if (!_main_potName) {
        StructPorterData value = (StructPorterData){86, (Byte []){52, 34, 56, 9, 36, 63, 49, 62, 34, 32}, 9};
        _main_potName = [self StringFromPorterData:&value];
    }
    return _main_potName;
}

//: user_edit_lang
- (NSString *)appPowerName {
    if (!_appPowerName) {
        StructPorterData value = (StructPorterData){93, (Byte []){40, 46, 56, 47, 2, 56, 57, 52, 41, 2, 49, 60, 51, 58, 119}, 14};
        _appPowerName = [self StringFromPorterData:&value];
    }
    return _appPowerName;
}

//: #999999
- (NSString *)user_placeFishingFormat {
    if (!_user_placeFishingFormat) {
        StructPorterData value = (StructPorterData){214, (Byte []){245, 239, 239, 239, 239, 239, 239, 244}, 7};
        _user_placeFishingFormat = [self StringFromPorterData:&value];
    }
    return _user_placeFishingFormat;
}

//: Czech Republic
- (NSString *)mainSalmonTitle {
    if (!_mainSalmonTitle) {
        StructPorterData value = (StructPorterData){36, (Byte []){103, 94, 65, 71, 76, 4, 118, 65, 84, 81, 70, 72, 77, 71, 223}, 14};
        _mainSalmonTitle = [self StringFromPorterData:&value];
    }
    return _mainSalmonTitle;
}

//: #2C3042
- (NSString *)app_quickData {
    if (!_app_quickData) {
        StructPorterData value = (StructPorterData){19, (Byte []){48, 33, 80, 32, 35, 39, 33, 104}, 7};
        _app_quickData = [self StringFromPorterData:&value];
    }
    return _app_quickData;
}

//: Netherlands
- (NSString *)showViewId {
    if (!_showViewId) {
        StructPorterData value = (StructPorterData){30, (Byte []){80, 123, 106, 118, 123, 108, 114, 127, 112, 122, 109, 241}, 11};
        _showViewId = [self StringFromPorterData:&value];
    }
    return _showViewId;
}

//: Bulgaria
- (NSString *)showSalmonTitle {
    if (!_showSalmonTitle) {
        StructPorterData value = (StructPorterData){62, (Byte []){124, 75, 82, 89, 95, 76, 87, 95, 87}, 8};
        _showSalmonTitle = [self StringFromPorterData:&value];
    }
    return _showSalmonTitle;
}

//: Malta
- (NSString *)appCircleAmendmentContent {
    if (!_appCircleAmendmentContent) {
        StructPorterData value = (StructPorterData){108, (Byte []){33, 13, 0, 24, 13, 26}, 5};
        _appCircleAmendmentContent = [self StringFromPorterData:&value];
    }
    return _appCircleAmendmentContent;
}

//: user_ic_2
- (NSString *)main_infoRumenFormat {
    if (!_main_infoRumenFormat) {
        StructPorterData value = (StructPorterData){29, (Byte []){104, 110, 120, 111, 66, 116, 126, 66, 47, 13}, 9};
        _main_infoRumenFormat = [self StringFromPorterData:&value];
    }
    return _main_infoRumenFormat;
}

//: 中文繁体
- (NSString *)noti_accentId {
    if (!_noti_accentId) {
        StructPorterData value = (StructPorterData){77, (Byte []){169, 245, 224, 171, 219, 202, 170, 244, 204, 169, 240, 222, 169}, 12};
        _noti_accentId = [self StringFromPorterData:&value];
    }
    return _noti_accentId;
}

//: #fffWatch
- (NSString *)mWeepFiftyStr {
    if (!_mWeepFiftyStr) {
        StructPorterData value = (StructPorterData){107, (Byte []){72, 13, 13, 13, 13, 13, 13, 149}, 7};
        _mWeepFiftyStr = [self StringFromPorterData:&value];
    }
    return _mWeepFiftyStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SoapBubbleViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainCenterViewController.h"
#import "SoapBubbleViewController.h"
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"
//: #import "WatchCommonTableDelegate.h"
#import "BarPage.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+InputSub.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "NTESCustomNotificationDB.h"
#import "ChanceImage.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESColorButtonCell.h"
#import "CompartmentHoldfastColorViewCell.h"
//: #import "CCCBlackListViewController.h"
#import "FindViewController.h"
//: #import "NTESUserUtil.h"
#import "RecordUtil.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "NTESMigrateMessageViewController.h"
#import "DitheredColourViewController.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import "WatchUserInfoViewController.h"//个人资料
#import "ImageSessionViewController.h"//个人资料
//: #import "NTESUserQRCodeViewController.h" //我的二维码
#import "SizeViewController.h" //我的二维码
//: #import "NTESSafetySetingController.h"   //安全设置
#import "TimeButtonViewController.h"   //安全设置
//: #import "NTESFeedbackViewController.h" //意见反馈
#import "ValueModelViewController.h" //意见反馈
//: #import "NTESLanguageViewController.h"
#import "RedTitleViewController.h"
//: #import "NTESOpinionBackViewController.h" //意见反馈
#import "OldViewController.h" //意见反馈
//: #import "ZMONPolicyPrivacyViewController.h"
#import "ButtonOldViewController.h"
//: #import "MyLogViewController.h"
#import "ColorPinViewController.h"

//: @interface NTESMainCenterViewController ()<NIMUserManagerDelegate>
@interface SoapBubbleViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *lablang;
@property (nonatomic,strong) UILabel *lablang;
//: @property (nonatomic ,strong) NSString *language;
@property (nonatomic ,strong) NSString *language;


//: @end
@end

//: @implementation NTESMainCenterViewController
@implementation SoapBubbleViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self refreshUserInfo];
    [self curriculumChange];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[PorterData sharedInstance].app_drinkMsg];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initImage];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: self.language = [self requestLanguage:[NIMUserDefaults standardUserDefaults].language];
    self.language = [self wireBottom:[OnName user].language];
}

//: - (void)refreshUserInfo
- (void)curriculumChange
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:userID skinColour_strong:nil];

    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",twineInside([OnName user].accountName)];
    //: [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];


    //: _lablang.text = self.language;
    _lablang.text = self.language;
}

//: - (NSString *)requestLanguage:(NSString *)langType {
- (NSString *)wireBottom:(NSString *)langType {

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"English";
        resourceType = [PorterData sharedInstance].main_potUrl;
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"ภาษาไทย ";
        resourceType = @"ภาษาไทย ";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"Việt nam";
        resourceType = [PorterData sharedInstance].userGenetPath;
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"हिंदी";
        resourceType = @"हिंदी";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"にほんご";
        resourceType = @"にほんご";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"한국어";
        resourceType = @"한국어";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[PorterData sharedInstance].dreamAtNameHorribleIdent]){
        //: resourceType = @"Español";
        resourceType = [PorterData sharedInstance].notiRegnantValue;
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"Portugal";
        resourceType = [PorterData sharedInstance].m_evaluateImageExtraTitle;
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"中文";
        resourceType = @"中文";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"italiano";
        resourceType = [PorterData sharedInstance].appMatteUrl;
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"العربية المصرية";
        resourceType = @"العربية المصرية";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"Türkçe";
        resourceType = [PorterData sharedInstance].appMayTitle;
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"Kiswahili";
        resourceType = [PorterData sharedInstance].dream_accentTitle;
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"Em alemão";
        resourceType = [PorterData sharedInstance].show_textPath;
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"‎اردو";
        resourceType = @"‎اردو";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"العربية";
        resourceType = @"العربية";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"русск";
        resourceType = @"русск";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"বাঙ্গালি";
        resourceType = @"বাঙ্গালি";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"France";
        resourceType = [PorterData sharedInstance].app_simplyPath;
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[PorterData sharedInstance].dream_surgeryNameValue]){
        //: resourceType = @"中文繁体";
        resourceType = [PorterData sharedInstance].noti_accentId;
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"Sverige";
        resourceType = [PorterData sharedInstance].app_streakId;
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"Slovenija";
        resourceType = [PorterData sharedInstance].m_viewMsg;
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"Slovakia";
        resourceType = [PorterData sharedInstance].main_originValue;
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"Romania";
        resourceType = [PorterData sharedInstance].user_containerUrl;
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"Poland";
        resourceType = [PorterData sharedInstance].dream_rnaKey;
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"Netherlands";
        resourceType = [PorterData sharedInstance].showViewId;
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"Malta";
        resourceType = [PorterData sharedInstance].appCircleAmendmentContent;
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"Luxembourg";
        resourceType = [PorterData sharedInstance].userStoneValue;
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"Lithuania";
        resourceType = [PorterData sharedInstance].mainMaxKey;
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"Latvia";
        resourceType = [PorterData sharedInstance].m_extraEnableStr;
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"Bulgaria";
        resourceType = [PorterData sharedInstance].showSalmonTitle;
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"Croatia";
        resourceType = [PorterData sharedInstance].mPipeAttendanceId;
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"Czech Republic";
        resourceType = [PorterData sharedInstance].mainSalmonTitle;
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"Denmark";
        resourceType = [PorterData sharedInstance].mainNecessaryValue;
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"Estonia";
        resourceType = [PorterData sharedInstance].dreamFormatName;
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"Finland";
        resourceType = [PorterData sharedInstance].kDuringText;
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"Greece";
        resourceType = [PorterData sharedInstance].mainCropContent;
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"Hungary";
        resourceType = [PorterData sharedInstance].showMyValue;
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"Ireland";
        resourceType = [PorterData sharedInstance].noti_textMessage;
    }

    //: NSLog(@"resourceType : %@",resourceType);

    //: return resourceType;
    return resourceType;
}

//: - (void)initUI{
- (void)initImage{

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:userID skinColour_strong:nil];

    //: _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice vg_statusBarHeight]), 64, 64)];
    _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice tingHeight]), 64, 64)];
    //: [self.view addSubview:_headerImage];
    [self.view addSubview:_headerImage];
    //: _headerImage.layer.cornerRadius = 32;
    _headerImage.layer.cornerRadius = 32;
    //: _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _headerImage.layer.borderWidth = 1;
    _headerImage.layer.borderWidth = 1;
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];

    //: [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice vg_statusBarHeight])+7, 150, 25);
    self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice tingHeight])+7, 150, 25);
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",twineInside([OnName user].accountName)];
    //: self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);
    self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);

    //: UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice vg_statusBarHeight])+2, 53, 60);
    qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice tingHeight])+2, 53, 60);
    //: qrBtn.backgroundColor = [UIColor whiteColor];
    qrBtn.backgroundColor = [UIColor whiteColor];
    //: qrBtn.layer.cornerRadius = 12;
    qrBtn.layer.cornerRadius = 12;
    //: [qrBtn setImage:[UIImage imageNamed:@"user_qr_icon"] forState:(UIControlStateNormal)];
    [qrBtn setImage:[UIImage imageNamed:[PorterData sharedInstance].m_combinationOriginNowherePath] forState:(UIControlStateNormal)];
    //: [qrBtn addTarget:self action:@selector(handlebtnQr) forControlEvents:UIControlEventTouchUpInside];
    [qrBtn addTarget:self action:@selector(nameRange) forControlEvents:UIControlEventTouchUpInside];
    //: qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [qrBtn setTitleColor:[UIColor colorWithHexString:@"#4B43DE"] forState:UIControlStateNormal];
    [qrBtn setTitleColor:[UIColor min:[PorterData sharedInstance].mHoppingTitle] forState:UIControlStateNormal];
    //: [qrBtn setTitle:[WatchLanguageManager getTextWithKey:@"qrcode_activity_title"] forState:UIControlStateNormal];
    [qrBtn setTitle:[PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].main_workplaceToKey] forState:UIControlStateNormal];
    //: [qrBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
    [qrBtn title:(MKButtonEdgeInsetsStyleTop) tillVideo:10];
    //: [self.view addSubview:qrBtn];
    [self.view addSubview:qrBtn];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-(49.0f))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    contentView.backgroundColor = [UIColor min:[PorterData sharedInstance].mWeepFiftyStr];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
    editView.backgroundColor = [UIColor min:[PorterData sharedInstance].mHormoneMessage];
    //: editView.layer.cornerRadius = 12;
    editView.layer.cornerRadius = 12;
    //: [contentView addSubview:editView];
    [contentView addSubview:editView];
    //: editView.userInteractionEnabled = YES;
    editView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userInfoCenter)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(commentM)];
    //: [editView addGestureRecognizer:singleTap1];
    [editView addGestureRecognizer:singleTap1];
    //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: editimg.image = [UIImage imageNamed:@"user_edit_profile"];
    editimg.image = [UIImage imageNamed:[PorterData sharedInstance].m_premiseTitle];
    //: editimg.contentMode = UIViewContentModeScaleAspectFill;
    editimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [editView addSubview:editimg];
    [editView addSubview:editimg];
    //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: labedit.font = [UIFont systemFontOfSize:14];
    labedit.font = [UIFont systemFontOfSize:14];
    //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labedit.textColor = [UIColor min:[PorterData sharedInstance].app_quickData];
    //: labedit.text = [WatchLanguageManager getTextWithKey:@"edit_profile"];
    labedit.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].kKeyValue];
    //: [editView addSubview:labedit];
    [editView addSubview:labedit];

    //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
    langView.backgroundColor = [UIColor min:[PorterData sharedInstance].k_mayPath];
    //: langView.layer.cornerRadius = 12;
    langView.layer.cornerRadius = 12;
    //: [contentView addSubview:langView];
    [contentView addSubview:langView];
    //: langView.userInteractionEnabled = YES;
    langView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeLang)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(centerImage)];
    //: [langView addGestureRecognizer:singleTap2];
    [langView addGestureRecognizer:singleTap2];
    //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: langimg.image = [UIImage imageNamed:@"user_edit_lang"];
    langimg.image = [UIImage imageNamed:[PorterData sharedInstance].appPowerName];
    //: langimg.contentMode = UIViewContentModeScaleAspectFill;
    langimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [langView addSubview:langimg];
    [langView addSubview:langimg];
    //: _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: _lablang.font = [UIFont systemFontOfSize:14];
    _lablang.font = [UIFont systemFontOfSize:14];
    //: _lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
    _lablang.textColor = [UIColor min:[PorterData sharedInstance].app_quickData];
    //: _lablang.text = @"English";
    _lablang.text = [PorterData sharedInstance].main_potUrl;
    //: [langView addSubview:_lablang];
    [langView addSubview:_lablang];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view1];
    [contentView addSubview:view1];
    //: view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 12;
    view1.layer.cornerRadius = 12;
    //: view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view1.layer.shadowOffset = CGSizeMake(0,4);
    view1.layer.shadowOffset = CGSizeMake(0,4);
    //: view1.layer.shadowOpacity = 1;
    view1.layer.shadowOpacity = 1;
    //: view1.layer.shadowRadius = 16;
    view1.layer.shadowRadius = 16;

    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box1.backgroundColor = [UIColor clearColor];
    box1.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box1];
    [view1 addSubview:box1];

    //: UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_1"]];
    UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].app_loserAdmitKey]];
    //: image11.frame = CGRectMake(0, 13, 28, 28);
    image11.frame = CGRectMake(0, 13, 28, 28);
    //: [box1 addSubview:image11];
    [box1 addSubview:image11];
    //: UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    //: label11.font = [UIFont systemFontOfSize:13.f];
    label11.font = [UIFont systemFontOfSize:13.f];
    //: label11.textColor = [UIColor blackColor];
    label11.textColor = [UIColor blackColor];
    //: label11.text = [WatchLanguageManager getTextWithKey:@"receiver_model"];
    label11.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].main_heavilyStr];
    //: [box1 addSubview:label11];
    [box1 addSubview:label11];
    //: UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    //: switch11.onTintColor = [UIColor colorWithHexString:@"#4B43DE"];
    switch11.onTintColor = [UIColor min:[PorterData sharedInstance].mHoppingTitle];
    //: [switch11 addTarget:self action:@selector(switchWith:) forControlEvents:UIControlEventValueChanged];
    [switch11 addTarget:self action:@selector(objecting:) forControlEvents:UIControlEventValueChanged];
    //: [box1 addSubview:switch11];
    [box1 addSubview:switch11];


    //: UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: boxlog.backgroundColor = [UIColor clearColor];
    boxlog.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:boxlog];
    [view1 addSubview:boxlog];
    //: boxlog.userInteractionEnabled = YES;
    boxlog.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoMyLog)];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(borderMessage)];
    //: [boxlog addGestureRecognizer:singleTap8];
    [boxlog addGestureRecognizer:singleTap8];

    //: UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_my_log"]];
    UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].dreamPatrolMeatName]];
    //: imagelog.frame = CGRectMake(0, 13, 28, 28);
    imagelog.frame = CGRectMake(0, 13, 28, 28);
    //: [boxlog addSubview:imagelog];
    [boxlog addSubview:imagelog];
    //: UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: labellog.font = [UIFont systemFontOfSize:13.f];
    labellog.font = [UIFont systemFontOfSize:13.f];
    //: labellog.textColor = [UIColor blackColor];
    labellog.textColor = [UIColor blackColor];
    //: labellog.text = [WatchLanguageManager getTextWithKey:@"my_log"];
    labellog.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].show_addStr];
    //: [boxlog addSubview:labellog];
    [boxlog addSubview:labellog];
    //: UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowrightlog.image = [UIImage imageNamed:@"btn_right"];
    arrowrightlog.image = [UIImage imageNamed:[PorterData sharedInstance].main_potName];
    //: [boxlog addSubview:arrowrightlog];
    [boxlog addSubview:arrowrightlog];

    //: UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box6.backgroundColor = [UIColor clearColor];
    box6.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box6];
    [view1 addSubview:box6];
    //: box6.userInteractionEnabled = YES;
    box6.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(safetySeting)];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(curMargin)];
    //: [box6 addGestureRecognizer:singleTap7];
    [box6 addGestureRecognizer:singleTap7];

    //: UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_2"]];
    UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].main_infoRumenFormat]];
    //: image23.frame = CGRectMake(0, 13, 28, 28);
    image23.frame = CGRectMake(0, 13, 28, 28);
    //: [box6 addSubview:image23];
    [box6 addSubview:image23];
    //: UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label23.font = [UIFont systemFontOfSize:13.f];
    label23.font = [UIFont systemFontOfSize:13.f];
    //: label23.textColor = [UIColor blackColor];
    label23.textColor = [UIColor blackColor];
    //: label23.text = [WatchLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    label23.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].userHeavyId];
    //: [box6 addSubview:label23];
    [box6 addSubview:label23];
    //: UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright6.image = [UIImage imageNamed:@"btn_right"];
    arrowright6.image = [UIImage imageNamed:[PorterData sharedInstance].main_potName];
    //: [box6 addSubview:arrowright6];
    [box6 addSubview:arrowright6];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view2];
    [contentView addSubview:view2];
    //: view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view2.layer.cornerRadius = 12;
    view2.layer.cornerRadius = 12;
    //: view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view2.layer.shadowOffset = CGSizeMake(0,4);
    view2.layer.shadowOffset = CGSizeMake(0,4);
    //: view2.layer.shadowOpacity = 1;
    view2.layer.shadowOpacity = 1;
    //: view2.layer.shadowRadius = 16;
    view2.layer.shadowRadius = 16;



    //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box3.backgroundColor = [UIColor clearColor];
    box3.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box3];
    [view2 addSubview:box3];

    //: UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_3"]];
    UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].dream_titleValue]];
    //: image14.frame = CGRectMake(0, 13, 28, 28);
    image14.frame = CGRectMake(0, 13, 28, 28);
    //: [box3 addSubview:image14];
    [box3 addSubview:image14];
    //: UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label14.font = [UIFont systemFontOfSize:13.f];
    label14.font = [UIFont systemFontOfSize:13.f];
    //: label14.textColor = [UIColor blackColor];
    label14.textColor = [UIColor blackColor];
    //: label14.text = [WatchLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    label14.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].notiShouldIdent];//@"用户协议和隐私协议";
    //: [box3 addSubview:label14];
    [box3 addSubview:label14];
    //: UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright2.image = [UIImage imageNamed:@"btn_right"];
    arrowright2.image = [UIImage imageNamed:[PorterData sharedInstance].main_potName];
    //: [box3 addSubview:arrowright2];
    [box3 addSubview:arrowright2];
    //: box3.userInteractionEnabled = YES;
    box3.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpAgreement)];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(suicidePactSearched)];
    //: [box3 addGestureRecognizer:singleTap4];
    [box3 addGestureRecognizer:singleTap4];

    //: UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box5.backgroundColor = [UIColor clearColor];
    box5.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box5];
    [view2 addSubview:box5];
    //: box5.userInteractionEnabled = YES;
    box5.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(opinionBack)];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(digitizerBack)];
    //: [box5 addGestureRecognizer:singleTap6];
    [box5 addGestureRecognizer:singleTap6];

    //: UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_4"]];
    UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].appMessagePipePath]];
    //: image22.frame = CGRectMake(0, 13, 28, 28);
    image22.frame = CGRectMake(0, 13, 28, 28);
    //: [box5 addSubview:image22];
    [box5 addSubview:image22];
    //: UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label22.font = [UIFont systemFontOfSize:13.f];
    label22.font = [UIFont systemFontOfSize:13.f];
    //: label22.textColor = [UIColor blackColor];
    label22.textColor = [UIColor blackColor];
    //: label22.text = [WatchLanguageManager getTextWithKey:@"feedback_activity_title"];
    label22.text = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].main_tableName];
    //: [box5 addSubview:label22];
    [box5 addSubview:label22];

    //: UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright5.image = [UIImage imageNamed:@"btn_right"];
    arrowright5.image = [UIImage imageNamed:[PorterData sharedInstance].main_potName];
    //: [box5 addSubview:arrowright5];
    [box5 addSubview:arrowright5];






    //: UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box7.backgroundColor = [UIColor clearColor];
    box7.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box7];
    [view2 addSubview:box7];

    //: UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_5"]];
    UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[PorterData sharedInstance].mDropAddMsg]];
    //: image31.frame = CGRectMake(0, 13, 28, 28);
    image31.frame = CGRectMake(0, 13, 28, 28);
    //: [box7 addSubview:image31];
    [box7 addSubview:image31];
    //: UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label31.font = [UIFont systemFontOfSize:13.f];
    label31.font = [UIFont systemFontOfSize:13.f];
    //: label31.textColor = [UIColor blackColor];
    label31.textColor = [UIColor blackColor];
    //: [box7 addSubview:label31];
    [box7 addSubview:label31];
    //: NSString *fragment_my_version = [WatchLanguageManager getTextWithKey:@"fragment_my_version"];
    NSString *fragment_my_version = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].userHateNameData];
    //: NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    //: NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersion = [infoDic objectForKey:[PorterData sharedInstance].notiGoryMsg];// 获取App的版本号
    //: label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];

    //: UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [loginButton setTitleColor:[UIColor colorWithHexString:@"5D5F66"] forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor min:[PorterData sharedInstance].user_matteMessage] forState:UIControlStateNormal];
    //: [loginButton setTitle:[WatchLanguageManager getTextWithKey:@"activity_comment_setting_exit"] forState:UIControlStateNormal];
    [loginButton setTitle:[PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].appSurgeryEquallyFormat] forState:UIControlStateNormal];
    //: [loginButton addTarget:self action:@selector(logoutCurrentAccount) forControlEvents:UIControlEventTouchUpInside];
    [loginButton addTarget:self action:@selector(logoutItemRecital) forControlEvents:UIControlEventTouchUpInside];
    //: [contentView addSubview:loginButton];
    [contentView addSubview:loginButton];
    //: loginButton.layer.borderWidth = 1;
    loginButton.layer.borderWidth = 1;
    //: loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: loginButton.layer.cornerRadius = 22;
    loginButton.layer.cornerRadius = 22;



}
//: #pragma mark - NTESMainCenterDelegate
#pragma mark - NTESMainCenterDelegate
//: -(void)userInfoCenter{
-(void)commentM{
    //: WatchUserInfoViewController *vc = [[WatchUserInfoViewController alloc] init];
    ImageSessionViewController *vc = [[ImageSessionViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)handlebtnQr{
-(void)nameRange{

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    SizeViewController *vc = [[SizeViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)opinionBack{
-(void)digitizerBack{

    //: NTESFeedbackViewController *vc = [[NTESFeedbackViewController alloc] init];
    ValueModelViewController *vc = [[ValueModelViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)safetySeting{
-(void)curMargin{
    //: NTESSafetySetingController *vc = [[NTESSafetySetingController alloc] init];
    TimeButtonViewController *vc = [[TimeButtonViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)gotoMyLog
- (void)borderMessage
{
    //: MyLogViewController *vc = [[MyLogViewController alloc] init];
    ColorPinViewController *vc = [[ColorPinViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)switchWith:(UISwitch *)switchView{
-(void)objecting:(UISwitch *)switchView{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: if (switchView.on) {
    if (switchView.on) {
        //: [dict setObject:@"1" forKey:@"enable"];
        [dict setObject:@"1" forKey:[PorterData sharedInstance].mEducationalData];

        // 启用听筒模式
        //: [self setEarpieceMode:YES];
        [self setShowTime:YES];

    //: }else{
    }else{
        //: [dict setObject:@"0" forKey:@"enable"];
        [dict setObject:@"0" forKey:[PorterData sharedInstance].mEducationalData];

        // 禁用听筒模式
        //: [self setEarpieceMode:NO];
        [self setShowTime:NO];
    }
}

//: - (void)setEarpieceMode:(BOOL)enabled {
- (void)setShowTime:(BOOL)enabled {
    //: NSError *error = nil;
    NSError *error = nil;

    // 获取当前的音频会话
    //: AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];

    // 配置音频会话为播放和录制
    //: [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error setting audio session category: %@", error);
        //: return;
        return;
    }

    // 激活音频会话
    //: [audioSession setActive:YES error:&error];
    [audioSession setActive:YES error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error activating audio session: %@", error);
        //: return;
        return;
    }

    // 根据开关设置听筒模式
    //: if (enabled) {
    if (enabled) {
        // 切换到听筒
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    //: } else {
    } else {
        // 使用默认音频输出设备（即听筒模式）
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
    }

    //: if (error) {
    if (error) {
        //: NSLog(@"Error overriding audio port: %@", error);
    }
}


//: -(void)changeLang
-(void)centerImage
{
    //: NTESLanguageViewController *vc = [[NTESLanguageViewController alloc]init];
    RedTitleViewController *vc = [[RedTitleViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)exitApp{
-(void)plant{
    //: NSString *alertStr = [WatchLanguageManager getTextWithKey:@"system_change_language_title"];
    NSString *alertStr = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].mainCountModerateTitle];
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    //: [alert addAction:[UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].userNameData] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: exit(0);
        exit(0);
    //: }]];
    }]];

    //: [alert addAction:[UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].showImageMsg] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    //: }]];
    }]];

    //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: [rootVC presentViewController:alert animated:YES completion:nil];
    [rootVC presentViewController:alert animated:YES completion:nil];

}

//: -(void)jumpAgreement{
-(void)suicidePactSearched{

    //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
    ButtonOldViewController *vc = [[ButtonOldViewController alloc] init];
    //: vc.webTitle = [WatchLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [PaintedNaturalLanguageTo exhibit:[PorterData sharedInstance].notiShouldIdent];//@"隐私协议";
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [OnName user].yshref;

    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)logoutCurrentAccount
- (void)logoutItemRecital
{

    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
     {
        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
        [[NSNotificationCenter defaultCenter] postNotificationName:[PorterData sharedInstance].notiOffName object:nil];
    //: }];
    }];

}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:22.f];
        _titleLabel.font = [UIFont systemFontOfSize:22.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)accountLabel{
- (UILabel *)accountLabel{
    //: if (!_accountLabel) {
    if (!_accountLabel) {
        //: _accountLabel = [[UILabel alloc] init];
        _accountLabel = [[UILabel alloc] init];
        //: _accountLabel.font = [UIFont systemFontOfSize:12.f];
        _accountLabel.font = [UIFont systemFontOfSize:12.f];
        //: _accountLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _accountLabel.textColor = [UIColor min:[PorterData sharedInstance].user_placeFishingFormat];
    }
    //: return _accountLabel;
    return _accountLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"icon_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[PorterData sharedInstance].dream_givingId] forState:UIControlStateNormal];
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn setImage:[UIImage imageNamed:@"icon_select_confirm"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[PorterData sharedInstance].notiAtEducationalData] forState:UIControlStateNormal];
        //        [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _sureBtn;
    return _sureBtn;
}



//: @end
@end
