
#import <Foundation/Foundation.h>

@interface CurData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CurData

+ (instancetype)sharedInstance {
    static CurData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CurDataToCache:(Byte *)data {
    int endValue = data[0];
    Byte personShow = data[1];
    int nowhereRehab = data[2];
    for (int i = nowhereRehab; i < nowhereRehab + endValue; i++) {
        int value = data[i] + personShow;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[nowhereRehab + endValue] = 0;
    return data + nowhereRehab;
}

- (NSString *)StringFromCurData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CurDataToCache:data]];
}

//: Das ist Deutsch.
- (NSString *)app_skiData {
    /* static */ NSString *app_skiData = nil;
    if (!app_skiData) {
        Byte value[] = {16, 59, 6, 105, 233, 189, 9, 38, 56, 229, 46, 56, 57, 229, 9, 42, 58, 57, 56, 40, 45, 243, 38};
        app_skiData = [self StringFromCurData:value];
    }
    return app_skiData;
}

//: flag_en
- (NSString *)dream_contentData {
    /* static */ NSString *dream_contentData = nil;
    if (!dream_contentData) {
        Byte value[] = {7, 10, 12, 248, 197, 119, 109, 17, 177, 95, 190, 40, 92, 98, 87, 93, 85, 91, 100, 248};
        dream_contentData = [self StringFromCurData:value];
    }
    return dream_contentData;
}

//: flag_lt
- (NSString *)m_dateId {
    /* static */ NSString *m_dateId = nil;
    if (!m_dateId) {
        Byte value[] = {7, 69, 7, 255, 72, 72, 248, 33, 39, 28, 34, 26, 39, 47, 188};
        m_dateId = [self StringFromCurData:value];
    }
    return m_dateId;
}

//: flag_hu
- (NSString *)mainSurgeryStr {
    /* static */ NSString *mainSurgeryStr = nil;
    if (!mainSurgeryStr) {
        Byte value[] = {7, 68, 11, 126, 130, 72, 51, 180, 134, 128, 221, 34, 40, 29, 35, 27, 36, 49, 179};
        mainSurgeryStr = [self StringFromCurData:value];
    }
    return mainSurgeryStr;
}

//: flag_vi
- (NSString *)notiStreakStr {
    /* static */ NSString *notiStreakStr = nil;
    if (!notiStreakStr) {
        Byte value[] = {7, 47, 3, 55, 61, 50, 56, 48, 71, 58, 29};
        notiStreakStr = [self StringFromCurData:value];
    }
    return notiStreakStr;
}

//: flag_cy
- (NSString *)noti_hostaUrl {
    /* static */ NSString *noti_hostaUrl = nil;
    if (!noti_hostaUrl) {
        Byte value[] = {7, 29, 7, 158, 31, 190, 134, 73, 79, 68, 74, 66, 70, 92, 255};
        noti_hostaUrl = [self StringFromCurData:value];
    }
    return noti_hostaUrl;
}

//: Español
- (NSString *)mainResortUrl {
    /* static */ NSString *mainResortUrl = nil;
    if (!mainResortUrl) {
        Byte value[] = {8, 36, 12, 240, 84, 85, 66, 219, 6, 80, 159, 33, 33, 79, 76, 61, 159, 141, 75, 72, 59};
        mainResortUrl = [self StringFromCurData:value];
    }
    return mainResortUrl;
}

//: flag_sk
- (NSString *)dreamPointName {
    /* static */ NSString *dreamPointName = nil;
    if (!dreamPointName) {
        Byte value[] = {7, 21, 8, 234, 150, 183, 162, 73, 81, 87, 76, 82, 74, 94, 86, 218};
        dreamPointName = [self StringFromCurData:value];
    }
    return dreamPointName;
}

//: flag_ja
- (NSString *)noti_commentPorterName {
    /* static */ NSString *noti_commentPorterName = nil;
    if (!noti_commentPorterName) {
        Byte value[] = {7, 60, 11, 37, 63, 235, 133, 151, 122, 241, 124, 42, 48, 37, 43, 35, 46, 37, 61};
        noti_commentPorterName = [self StringFromCurData:value];
    }
    return noti_commentPorterName;
}

//: flag_pt
- (NSString *)dream_premiseDuringData {
    /* static */ NSString *dream_premiseDuringData = nil;
    if (!dream_premiseDuringData) {
        Byte value[] = {7, 94, 5, 165, 21, 8, 14, 3, 9, 1, 18, 22, 137};
        dream_premiseDuringData = [self StringFromCurData:value];
    }
    return dream_premiseDuringData;
}

//: Luxembourg
- (NSString *)k_equallyValue {
    /* static */ NSString *k_equallyValue = nil;
    if (!k_equallyValue) {
        Byte value[] = {10, 37, 6, 121, 137, 54, 39, 80, 83, 64, 72, 61, 74, 80, 77, 66, 35};
        k_equallyValue = [self StringFromCurData:value];
    }
    return k_equallyValue;
}

//: flag_ga
- (NSString *)mainModerateUrl {
    /* static */ NSString *mainModerateUrl = nil;
    if (!mainModerateUrl) {
        Byte value[] = {7, 90, 8, 102, 222, 233, 246, 84, 12, 18, 7, 13, 5, 13, 7, 125};
        mainModerateUrl = [self StringFromCurData:value];
    }
    return mainModerateUrl;
}

//: flag_ro
- (NSString *)kCornerId {
    /* static */ NSString *kCornerId = nil;
    if (!kCornerId) {
        Byte value[] = {7, 55, 5, 151, 103, 47, 53, 42, 48, 40, 59, 56, 200};
        kCornerId = [self StringFromCurData:value];
    }
    return kCornerId;
}

//: flag
- (NSString *)main_weepValueLongName {
    /* static */ NSString *main_weepValueLongName = nil;
    if (!main_weepValueLongName) {
        Byte value[] = {4, 70, 13, 221, 24, 181, 200, 61, 27, 116, 53, 53, 35, 32, 38, 27, 33, 229};
        main_weepValueLongName = [self StringFromCurData:value];
    }
    return main_weepValueLongName;
}

//: Cyprus-el
- (NSString *)showCartPremiseStr {
    /* static */ NSString *showCartPremiseStr = nil;
    if (!showCartPremiseStr) {
        Byte value[] = {9, 49, 8, 100, 227, 117, 214, 42, 18, 72, 63, 65, 68, 66, 252, 52, 59, 205};
        showCartPremiseStr = [self StringFromCurData:value];
    }
    return showCartPremiseStr;
}

