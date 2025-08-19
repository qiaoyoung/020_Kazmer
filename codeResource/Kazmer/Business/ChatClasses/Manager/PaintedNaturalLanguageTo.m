
#import <Foundation/Foundation.h>

@interface AblyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AblyData

+ (instancetype)sharedInstance {
    static AblyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AblyDataToCache:(Byte *)data {
    int thoroughlyLanceMat = data[0];
    int quiescentGrandpa = data[1];
    for (int i = 0; i < thoroughlyLanceMat / 2; i++) {
        int begin = quiescentGrandpa + i;
        int end = quiescentGrandpa + thoroughlyLanceMat - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[quiescentGrandpa + thoroughlyLanceMat] = 0;
    return data + quiescentGrandpa;
}

- (NSString *)StringFromAblyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AblyDataToCache:data]];
}  

//: ko_strings
- (NSString *)m_originIdent {
    /* static */ NSString *m_originIdent = nil;
    if (!m_originIdent) {
        Byte value[] = {10, 5, 151, 181, 47, 115, 103, 110, 105, 114, 116, 115, 95, 111, 107, 137};
        m_originIdent = [self StringFromAblyData:value];
    }
    return m_originIdent;
}

//: spa
- (NSString *)appCorrectItchUrl {
    /* static */ NSString *appCorrectItchUrl = nil;
    if (!appCorrectItchUrl) {
        Byte value[] = {3, 8, 152, 115, 25, 170, 172, 160, 97, 112, 115, 212};
        appCorrectItchUrl = [self StringFromAblyData:value];
    }
    return appCorrectItchUrl;
}

//: zh_hant_strings
- (NSString *)k_virtueText {
    /* static */ NSString *k_virtueText = nil;
    if (!k_virtueText) {
        Byte value[] = {15, 9, 156, 20, 196, 202, 59, 173, 217, 115, 103, 110, 105, 114, 116, 115, 95, 116, 110, 97, 104, 95, 104, 122, 212};
        k_virtueText = [self StringFromAblyData:value];
    }
    return k_virtueText;
}

//: zh_strings
- (NSString *)notiShareholderName {
    /* static */ NSString *notiShareholderName = nil;
    if (!notiShareholderName) {
        Byte value[] = {10, 12, 137, 43, 108, 179, 151, 17, 197, 166, 39, 217, 115, 103, 110, 105, 114, 116, 115, 95, 104, 122, 84};
        notiShareholderName = [self StringFromAblyData:value];
    }
    return notiShareholderName;
}

//: sl_strings
- (NSString *)show_seizeOptKey {
    /* static */ NSString *show_seizeOptKey = nil;
    if (!show_seizeOptKey) {
        Byte value[] = {10, 6, 253, 129, 125, 225, 115, 103, 110, 105, 114, 116, 115, 95, 108, 115, 5};
        show_seizeOptKey = [self StringFromAblyData:value];
    }
    return show_seizeOptKey;
}

//: pl_strings
- (NSString *)main_uncertaintyId {
    /* static */ NSString *main_uncertaintyId = nil;
    if (!main_uncertaintyId) {
        Byte value[] = {10, 8, 108, 113, 11, 23, 17, 198, 115, 103, 110, 105, 114, 116, 115, 95, 108, 112, 87};
        main_uncertaintyId = [self StringFromAblyData:value];
    }
    return main_uncertaintyId;
}

//: main_tab_my
- (NSString *)m_isolationPath {
    /* static */ NSString *m_isolationPath = nil;
    if (!m_isolationPath) {
        Byte value[] = {11, 12, 94, 164, 179, 142, 244, 138, 170, 213, 217, 65, 121, 109, 95, 98, 97, 116, 95, 110, 105, 97, 109, 250};
        m_isolationPath = [self StringFromAblyData:value];
    }
    return m_isolationPath;
}

