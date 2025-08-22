
#import <Foundation/Foundation.h>

typedef struct {
    Byte showerMy;
    Byte *statusInfo;
    unsigned int itchView;
} StructAwfullyData;

@interface AwfullyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AwfullyData

+ (instancetype)sharedInstance {
    static AwfullyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AwfullyDataToByte:(StructAwfullyData *)data {
    for (int i = 0; i < data->itchView; i++) {
        data->statusInfo[i] ^= data->showerMy;
    }
    data->statusInfo[data->itchView] = 0;
    return data->statusInfo;
}

- (NSString *)StringFromAwfullyData:(StructAwfullyData *)data {
    return [NSString stringWithUTF8String:(char *)[self AwfullyDataToByte:data]];
}

//: register_account_activity_psw
- (NSString *)dreamPropertyMessage {
    /* static */ NSString *dreamPropertyMessage = nil;
    if (!dreamPropertyMessage) {
        StructAwfullyData value = (StructAwfullyData){116, (Byte []){6, 17, 19, 29, 7, 0, 17, 6, 43, 21, 23, 23, 27, 1, 26, 0, 43, 21, 23, 0, 29, 2, 29, 0, 13, 43, 4, 7, 3, 3}, 29};
        dreamPropertyMessage = [self StringFromAwfullyData:&value];
    }
    return dreamPropertyMessage;
}

//: login_logo
- (NSString *)mHeavyClubId {
    /* static */ NSString *mHeavyClubId = nil;
    if (!mHeavyClubId) {
        StructAwfullyData value = (StructAwfullyData){150, (Byte []){250, 249, 241, 255, 248, 201, 250, 249, 241, 249, 191}, 10};
        mHeavyClubId = [self StringFromAwfullyData:&value];
    }
    return mHeavyClubId;
}

//: login_icon_pwd
- (NSString *)show_hunterData {
    /* static */ NSString *show_hunterData = nil;
    if (!show_hunterData) {
        StructAwfullyData value = (StructAwfullyData){39, (Byte []){75, 72, 64, 78, 73, 120, 78, 68, 72, 73, 120, 87, 80, 67, 144}, 14};
        show_hunterData = [self StringFromAwfullyData:&value];
    }
    return show_hunterData;
}

//: ^[A-Za-z0-9_]{6,18}$
- (NSString *)dream_towardsTitleFormat {
    /* static */ NSString *dream_towardsTitleFormat = nil;
    if (!dream_towardsTitleFormat) {
        StructAwfullyData value = (StructAwfullyData){227, (Byte []){189, 184, 162, 206, 185, 130, 206, 153, 211, 206, 218, 188, 190, 152, 213, 207, 210, 219, 158, 199, 147}, 20};
        dream_towardsTitleFormat = [self StringFromAwfullyData:&value];
    }
    return dream_towardsTitleFormat;
}

//: /user/login
- (NSString *)mEvaluateKey {
    /* static */ NSString *mEvaluateKey = nil;
    if (!mEvaluateKey) {
        StructAwfullyData value = (StructAwfullyData){16, (Byte []){63, 101, 99, 117, 98, 63, 124, 127, 119, 121, 126, 215}, 11};
        mEvaluateKey = [self StringFromAwfullyData:&value];
    }
    return mEvaluateKey;
}

//: NotificationLogout
- (NSString *)showMediaName {
    /* static */ NSString *showMediaName = nil;
    if (!showMediaName) {
        StructAwfullyData value = (StructAwfullyData){89, (Byte []){23, 54, 45, 48, 63, 48, 58, 56, 45, 48, 54, 55, 21, 54, 62, 54, 44, 45, 164}, 18};
        showMediaName = [self StringFromAwfullyData:&value];
    }
    return showMediaName;
}

//: ppp
- (NSString *)m_heavilyQuietStr {
    /* static */ NSString *m_heavilyQuietStr = nil;
    if (!m_heavilyQuietStr) {
        StructAwfullyData value = (StructAwfullyData){23, (Byte []){103, 103, 103, 40}, 3};
        m_heavilyQuietStr = [self StringFromAwfullyData:&value];
    }
    return m_heavilyQuietStr;
}

//: password
- (NSString *)notiFishingPath {
    /* static */ NSString *notiFishingPath = nil;
    if (!notiFishingPath) {
        StructAwfullyData value = (StructAwfullyData){196, (Byte []){180, 165, 183, 183, 179, 171, 182, 160, 225}, 8};
        notiFishingPath = [self StringFromAwfullyData:&value];
    }
    return notiFishingPath;
}

//: msg
- (NSString *)k_producerStr {
    /* static */ NSString *k_producerStr = nil;
    if (!k_producerStr) {
        StructAwfullyData value = (StructAwfullyData){93, (Byte []){48, 46, 58, 167}, 3};
        k_producerStr = [self StringFromAwfullyData:&value];
    }
    return k_producerStr;
}

//: friend_verify_avtivity_net_error
- (NSString *)show_messagePath {
    /* static */ NSString *show_messagePath = nil;
    if (!show_messagePath) {
        StructAwfullyData value = (StructAwfullyData){135, (Byte []){225, 245, 238, 226, 233, 227, 216, 241, 226, 245, 238, 225, 254, 216, 230, 241, 243, 238, 241, 238, 243, 254, 216, 233, 226, 243, 216, 226, 245, 245, 232, 245, 202}, 32};
        show_messagePath = [self StringFromAwfullyData:&value];
    }
    return show_messagePath;
}

//: ^[A-Za-z0-9_]{6,12}$
- (NSString *)k_meaningName {
    /* static */ NSString *k_meaningName = nil;
    if (!k_meaningName) {
        StructAwfullyData value = (StructAwfullyData){17, (Byte []){79, 74, 80, 60, 75, 112, 60, 107, 33, 60, 40, 78, 76, 106, 39, 61, 32, 35, 108, 53, 247}, 20};
        k_meaningName = [self StringFromAwfullyData:&value];
    }
    return k_meaningName;
}

//: data
- (NSString *)appShowStr {
    /* static */ NSString *appShowStr = nil;
    if (!appShowStr) {
        StructAwfullyData value = (StructAwfullyData){67, (Byte []){39, 34, 55, 34, 247}, 4};
        appShowStr = [self StringFromAwfullyData:&value];
    }
    return appShowStr;
}

//: #333333
- (NSString *)notiPublisherValue {
    /* static */ NSString *notiPublisherValue = nil;
    if (!notiPublisherValue) {
        StructAwfullyData value = (StructAwfullyData){231, (Byte []){196, 212, 212, 212, 212, 212, 212, 193}, 7};
        notiPublisherValue = [self StringFromAwfullyData:&value];
    }
    return notiPublisherValue;
}

//: type
- (NSString *)noti_collectorText {
    /* static */ NSString *noti_collectorText = nil;
    if (!noti_collectorText) {
        StructAwfullyData value = (StructAwfullyData){205, (Byte []){185, 180, 189, 168, 132}, 4};
        noti_collectorText = [self StringFromAwfullyData:&value];
    }
    return noti_collectorText;
}

//: ic_invisible
- (NSString *)m_mayTitle {
    /* static */ NSString *m_mayTitle = nil;
    if (!m_mayTitle) {
        StructAwfullyData value = (StructAwfullyData){117, (Byte []){28, 22, 42, 28, 27, 3, 28, 6, 28, 23, 25, 16, 138}, 12};
        m_mayTitle = [self StringFromAwfullyData:&value];
    }
    return m_mayTitle;
}

//: UserPassWord
- (NSString *)kMembershipPath {
    /* static */ NSString *kMembershipPath = nil;
    if (!kMembershipPath) {
        StructAwfullyData value = (StructAwfullyData){243, (Byte []){166, 128, 150, 129, 163, 146, 128, 128, 164, 156, 129, 151, 233}, 12};
        kMembershipPath = [self StringFromAwfullyData:&value];
    }
    return kMembershipPath;
}

//: iOS%@
- (NSString *)dreamArrestContent {
    /* static */ NSString *dreamArrestContent = nil;
    if (!dreamArrestContent) {
        StructAwfullyData value = (StructAwfullyData){84, (Byte []){61, 27, 7, 113, 20, 225}, 5};
        dreamArrestContent = [self StringFromAwfullyData:&value];
    }
    return dreamArrestContent;
}

//: login_icon_user
- (NSString *)mSurvivalIdent {
    /* static */ NSString *mSurvivalIdent = nil;
    if (!mSurvivalIdent) {
        StructAwfullyData value = (StructAwfullyData){37, (Byte []){73, 74, 66, 76, 75, 122, 76, 70, 74, 75, 122, 80, 86, 64, 87, 155}, 15};
        mSurvivalIdent = [self StringFromAwfullyData:&value];
    }
    return mSurvivalIdent;
}

//: login_activity_login_failed
- (NSString *)show_arrestUrl {
    /* static */ NSString *show_arrestUrl = nil;
    if (!show_arrestUrl) {
        StructAwfullyData value = (StructAwfullyData){59, (Byte []){87, 84, 92, 82, 85, 100, 90, 88, 79, 82, 77, 82, 79, 66, 100, 87, 84, 92, 82, 85, 100, 93, 90, 82, 87, 94, 95, 84}, 27};
        show_arrestUrl = [self StringFromAwfullyData:&value];
    }
    return show_arrestUrl;
}

//: issup
- (NSString *)notiCropItchKey {
    /* static */ NSString *notiCropItchKey = nil;
    if (!notiCropItchKey) {
        StructAwfullyData value = (StructAwfullyData){90, (Byte []){51, 41, 41, 47, 42, 154}, 5};
        notiCropItchKey = [self StringFromAwfullyData:&value];
    }
    return notiCropItchKey;
}

//: ic_visible
- (NSString *)main_teamMessage {
    /* static */ NSString *main_teamMessage = nil;
    if (!main_teamMessage) {
        StructAwfullyData value = (StructAwfullyData){183, (Byte []){222, 212, 232, 193, 222, 196, 222, 213, 219, 210, 232}, 10};
        main_teamMessage = [self StringFromAwfullyData:&value];
    }
    return main_teamMessage;
}

//: #fffWatch
- (NSString *)userBoomData {
    /* static */ NSString *userBoomData = nil;
    if (!userBoomData) {
        StructAwfullyData value = (StructAwfullyData){177, (Byte []){146, 215, 215, 215, 215, 215, 215, 222}, 7};
        userBoomData = [self StringFromAwfullyData:&value];
    }
    return userBoomData;
}

//: RegistFinshNotification
- (NSString *)app_heavilyUntilTitle {
    /* static */ NSString *app_heavilyUntilTitle = nil;
    if (!app_heavilyUntilTitle) {
        StructAwfullyData value = (StructAwfullyData){124, (Byte []){46, 25, 27, 21, 15, 8, 58, 21, 18, 15, 20, 50, 19, 8, 21, 26, 21, 31, 29, 8, 21, 19, 18, 238}, 23};
        app_heavilyUntilTitle = [self StringFromAwfullyData:&value];
    }
    return app_heavilyUntilTitle;
}

//: vpn
- (NSString *)mClothValue {
    /* static */ NSString *mClothValue = nil;
    if (!mClothValue) {
        StructAwfullyData value = (StructAwfullyData){135, (Byte []){241, 247, 233, 39}, 3};
        mClothValue = [self StringFromAwfullyData:&value];
    }
    return mClothValue;
}

//: activity_login_login
- (NSString *)noti_parishPath {
    /* static */ NSString *noti_parishPath = nil;
    if (!noti_parishPath) {
        StructAwfullyData value = (StructAwfullyData){234, (Byte []){139, 137, 158, 131, 156, 131, 158, 147, 181, 134, 133, 141, 131, 132, 181, 134, 133, 141, 131, 132, 96}, 20};
        noti_parishPath = [self StringFromAwfullyData:&value];
    }
    return noti_parishPath;
}

//: #5D5F66
- (NSString *)notiValueIdent {
    /* static */ NSString *notiValueIdent = nil;
    if (!notiValueIdent) {
        StructAwfullyData value = (StructAwfullyData){97, (Byte []){66, 84, 37, 84, 39, 87, 87, 240}, 7};
        notiValueIdent = [self StringFromAwfullyData:&value];
    }
    return notiValueIdent;
}

//: #4B43DE
- (NSString *)k_untilKillerData {
    /* static */ NSString *k_untilKillerData = nil;
    if (!k_untilKillerData) {
        StructAwfullyData value = (StructAwfullyData){151, (Byte []){180, 163, 213, 163, 164, 211, 210, 18}, 7};
        k_untilKillerData = [self StringFromAwfullyData:&value];
    }
    return k_untilKillerData;
}

//: #8282A7
- (NSString *)kMembershipSilverHaveFormat {
    /* static */ NSString *kMembershipSilverHaveFormat = nil;
    if (!kMembershipSilverHaveFormat) {
        StructAwfullyData value = (StructAwfullyData){181, (Byte []){150, 141, 135, 141, 135, 244, 130, 25}, 7};
        kMembershipSilverHaveFormat = [self StringFromAwfullyData:&value];
    }
    return kMembershipSilverHaveFormat;
}

//: activity_register_agree
- (NSString *)appSimplyName {
    /* static */ NSString *appSimplyName = nil;
    if (!appSimplyName) {
        StructAwfullyData value = (StructAwfullyData){253, (Byte []){156, 158, 137, 148, 139, 148, 137, 132, 162, 143, 152, 154, 148, 142, 137, 152, 143, 162, 156, 154, 143, 152, 152, 169}, 23};
        appSimplyName = [self StringFromAwfullyData:&value];
    }
    return appSimplyName;
}

//: login_error
- (NSString *)dream_strangeData {
    /* static */ NSString *dream_strangeData = nil;
    if (!dream_strangeData) {
        StructAwfullyData value = (StructAwfullyData){156, (Byte []){240, 243, 251, 245, 242, 195, 249, 238, 238, 243, 238, 96}, 11};
        dream_strangeData = [self StringFromAwfullyData:&value];
    }
    return dream_strangeData;
}

//: login_agreement_press
- (NSString *)dreamCollectorAchieveData {
    /* static */ NSString *dreamCollectorAchieveData = nil;
    if (!dreamCollectorAchieveData) {
        StructAwfullyData value = (StructAwfullyData){23, (Byte []){123, 120, 112, 126, 121, 72, 118, 112, 101, 114, 114, 122, 114, 121, 99, 72, 103, 101, 114, 100, 100, 64}, 21};
        dreamCollectorAchieveData = [self StringFromAwfullyData:&value];
    }
    return dreamCollectorAchieveData;
}

//: telname
- (NSString *)dreamConventShootFormat {
    /* static */ NSString *dreamConventShootFormat = nil;
    if (!dreamConventShootFormat) {
        StructAwfullyData value = (StructAwfullyData){42, (Byte []){94, 79, 70, 68, 75, 71, 79, 127}, 7};
        dreamConventShootFormat = [self StringFromAwfullyData:&value];
    }
    return dreamConventShootFormat;
}

//: activity_comment_setting_ys
- (NSString *)app_stoneTitle {
    /* static */ NSString *app_stoneTitle = nil;
    if (!app_stoneTitle) {
        StructAwfullyData value = (StructAwfullyData){85, (Byte []){52, 54, 33, 60, 35, 60, 33, 44, 10, 54, 58, 56, 56, 48, 59, 33, 10, 38, 48, 33, 33, 60, 59, 50, 10, 44, 38, 69}, 27};
        app_stoneTitle = [self StringFromAwfullyData:&value];
    }
    return app_stoneTitle;
}

//: nimtoken
- (NSString *)showMarchStr {
    /* static */ NSString *showMarchStr = nil;
    if (!showMarchStr) {
        StructAwfullyData value = (StructAwfullyData){8, (Byte []){102, 97, 101, 124, 103, 99, 109, 102, 20}, 8};
        showMarchStr = [self StringFromAwfullyData:&value];
    }
    return showMarchStr;
}

//: ios
- (NSString *)noti_photographText {
    /* static */ NSString *noti_photographText = nil;
    if (!noti_photographText) {
        StructAwfullyData value = (StructAwfullyData){190, (Byte []){215, 209, 205, 139}, 3};
        noti_photographText = [self StringFromAwfullyData:&value];
    }
    return noti_photographText;
}

//: register_account_activity_account
- (NSString *)showColorIdent {
    /* static */ NSString *showColorIdent = nil;
    if (!showColorIdent) {
        StructAwfullyData value = (StructAwfullyData){47, (Byte []){93, 74, 72, 70, 92, 91, 74, 93, 112, 78, 76, 76, 64, 90, 65, 91, 112, 78, 76, 91, 70, 89, 70, 91, 86, 112, 78, 76, 76, 64, 90, 65, 91, 209}, 33};
        showColorIdent = [self StringFromAwfullyData:&value];
    }
    return showColorIdent;
}

//: code
- (NSString *)mainVanishUrl {
    /* static */ NSString *mainVanishUrl = nil;
    if (!mainVanishUrl) {
        StructAwfullyData value = (StructAwfullyData){48, (Byte []){83, 95, 84, 85, 101}, 4};
        mainVanishUrl = [self StringFromAwfullyData:&value];
    }
    return mainVanishUrl;
}

//: login_agreement_normal
- (NSString *)kGoryValue {
    /* static */ NSString *kGoryValue = nil;
    if (!kGoryValue) {
        StructAwfullyData value = (StructAwfullyData){15, (Byte []){99, 96, 104, 102, 97, 80, 110, 104, 125, 106, 106, 98, 106, 97, 123, 80, 97, 96, 125, 98, 110, 99, 76}, 22};
        kGoryValue = [self StringFromAwfullyData:&value];
    }
    return kGoryValue;
}

//: systems
- (NSString *)app_riotStr {
    /* static */ NSString *app_riotStr = nil;
    if (!app_riotStr) {
        StructAwfullyData value = (StructAwfullyData){115, (Byte []){0, 10, 0, 7, 22, 30, 0, 102}, 7};
        app_riotStr = [self StringFromAwfullyData:&value];
    }
    return app_riotStr;
}

//: activity_login_welcome
- (NSString *)notiRugValue {
    /* static */ NSString *notiRugValue = nil;
    if (!notiRugValue) {
        StructAwfullyData value = (StructAwfullyData){54, (Byte []){87, 85, 66, 95, 64, 95, 66, 79, 105, 90, 89, 81, 95, 88, 105, 65, 83, 90, 85, 89, 91, 83, 228}, 22};
        notiRugValue = [self StringFromAwfullyData:&value];
    }
    return notiRugValue;
}

//: activity_register_title
- (NSString *)mainFatigueIdent {
    /* static */ NSString *mainFatigueIdent = nil;
    if (!mainFatigueIdent) {
        StructAwfullyData value = (StructAwfullyData){126, (Byte []){31, 29, 10, 23, 8, 23, 10, 7, 33, 12, 27, 25, 23, 13, 10, 27, 12, 33, 10, 23, 10, 18, 27, 209}, 23};
        mainFatigueIdent = [self StringFromAwfullyData:&value];
    }
    return mainFatigueIdent;
}

//: login_success
- (NSString *)main_barreValue {
    /* static */ NSString *main_barreValue = nil;
    if (!main_barreValue) {
        StructAwfullyData value = (StructAwfullyData){96, (Byte []){12, 15, 7, 9, 14, 63, 19, 21, 3, 3, 5, 19, 19, 2}, 13};
        main_barreValue = [self StringFromAwfullyData:&value];
    }
    return main_barreValue;
}

//: tap
- (NSString *)app_armUrl {
    /* static */ NSString *app_armUrl = nil;
    if (!app_armUrl) {
        StructAwfullyData value = (StructAwfullyData){238, (Byte []){154, 143, 158, 214}, 3};
        app_armUrl = [self StringFromAwfullyData:&value];
    }
    return app_armUrl;
}

//: SELF MATCHES %@
- (NSString *)m_mindKey {
    /* static */ NSString *m_mindKey = nil;
    if (!m_mindKey) {
        StructAwfullyData value = (StructAwfullyData){82, (Byte []){1, 23, 30, 20, 114, 31, 19, 6, 17, 26, 23, 1, 114, 119, 18, 89}, 15};
        m_mindKey = [self StringFromAwfullyData:&value];
    }
    return m_mindKey;
}

//: client
- (NSString *)user_envelopeContent {
    /* static */ NSString *user_envelopeContent = nil;
    if (!user_envelopeContent) {
        StructAwfullyData value = (StructAwfullyData){40, (Byte []){75, 68, 65, 77, 70, 92, 213}, 6};
        user_envelopeContent = [self StringFromAwfullyData:&value];
    }
    return user_envelopeContent;
}

//: token
- (NSString *)k_producerTitle {
    /* static */ NSString *k_producerTitle = nil;
    if (!k_producerTitle) {
        StructAwfullyData value = (StructAwfullyData){161, (Byte []){213, 206, 202, 196, 207, 195}, 5};
        k_producerTitle = [self StringFromAwfullyData:&value];
    }
    return k_producerTitle;
}

//: account
- (NSString *)appImageHoppingValue {
    /* static */ NSString *appImageHoppingValue = nil;
    if (!appImageHoppingValue) {
        StructAwfullyData value = (StructAwfullyData){219, (Byte []){186, 184, 184, 180, 174, 181, 175, 248}, 7};
        appImageHoppingValue = [self StringFromAwfullyData:&value];
    }
    return appImageHoppingValue;
}

//: deviceid
- (NSString *)kNameMsg {
    /* static */ NSString *kNameMsg = nil;
    if (!kNameMsg) {
        StructAwfullyData value = (StructAwfullyData){114, (Byte []){22, 23, 4, 27, 17, 23, 27, 22, 192}, 8};
        kNameMsg = [self StringFromAwfullyData:&value];
    }
    return kNameMsg;
}

//: login_activity_login_success
- (NSString *)appPatienceName {
    /* static */ NSString *appPatienceName = nil;
    if (!appPatienceName) {
        StructAwfullyData value = (StructAwfullyData){100, (Byte []){8, 11, 3, 13, 10, 59, 5, 7, 16, 13, 18, 13, 16, 29, 59, 8, 11, 3, 13, 10, 59, 23, 17, 7, 7, 1, 23, 23, 72}, 28};
        appPatienceName = [self StringFromAwfullyData:&value];
    }
    return appPatienceName;
}

//: __SCOPED__
- (NSString *)appTransportPatrolFormat {
    /* static */ NSString *appTransportPatrolFormat = nil;
    if (!appTransportPatrolFormat) {
        StructAwfullyData value = (StructAwfullyData){99, (Byte []){60, 60, 48, 32, 44, 51, 38, 39, 60, 60, 168}, 10};
        appTransportPatrolFormat = [self StringFromAwfullyData:&value];
    }
    return appTransportPatrolFormat;
}

//: #999999
- (NSString *)user_isolationName {
    /* static */ NSString *user_isolationName = nil;
    if (!user_isolationName) {
        StructAwfullyData value = (StructAwfullyData){168, (Byte []){139, 145, 145, 145, 145, 145, 145, 26}, 7};
        user_isolationName = [self StringFromAwfullyData:&value];
    }
    return user_isolationName;
}

//: activity_login_has_no_account
- (NSString *)app_propertyEmployStr {
    /* static */ NSString *app_propertyEmployStr = nil;
    if (!app_propertyEmployStr) {
        StructAwfullyData value = (StructAwfullyData){229, (Byte []){132, 134, 145, 140, 147, 140, 145, 156, 186, 137, 138, 130, 140, 139, 186, 141, 132, 150, 186, 139, 138, 186, 132, 134, 134, 138, 144, 139, 145, 239}, 29};
        app_propertyEmployStr = [self StringFromAwfullyData:&value];
    }
    return app_propertyEmployStr;
}

//: login_bg
- (NSString *)m_fineIsolationMessage {
    /* static */ NSString *m_fineIsolationMessage = nil;
    if (!m_fineIsolationMessage) {
        StructAwfullyData value = (StructAwfullyData){129, (Byte []){237, 238, 230, 232, 239, 222, 227, 230, 221}, 8};
        m_fineIsolationMessage = [self StringFromAwfullyData:&value];
    }
    return m_fineIsolationMessage;
}

//: lang
- (NSString *)user_regulationValue {
    /* static */ NSString *user_regulationValue = nil;
    if (!user_regulationValue) {
        StructAwfullyData value = (StructAwfullyData){27, (Byte []){119, 122, 117, 124, 223}, 4};
        user_regulationValue = [self StringFromAwfullyData:&value];
    }
    return user_regulationValue;
}

//: tun
- (NSString *)mainRiotFormat {
    /* static */ NSString *mainRiotFormat = nil;
    if (!mainRiotFormat) {
        StructAwfullyData value = (StructAwfullyData){153, (Byte []){237, 236, 247, 221}, 3};
        mainRiotFormat = [self StringFromAwfullyData:&value];
    }
    return mainRiotFormat;
}

//: UserAccount
- (NSString *)notiToId {
    /* static */ NSString *notiToId = nil;
    if (!notiToId) {
        StructAwfullyData value = (StructAwfullyData){48, (Byte []){101, 67, 85, 66, 113, 83, 83, 95, 69, 94, 68, 59}, 11};
        notiToId = [self StringFromAwfullyData:&value];
    }
    return notiToId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingSessionViewController.m
//  NIMDemo
//
//  Created by ght on 15-1-26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchLoginViewController.h"
#import "TingSessionViewController.h"
//: #import "NTESMainTabController.h"
#import "UserBarController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import "CCCLoginManager.h"
#import "InfoUser.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+InputSub.h"
//: #import "WatchRegisterViewController.h"
#import "ShowBubbleViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "BarTo.h"
//: #import <CoreTelephony/CTCellularData.h>
#import <CoreTelephony/CTCellularData.h>
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "NameLoginOption.h"
//: #import "SNDevice.h"
#import "BackgroundMakeDevice.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "ButtonOldViewController.h"
//: #import "GetBackPasswordViewController.h"
#import "ReplacingViewController.h"

//: @interface WatchLoginViewController ()<UITextFieldDelegate> {
@interface TingSessionViewController ()<UITextFieldDelegate> {
    //: UIActivityIndicatorView *_ActivityIndicator;
    UIActivityIndicatorView *_ActivityIndicator;
    //: BOOL _isloading;
    BOOL _isloading;
}
//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;

//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;

//: @property (nonatomic,strong) YYLabel *protocolLabel;
@property (nonatomic,strong) YYLabel *protocolLabel;
//: @property (nonatomic,strong) YYLabel *registLabel;
@property (nonatomic,strong) YYLabel *registLabel;

//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) QueryStubView *loadingView;

//: @end
@end

//: @implementation WatchLoginViewController
@implementation TingSessionViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[AwfullyData sharedInstance] m_fineIsolationMessage]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [NTESRegistConfigManager shareConfigManager].loginVC = self;
    [BarTo districtManager].loginVC = self;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    OnName *userDefaults = [OnName user];
    //: if (userDefaults.language.length > 0) {
    if (userDefaults.language.length > 0) {
        //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
        [NameLoginOption sound].isRequestAutoLoginFinish = YES;
        //: [self autoLogin];
        [self edgeTo];
    //: } else {
    } else {

        //等待登陆菊花初始化：
        //: _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        //设置菊花的中心点，貌似不能设置菊花的大小，系统自带的有三种样式
        //: _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        //添加菊花
        //: [self.view addSubview:_ActivityIndicator];
        [self.view addSubview:_ActivityIndicator];

        //: [self needsInitUI];
        [self magnitude];
    }

    //1.获取网络权限 根绝权限进行人机交互
     //: if (100000) {
     if (100000) {
         //: [self networkStatus];
         [self reticulum];
     //: }else {
     }else {
         //2.2已经开启网络权限 监听网络状态
         //: [self addReachabilityManager];
         [self power];
     }

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registSuccessWithAccount:) name:@"RegistFinshNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(independented:) name:[[AwfullyData sharedInstance] app_heavilyUntilTitle] object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];