//: flag_nl
- (NSString *)noti_mediaIdent {
    /* static */ NSString *noti_mediaIdent = nil;
    if (!noti_mediaIdent) {
        Byte value[] = {7, 12, 11, 100, 79, 96, 110, 247, 214, 82, 188, 90, 96, 85, 91, 83, 98, 96, 154};
        noti_mediaIdent = [self StringFromCurData:value];
    }
    return noti_mediaIdent;
}

//: spa
- (NSString *)kShouldIdent {
    /* static */ NSString *kShouldIdent = nil;
    if (!kShouldIdent) {
        Byte value[] = {3, 5, 3, 110, 107, 92, 61};
        kShouldIdent = [self StringFromCurData:value];
    }
    return kShouldIdent;
}

//: 中文繁体（新加坡）
- (NSString *)appFormatId {
    /* static */ NSString *appFormatId = nil;
    if (!appFormatId) {
        Byte value[] = {27, 12, 4, 75, 216, 172, 161, 218, 138, 123, 219, 173, 117, 216, 177, 135, 227, 176, 124, 218, 138, 164, 217, 126, 148, 217, 145, 149, 227, 176, 125, 210};
        appFormatId = [self StringFromCurData:value];
    }
    return appFormatId;
}

//: selectLang
- (NSString *)showPressedMessage {
    /* static */ NSString *showPressedMessage = nil;
    if (!showPressedMessage) {
        Byte value[] = {10, 40, 3, 75, 61, 68, 61, 59, 76, 36, 57, 70, 63, 121};
        showPressedMessage = [self StringFromCurData:value];
    }
    return showPressedMessage;
}

//: Austria
- (NSString *)showGeneraterKey {
    /* static */ NSString *showGeneraterKey = nil;
    if (!showGeneraterKey) {
        Byte value[] = {7, 98, 11, 31, 51, 112, 109, 111, 232, 26, 237, 223, 19, 17, 18, 16, 7, 255, 247};
        showGeneraterKey = [self StringFromCurData:value];
    }
    return showGeneraterKey;
}

//: Türkçe
- (NSString *)notiTimeCenterBarreStr {
    /* static */ NSString *notiTimeCenterBarreStr = nil;
    if (!notiTimeCenterBarreStr) {
        Byte value[] = {8, 9, 5, 62, 3, 75, 186, 179, 105, 98, 186, 158, 92, 196};
        notiTimeCenterBarreStr = [self StringFromCurData:value];
    }
    return notiTimeCenterBarreStr;
}

//: flag_th
- (NSString *)mTransportEvolveHostaContent {
    /* static */ NSString *mTransportEvolveHostaContent = nil;
    if (!mTransportEvolveHostaContent) {
        Byte value[] = {7, 67, 3, 35, 41, 30, 36, 28, 49, 37, 115};
        mTransportEvolveHostaContent = [self StringFromCurData:value];
    }
    return mTransportEvolveHostaContent;
}

//: Czech Republic
- (NSString *)dream_mediaIdent {
    /* static */ NSString *dream_mediaIdent = nil;
    if (!dream_mediaIdent) {
        Byte value[] = {14, 68, 9, 186, 249, 208, 105, 52, 142, 255, 54, 33, 31, 36, 220, 14, 33, 44, 49, 30, 40, 37, 31, 85};
        dream_mediaIdent = [self StringFromCurData:value];
    }
    return dream_mediaIdent;
}

//: flag_spa
- (NSString *)k_simplyMatteToFormat {
    /* static */ NSString *k_simplyMatteToFormat = nil;
    if (!k_simplyMatteToFormat) {
        Byte value[] = {8, 3, 13, 123, 108, 242, 66, 74, 12, 10, 71, 112, 120, 99, 105, 94, 100, 92, 112, 109, 94, 175};
        k_simplyMatteToFormat = [self StringFromCurData:value];
    }
    return k_simplyMatteToFormat;
}

//: flag_bg
- (NSString *)m_regnantMessage {
    /* static */ NSString *m_regnantMessage = nil;
    if (!m_regnantMessage) {
        Byte value[] = {7, 87, 7, 134, 190, 135, 32, 15, 21, 10, 16, 8, 11, 16, 91};
        m_regnantMessage = [self StringFromCurData:value];
    }
    return m_regnantMessage;
}

//: Belgium-fr
- (NSString *)k_nuclearTwistSuccessMessage {
    /* static */ NSString *k_nuclearTwistSuccessMessage = nil;
    if (!k_nuclearTwistSuccessMessage) {
        Byte value[] = {10, 19, 7, 204, 90, 167, 38, 47, 82, 89, 84, 86, 98, 90, 26, 83, 95, 218};
        k_nuclearTwistSuccessMessage = [self StringFromCurData:value];
    }
    return k_nuclearTwistSuccessMessage;
}

//: flag_da
- (NSString *)kRnaFormat {
    /* static */ NSString *kRnaFormat = nil;
    if (!kRnaFormat) {
        Byte value[] = {7, 4, 12, 170, 71, 4, 237, 92, 234, 243, 5, 16, 98, 104, 93, 99, 91, 96, 93, 197};
        kRnaFormat = [self StringFromCurData:value];
    }
    return kRnaFormat;
}

//: Lithuania
- (NSString *)noti_equallyLoserMsg {
    /* static */ NSString *noti_equallyLoserMsg = nil;
    if (!noti_equallyLoserMsg) {
        Byte value[] = {9, 78, 3, 254, 27, 38, 26, 39, 19, 32, 27, 19, 184};
        noti_equallyLoserMsg = [self StringFromCurData:value];
    }
    return noti_equallyLoserMsg;
}

//: Slovakia
- (NSString *)dreamMarkUrl {
    /* static */ NSString *dreamMarkUrl = nil;
    if (!dreamMarkUrl) {
        Byte value[] = {8, 57, 6, 229, 200, 63, 26, 51, 54, 61, 40, 50, 48, 40, 142};
        dreamMarkUrl = [self StringFromCurData:value];
    }
    return dreamMarkUrl;
}

//: Língua portuguesa
- (NSString *)user_intimateCountData {
    /* static */ NSString *user_intimateCountData = nil;
    if (!user_intimateCountData) {
        Byte value[] = {18, 55, 10, 229, 92, 20, 216, 246, 235, 103, 21, 140, 118, 55, 48, 62, 42, 233, 57, 56, 59, 61, 62, 48, 62, 46, 60, 42, 51};
        user_intimateCountData = [self StringFromCurData:value];
    }
    return user_intimateCountData;
}