//: ru_strings
- (NSString *)main_preciselyData {
    /* static */ NSString *main_preciselyData = nil;
    if (!main_preciselyData) {
        Byte value[] = {10, 7, 35, 74, 214, 109, 164, 115, 103, 110, 105, 114, 116, 115, 95, 117, 114, 101};
        main_preciselyData = [self StringFromAblyData:value];
    }
    return main_preciselyData;
}

//: pt_strings
- (NSString *)show_tempoId {
    /* static */ NSString *show_tempoId = nil;
    if (!show_tempoId) {
        Byte value[] = {10, 6, 176, 163, 213, 79, 115, 103, 110, 105, 114, 116, 115, 95, 116, 112, 126};
        show_tempoId = [self StringFromAblyData:value];
    }
    return show_tempoId;
}

//: tr_strings
- (NSString *)showBeefUrl {
    /* static */ NSString *showBeefUrl = nil;
    if (!showBeefUrl) {
        Byte value[] = {10, 11, 85, 181, 27, 206, 41, 107, 105, 34, 181, 115, 103, 110, 105, 114, 116, 115, 95, 114, 116, 27};
        showBeefUrl = [self StringFromAblyData:value];
    }
    return showBeefUrl;
}

//: resources
- (NSString *)appTechPath {
    /* static */ NSString *appTechPath = nil;
    if (!appTechPath) {
        Byte value[] = {9, 8, 83, 232, 252, 61, 132, 71, 115, 101, 99, 114, 117, 111, 115, 101, 114, 139};
        appTechPath = [self StringFromAblyData:value];
    }
    return appTechPath;
}

//: lb_strings
- (NSString *)user_meltKey {
    /* static */ NSString *user_meltKey = nil;
    if (!user_meltKey) {
        Byte value[] = {10, 10, 125, 254, 87, 146, 234, 116, 15, 115, 115, 103, 110, 105, 114, 116, 115, 95, 98, 108, 72};
        user_meltKey = [self StringFromAblyData:value];
    }
    return user_meltKey;
}

//: nl_strings
- (NSString *)main_parishMessage {
    /* static */ NSString *main_parishMessage = nil;
    if (!main_parishMessage) {
        Byte value[] = {10, 3, 45, 115, 103, 110, 105, 114, 116, 115, 95, 108, 110, 41};
        main_parishMessage = [self StringFromAblyData:value];
    }
    return main_parishMessage;
}

//: ja_strings
- (NSString *)noti_styleShowContent {
    /* static */ NSString *noti_styleShowContent = nil;
    if (!noti_styleShowContent) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 97, 106, 245};
        noti_styleShowContent = [self StringFromAblyData:value];
    }
    return noti_styleShowContent;
}

//: da_strings
- (NSString *)show_veteranFormat {
    /* static */ NSString *show_veteranFormat = nil;
    if (!show_veteranFormat) {
        Byte value[] = {10, 4, 31, 243, 115, 103, 110, 105, 114, 116, 115, 95, 97, 100, 187};
        show_veteranFormat = [self StringFromAblyData:value];
    }
    return show_veteranFormat;
}

//: fi_strings
- (NSString *)kSultanPath {
    /* static */ NSString *kSultanPath = nil;
    if (!kSultanPath) {
        Byte value[] = {10, 4, 167, 161, 115, 103, 110, 105, 114, 116, 115, 95, 105, 102, 119};
        kSultanPath = [self StringFromAblyData:value];
    }
    return kSultanPath;
}

//: bd_strings
- (NSString *)mShowCigValue {
    /* static */ NSString *mShowCigValue = nil;
    if (!mShowCigValue) {
        Byte value[] = {10, 8, 22, 234, 115, 255, 68, 197, 115, 103, 110, 105, 114, 116, 115, 95, 100, 98, 114};
        mShowCigValue = [self StringFromAblyData:value];
    }
    return mShowCigValue;
}