//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:KEKENotificationLanguageChanged object:nil];

//    [self.view addSubview:self.loadingView];
//    self.loadingView.hidden = YES;
}

//- (void)languageChanged:(NSNotification *)noti {
////    [self refreshNavBarStyle];
//    [_loginButton setTitle:LangKey(@"activity_login_login") forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"activity_register_title") forState:UIControlStateNormal];
//}

//: - (void)needsInitUI {
- (void)magnitude {

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    OnName *userDefaults = [OnName user];
    //: if (userDefaults.language && userDefaults.language.length <= 0) {
    if (userDefaults.language && userDefaults.language.length <= 0) {

        //在某个地方设置其 ，开始旋转动画
        //: [_ActivityIndicator startAnimating];
        [_ActivityIndicator startAnimating];

        //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
        [CoverPageMode nameConfig:^(NSDictionary * _Nonnull configDict) {//处理第一次启动语言问题
            //: if (configDict.allKeys.count > 0) {
            if (configDict.allKeys.count > 0) {
                //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
                OnName *userDefaults = [OnName user];
                //: NSString *lang = [configDict newStringValueForKey:@"lang"];
                NSString *lang = [configDict record:[[AwfullyData sharedInstance] user_regulationValue]];
                //: if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                    //: lang = @"en";
                    lang = @"en";
                }
                //: userDefaults.language = lang;
                userDefaults.language = lang;
                //: [[WatchLanguageManager shareInstance] setLanguagre:lang];
                [[PaintedNaturalLanguageTo marginSource] setOfImage:lang];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:[[AwfullyData sharedInstance] showMediaName] object:nil];
                //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                //: if (delegate.deviceToken) {
                if (delegate.deviceToken) {
                    //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                    [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                                       //: customContentKey:lang];
                                       customContentKey:lang];

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
                            //: if (error)
                            if (error)
                            {

                            }
                        //: }];
                        }];
                    //: });
                    });
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //菊花停止旋转
                    //: [_ActivityIndicator stopAnimating];
                    [_ActivityIndicator stopAnimating];
                    //菊花隐藏
                    //: [_ActivityIndicator setHidesWhenStopped:YES];
                    [_ActivityIndicator setHidesWhenStopped:YES];

                    //需要执行的方法
                    //: [self autoLogin];
                    [self edgeTo];
                //: });
                });
            //: } else {
            } else {
                //: [self autoLogin];
                [self edgeTo];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: [self autoLogin];
        [self edgeTo];
    }
}