//: Title
- (NSString *)k_pointContent {
    /* static */ NSString *k_pointContent = nil;
    if (!k_pointContent) {
        Byte value[] = {5, 4, 10, 66, 148, 63, 124, 3, 147, 114, 80, 101, 112, 104, 97, 73};
        k_pointContent = [self StringFromCurData:value];
    }
    return k_pointContent;
}

//: flag_et
- (NSString *)appContainerId {
    /* static */ NSString *appContainerId = nil;
    if (!appContainerId) {
        Byte value[] = {7, 29, 7, 243, 36, 203, 126, 73, 79, 68, 74, 66, 72, 87, 62};
        appContainerId = [self StringFromCurData:value];
    }
    return appContainerId;
}

//: Finland
- (NSString *)kBookName {
    /* static */ NSString *kBookName = nil;
    if (!kBookName) {
        Byte value[] = {7, 79, 4, 174, 247, 26, 31, 29, 18, 31, 21, 101};
        kBookName = [self StringFromCurData:value];
    }
    return kBookName;
}

//: hant
- (NSString *)mMeatTitle {
    /* static */ NSString *mMeatTitle = nil;
    if (!mMeatTitle) {
        Byte value[] = {4, 93, 13, 227, 163, 194, 170, 135, 151, 14, 247, 233, 163, 11, 4, 17, 23, 11};
        mMeatTitle = [self StringFromCurData:value];
    }
    return mMeatTitle;
}

//: Slovenia
- (NSString *)dreamLoserCharterData {
    /* static */ NSString *dreamLoserCharterData = nil;
    if (!dreamLoserCharterData) {
        Byte value[] = {8, 76, 5, 196, 208, 7, 32, 35, 42, 25, 34, 29, 21, 44};
        dreamLoserCharterData = [self StringFromCurData:value];
    }
    return dreamLoserCharterData;
}

//: Ireland
- (NSString *)m_colorId {
    /* static */ NSString *m_colorId = nil;
    if (!m_colorId) {
        Byte value[] = {7, 6, 4, 145, 67, 108, 95, 102, 91, 104, 94, 35};
        m_colorId = [self StringFromCurData:value];
    }
    return m_colorId;
}

//: flag_it
- (NSString *)show_contentValue {
    /* static */ NSString *show_contentValue = nil;
    if (!show_contentValue) {
        Byte value[] = {7, 88, 9, 225, 11, 159, 128, 186, 230, 14, 20, 9, 15, 7, 17, 28, 13};
        show_contentValue = [self StringFromCurData:value];
    }
    return show_contentValue;
}

//: flag_lb
- (NSString *)mMayName {
    /* static */ NSString *mMayName = nil;
    if (!mMayName) {
        Byte value[] = {7, 95, 8, 136, 91, 215, 189, 255, 7, 13, 2, 8, 0, 13, 3, 232};
        mMayName = [self StringFromCurData:value];
    }
    return mMayName;
}

//: English
- (NSString *)show_educationalEvolveId {
    /* static */ NSString *show_educationalEvolveId = nil;
    if (!show_educationalEvolveId) {
        Byte value[] = {7, 87, 11, 42, 90, 227, 177, 218, 68, 65, 81, 238, 23, 16, 21, 18, 28, 17, 3};
        show_educationalEvolveId = [self StringFromCurData:value];
    }
    return show_educationalEvolveId;
}

//: flag_fi
- (NSString *)m_cornerLoserPath {
    /* static */ NSString *m_cornerLoserPath = nil;
    if (!m_cornerLoserPath) {
        Byte value[] = {7, 79, 13, 26, 70, 35, 90, 252, 206, 65, 204, 211, 125, 23, 29, 18, 24, 16, 23, 26, 213};
        m_cornerLoserPath = [self StringFromCurData:value];
    }
    return m_cornerLoserPath;
}

//: flag_hr
- (NSString *)mainPlaceKey {
    /* static */ NSString *mainPlaceKey = nil;
    if (!mainPlaceKey) {
        Byte value[] = {7, 91, 10, 160, 54, 119, 83, 51, 203, 4, 11, 17, 6, 12, 4, 13, 23, 96};
        mainPlaceKey = [self StringFromCurData:value];
    }
    return mainPlaceKey;
}

//: Việt nam
- (NSString *)kPatienceId {
    /* static */ NSString *kPatienceId = nil;
    if (!kPatienceId) {
        Byte value[] = {10, 75, 9, 186, 118, 198, 7, 119, 99, 11, 30, 150, 112, 60, 41, 213, 35, 22, 34, 88};
        kPatienceId = [self StringFromCurData:value];
    }
    return kPatienceId;
}

//: flag_pl
- (NSString *)show_viaUrl {
    /* static */ NSString *show_viaUrl = nil;
    if (!show_viaUrl) {
        Byte value[] = {7, 68, 3, 34, 40, 29, 35, 27, 44, 40, 245};
        show_viaUrl = [self StringFromCurData:value];
    }
    return show_viaUrl;
}

//: Belgium-nl
- (NSString *)main_surgeryTitle {
    /* static */ NSString *main_surgeryTitle = nil;
    if (!main_surgeryTitle) {
        Byte value[] = {10, 32, 11, 241, 159, 10, 48, 196, 198, 251, 86, 34, 69, 76, 71, 73, 85, 77, 13, 78, 76, 29};
        main_surgeryTitle = [self StringFromCurData:value];
    }
    return main_surgeryTitle;
}

//: lang
- (NSString *)app_commentId {
    /* static */ NSString *app_commentId = nil;
    if (!app_commentId) {
        Byte value[] = {4, 44, 13, 104, 92, 175, 107, 181, 28, 248, 87, 195, 114, 64, 53, 66, 59, 194};
        app_commentId = [self StringFromCurData:value];
    }
    return app_commentId;
}

//: Hungary
- (NSString *)noti_quickPath {
    /* static */ NSString *noti_quickPath = nil;
    if (!noti_quickPath) {
        Byte value[] = {7, 29, 7, 162, 119, 169, 160, 43, 88, 81, 74, 68, 85, 92, 65};
        noti_quickPath = [self StringFromCurData:value];
    }
    return noti_quickPath;
}

//: Croatia
- (NSString *)user_shootId {
    /* static */ NSString *user_shootId = nil;
    if (!user_shootId) {
        Byte value[] = {7, 40, 9, 220, 36, 109, 3, 249, 139, 27, 74, 71, 57, 76, 65, 57, 2};
        user_shootId = [self StringFromCurData:value];
    }
    return user_shootId;
}