//: hi_strings
- (NSString *)showRacialText {
    /* static */ NSString *showRacialText = nil;
    if (!showRacialText) {
        Byte value[] = {10, 5, 150, 103, 220, 115, 103, 110, 105, 114, 116, 115, 95, 105, 104, 151};
        showRacialText = [self StringFromAblyData:value];
    }
    return showRacialText;
}

//: text
- (NSString *)mainStrangeStr {
    /* static */ NSString *mainStrangeStr = nil;
    if (!mainStrangeStr) {
        Byte value[] = {4, 3, 12, 116, 120, 101, 116, 245};
        mainStrangeStr = [self StringFromAblyData:value];
    }
    return mainStrangeStr;
}

//: eg_strings
- (NSString *)showOptScribePureId {
    /* static */ NSString *showOptScribePureId = nil;
    if (!showOptScribePureId) {
        Byte value[] = {10, 12, 100, 223, 24, 155, 149, 2, 73, 192, 117, 88, 115, 103, 110, 105, 114, 116, 115, 95, 103, 101, 246};
        showOptScribePureId = [self StringFromAblyData:value];
    }
    return showOptScribePureId;
}

//: fr_strings
- (NSString *)userTractBunName {
    /* static */ NSString *userTractBunName = nil;
    if (!userTractBunName) {
        Byte value[] = {10, 6, 236, 175, 29, 69, 115, 103, 110, 105, 114, 116, 115, 95, 114, 102, 10};
        userTractBunName = [self StringFromAblyData:value];
    }
    return userTractBunName;
}

//: ga_strings
- (NSString *)kMaintenanceFormat {
    /* static */ NSString *kMaintenanceFormat = nil;
    if (!kMaintenanceFormat) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 97, 103, 2};
        kMaintenanceFormat = [self StringFromAblyData:value];
    }
    return kMaintenanceFormat;
}

//: lv_strings
- (NSString *)user_policeDiskText {
    /* static */ NSString *user_policeDiskText = nil;
    if (!user_policeDiskText) {
        Byte value[] = {10, 9, 150, 234, 32, 107, 113, 239, 35, 115, 103, 110, 105, 114, 116, 115, 95, 118, 108, 74};
        user_policeDiskText = [self StringFromAblyData:value];
    }
    return user_policeDiskText;
}

//: lt_strings
- (NSString *)m_libName {
    /* static */ NSString *m_libName = nil;
    if (!m_libName) {
        Byte value[] = {10, 5, 174, 198, 152, 115, 103, 110, 105, 114, 116, 115, 95, 116, 108, 113};
        m_libName = [self StringFromAblyData:value];
    }
    return m_libName;
}

//: zh_CN
- (NSString *)kRidgeItemName {
    /* static */ NSString *kRidgeItemName = nil;
    if (!kRidgeItemName) {
        Byte value[] = {5, 6, 127, 7, 153, 34, 78, 67, 95, 104, 122, 158};
        kRidgeItemName = [self StringFromAblyData:value];
    }
    return kRidgeItemName;
}

//: ro_strings
- (NSString *)dreamEmergencyAshName {
    /* static */ NSString *dreamEmergencyAshName = nil;
    if (!dreamEmergencyAshName) {
        Byte value[] = {10, 11, 105, 93, 203, 68, 195, 134, 43, 60, 214, 115, 103, 110, 105, 114, 116, 115, 95, 111, 114, 203};
        dreamEmergencyAshName = [self StringFromAblyData:value];
    }
    return dreamEmergencyAshName;
}

//: name
- (NSString *)user_destinationUrl {
    /* static */ NSString *user_destinationUrl = nil;
    if (!user_destinationUrl) {
        Byte value[] = {4, 6, 81, 150, 46, 23, 101, 109, 97, 110, 12};
        user_destinationUrl = [self StringFromAblyData:value];
    }
    return user_destinationUrl;
}