//: - (void)autoLogin {
- (void)edgeTo {

    //: if (![CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish){
    if (![NameLoginOption sound].isRequestAutoLoginFinish){
        //: return;
        return;
    }

    //: if (![NIMUserDefaults standardUserDefaults].autoLogin.boolValue){
    if (![OnName user].autoLogin.boolValue){
        //: [self initUI];
        [self initEnd];
        //: return;
        return;
    }

    //: if ([NIMUserDefaults standardUserDefaults].accid.length > 0){
    if ([OnName user].accid.length > 0){
        //: [self initUI];
        [self initEnd];
        //: return;
        return;
    }

    //: if ([CCCAutoLoginManager sharedManager].isloading){
    if ([NameLoginOption sound].isloading){
        //: return;
        return;
    }
    //: [CCCAutoLoginManager sharedManager].isloading = YES;
    [NameLoginOption sound].isloading = YES;

    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [ZCHttpManager refreshGenerateUser:^(NSDictionary * _Nonnull data) {
    [CoverPageMode button:^(NSDictionary * _Nonnull data) {

        //: if (data.allKeys.count > 0) {
        if (data.allKeys.count > 0) {

            //: NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            NSString *nimtoken = [data record:[[AwfullyData sharedInstance] showMarchStr]];
            //: NSString *accid = [data newStringValueForKey:@"id"];
            NSString *accid = [data record:@"id"];
            //: NSString *accountName = [data newStringValueForKey:@"account"];
            NSString *accountName = [data record:[[AwfullyData sharedInstance] appImageHoppingValue]];
            //: NSString *loginToken = [data newStringValueForKey:@"token"];
            NSString *loginToken = [data record:[[AwfullyData sharedInstance] k_producerTitle]];
            //: NSString *issup = [data newStringValueForKey:@"issup"];
            NSString *issup = [data record:[[AwfullyData sharedInstance] notiCropItchKey]];


            //: [NIMUserDefaults standardUserDefaults].loginToken = loginToken;
            [OnName user].loginToken = loginToken;
            //: [NIMUserDefaults standardUserDefaults].accid = accid;
            [OnName user].accid = accid;
            //: [NIMUserDefaults standardUserDefaults].nimToken = nimtoken;
            [OnName user].nimToken = nimtoken;
            //: [NIMUserDefaults standardUserDefaults].accountName = accountName;
            [OnName user].accountName = accountName;
            //: [NIMUserDefaults standardUserDefaults].issup = issup;
            [OnName user].issup = issup;


            //: [SVProgressHUD dismissWithDelay:0.1 completion:^{
            [SVProgressHUD dismissWithDelay:0.1 completion:^{

                //: [CCCAutoLoginManager sharedManager].isloading = NO;
                [NameLoginOption sound].isloading = NO;


                //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                //: loginData.account = accid;
                loginData.account = accid;
                //: loginData.token = nimtoken;
                loginData.token = nimtoken;
                //: loginData.authType = 0;
                loginData.authType = 0;
                //: loginData.loginExtension = @"";
                loginData.loginExtension = @"";

                //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                PageSub *sdkData = [[PageSub alloc] init];
                //: sdkData.account = accid;
                sdkData.account = accid;
                //: sdkData.token = nimtoken;
                sdkData.token = nimtoken;
                //: sdkData.authType = 0;
                sdkData.authType = 0;
                //: sdkData.loginExtension = @"";
                sdkData.loginExtension = @"";

                //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                [[InfoUser value] setCurrentLoginData:sdkData];

                //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];

                //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                UserBarController * mainTab = [[UserBarController alloc] initWithNibName:nil bundle:nil];
                //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;

//                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//                [delegate setupRTCCallKit];
            //: }];
            }];

        }
        //: else {
        else {

            //: [CCCAutoLoginManager sharedManager].isloading = NO;
            [NameLoginOption sound].isloading = NO;
            //: [self initUI];
            [self initEnd];

            //: [SVProgressHUD dismissWithDelay:0.25 completion:^{
            [SVProgressHUD dismissWithDelay:0.25 completion:^{

            //: }];
            }];
        }
    //: }];
    }];
}

/*
 CTCellularData在iOS9之前是私有类，权限设置是iOS10开始的，所以App Store审核没有问题
 获取网络权限状态
 */
//: - (void)networkStatus {
- (void)reticulum {
    //2.根据权限执行相应的交互
    //: CTCellularData *cellularData = [[CTCellularData alloc] init];
    CTCellularData *cellularData = [[CTCellularData alloc] init];

    /*
     此函数会在网络权限改变时再次调用
     */
    //: cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
    cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
        //: switch (state) {
        switch (state) {
            //: case kCTCellularDataRestricted:
            case kCTCellularDataRestricted:

                //: NSLog(@"Restricted");
                //2.1权限关闭的情况下 再次请求网络数据会弹出设置网络提示
                //: break;
                break;
            //: case kCTCellularDataNotRestricted:
            case kCTCellularDataNotRestricted:
            {
                //: NSLog(@"NotRestricted");
                //2.2已经开启网络权限 监听网络状态
                //: [self addReachabilityManager];
                [self power];
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self magnitude];
                //: });
                });
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: };
    };
}