//: Romania
- (NSString *)dreamPetitionMsg {
    /* static */ NSString *dreamPetitionMsg = nil;
    if (!dreamPetitionMsg) {
        Byte value[] = {7, 47, 4, 185, 35, 64, 62, 50, 63, 58, 50, 82};
        dreamPetitionMsg = [self StringFromCurData:value];
    }
    return dreamPetitionMsg;
}

//: En français
- (NSString *)app_weepValue {
    /* static */ NSString *app_weepValue = nil;
    if (!app_weepValue) {
        Byte value[] = {12, 40, 4, 71, 29, 70, 248, 62, 74, 57, 70, 155, 127, 57, 65, 75, 242};
        app_weepValue = [self StringFromCurData:value];
    }
    return app_weepValue;
}

//: flag_Be
- (NSString *)app_onValue {
    /* static */ NSString *app_onValue = nil;
    if (!app_onValue) {
        Byte value[] = {7, 57, 13, 112, 156, 175, 74, 245, 60, 255, 145, 48, 163, 45, 51, 40, 46, 38, 9, 44, 253};
        app_onValue = [self StringFromCurData:value];
    }
    return app_onValue;
}

//: flag_de
- (NSString *)dream_addLoserData {
    /* static */ NSString *dream_addLoserData = nil;
    if (!dream_addLoserData) {
        Byte value[] = {7, 27, 6, 238, 200, 225, 75, 81, 70, 76, 68, 73, 74, 132};
        dream_addLoserData = [self StringFromCurData:value];
    }
    return dream_addLoserData;
}

//: flag_tr
- (NSString *)appUserFormat {
    /* static */ NSString *appUserFormat = nil;
    if (!appUserFormat) {
        Byte value[] = {7, 41, 6, 229, 25, 143, 61, 67, 56, 62, 54, 75, 73, 29};
        appUserFormat = [self StringFromCurData:value];
    }
    return appUserFormat;
}

//: flag_sv
- (NSString *)app_pressedUrl {
    /* static */ NSString *app_pressedUrl = nil;
    if (!app_pressedUrl) {
        Byte value[] = {7, 21, 8, 41, 224, 171, 192, 138, 81, 87, 76, 82, 74, 94, 97, 103};
        app_pressedUrl = [self StringFromCurData:value];
    }
    return app_pressedUrl;
}

//: flag_sa
- (NSString *)app_rehabPath {
    /* static */ NSString *app_rehabPath = nil;
    if (!app_rehabPath) {
        Byte value[] = {7, 51, 11, 42, 7, 35, 43, 46, 122, 4, 28, 51, 57, 46, 52, 44, 64, 46, 98};
        app_rehabPath = [self StringFromCurData:value];
    }
    return app_rehabPath;
}

//: Denmark
- (NSString *)show_viewIdent {
    /* static */ NSString *show_viewIdent = nil;
    if (!show_viewIdent) {
        Byte value[] = {7, 32, 11, 167, 83, 104, 248, 98, 246, 10, 64, 36, 69, 78, 77, 65, 82, 75, 198};
        show_viewIdent = [self StringFromCurData:value];
    }
    return show_viewIdent;
}

//: Poland
- (NSString *)dream_producerUrl {
    /* static */ NSString *dream_producerUrl = nil;
    if (!dream_producerUrl) {
        Byte value[] = {6, 67, 11, 183, 247, 71, 92, 159, 34, 245, 202, 13, 44, 41, 30, 43, 33, 139};
        dream_producerUrl = [self StringFromCurData:value];
    }
    return dream_producerUrl;
}

//: flag_cs
- (NSString *)mScramUrl {
    /* static */ NSString *mScramUrl = nil;
    if (!mScramUrl) {
        Byte value[] = {7, 3, 3, 99, 105, 94, 100, 92, 96, 112, 174};
        mScramUrl = [self StringFromCurData:value];
    }
    return mScramUrl;
}

//: Sweden
- (NSString *)mHoppingKey {
    /* static */ NSString *mHoppingKey = nil;
    if (!mHoppingKey) {
        Byte value[] = {6, 63, 7, 6, 212, 134, 14, 20, 56, 38, 37, 38, 47, 65};
        mHoppingKey = [self StringFromCurData:value];
    }
    return mHoppingKey;
}

//: flag_zh
- (NSString *)appShowerKey {
    /* static */ NSString *appShowerKey = nil;
    if (!appShowerKey) {
        Byte value[] = {7, 12, 11, 169, 36, 232, 139, 109, 224, 78, 51, 90, 96, 85, 91, 83, 110, 92, 136};
        appShowerKey = [self StringFromCurData:value];
    }
    return appShowerKey;
}

//: Latvia
- (NSString *)mPressedData {
    /* static */ NSString *mPressedData = nil;
    if (!mPressedData) {
        Byte value[] = {6, 40, 12, 153, 160, 240, 206, 63, 78, 248, 94, 103, 36, 57, 76, 78, 65, 57, 15};
        mPressedData = [self StringFromCurData:value];
    }
    return mPressedData;
}

//: Bulgaria
- (NSString *)mainSkyImageName {
    /* static */ NSString *mainSkyImageName = nil;
    if (!mainSkyImageName) {
        Byte value[] = {8, 50, 10, 53, 110, 117, 59, 199, 209, 99, 16, 67, 58, 53, 47, 64, 55, 47, 142};
        mainSkyImageName = [self StringFromCurData:value];
    }
    return mainSkyImageName;
}

//: Greece
- (NSString *)appCloudName {
    /* static */ NSString *appCloudName = nil;
    if (!appCloudName) {
        Byte value[] = {6, 9, 8, 169, 182, 177, 74, 232, 62, 105, 92, 92, 90, 92, 112};
        appCloudName = [self StringFromCurData:value];
    }
    return appCloudName;
}

//: flag_fr
- (NSString *)dream_rnaPetitionText {
    /* static */ NSString *dream_rnaPetitionText = nil;
    if (!dream_rnaPetitionText) {
        Byte value[] = {7, 99, 4, 80, 3, 9, 254, 4, 252, 3, 15, 94};
        dream_rnaPetitionText = [self StringFromCurData:value];
    }
    return dream_rnaPetitionText;
}

//: Netherlands
- (NSString *)main_meatUrl {
    /* static */ NSString *main_meatUrl = nil;
    if (!main_meatUrl) {
        Byte value[] = {11, 10, 8, 164, 172, 178, 185, 52, 68, 91, 106, 94, 91, 104, 98, 87, 100, 90, 105, 91};
        main_meatUrl = [self StringFromCurData:value];
    }
    return main_meatUrl;
}