//: sv_strings
- (NSString *)noti_developmentalId {
    /* static */ NSString *noti_developmentalId = nil;
    if (!noti_developmentalId) {
        Byte value[] = {10, 5, 72, 66, 112, 115, 103, 110, 105, 114, 116, 115, 95, 118, 115, 243};
        noti_developmentalId = [self StringFromAblyData:value];
    }
    return noti_developmentalId;
}

//: vi_strings
- (NSString *)kCorrectData {
    /* static */ NSString *kCorrectData = nil;
    if (!kCorrectData) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 105, 118, 149};
        kCorrectData = [self StringFromAblyData:value];
    }
    return kCorrectData;
}

//: ug_strings
- (NSString *)dream_sendStr {
    /* static */ NSString *dream_sendStr = nil;
    if (!dream_sendStr) {
        Byte value[] = {10, 7, 41, 100, 41, 22, 247, 115, 103, 110, 105, 114, 116, 115, 95, 103, 117, 183};
        dream_sendStr = [self StringFromAblyData:value];
    }
    return dream_sendStr;
}

//: bg_strings
- (NSString *)user_afterwardGloryDynamicsTitle {
    /* static */ NSString *user_afterwardGloryDynamicsTitle = nil;
    if (!user_afterwardGloryDynamicsTitle) {
        Byte value[] = {10, 11, 198, 82, 134, 226, 2, 35, 201, 155, 212, 115, 103, 110, 105, 114, 116, 115, 95, 103, 98, 195};
        user_afterwardGloryDynamicsTitle = [self StringFromAblyData:value];
    }
    return user_afterwardGloryDynamicsTitle;
}

//: string
- (NSString *)app_planningStr {
    /* static */ NSString *app_planningStr = nil;
    if (!app_planningStr) {
        Byte value[] = {6, 11, 194, 89, 21, 154, 180, 174, 40, 140, 30, 103, 110, 105, 114, 116, 115, 138};
        app_planningStr = [self StringFromAblyData:value];
    }
    return app_planningStr;
}

//: sk_strings
- (NSString *)k_scatterCottaTitle {
    /* static */ NSString *k_scatterCottaTitle = nil;
    if (!k_scatterCottaTitle) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 107, 115, 21};
        k_scatterCottaTitle = [self StringFromAblyData:value];
    }
    return k_scatterCottaTitle;
}

//: id_strings
- (NSString *)dreamDrumMessage {
    /* static */ NSString *dreamDrumMessage = nil;
    if (!dreamDrumMessage) {
        Byte value[] = {10, 12, 113, 174, 229, 101, 92, 219, 188, 30, 137, 26, 115, 103, 110, 105, 114, 116, 115, 95, 100, 105, 16};
        dreamDrumMessage = [self StringFromAblyData:value];
    }
    return dreamDrumMessage;
}

//: sa_strings
- (NSString *)user_regainTitle {
    /* static */ NSString *user_regainTitle = nil;
    if (!user_regainTitle) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 97, 115, 167};
        user_regainTitle = [self StringFromAblyData:value];
    }
    return user_regainTitle;
}

//: en_strings
- (NSString *)mTellTitleName {
    /* static */ NSString *mTellTitleName = nil;
    if (!mTellTitleName) {
        Byte value[] = {10, 11, 164, 250, 246, 103, 97, 72, 184, 221, 208, 115, 103, 110, 105, 114, 116, 115, 95, 110, 101, 152};
        mTellTitleName = [self StringFromAblyData:value];
    }
    return mTellTitleName;
}

//: pk_strings
- (NSString *)userRemindMsg {
    /* static */ NSString *userRemindMsg = nil;
    if (!userRemindMsg) {
        Byte value[] = {10, 12, 224, 151, 107, 190, 107, 233, 22, 31, 89, 175, 115, 103, 110, 105, 114, 116, 115, 95, 107, 112, 72};
        userRemindMsg = [self StringFromAblyData:value];
    }
    return userRemindMsg;
}