/**
 实时检查当前网络状态
 */
//: - (void)addReachabilityManager {
- (void)power {
    //: AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];
    AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];

    //: [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusNotReachable:{
            case AFNetworkReachabilityStatusNotReachable:{
                //: NSLog(@"网络不通：%@",@(status) );
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWiFi:{
            case AFNetworkReachabilityStatusReachableViaWiFi:{
                //: NSLog(@"网络通过WIFI连接：%@",@(status));
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self magnitude];
                //: });
                });
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWWAN:{
            case AFNetworkReachabilityStatusReachableViaWWAN:{
                //: NSLog(@"网络通过无线连接：%@",@(status) );
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self magnitude];
                //: });
                });
                //: break;
                break;
            }
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];

    //: [afNetworkReachabilityManager startMonitoring]; 
    [afNetworkReachabilityManager startMonitoring]; //开启网络监视器；
}

//: -(void)registSuccessWithAccount:(NSNotification *)notification{
-(void)independented:(NSNotification *)notification{
    //: NSDictionary *dict = notification.object;
    NSDictionary *dict = notification.object;
    //: _usernameTextField.text = [dict newStringValueForKey:@"UserAccount"];
    _usernameTextField.text = [dict record:[[AwfullyData sharedInstance] notiToId]];
    //: _passwordTextField.text = [dict newStringValueForKey:@"UserPassWord"];
    _passwordTextField.text = [dict record:[[AwfullyData sharedInstance] kMembershipPath]];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self doLogin];
        [self shadowRow];
    //: });
    });
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self preferredStatusBarStyle];
    [self preferredStatusBarStyle];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI{
- (void)initEnd{


    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+10, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice tingHeight])+10, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[[AwfullyData sharedInstance] mHeavyClubId]];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"activity_login_welcome"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] notiRugValue]];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    usernameView.backgroundColor = [UIColor min:[[AwfullyData sharedInstance] userBoomData]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[[AwfullyData sharedInstance] mSurvivalIdent]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor min:[[AwfullyData sharedInstance] notiPublisherValue]];
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[WatchLanguageManager getTextWithKey:@"register_account_activity_account"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] showColorIdent]] attributes:@{NSForegroundColorAttributeName:[UIColor min:[[AwfullyData sharedInstance] user_isolationName]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];
    //: if ([NIMUserDefaults standardUserDefaults].accountName && [NIMUserDefaults standardUserDefaults].accountName.length > 0){
    if ([OnName user].accountName && [OnName user].accountName.length > 0){
        //: _usernameTextField.text = [NIMUserDefaults standardUserDefaults].accountName;
        _usernameTextField.text = [OnName user].accountName;
    }

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    psdView.backgroundColor = [UIColor min:[[AwfullyData sharedInstance] userBoomData]];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[[AwfullyData sharedInstance] show_hunterData]];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor min:[[AwfullyData sharedInstance] notiPublisherValue]];
    //: _passwordTextField.secureTextEntry = YES;
    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[WatchLanguageManager getTextWithKey:@"register_account_activity_psw"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] dreamPropertyMessage]] attributes:@{NSForegroundColorAttributeName:[UIColor min:[[AwfullyData sharedInstance] user_isolationName]]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(oned:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] main_teamMessage]] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] m_mayTitle]] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[WatchLanguageManager getTextWithKey:@"activity_login_login"] forState:UIControlStateNormal];
    [_loginButton setTitle:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] noti_parishPath]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(shadowRow) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _loginButton.backgroundColor = [UIColor min:[[AwfullyData sharedInstance] k_untilKillerData]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
//    _registerButton.backgroundColor = ThemeColor;
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#4B43DE"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor min:[[AwfullyData sharedInstance] k_untilKillerData]] forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"zanwuzhanhaozhuce") forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(doRegister) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(linkProvider) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[WatchLanguageManager getTextWithKey:@"activity_register_title"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] mainFatigueIdent]] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] kGoryValue]] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] dreamCollectorAchieveData]] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(bies:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UIButton *forgetPSD = [UIButton buttonWithType:UIButtonTypeCustom];
//    forgetPSD.frame = CGRectMake(15, self.loginButton.bottom+15, SCREEN_WIDTH-30, 40);
//    forgetPSD.titleLabel.font = [UIFont systemFontOfSize:14];
//    [forgetPSD setTitleColor:ThemeColor forState:UIControlStateNormal];
//    [forgetPSD setTitle:LangKey(@"activity_safe_setting_modify") forState:UIControlStateNormal];
//    [forgetPSD addTarget:self action:@selector(forgetPSDButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:forgetPSD];



    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: [self.view bringSubviewToFront:self.loadingView];
    [self.view bringSubviewToFront:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;
}

//: - (void)forgetPSDButtonClick
- (void)area
{
    //: GetBackPasswordViewController *vc = [[GetBackPasswordViewController alloc]init];
    ReplacingViewController *vc = [[ReplacingViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doRegister
- (void)linkProvider
{
    //: WatchRegisterViewController *vc = [[WatchRegisterViewController alloc]init];
    ShowBubbleViewController *vc = [[ShowBubbleViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)pwdTextSwitch:(UIButton *)sender {
- (void)oned:(UIButton *)sender {

    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] m_mayTitle]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[[AwfullyData sharedInstance] main_teamMessage]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: -(YYLabel *)protocolLabel{
-(YYLabel *)protocolLabel{
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [WatchLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] appSimplyName]];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;

        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#4B43DE"]
                                  color:[UIColor min:[[AwfullyData sharedInstance] k_untilKillerData]]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {

            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            ButtonOldViewController *vc = [[ButtonOldViewController alloc] init];
            //: vc.webTitle = [WatchLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] app_stoneTitle]];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [OnName user].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
//            @weakify(self);
//            vc.complete = ^{
//                @strongify(self);
//                [self.navigationController popViewControllerAnimated:NO];
//                self.agreementButton.selected = YES;
//            };
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}


//: -(YYLabel *)registLabel{
-(YYLabel *)registLabel{
    //: if (!_registLabel) {
    if (!_registLabel) {
        //: NSString *noCount = [WatchLanguageManager getTextWithKey:@"activity_login_has_no_account"];
        NSString *noCount = [PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] app_propertyEmployStr]];
        //: NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentCenter;
        text1.yy_alignment = NSTextAlignmentCenter;
        //: text1.yy_color = [UIColor colorWithHexString:@"#8282A7"];
        text1.yy_color = [UIColor min:[[AwfullyData sharedInstance] kMembershipSilverHaveFormat]];
        //: text1.yy_lineSpacing = 8;
        text1.yy_lineSpacing = 8;


        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: _registLabel = titleLb;
        _registLabel = titleLb;
    }
    //: return _registLabel;
    return _registLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)bies:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)inputAccount:(NSString*)account password:(NSString *)password{
-(void)input:(NSString*)account signaling:(NSString *)password{
    //: _usernameTextField.text = account;
    _usernameTextField.text = account;
    //: _passwordTextField.text = password;
    _passwordTextField.text = password;
}

//: - (BOOL)isVPNConnected
- (BOOL)middleConnected
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
        //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
        NSArray *keys = [dict[[[AwfullyData sharedInstance] appTransportPatrolFormat]]allKeys];
        //: for (NSString *key in keys) {
        for (NSString *key in keys) {
            //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
            if ([key rangeOfString:[[AwfullyData sharedInstance] app_armUrl]].location != NSNotFound ||
                //: [key rangeOfString:@"tun"].location != NSNotFound ||
                [key rangeOfString:[[AwfullyData sharedInstance] mainRiotFormat]].location != NSNotFound ||
                //: [key rangeOfString:@"ppp"].location != NSNotFound){
                [key rangeOfString:[[AwfullyData sharedInstance] m_heavilyQuietStr]].location != NSNotFound){
                //: return YES;
                return YES;
            }
        }
        //: return NO;
        return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)auditoryImage:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [[AwfullyData sharedInstance] k_meaningName];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[[AwfullyData sharedInstance] m_mindKey], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)tingBy:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [[AwfullyData sharedInstance] dream_towardsTitleFormat];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[[AwfullyData sharedInstance] m_mindKey], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (void)doLogin {
- (void)shadowRow {

//    if (_agreementButton.selected == NO) {
//        [self.view makeToast:LangKey(@"Read_agree_agreement") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] showColorIdent]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] dreamPropertyMessage]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:@"ios" forKey:@"client"];
    [dict setObject:[[AwfullyData sharedInstance] noti_photographText] forKey:[[AwfullyData sharedInstance] user_envelopeContent]];
    //: [dict setObject:@"1" forKey:@"type"];
    [dict setObject:@"1" forKey:[[AwfullyData sharedInstance] noti_collectorText]];
    //: [dict setObject:_usernameTextField.text forKey:@"account"];
    [dict setObject:_usernameTextField.text forKey:[[AwfullyData sharedInstance] appImageHoppingValue]];
    //: [dict setObject:_passwordTextField.text forKey:@"password"];
    [dict setObject:_passwordTextField.text forKey:[[AwfullyData sharedInstance] notiFishingPath]];
    //: [dict setObject:[NSString stringWithFormat:@"iOS%@",[ZCHttpRequestHeader deviceVersion]] forKey:@"telname"];
    [dict setObject:[NSString stringWithFormat:[[AwfullyData sharedInstance] dreamArrestContent],[HttpButtonHeader arrayTab]] forKey:[[AwfullyData sharedInstance] dreamConventShootFormat]];
    //: [dict setObject:[ZCHttpRequestHeader getIOSVersion] forKey:@"systems"];
    [dict setObject:[HttpButtonHeader pinVersion] forKey:[[AwfullyData sharedInstance] app_riotStr]];
    //: [dict setObject:[SNDevice deviceIUUID] forKey:@"deviceid"];
    [dict setObject:[BackgroundMakeDevice disable] forKey:[[AwfullyData sharedInstance] kNameMsg]];

    //: [dict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [dict setObject:[self middleConnected]?@"1":@"0" forKey:[[AwfullyData sharedInstance] mClothValue]];

    //: if (_isloading){
    if (_isloading){
        //: return;
        return;
    }
    //: _isloading = YES;
    _isloading = YES;

    //: [self.loadingView animationShow];
    [self.loadingView canUser];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/login"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[AwfullyData sharedInstance] mEvaluateKey]] reload_strong:dict with:NO forward:^(id responseObject) {

        //: _isloading = NO;
        _isloading = NO;

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[AwfullyData sharedInstance] mainVanishUrl]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict record:[[AwfullyData sharedInstance] k_producerStr]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[[AwfullyData sharedInstance] appShowStr]];
            //: __block NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            __block NSString *nimtoken = [data record:[[AwfullyData sharedInstance] showMarchStr]];
            //: __block NSString *accid = [data newStringValueForKey:@"id"];
            __block NSString *accid = [data record:@"id"];

            //: [NIMUserDefaults standardUserDefaults].loginToken = [data newStringValueForKey:@"token"];
            [OnName user].loginToken = [data record:[[AwfullyData sharedInstance] k_producerTitle]];
            //: [NIMUserDefaults standardUserDefaults].accid = [data newStringValueForKey:@"id"];
            [OnName user].accid = [data record:@"id"];


            //: [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {
            [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {

                    //: [self.loadingView animationClose];
                    [self.loadingView impendentImage];

                    //: if (error != nil) {
                    if (error != nil) {

                        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"login_activity_login_failed"] duration:2.0 position:CSToastPositionCenter];
                        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] show_arrestUrl]] duration:2.0 position:CSToastPositionCenter];

                        //: return;
                        return;
                    }


                //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                //: style.backgroundColor = [UIColor whiteColor];
                style.backgroundColor = [UIColor whiteColor];
                  //: style.imageSize = CGSizeMake(20, 20);
                  style.imageSize = CGSizeMake(20, 20);
                //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
                style.messageColor = [UIColor min:[[AwfullyData sharedInstance] notiValueIdent]];
                //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"login_activity_login_success"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
                [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] appPatienceName]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[AwfullyData sharedInstance] main_barreValue]] style:style completion:nil];

                    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                    PageSub *sdkData = [[PageSub alloc] init];
                    //: sdkData.account = accid;
                    sdkData.account = accid;
                    //: sdkData.token = nimtoken;
                    sdkData.token = nimtoken;
                    //: sdkData.authType = 0;
                    sdkData.authType = 0;
                    //: sdkData.loginExtension = @"";
                    sdkData.loginExtension = @"";
                    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                    [[InfoUser value] setCurrentLoginData:sdkData];




                    //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                    UserBarController * mainTab = [[UserBarController alloc] initWithNibName:nil bundle:nil];
                    //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    //: [NIMUserDefaults standardUserDefaults].accountName = _usernameTextField.text;
                    [OnName user].accountName = _usernameTextField.text;
                    //: [NIMUserDefaults standardUserDefaults].pCode = _passwordTextField.text;
                    [OnName user].pCode = _passwordTextField.text;


            //: }];
            }];
        //: }else{
        }else{
            //: [self.loadingView animationClose];
            [self.loadingView impendentImage];

//            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor min:[[AwfullyData sharedInstance] notiValueIdent]];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[AwfullyData sharedInstance] dream_strangeData]] style:style completion:nil];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {
        //: [self.loadingView animationClose];
        [self.loadingView impendentImage];
            //: _isloading = NO;
            _isloading = NO;
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor min:[[AwfullyData sharedInstance] notiValueIdent]];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[[AwfullyData sharedInstance] show_messagePath]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[[AwfullyData sharedInstance] dream_strangeData]] style:style completion:nil];

    //: }];
    }];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: if ([string isEqualToString:@"\n"]) {
    if ([string isEqualToString:@"\n"]) {
        //: [self doLogin];
        [self shadowRow];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)textFieldDidEndEditing:(UITextField *)textField {
- (void)textFieldDidEndEditing:(UITextField *)textField {
    //: self.secureButton.hidden = YES;
    self.secureButton.hidden = YES;
}

//: - (void)textFieldDidBeginEditing:(UITextField *)textField {
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    //: self.secureButton.hidden = NO;
    self.secureButton.hidden = NO;
    //: [textField bringSubviewToFront:self.secureButton];
    [textField bringSubviewToFront:self.secureButton];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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


//: @end
@end