//: Language
- (NSString *)appDeerText {
    /* static */ NSString *appDeerText = nil;
    if (!appDeerText) {
        Byte value[] = {8, 39, 6, 118, 243, 235, 37, 58, 71, 64, 78, 58, 64, 62, 173};
        appDeerText = [self StringFromCurData:value];
    }
    return appDeerText;
}

//: flag_lv
- (NSString *)mBarText {
    /* static */ NSString *mBarText = nil;
    if (!mBarText) {
        Byte value[] = {7, 97, 12, 134, 33, 245, 89, 209, 196, 170, 13, 186, 5, 11, 0, 6, 254, 11, 21, 74};
        mBarText = [self StringFromCurData:value];
    }
    return mBarText;
}

//: system_change_language
- (NSString *)showRemoveAdmitIdent {
    /* static */ NSString *showRemoveAdmitIdent = nil;
    if (!showRemoveAdmitIdent) {
        Byte value[] = {22, 27, 10, 22, 241, 148, 210, 28, 108, 238, 88, 94, 88, 89, 74, 82, 68, 72, 77, 70, 83, 76, 74, 68, 81, 70, 83, 76, 90, 70, 76, 74, 11};
        showRemoveAdmitIdent = [self StringFromCurData:value];
    }
    return showRemoveAdmitIdent;
}

//: flag_ko
- (NSString *)notiInsertrMsg {
    /* static */ NSString *notiInsertrMsg = nil;
    if (!notiInsertrMsg) {
        Byte value[] = {7, 34, 10, 33, 23, 225, 68, 56, 191, 165, 68, 74, 63, 69, 61, 73, 77, 194};
        notiInsertrMsg = [self StringFromCurData:value];
    }
    return notiInsertrMsg;
}

//: flag_mt
- (NSString *)show_keyContent {
    /* static */ NSString *show_keyContent = nil;
    if (!show_keyContent) {
        Byte value[] = {7, 59, 4, 148, 43, 49, 38, 44, 36, 50, 57, 200};
        show_keyContent = [self StringFromCurData:value];
    }
    return show_keyContent;
}

//: flag_el
- (NSString *)showImageData {
    /* static */ NSString *showImageData = nil;
    if (!showImageData) {
        Byte value[] = {7, 89, 13, 3, 24, 162, 7, 199, 63, 241, 28, 76, 46, 13, 19, 8, 14, 6, 12, 19, 234};
        showImageData = [self StringFromCurData:value];
    }
    return showImageData;
}

//: Malta
- (NSString *)kRemoveTitle {
    /* static */ NSString *kRemoveTitle = nil;
    if (!kRemoveTitle) {
        Byte value[] = {5, 53, 12, 103, 195, 62, 227, 27, 56, 123, 129, 130, 24, 44, 55, 63, 44, 210};
        kRemoveTitle = [self StringFromCurData:value];
    }
    return kRemoveTitle;
}

//: flag_sl
- (NSString *)showHorribleGivingTitle {
    /* static */ NSString *showHorribleGivingTitle = nil;
    if (!showHorribleGivingTitle) {
        Byte value[] = {7, 70, 6, 189, 107, 90, 32, 38, 27, 33, 25, 45, 38, 95};
        showHorribleGivingTitle = [self StringFromCurData:value];
    }
    return showHorribleGivingTitle;
}

//: back_arrow_bl
- (NSString *)m_valueFiftyName {
    /* static */ NSString *m_valueFiftyName = nil;
    if (!m_valueFiftyName) {
        Byte value[] = {13, 28, 7, 76, 86, 27, 174, 70, 69, 71, 79, 67, 69, 86, 86, 83, 91, 67, 70, 80, 1};
        m_valueFiftyName = [self StringFromCurData:value];
    }
    return m_valueFiftyName;
}

//: Italy
- (NSString *)appAtData {
    /* static */ NSString *appAtData = nil;
    if (!appAtData) {
        Byte value[] = {5, 31, 12, 27, 121, 88, 251, 147, 243, 244, 128, 139, 42, 85, 66, 77, 90, 126};
        appAtData = [self StringFromCurData:value];
    }
    return appAtData;
}

//: flag_hi
- (NSString *)noti_developerIdent {
    /* static */ NSString *noti_developerIdent = nil;
    if (!noti_developerIdent) {
        Byte value[] = {7, 61, 7, 150, 181, 207, 62, 41, 47, 36, 42, 34, 43, 44, 49};
        noti_developerIdent = [self StringFromCurData:value];
    }
    return noti_developerIdent;
}

//: #F6F7FA
- (NSString *)show_closeMessage {
    /* static */ NSString *show_closeMessage = nil;
    if (!show_closeMessage) {
        Byte value[] = {7, 38, 12, 203, 61, 65, 7, 94, 88, 168, 229, 180, 253, 32, 16, 32, 17, 32, 27, 7};
        show_closeMessage = [self StringFromCurData:value];
    }
    return show_closeMessage;
}

//: Estonia
- (NSString *)main_equallyEndMsg {
    /* static */ NSString *main_equallyEndMsg = nil;
    if (!main_equallyEndMsg) {
        Byte value[] = {7, 20, 12, 10, 86, 85, 226, 168, 6, 172, 5, 239, 49, 95, 96, 91, 90, 85, 77, 220};
        main_equallyEndMsg = [self StringFromCurData:value];
    }
    return main_equallyEndMsg;
}

//: Cyprus-tr
- (NSString *)user_deerGenetTitleName {
    /* static */ NSString *user_deerGenetTitleName = nil;
    if (!user_deerGenetTitleName) {
        Byte value[] = {9, 26, 6, 234, 122, 209, 41, 95, 86, 88, 91, 89, 19, 90, 88, 150};
        user_deerGenetTitleName = [self StringFromCurData:value];
    }
    return user_deerGenetTitleName;
}

//: #000000
- (NSString *)user_conventFormat {
    /* static */ NSString *user_conventFormat = nil;
    if (!user_conventFormat) {
        Byte value[] = {7, 91, 9, 85, 175, 89, 158, 65, 177, 200, 213, 213, 213, 213, 213, 213, 131};
        user_conventFormat = [self StringFromCurData:value];
    }
    return user_conventFormat;
}

//: flag_Au
- (NSString *)noti_quickItemMessage {
    /* static */ NSString *noti_quickItemMessage = nil;
    if (!noti_quickItemMessage) {
        Byte value[] = {7, 49, 4, 70, 53, 59, 48, 54, 46, 16, 68, 111};
        noti_quickItemMessage = [self StringFromCurData:value];
    }
    return noti_quickItemMessage;
}