//: el_strings
- (NSString *)dreamDifferenceMsg {
    /* static */ NSString *dreamDifferenceMsg = nil;
    if (!dreamDifferenceMsg) {
        Byte value[] = {10, 7, 94, 210, 143, 154, 204, 115, 103, 110, 105, 114, 116, 115, 95, 108, 101, 91};
        dreamDifferenceMsg = [self StringFromAblyData:value];
    }
    return dreamDifferenceMsg;
}

//: %@/%@.xml
- (NSString *)noti_guidanceIdent {
    /* static */ NSString *noti_guidanceIdent = nil;
    if (!noti_guidanceIdent) {
        Byte value[] = {9, 9, 114, 50, 142, 209, 210, 39, 146, 108, 109, 120, 46, 64, 37, 47, 64, 37, 184};
        noti_guidanceIdent = [self StringFromAblyData:value];
    }
    return noti_guidanceIdent;
}

//: de_strings
- (NSString *)dream_imageMessage {
    /* static */ NSString *dream_imageMessage = nil;
    if (!dream_imageMessage) {
        Byte value[] = {10, 7, 164, 197, 135, 24, 67, 115, 103, 110, 105, 114, 116, 115, 95, 101, 100, 75};
        dream_imageMessage = [self StringFromAblyData:value];
    }
    return dream_imageMessage;
}

//: hant
- (NSString *)app_producerText {
    /* static */ NSString *app_producerText = nil;
    if (!app_producerText) {
        Byte value[] = {4, 6, 236, 105, 214, 69, 116, 110, 97, 104, 73};
        app_producerText = [self StringFromAblyData:value];
    }
    return app_producerText;
}

//: th_strings
- (NSString *)dream_admitMessage {
    /* static */ NSString *dream_admitMessage = nil;
    if (!dream_admitMessage) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 104, 116, 173};
        dream_admitMessage = [self StringFromAblyData:value];
    }
    return dream_admitMessage;
}

//: it_strings
- (NSString *)showFlueName {
    /* static */ NSString *showFlueName = nil;
    if (!showFlueName) {
        Byte value[] = {10, 8, 245, 175, 107, 245, 62, 97, 115, 103, 110, 105, 114, 116, 115, 95, 116, 105, 173};
        showFlueName = [self StringFromAblyData:value];
    }
    return showFlueName;
}

//: mt_strings
- (NSString *)mManId {
    /* static */ NSString *mManId = nil;
    if (!mManId) {
        Byte value[] = {10, 6, 42, 115, 28, 161, 115, 103, 110, 105, 114, 116, 115, 95, 116, 109, 161};
        mManId = [self StringFromAblyData:value];
    }
    return mManId;
}

//: spa_strings
- (NSString *)k_wholeUrl {
    /* static */ NSString *k_wholeUrl = nil;
    if (!k_wholeUrl) {
        Byte value[] = {11, 7, 230, 176, 153, 2, 199, 115, 103, 110, 105, 114, 116, 115, 95, 97, 112, 115, 50};
        k_wholeUrl = [self StringFromAblyData:value];
    }
    return k_wholeUrl;
}

//: hr_strings
- (NSString *)show_originResidencyName {
    /* static */ NSString *show_originResidencyName = nil;
    if (!show_originResidencyName) {
        Byte value[] = {10, 12, 2, 216, 135, 95, 146, 133, 71, 138, 190, 209, 115, 103, 110, 105, 114, 116, 115, 95, 114, 104, 119};
        show_originResidencyName = [self StringFromAblyData:value];
    }
    return show_originResidencyName;
}

//: et_strings
- (NSString *)user_engagementMsg {
    /* static */ NSString *user_engagementMsg = nil;
    if (!user_engagementMsg) {
        Byte value[] = {10, 11, 252, 172, 143, 9, 168, 161, 22, 80, 39, 115, 103, 110, 105, 114, 116, 115, 95, 116, 101, 50};
        user_engagementMsg = [self StringFromAblyData:value];
    }
    return user_engagementMsg;
}