//: #4B43DE
- (NSString *)dream_barMessage {
    /* static */ NSString *dream_barMessage = nil;
    if (!dream_barMessage) {
        Byte value[] = {7, 81, 8, 248, 34, 201, 69, 240, 210, 227, 241, 227, 226, 243, 244, 112};
        dream_barMessage = [self StringFromCurData:value];
    }
    return dream_barMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedTitleViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageViewController.h"
#import "RedTitleViewController.h"
//: #import "NTESLanguageTableViewCell.h"
#import "CoverViewCell.h"

//: @interface NTESLanguageViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@interface RedTitleViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,copy ) NSArray *tData;
@property (nonatomic,copy ) NSArray *tData;
//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy ) NSMutableArray *MuttableData;
@property (nonatomic,copy ) NSMutableArray *MuttableData;

//: @property (nonatomic,strong) UIButton *btnClose;
@property (nonatomic,strong) UIButton *btnClose;

//: @end
@end

//: @implementation NTESLanguageViewController
@implementation RedTitleViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:[[CurData sharedInstance] show_closeMessage]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[CurData sharedInstance] m_valueFiftyName]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice tingHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor min:[[CurData sharedInstance] user_conventFormat]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"system_change_language"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[[CurData sharedInstance] showRemoveAdmitIdent]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
//    self.tableView.scrollEnabled = NO;
//    self.tableView.layer.cornerRadius = 12;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.tableView registerClass:[NTESLanguageTableViewCell class] forCellReuseIdentifier:@"lang"];
    [self.tableView registerClass:[CoverViewCell class] forCellReuseIdentifier:[[CurData sharedInstance] app_commentId]];


    //: self.tData = @[
    self.tData = @[

    //: @{
    @{
        //: @"Title" : @"English",
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] show_educationalEvolveId],
        //: @"selectLang" : @"en",
        [[CurData sharedInstance] showPressedMessage] : @"en",
        //: @"Language" : @"en",
        [[CurData sharedInstance] appDeerText] : @"en",
        //: @"flag" : @"flag_en",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] dream_contentData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Việt nam", // 越南
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] kPatienceId], // 越南
        //: @"selectLang" : @"vi",
        [[CurData sharedInstance] showPressedMessage] : @"vi",
        //: @"Language" : @"vi",
        [[CurData sharedInstance] appDeerText] : @"vi",
        //: @"flag" : @"flag_vi",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] notiStreakStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"ภาษาไทย ", // 泰语
        [[CurData sharedInstance] k_pointContent] : @"ภาษาไทย ", // 泰语
        //: @"selectLang" : @"th",
        [[CurData sharedInstance] showPressedMessage] : @"th",
        //: @"Language" : @"th",
        [[CurData sharedInstance] appDeerText] : @"th",
        //: @"flag" : @"flag_th",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mTransportEvolveHostaContent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"हिंदी", // 印度
        [[CurData sharedInstance] k_pointContent] : @"हिंदी", // 印度
        //: @"selectLang" : @"hi",
        [[CurData sharedInstance] showPressedMessage] : @"hi",
        //: @"Language" : @"hi",
        [[CurData sharedInstance] appDeerText] : @"hi",
        //: @"flag" : @"flag_hi",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_developerIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"にほんご", // 日语
        [[CurData sharedInstance] k_pointContent] : @"にほんご", // 日语
        //: @"selectLang" : @"ja",
        [[CurData sharedInstance] showPressedMessage] : @"ja",
        //: @"Language" : @"ja",
        [[CurData sharedInstance] appDeerText] : @"ja",
        //: @"flag" : @"flag_ja",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_commentPorterName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"한국어", //韩语
        [[CurData sharedInstance] k_pointContent] : @"한국어", //韩语
        //: @"selectLang" : @"ko",
        [[CurData sharedInstance] showPressedMessage] : @"ko",
        //: @"Language" : @"ko",
        [[CurData sharedInstance] appDeerText] : @"ko",
        //: @"flag" : @"flag_ko",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] notiInsertrMsg],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"العربية", // 阿拉伯语-沙特
        [[CurData sharedInstance] k_pointContent] : @"العربية", // 阿拉伯语-沙特
        //: @"selectLang" : @"sa",
        [[CurData sharedInstance] showPressedMessage] : @"sa",
        //: @"Language" : @"sa",
        [[CurData sharedInstance] appDeerText] : @"sa",
        //: @"flag" : @"flag_sa",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] app_rehabPath],
    //: },
    },
//    @{
//        @"Title"         : @"বাঙ্গালি",// 孟加拉语
//        @"selectLang"      : @"bd",
//        @"Language"      : @"en",
//        @"flag"      : @"flag_bd",
//    },
//    @{
//        @"Title"         : @"русск",// 俄语
//        @"selectLang"      : @"ru",
//        @"Language"      : @"ru",
//        @"flag"      : @"flag_ru",
//    },
//    @{
//        @"Title"         : @"‎اردو",// 乌尔都语-巴基斯坦
//        @"selectLang"      : @"pk",
//        @"Language"      : @"pk",
//        @"flag"      : @"flag_pk",
//    },
//    @{
//        @"Title"         : @"Kiswahili",// 斯瓦希里语  - 乌干达
//        @"selectLang"      : @"ug",
//        @"Language"      : @"ug",
//        @"flag"      : @"flag_ug",
//    },
    //: @{
    @{
        //: @"Title" : @"Türkçe",// 土耳其语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] notiTimeCenterBarreStr],// 土耳其语
        //: @"selectLang" : @"tr",
        [[CurData sharedInstance] showPressedMessage] : @"tr",
        //: @"Language" : @"tr",
        [[CurData sharedInstance] appDeerText] : @"tr",
        //: @"flag" : @"flag_tr",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] appUserFormat],
    //: },
    },
//    @{
//        @"Title"         : @"العربية المصرية",// 埃及阿拉伯语
//        @"selectLang"      : @"eg",
//        @"Language"      : @"eg",
//        @"flag"      : @"flag_eg",
//    },
    //: @{
    @{
        //: @"Title" : @"Austria",// 奥地利语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] showGeneraterKey],// 奥地利语
        //: @"selectLang" : @"Au",
        [[CurData sharedInstance] showPressedMessage] : @"Au",
        //: @"Language" : @"de",
        [[CurData sharedInstance] appDeerText] : @"de",
        //: @"flag" : @"flag_Au",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_quickItemMessage],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-fr",// 比利时法语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] k_nuclearTwistSuccessMessage],// 比利时法语
        //: @"selectLang" : @"fr",
        [[CurData sharedInstance] showPressedMessage] : @"fr",
        //: @"Language" : @"fr",
        [[CurData sharedInstance] appDeerText] : @"fr",
        //: @"flag" : @"flag_Be",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] app_onValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-nl",// 比利时荷兰语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] main_surgeryTitle],// 比利时荷兰语
        //: @"selectLang" : @"nl",
        [[CurData sharedInstance] showPressedMessage] : @"nl",
        //: @"Language" : @"nl",
        [[CurData sharedInstance] appDeerText] : @"nl",
        //: @"flag" : @"flag_Be",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] app_onValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Bulgaria",// 保加利亚语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] mainSkyImageName],// 保加利亚语
        //: @"selectLang" : @"bg",
        [[CurData sharedInstance] showPressedMessage] : @"bg",
        //: @"Language" : @"bg",
        [[CurData sharedInstance] appDeerText] : @"bg",
        //: @"flag" : @"flag_bg",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] m_regnantMessage],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Croatia",// 克罗地亚语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] user_shootId],// 克罗地亚语
        //: @"selectLang" : @"hr",
        [[CurData sharedInstance] showPressedMessage] : @"hr",
        //: @"Language" : @"hr",
        [[CurData sharedInstance] appDeerText] : @"hr",
        //: @"flag" : @"flag_hr",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mainPlaceKey],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-tr",// 塞浦路斯-土耳其语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] user_deerGenetTitleName],// 塞浦路斯-土耳其语
        //: @"selectLang" : @"tr",
        [[CurData sharedInstance] showPressedMessage] : @"tr",
        //: @"Language" : @"tr",
        [[CurData sharedInstance] appDeerText] : @"tr",
        //: @"flag" : @"flag_cy",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_hostaUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-el",// 塞浦路斯-希腊语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] showCartPremiseStr],// 塞浦路斯-希腊语
        //: @"selectLang" : @"el",
        [[CurData sharedInstance] showPressedMessage] : @"el",
        //: @"Language" : @"el",
        [[CurData sharedInstance] appDeerText] : @"el",
        //: @"flag" : @"flag_cy",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_hostaUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Czech Republic",// 捷克语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] dream_mediaIdent],// 捷克语
        //: @"selectLang" : @"cs",
        [[CurData sharedInstance] showPressedMessage] : @"cs",
        //: @"Language" : @"cs",
        [[CurData sharedInstance] appDeerText] : @"cs",
        //: @"flag" : @"flag_cs",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mScramUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Denmark",// 丹麦
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] show_viewIdent],// 丹麦
        //: @"selectLang" : @"da",
        [[CurData sharedInstance] showPressedMessage] : @"da",
        //: @"Language" : @"da",
        [[CurData sharedInstance] appDeerText] : @"da",
        //: @"flag" : @"flag_da",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] kRnaFormat],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Estonia",// 爱沙尼亚
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] main_equallyEndMsg],// 爱沙尼亚
        //: @"selectLang" : @"et",
        [[CurData sharedInstance] showPressedMessage] : @"et",
        //: @"Language" : @"et",
        [[CurData sharedInstance] appDeerText] : @"et",
        //: @"flag" : @"flag_et",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] appContainerId],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Finland",// 芬兰
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] kBookName],// 芬兰
        //: @"selectLang" : @"fi",
        [[CurData sharedInstance] showPressedMessage] : @"fi",
        //: @"Language" : @"fi",
        [[CurData sharedInstance] appDeerText] : @"fi",
        //: @"flag" : @"flag_fi",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] m_cornerLoserPath],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"En français", // 法语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] app_weepValue], // 法语
        //: @"selectLang" : @"fr",
        [[CurData sharedInstance] showPressedMessage] : @"fr",
        //: @"Language" : @"fr",
        [[CurData sharedInstance] appDeerText] : @"fr",
        //: @"flag" : @"flag_fr",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] dream_rnaPetitionText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Das ist Deutsch.",// 德语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] app_skiData],// 德语
        //: @"selectLang" : @"de",
        [[CurData sharedInstance] showPressedMessage] : @"de",
        //: @"Language" : @"de",
        [[CurData sharedInstance] appDeerText] : @"de",
        //: @"flag" : @"flag_de",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] dream_addLoserData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Greece",// 希腊
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] appCloudName],// 希腊
        //: @"selectLang" : @"el",
        [[CurData sharedInstance] showPressedMessage] : @"el",
        //: @"Language" : @"el",
        [[CurData sharedInstance] appDeerText] : @"el",
        //: @"flag" : @"flag_el",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] showImageData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Hungary",// 匈牙利
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] noti_quickPath],// 匈牙利
        //: @"selectLang" : @"hu",
        [[CurData sharedInstance] showPressedMessage] : @"hu",
        //: @"Language" : @"hu",
        [[CurData sharedInstance] appDeerText] : @"hu",
        //: @"flag" : @"flag_hu",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mainSurgeryStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Ireland",// 爱尔兰
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] m_colorId],// 爱尔兰
        //: @"selectLang" : @"ga",
        [[CurData sharedInstance] showPressedMessage] : @"ga",
        //: @"Language" : @"ga",
        [[CurData sharedInstance] appDeerText] : @"ga",
        //: @"flag" : @"flag_ga",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mainModerateUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Italy",// 意大利语
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] appAtData],// 意大利语
        //: @"selectLang" : @"it",
        [[CurData sharedInstance] showPressedMessage] : @"it",
        //: @"Language" : @"it",
        [[CurData sharedInstance] appDeerText] : @"it",
        //: @"flag" : @"flag_it",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] show_contentValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Latvia",// 拉脱维亚
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] mPressedData],// 拉脱维亚
        //: @"selectLang" : @"lv",
        [[CurData sharedInstance] showPressedMessage] : @"lv",
        //: @"Language" : @"lv",
        [[CurData sharedInstance] appDeerText] : @"lv",
        //: @"flag" : @"flag_lv",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mBarText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Lithuania",// 立陶宛
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] noti_equallyLoserMsg],// 立陶宛
        //: @"selectLang" : @"lt",
        [[CurData sharedInstance] showPressedMessage] : @"lt",
        //: @"Language" : @"lt",
        [[CurData sharedInstance] appDeerText] : @"lt",
        //: @"flag" : @"flag_lt",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] m_dateId],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Luxembourg",// 卢森堡
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] k_equallyValue],// 卢森堡
        //: @"selectLang" : @"lb",
        [[CurData sharedInstance] showPressedMessage] : @"lb",
        //: @"Language" : @"lb",
        [[CurData sharedInstance] appDeerText] : @"lb",
        //: @"flag" : @"flag_lb",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] mMayName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Malta",// 马耳他
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] kRemoveTitle],// 马耳他
        //: @"selectLang" : @"mt",
        [[CurData sharedInstance] showPressedMessage] : @"mt",
        //: @"Language" : @"mt",
        [[CurData sharedInstance] appDeerText] : @"mt",
        //: @"flag" : @"flag_mt",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] show_keyContent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Netherlands",// 荷兰
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] main_meatUrl],// 荷兰
        //: @"selectLang" : @"nl",
        [[CurData sharedInstance] showPressedMessage] : @"nl",
        //: @"Language" : @"nl",
        [[CurData sharedInstance] appDeerText] : @"nl",
        //: @"flag" : @"flag_nl",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] noti_mediaIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Poland",// 波兰
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] dream_producerUrl],// 波兰
        //: @"selectLang" : @"pl",
        [[CurData sharedInstance] showPressedMessage] : @"pl",
        //: @"Language" : @"pl",
        [[CurData sharedInstance] appDeerText] : @"pl",
        //: @"flag" : @"flag_pl",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] show_viaUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Língua portuguesa", // 葡萄牙
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] user_intimateCountData], // 葡萄牙
        //: @"selectLang" : @"pt",
        [[CurData sharedInstance] showPressedMessage] : @"pt",
        //: @"Language" : @"pt",
        [[CurData sharedInstance] appDeerText] : @"pt",
        //: @"flag" : @"flag_pt",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] dream_premiseDuringData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Romania",// 罗马尼亚
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] dreamPetitionMsg],// 罗马尼亚
        //: @"selectLang" : @"ro",
        [[CurData sharedInstance] showPressedMessage] : @"ro",
        //: @"Language" : @"ro",
        [[CurData sharedInstance] appDeerText] : @"ro",
        //: @"flag" : @"flag_ro",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] kCornerId],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovakia",// 斯洛伐克
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] dreamMarkUrl],// 斯洛伐克
        //: @"selectLang" : @"sk",
        [[CurData sharedInstance] showPressedMessage] : @"sk",
        //: @"Language" : @"sk",
        [[CurData sharedInstance] appDeerText] : @"sk",
        //: @"flag" : @"flag_sk",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] dreamPointName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovenia",// 斯洛文尼亚
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] dreamLoserCharterData],// 斯洛文尼亚
        //: @"selectLang" : @"sl",
        [[CurData sharedInstance] showPressedMessage] : @"sl",
        //: @"Language" : @"sl",
        [[CurData sharedInstance] appDeerText] : @"sl",
        //: @"flag" : @"flag_sl",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] showHorribleGivingTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Español", // 西班牙
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] mainResortUrl], // 西班牙
        //: @"selectLang" : @"spa",
        [[CurData sharedInstance] showPressedMessage] : [[CurData sharedInstance] kShouldIdent],
        //: @"Language" : @"spa",
        [[CurData sharedInstance] appDeerText] : [[CurData sharedInstance] kShouldIdent],
        //: @"flag" : @"flag_spa",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] k_simplyMatteToFormat],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Sweden",// 瑞典
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] mHoppingKey],// 瑞典
        //: @"selectLang" : @"sv",
        [[CurData sharedInstance] showPressedMessage] : @"sv",
        //: @"Language" : @"sv",
        [[CurData sharedInstance] appDeerText] : @"sv",
        //: @"flag" : @"flag_sv",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] app_pressedUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文",
        [[CurData sharedInstance] k_pointContent] : @"中文",
        //: @"selectLang" : @"zh",
        [[CurData sharedInstance] showPressedMessage] : @"zh",
        //: @"Language" : @"zh",
        [[CurData sharedInstance] appDeerText] : @"zh",
        //: @"flag" : @"flag_zh",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] appShowerKey],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文繁体（新加坡）",
        [[CurData sharedInstance] k_pointContent] : [[CurData sharedInstance] appFormatId],
        //: @"Language" : @"hant",
        [[CurData sharedInstance] appDeerText] : [[CurData sharedInstance] mMeatTitle],
        //: @"selectLang" : @"hant",
        [[CurData sharedInstance] showPressedMessage] : [[CurData sharedInstance] mMeatTitle],
        //: @"flag" : @"flag_zh",
        [[CurData sharedInstance] main_weepValueLongName] : [[CurData sharedInstance] appShowerKey],
    }
    //: ];
    ];

    //: self.data = [NSArray arrayWithArray:self.tData];
    self.data = [NSArray arrayWithArray:self.tData];

    //: self.MuttableData = [NSMutableArray array];
    self.MuttableData = [NSMutableArray array];

}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NTESLanguageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"lang" forIndexPath:indexPath];
    CoverViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:[[CurData sharedInstance] app_commentId] forIndexPath:indexPath];
      //MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft"];
      //if(cell == nil) {
      //    cell = [[MyTableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:@"ft"];
      //}
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    //: NSDictionary *dic = self.data[indexPath.section];
    NSDictionary *dic = self.data[indexPath.section];
    //: cell.labTitle.text = dic[@"Title"];
    cell.labTitle.text = dic[[[CurData sharedInstance] k_pointContent]];
    //: cell.countyImg.image = [UIImage imageNamed:dic[@"flag"]];
    cell.countyImg.image = [UIImage imageNamed:dic[[[CurData sharedInstance] main_weepValueLongName]]];

    //: NSString *lang = dic[@"selectLang"];
    NSString *lang = dic[[[CurData sharedInstance] showPressedMessage]];
    //: NSString *language = [NIMUserDefaults standardUserDefaults].language;
    NSString *language = [OnName user].language;
    //: if([lang isEqualToString:language]){
    if([lang isEqualToString:language]){
        //: cell.layer.borderWidth = 2;
        cell.layer.borderWidth = 2;
        //: cell.layer.borderColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
        cell.layer.borderColor = [UIColor min:[[CurData sharedInstance] dream_barMessage]].CGColor;
    //: }else{
    }else{
        //: cell.layer.borderWidth = 0;
        cell.layer.borderWidth = 0;
    }

      //: return cell;
      return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    //: [self changedLanguages:self.data[indexPath.section][@"Language"]];
    [self key:self.data[indexPath.section][[[CurData sharedInstance] appDeerText]]];

}

//: - (void)changedLanguages:(NSString *)lang {
- (void)key:(NSString *)lang {


    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:lang];
    [[OnName user] reloadWith:lang];

    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];



}



//: @end
@end