//: cs_strings
- (NSString *)appCenterData {
    /* static */ NSString *appCenterData = nil;
    if (!appCenterData) {
        Byte value[] = {10, 3, 112, 115, 103, 110, 105, 114, 116, 115, 95, 115, 99, 242};
        appCenterData = [self StringFromAblyData:value];
    }
    return appCenterData;
}

//: hu_strings
- (NSString *)m_mirrorFormat {
    /* static */ NSString *m_mirrorFormat = nil;
    if (!m_mirrorFormat) {
        Byte value[] = {10, 7, 99, 178, 95, 74, 130, 115, 103, 110, 105, 114, 116, 115, 95, 117, 104, 161};
        m_mirrorFormat = [self StringFromAblyData:value];
    }
    return m_mirrorFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PaintedNaturalLanguageTo.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLanguageManager.h"
#import "PaintedNaturalLanguageTo.h"
//: #import "FFFXMLReader.h"
#import "QuickReader.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"

//: @interface FFFLanguageManager ()<NSXMLParserDelegate>
@interface PaintedNaturalLanguageTo ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation FFFLanguageManager
@implementation PaintedNaturalLanguageTo

//: static FFFLanguageManager *shareInstance = nil;
static PaintedNaturalLanguageTo *showCornerBackText = nil;

//: + (FFFLanguageManager *)shareInstance{
+ (PaintedNaturalLanguageTo *)marginSource{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (showCornerBackText == nil) {
            //: shareInstance = [[FFFLanguageManager alloc] init];
            showCornerBackText = [[PaintedNaturalLanguageTo alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            showCornerBackText.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return showCornerBackText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)exhibit:(NSString *)key{
    //: NSMutableDictionary *dict = [FFFLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [PaintedNaturalLanguageTo marginSource].langDict;
    //: NSString *value = [dict objectForKey:key];
    NSString *value = [dict objectForKey:key];
    //: if (value == nil ) {
    if (value == nil ) {
        //: NSLog(@"value为空========%@",key);
        //: value = @"";
        value = @"";

    }
    //: return value;
    return value;
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setOfImage:(NSString *)langType{

//    [self.langDict removeAllObjects];

    //: NSString *resourceType = @"zh_strings";
    NSString *resourceType = [[AblyData sharedInstance] notiShareholderName];
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"en_strings";
        resourceType = [[AblyData sharedInstance] mTellTitleName];
    //: }else if ([langType isEqualToString:@"th"]){
    }else if ([langType isEqualToString:@"th"]){
        //: resourceType = @"th_strings";
        resourceType = [[AblyData sharedInstance] dream_admitMessage];
    //: }else if ([langType isEqualToString:@"vi"]){
    }else if ([langType isEqualToString:@"vi"]){
        //: resourceType = @"vi_strings";
        resourceType = [[AblyData sharedInstance] kCorrectData];
    //: }else if ([langType isEqualToString:@"hi"]){
    }else if ([langType isEqualToString:@"hi"]){
        //: resourceType = @"hi_strings";
        resourceType = [[AblyData sharedInstance] showRacialText];
    //: }else if ([langType isEqualToString:@"ja"]){
    }else if ([langType isEqualToString:@"ja"]){
        //: resourceType = @"ja_strings";
        resourceType = [[AblyData sharedInstance] noti_styleShowContent];
    //: }else if ([langType isEqualToString:@"ko"]){
    }else if ([langType isEqualToString:@"ko"]){
        //: resourceType = @"ko_strings";
        resourceType = [[AblyData sharedInstance] m_originIdent];
    //: }else if ([langType isEqualToString:@"spa"]){
    }else if ([langType isEqualToString:[[AblyData sharedInstance] appCorrectItchUrl]]){
        //: resourceType = @"spa_strings";
        resourceType = [[AblyData sharedInstance] k_wholeUrl];
    //: }else if ([langType isEqualToString:@"pt"]){
    }else if ([langType isEqualToString:@"pt"]){
        //: resourceType = @"pt_strings";
        resourceType = [[AblyData sharedInstance] show_tempoId];
    //: }else if ([langType isEqualToString:@"id"]){
    }else if ([langType isEqualToString:@"id"]){
        //: resourceType = @"id_strings";
        resourceType = [[AblyData sharedInstance] dreamDrumMessage];
    //: }else if ([langType isEqualToString:@"it"]){
    }else if ([langType isEqualToString:@"it"]){
        //: resourceType = @"it_strings";
        resourceType = [[AblyData sharedInstance] showFlueName];
    //: }else if ([langType isEqualToString:@"eg"]){
    }else if ([langType isEqualToString:@"eg"]){
        //: resourceType = @"eg_strings";
        resourceType = [[AblyData sharedInstance] showOptScribePureId];
    //: }else if ([langType isEqualToString:@"tr"]){
    }else if ([langType isEqualToString:@"tr"]){
        //: resourceType = @"tr_strings";
        resourceType = [[AblyData sharedInstance] showBeefUrl];
    //: }else if ([langType isEqualToString:@"ug"]){
    }else if ([langType isEqualToString:@"ug"]){
        //: resourceType = @"ug_strings";
        resourceType = [[AblyData sharedInstance] dream_sendStr];
    //: }else if ([langType isEqualToString:@"de"]){
    }else if ([langType isEqualToString:@"de"]){
        //: resourceType = @"de_strings";
        resourceType = [[AblyData sharedInstance] dream_imageMessage];
    //: }else if ([langType isEqualToString:@"pk"]){
    }else if ([langType isEqualToString:@"pk"]){
        //: resourceType = @"pk_strings";
        resourceType = [[AblyData sharedInstance] userRemindMsg];
    //: }else if ([langType isEqualToString:@"sa"]){
    }else if ([langType isEqualToString:@"sa"]){
        //: resourceType = @"sa_strings";
        resourceType = [[AblyData sharedInstance] user_regainTitle];
    //: }else if ([langType isEqualToString:@"ru"]){
    }else if ([langType isEqualToString:@"ru"]){
        //: resourceType = @"ru_strings";
        resourceType = [[AblyData sharedInstance] main_preciselyData];
    //: }else if ([langType isEqualToString:@"bd"]){
    }else if ([langType isEqualToString:@"bd"]){
        //: resourceType = @"bd_strings";
        resourceType = [[AblyData sharedInstance] mShowCigValue];
    //: }else if ([langType isEqualToString:@"fr"]){
    }else if ([langType isEqualToString:@"fr"]){
        //: resourceType = @"fr_strings";
        resourceType = [[AblyData sharedInstance] userTractBunName];
    //: }else if ([langType isEqualToString:@"hant"]){
    }else if ([langType isEqualToString:[[AblyData sharedInstance] app_producerText]]){
        //: resourceType = @"zh_hant_strings";
        resourceType = [[AblyData sharedInstance] k_virtueText];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv_strings";
        resourceType = [[AblyData sharedInstance] noti_developmentalId];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl_strings";
        resourceType = [[AblyData sharedInstance] show_seizeOptKey];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk_strings";
        resourceType = [[AblyData sharedInstance] k_scatterCottaTitle];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro_strings";
        resourceType = [[AblyData sharedInstance] dreamEmergencyAshName];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl_strings";
        resourceType = [[AblyData sharedInstance] main_uncertaintyId];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl_strings";
        resourceType = [[AblyData sharedInstance] main_parishMessage];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt_strings";
        resourceType = [[AblyData sharedInstance] mManId];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb_strings";
        resourceType = [[AblyData sharedInstance] user_meltKey];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt_strings";
        resourceType = [[AblyData sharedInstance] m_libName];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv_strings";
        resourceType = [[AblyData sharedInstance] user_policeDiskText];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg_strings";
        resourceType = [[AblyData sharedInstance] user_afterwardGloryDynamicsTitle];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr_strings";
        resourceType = [[AblyData sharedInstance] show_originResidencyName];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs_strings";
        resourceType = [[AblyData sharedInstance] appCenterData];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da_strings";
        resourceType = [[AblyData sharedInstance] show_veteranFormat];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et_strings";
        resourceType = [[AblyData sharedInstance] user_engagementMsg];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi_strings";
        resourceType = [[AblyData sharedInstance] kSultanPath];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el_strings";
        resourceType = [[AblyData sharedInstance] dreamDifferenceMsg];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu_strings";
        resourceType = [[AblyData sharedInstance] m_mirrorFormat];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga_strings";
        resourceType = [[AblyData sharedInstance] kMaintenanceFormat];
    }

    //: NSString *xmlFilePath = [[[SSZipArchiveManager sharedManager] getXML_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@.xml", langType, resourceType]];
    NSString *xmlFilePath = [[[EmptyTing intervalegrated] fileAdd] stringByAppendingPathComponent:[NSString stringWithFormat:[[AblyData sharedInstance] noti_guidanceIdent], langType, resourceType]];

    //: if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
        //: NSLog(@"XML file not found at path: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: if (!xmlData) {
    if (!xmlData) {
        //: NSLog(@"Failed to load XML data from file: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSError *error = nil;
    NSError *error = nil;
    //: if (error) {
    if (error) {
        //: NSLog(@"error : %@", error);
    }
    //: NSDictionary *result = [FFFXMLReader dictionaryForXMLData:xmlData error:&error];
    NSDictionary *result = [QuickReader secretUser:xmlData back:&error];
//    NSDictionary *result = [NSDictionary dictionaryWithXML:xmlData];

    //: NSLog(@"result : %@", result);
    //: if (result) {
    if (result) {
        //: NSDictionary *resources = [result objectForKey:@"resources"];
        NSDictionary *resources = [result objectForKey:[[AblyData sharedInstance] appTechPath]];
        //: if (resources) {
        if (resources) {
            //: NSArray *string = [resources objectForKey:@"string"];
            NSArray *string = [resources objectForKey:[[AblyData sharedInstance] app_planningStr]];
            //: if (string.count > 0) {
            if (string.count > 0) {
                //: [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    //: NSString *name = [obj objectForKey:@"name"];
                    NSString *name = [obj objectForKey:[[AblyData sharedInstance] user_destinationUrl]];
                    //: NSString *text = [obj objectForKey:@"text"];
                    NSString *text = [obj objectForKey:[[AblyData sharedInstance] mainStrangeStr]];
                    //: [self.langDict setObject:text forKey:name];
                    [self.langDict setObject:text forKey:name];
                //: }];
                }];
            }
        }

//        NSArray *string = [result objectForKey:@"string"];
//        if (string.count > 0) {
//            [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                NSString *name = [obj objectForKey:@"name"];
//                NSString *text = [obj objectForKey:@"_text"];
//                [self.langDict setObject:text forKey:name];
//            }];
//        }
    }
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)parserDidStartDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}
//: - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
    //: NSLog(@"出错");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[[AblyData sharedInstance] app_planningStr]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[[AblyData sharedInstance] user_destinationUrl]];
        //NSLog(@"--------%@",_currentElementName);
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: if ([_currentElementName isEqualToString:@"main_tab_my"]) {
        if ([_currentElementName isEqualToString:[[AblyData sharedInstance] m_isolationPath]]) {
            //: NSLog(@"%@",string);
        }
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)parserDidEndDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)mode{//th-TH  vi-VN
//    NSString *language = [OnName standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = [[AblyData sharedInstance] kRidgeItemName];
//    if ([language isEqualToString:@"en"]) {
//        return @"en_US";
//    }
    //: return locale;
    return locale;
}


//: @end
@end