
#import <Foundation/Foundation.h>

@interface ColorChangeData : NSObject

+ (instancetype)sharedInstance;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *notiHoppingScramKey;

//: (连接中)
@property (nonatomic, copy) NSString *mainTransportTitle;

//: jpg
@property (nonatomic, copy) NSString *show_accentData;

//: ic_scan
@property (nonatomic, copy) NSString *showCloudKey;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *k_surgeryRegulationIdent;

//: /team/create
@property (nonatomic, copy) NSString *showMarkValue;

//: fragment_contact_new_scan
@property (nonatomic, copy) NSString *mEvaluateBarFormat;

//: retracted_message
@property (nonatomic, copy) NSString *showTapTitle;

//: invite_you_group
@property (nonatomic, copy) NSString *noti_intellectualKey;

//: (同步数据)
@property (nonatomic, copy) NSString *user_heavilyTapBubbleUrl;

//: ic_top
@property (nonatomic, copy) NSString *dream_imageKey;

//: icon_session_list_empty
@property (nonatomic, copy) NSString *user_successFormat;

//: code
@property (nonatomic, copy) NSString *mCombinationKey;

//: owner
@property (nonatomic, copy) NSString *dream_curFreedKey;

//: globalsign
@property (nonatomic, copy) NSString *app_toTitle;

//: ic_delete
@property (nonatomic, copy) NSString *mAmendmentStr;

//: ic_topno
@property (nonatomic, copy) NSString *dreamLoserFormat;

//: notification
@property (nonatomic, copy) NSString *showCrushPath;

//: please_contact_your_administrator
@property (nonatomic, copy) NSString *userContentSendMessage;

//: warm_prompt
@property (nonatomic, copy) NSString *user_regnantText;

//: activity_user_profile_chat
@property (nonatomic, copy) NSString *dreamBookMessage;

//: tag_activity_set
@property (nonatomic, copy) NSString *main_heavilyTitle;

//: /user/checkcreateteam
@property (nonatomic, copy) NSString *user_developerId;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *show_maxUrl;

//: home_notice
@property (nonatomic, copy) NSString *dreamTotalId;

//: ic_create_chat
@property (nonatomic, copy) NSString *m_toIdent;

//: #5D5F66
@property (nonatomic, copy) NSString *app_tableUrl;

//: home_create_group
@property (nonatomic, copy) NSString *userTransformationMessage;

//: quick_icon
@property (nonatomic, copy) NSString *app_viaContent;

//: ic_distrub
@property (nonatomic, copy) NSString *noti_guidanceFreedKey;

//: ic_nodistrub
@property (nonatomic, copy) NSString *m_circleStr;

//: quickchat
@property (nonatomic, copy) NSString *m_petitionTitle;

//: home_add_friend
@property (nonatomic, copy) NSString *appPorterStr;

//: tid
@property (nonatomic, copy) NSString *show_barreSkyContent;

//: #875FFA
@property (nonatomic, copy) NSString *appConventData;

//: no_conversation
@property (nonatomic, copy) NSString *k_threshIdent;

//: (未连接)
@property (nonatomic, copy) NSString *kHoppingStr;

//: tname
@property (nonatomic, copy) NSString *app_grandpaIdent;

//: type
@property (nonatomic, copy) NSString *app_loserMsg;

//: name
@property (nonatomic, copy) NSString *userEvaluateName;

//: ic_add_fiend
@property (nonatomic, copy) NSString *dream_genetStr;

//: #999999
@property (nonatomic, copy) NSString *appMonthPath;

//: my_computer
@property (nonatomic, copy) NSString *kPowerFishingPath;

//: #fffWatch
@property (nonatomic, copy) NSString *show_numberDateIdent;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *m_salmonAddUrl;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *k_pressedMsg;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *dreamMessageIdent;

//: [有人@你]
@property (nonatomic, copy) NSString *userMembershipFormat;

@end

@implementation ColorChangeData

+ (instancetype)sharedInstance {
    static ColorChangeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ColorChangeDataToCache:(Byte *)data {
    int streak = data[0];
    int combinationResort = data[1];
    for (int i = 0; i < streak / 2; i++) {
        int begin = combinationResort + i;
        int end = combinationResort + streak - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[combinationResort + streak] = 0;
    return data + combinationResort;
}

- (NSString *)StringFromColorChangeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorChangeDataToCache:data]];
}  

//: jpg
- (NSString *)show_accentData {
    if (!_show_accentData) {
        Byte value[] = {3, 8, 26, 100, 58, 88, 238, 88, 103, 112, 106, 44};
        _show_accentData = [self StringFromColorChangeData:value];
    }
    return _show_accentData;
}

//: ic_top
- (NSString *)dream_imageKey {
    if (!_dream_imageKey) {
        Byte value[] = {6, 6, 246, 157, 231, 21, 112, 111, 116, 95, 99, 105, 69};
        _dream_imageKey = [self StringFromColorChangeData:value];
    }
    return _dream_imageKey;
}

//: (连接中)
- (NSString *)mainTransportTitle {
    if (!_mainTransportTitle) {
        Byte value[] = {11, 8, 253, 28, 38, 250, 196, 78, 41, 173, 184, 228, 165, 142, 230, 158, 191, 232, 40, 149};
        _mainTransportTitle = [self StringFromColorChangeData:value];
    }
    return _mainTransportTitle;
}

//: [有人@你]
- (NSString *)userMembershipFormat {
    if (!_userMembershipFormat) {
        Byte value[] = {12, 2, 93, 160, 189, 228, 64, 186, 186, 228, 137, 156, 230, 91, 73};
        _userMembershipFormat = [self StringFromColorChangeData:value];
    }
    return _userMembershipFormat;
}

//: (同步数据)
- (NSString *)user_heavilyTapBubbleUrl {
    if (!_user_heavilyTapBubbleUrl) {
        Byte value[] = {14, 3, 103, 41, 174, 141, 230, 176, 149, 230, 165, 173, 230, 140, 144, 229, 40, 239};
        _user_heavilyTapBubbleUrl = [self StringFromColorChangeData:value];
    }
    return _user_heavilyTapBubbleUrl;
}

//: icon_session_list_empty
- (NSString *)user_successFormat {
    if (!_user_successFormat) {
        Byte value[] = {23, 12, 72, 245, 106, 163, 111, 111, 169, 42, 101, 26, 121, 116, 112, 109, 101, 95, 116, 115, 105, 108, 95, 110, 111, 105, 115, 115, 101, 115, 95, 110, 111, 99, 105, 59};
        _user_successFormat = [self StringFromColorChangeData:value];
    }
    return _user_successFormat;
}

//: team_create_helper_create_failed
- (NSString *)show_maxUrl {
    if (!_show_maxUrl) {
        Byte value[] = {32, 10, 251, 102, 188, 244, 230, 61, 207, 145, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 101, 114, 99, 95, 114, 101, 112, 108, 101, 104, 95, 101, 116, 97, 101, 114, 99, 95, 109, 97, 101, 116, 64};
        _show_maxUrl = [self StringFromColorChangeData:value];
    }
    return _show_maxUrl;
}

//: home_create_group
- (NSString *)userTransformationMessage {
    if (!_userTransformationMessage) {
        Byte value[] = {17, 5, 227, 169, 243, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 99, 95, 101, 109, 111, 104, 107};
        _userTransformationMessage = [self StringFromColorChangeData:value];
    }
    return _userTransformationMessage;
}

//: my_computer
- (NSString *)kPowerFishingPath {
    if (!_kPowerFishingPath) {
        Byte value[] = {11, 4, 226, 142, 114, 101, 116, 117, 112, 109, 111, 99, 95, 121, 109, 113};
        _kPowerFishingPath = [self StringFromColorChangeData:value];
    }
    return _kPowerFishingPath;
}

//: notification
- (NSString *)showCrushPath {
    if (!_showCrushPath) {
        Byte value[] = {12, 2, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 205};
        _showCrushPath = [self StringFromColorChangeData:value];
    }
    return _showCrushPath;
}

//: ic_delete
- (NSString *)mAmendmentStr {
    if (!_mAmendmentStr) {
        Byte value[] = {9, 2, 101, 116, 101, 108, 101, 100, 95, 99, 105, 8};
        _mAmendmentStr = [self StringFromColorChangeData:value];
    }
    return _mAmendmentStr;
}

//: type
- (NSString *)app_loserMsg {
    if (!_app_loserMsg) {
        Byte value[] = {4, 4, 43, 213, 101, 112, 121, 116, 220};
        _app_loserMsg = [self StringFromColorChangeData:value];
    }
    return _app_loserMsg;
}

//: ic_add_fiend
- (NSString *)dream_genetStr {
    if (!_dream_genetStr) {
        Byte value[] = {12, 8, 208, 58, 244, 178, 71, 124, 100, 110, 101, 105, 102, 95, 100, 100, 97, 95, 99, 105, 162};
        _dream_genetStr = [self StringFromColorChangeData:value];
    }
    return _dream_genetStr;
}

//: ic_distrub
- (NSString *)noti_guidanceFreedKey {
    if (!_noti_guidanceFreedKey) {
        Byte value[] = {10, 5, 77, 242, 231, 98, 117, 114, 116, 115, 105, 100, 95, 99, 105, 116};
        _noti_guidanceFreedKey = [self StringFromColorChangeData:value];
    }
    return _noti_guidanceFreedKey;
}

//: code
- (NSString *)mCombinationKey {
    if (!_mCombinationKey) {
        Byte value[] = {4, 3, 66, 101, 100, 111, 99, 132};
        _mCombinationKey = [self StringFromColorChangeData:value];
    }
    return _mCombinationKey;
}

//: #5D5F66
- (NSString *)app_tableUrl {
    if (!_app_tableUrl) {
        Byte value[] = {7, 11, 241, 132, 196, 102, 151, 19, 76, 153, 175, 54, 54, 70, 53, 68, 53, 35, 222};
        _app_tableUrl = [self StringFromColorChangeData:value];
    }
    return _app_tableUrl;
}

//: invite_you_group
- (NSString *)noti_intellectualKey {
    if (!_noti_intellectualKey) {
        Byte value[] = {16, 12, 196, 243, 177, 74, 76, 51, 109, 137, 82, 153, 112, 117, 111, 114, 103, 95, 117, 111, 121, 95, 101, 116, 105, 118, 110, 105, 114};
        _noti_intellectualKey = [self StringFromColorChangeData:value];
    }
    return _noti_intellectualKey;
}

//: add_friend_activity_add_friend
- (NSString *)dreamMessageIdent {
    if (!_dreamMessageIdent) {
        Byte value[] = {30, 7, 128, 211, 56, 81, 53, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 37};
        _dreamMessageIdent = [self StringFromColorChangeData:value];
    }
    return _dreamMessageIdent;
}

//: quickchat
- (NSString *)m_petitionTitle {
    if (!_m_petitionTitle) {
        Byte value[] = {9, 7, 28, 190, 205, 254, 32, 116, 97, 104, 99, 107, 99, 105, 117, 113, 55};
        _m_petitionTitle = [self StringFromColorChangeData:value];
    }
    return _m_petitionTitle;
}

//: setting_privacy_camera
- (NSString *)m_salmonAddUrl {
    if (!_m_salmonAddUrl) {
        Byte value[] = {22, 3, 34, 97, 114, 101, 109, 97, 99, 95, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 61};
        _m_salmonAddUrl = [self StringFromColorChangeData:value];
    }
    return _m_salmonAddUrl;
}

//: /team/create
- (NSString *)showMarkValue {
    if (!_showMarkValue) {
        Byte value[] = {12, 6, 30, 224, 161, 40, 101, 116, 97, 101, 114, 99, 47, 109, 97, 101, 116, 47, 58};
        _showMarkValue = [self StringFromColorChangeData:value];
    }
    return _showMarkValue;
}

//: tid
- (NSString *)show_barreSkyContent {
    if (!_show_barreSkyContent) {
        Byte value[] = {3, 12, 238, 118, 151, 177, 140, 23, 171, 218, 248, 100, 100, 105, 116, 206};
        _show_barreSkyContent = [self StringFromColorChangeData:value];
    }
    return _show_barreSkyContent;
}

//: home_notice
- (NSString *)dreamTotalId {
    if (!_dreamTotalId) {
        Byte value[] = {11, 9, 156, 243, 55, 29, 114, 153, 223, 101, 99, 105, 116, 111, 110, 95, 101, 109, 111, 104, 214};
        _dreamTotalId = [self StringFromColorChangeData:value];
    }
    return _dreamTotalId;
}

//: activity_create_group_name_create_group
- (NSString *)notiHoppingScramKey {
    if (!_notiHoppingScramKey) {
        Byte value[] = {39, 11, 119, 157, 73, 110, 210, 200, 22, 55, 160, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 99, 95, 101, 109, 97, 110, 95, 112, 117, 111, 114, 103, 95, 101, 116, 97, 101, 114, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 1};
        _notiHoppingScramKey = [self StringFromColorChangeData:value];
    }
    return _notiHoppingScramKey;
}

//: activity_user_profile_chat
- (NSString *)dreamBookMessage {
    if (!_dreamBookMessage) {
        Byte value[] = {26, 12, 167, 232, 121, 177, 228, 94, 112, 232, 102, 66, 116, 97, 104, 99, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 67};
        _dreamBookMessage = [self StringFromColorChangeData:value];
    }
    return _dreamBookMessage;
}

//: tname
- (NSString *)app_grandpaIdent {
    if (!_app_grandpaIdent) {
        Byte value[] = {5, 6, 190, 119, 148, 80, 101, 109, 97, 110, 116, 77};
        _app_grandpaIdent = [self StringFromColorChangeData:value];
    }
    return _app_grandpaIdent;
}

//: ic_nodistrub
- (NSString *)m_circleStr {
    if (!_m_circleStr) {
        Byte value[] = {12, 11, 111, 98, 121, 178, 118, 100, 205, 57, 119, 98, 117, 114, 116, 115, 105, 100, 111, 110, 95, 99, 105, 237};
        _m_circleStr = [self StringFromColorChangeData:value];
    }
    return _m_circleStr;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)k_surgeryRegulationIdent {
    if (!_k_surgeryRegulationIdent) {
        Byte value[] = {39, 2, 100, 101, 108, 105, 97, 102, 95, 114, 97, 116, 97, 118, 97, 95, 100, 97, 111, 108, 112, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 184};
        _k_surgeryRegulationIdent = [self StringFromColorChangeData:value];
    }
    return _k_surgeryRegulationIdent;
}

//: home_add_friend
- (NSString *)appPorterStr {
    if (!_appPorterStr) {
        Byte value[] = {15, 5, 78, 252, 19, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 101, 109, 111, 104, 147};
        _appPorterStr = [self StringFromColorChangeData:value];
    }
    return _appPorterStr;
}

//: #875FFA
- (NSString *)appConventData {
    if (!_appConventData) {
        Byte value[] = {7, 11, 162, 109, 66, 73, 231, 1, 247, 219, 55, 65, 70, 70, 53, 55, 56, 35, 59};
        _appConventData = [self StringFromColorChangeData:value];
    }
    return _appConventData;
}

//: please_contact_your_administrator
- (NSString *)userContentSendMessage {
    if (!_userContentSendMessage) {
        Byte value[] = {33, 10, 17, 162, 129, 90, 238, 141, 157, 21, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 114, 117, 111, 121, 95, 116, 99, 97, 116, 110, 111, 99, 95, 101, 115, 97, 101, 108, 112, 219};
        _userContentSendMessage = [self StringFromColorChangeData:value];
    }
    return _userContentSendMessage;
}

//: warm_prompt
- (NSString *)user_regnantText {
    if (!_user_regnantText) {
        Byte value[] = {11, 3, 45, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 164};
        _user_regnantText = [self StringFromColorChangeData:value];
    }
    return _user_regnantText;
}

//: name
- (NSString *)userEvaluateName {
    if (!_userEvaluateName) {
        Byte value[] = {4, 11, 123, 79, 28, 14, 159, 155, 11, 149, 43, 101, 109, 97, 110, 73};
        _userEvaluateName = [self StringFromColorChangeData:value];
    }
    return _userEvaluateName;
}

//: owner
- (NSString *)dream_curFreedKey {
    if (!_dream_curFreedKey) {
        Byte value[] = {5, 11, 144, 103, 162, 151, 220, 187, 106, 7, 91, 114, 101, 110, 119, 111, 162};
        _dream_curFreedKey = [self StringFromColorChangeData:value];
    }
    return _dream_curFreedKey;
}

//: contact_tag_fragment_cancel
- (NSString *)k_pressedMsg {
    if (!_k_pressedMsg) {
        Byte value[] = {27, 12, 33, 255, 249, 108, 65, 200, 114, 202, 30, 174, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 234};
        _k_pressedMsg = [self StringFromColorChangeData:value];
    }
    return _k_pressedMsg;
}

//: /user/checkcreateteam
- (NSString *)user_developerId {
    if (!_user_developerId) {
        Byte value[] = {21, 2, 109, 97, 101, 116, 101, 116, 97, 101, 114, 99, 107, 99, 101, 104, 99, 47, 114, 101, 115, 117, 47, 243};
        _user_developerId = [self StringFromColorChangeData:value];
    }
    return _user_developerId;
}

//: ic_create_chat
- (NSString *)m_toIdent {
    if (!_m_toIdent) {
        Byte value[] = {14, 11, 35, 129, 11, 181, 53, 57, 54, 234, 134, 116, 97, 104, 99, 95, 101, 116, 97, 101, 114, 99, 95, 99, 105, 187};
        _m_toIdent = [self StringFromColorChangeData:value];
    }
    return _m_toIdent;
}

//: fragment_contact_new_scan
- (NSString *)mEvaluateBarFormat {
    if (!_mEvaluateBarFormat) {
        Byte value[] = {25, 4, 151, 39, 110, 97, 99, 115, 95, 119, 101, 110, 95, 116, 99, 97, 116, 110, 111, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 66};
        _mEvaluateBarFormat = [self StringFromColorChangeData:value];
    }
    return _mEvaluateBarFormat;
}

//: ic_scan
- (NSString *)showCloudKey {
    if (!_showCloudKey) {
        Byte value[] = {7, 10, 179, 139, 199, 29, 106, 144, 121, 146, 110, 97, 99, 115, 95, 99, 105, 105};
        _showCloudKey = [self StringFromColorChangeData:value];
    }
    return _showCloudKey;
}

//: #fffWatch
- (NSString *)show_numberDateIdent {
    if (!_show_numberDateIdent) {
        Byte value[] = {7, 3, 204, 102, 102, 102, 102, 102, 102, 35, 15};
        _show_numberDateIdent = [self StringFromColorChangeData:value];
    }
    return _show_numberDateIdent;
}

//: (未连接)
- (NSString *)kHoppingStr {
    if (!_kHoppingStr) {
        Byte value[] = {11, 6, 4, 139, 120, 252, 41, 165, 142, 230, 158, 191, 232, 170, 156, 230, 40, 222};
        _kHoppingStr = [self StringFromColorChangeData:value];
    }
    return _kHoppingStr;
}

//: #999999
- (NSString *)appMonthPath {
    if (!_appMonthPath) {
        Byte value[] = {7, 8, 181, 58, 29, 60, 201, 188, 57, 57, 57, 57, 57, 57, 35, 172};
        _appMonthPath = [self StringFromColorChangeData:value];
    }
    return _appMonthPath;
}

//: no_conversation
- (NSString *)k_threshIdent {
    if (!_k_threshIdent) {
        Byte value[] = {15, 12, 113, 20, 14, 9, 82, 109, 90, 30, 91, 228, 110, 111, 105, 116, 97, 115, 114, 101, 118, 110, 111, 99, 95, 111, 110, 186};
        _k_threshIdent = [self StringFromColorChangeData:value];
    }
    return _k_threshIdent;
}

//: globalsign
- (NSString *)app_toTitle {
    if (!_app_toTitle) {
        Byte value[] = {10, 10, 77, 84, 28, 155, 189, 151, 48, 192, 110, 103, 105, 115, 108, 97, 98, 111, 108, 103, 45};
        _app_toTitle = [self StringFromColorChangeData:value];
    }
    return _app_toTitle;
}

//: retracted_message
- (NSString *)showTapTitle {
    if (!_showTapTitle) {
        Byte value[] = {17, 4, 34, 216, 101, 103, 97, 115, 115, 101, 109, 95, 100, 101, 116, 99, 97, 114, 116, 101, 114, 183};
        _showTapTitle = [self StringFromColorChangeData:value];
    }
    return _showTapTitle;
}

//: tag_activity_set
- (NSString *)main_heavilyTitle {
    if (!_main_heavilyTitle) {
        Byte value[] = {16, 3, 204, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 124};
        _main_heavilyTitle = [self StringFromColorChangeData:value];
    }
    return _main_heavilyTitle;
}

//: ic_topno
- (NSString *)dreamLoserFormat {
    if (!_dreamLoserFormat) {
        Byte value[] = {8, 9, 193, 68, 154, 29, 76, 234, 105, 111, 110, 112, 111, 116, 95, 99, 105, 113};
        _dreamLoserFormat = [self StringFromColorChangeData:value];
    }
    return _dreamLoserFormat;
}

//: quick_icon
- (NSString *)app_viaContent {
    if (!_app_viaContent) {
        Byte value[] = {10, 12, 104, 51, 67, 207, 78, 183, 226, 93, 118, 230, 110, 111, 99, 105, 95, 107, 99, 105, 117, 113, 46};
        _app_viaContent = [self StringFromColorChangeData:value];
    }
    return _app_viaContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowSessionViewController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionListViewController.h"
#import "ShowSessionViewController.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "NTESListHeader.h"
#import "ReplacementValueView.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "NTESMessageUtil.h"
#import "NonsolidColorView.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <Toast/UIView+Toast.h>
#import <Toast/UIView+Toast.h>
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESContactAddFriendViewController.h"
#import "SubContactViewController.h"
//: #import "CCCContactScanViewController.h"
#import "OldSessionViewController.h"
//: #import "WatchContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "NTESSystemSignNotificationSheet.h"
#import "LatchkeyView.h"
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "WatchTextHighlight.h"
#import "EmptyColorTextHighlight.h"
//: #import "WatchInputEmoticonParser.h"
#import "ImageShowParser.h"
//: #import "WatchInputEmoticonManager.h"
#import "TitleToManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "NTESSystemNotificationViewController.h"
#import "NoticeViewController.h"
//: #import "NTESNotificationView.h"
#import "KeyProgressView.h"
//: #import "UIButton+Badge.h"
#import "UIButton+MaxReplacementModel.h"
//: #import "CCCContactsViewController.h"
#import "CrimsonViewController.h"
//: #import "NTESMainTabController.h"
#import "UserBarController.h"
//: #import "WatchKitFileLocationHelper.h"
#import "ButtonHelper.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "OldView.h"

//: @interface NTESSessionListViewController ()<NIMLoginManagerDelegate,NTESListHeaderDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,NTESSystemSignNotificationDelegate,NIMSystemNotificationManagerDelegate>
@interface ShowSessionViewController ()<NIMLoginManagerDelegate,MakeMax,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,SoulCover,NIMSystemNotificationManagerDelegate>

//: @property (nonatomic,strong) NTESListHeader *header;
@property (nonatomic,strong) ReplacementValueView *header;
//: @property (nonatomic,assign) BOOL supportsForceTouch;
@property (nonatomic,assign) BOOL supportsForceTouch;
//: @property (nonatomic,strong) NSMutableDictionary *previews;
@property (nonatomic,strong) NSMutableDictionary *previews;

//: @property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;
@property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;

@property (nonatomic, strong) FFDropDownMenuView *dropdownMenu;/** 下拉菜单 */

//: @property (nonatomic, strong) NSString *creatTeam;
@property (nonatomic, strong) NSString *creatTeam;

//: @property (nonatomic, strong) NTESNotificationView *noticeView;
@property (nonatomic, strong) KeyProgressView *noticeView;

//: @property (nonatomic, strong) UIButton *QuickChatBtn;
@property (nonatomic, strong) UIButton *QuickChatBtn;

//: @property (nonatomic, strong) UIButton *mesBtn;
@property (nonatomic, strong) UIButton *mesBtn;
//: @property (nonatomic, strong) UIButton *resqBtn;
@property (nonatomic, strong) UIButton *resqBtn;

//: @property (nonatomic, strong) UIView *reqView;
@property (nonatomic, strong) UIView *reqView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) QueryStubView *loadingView;

//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) OldView *policyView;


//: @end
@end

//: @implementation NTESSessionListViewController
@implementation ShowSessionViewController

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
        //: self.autoRemoveRemoteSession = [[NTESBundleSetting sharedConfig] autoRemoveRemoteSession];
        self.autoRemoveRemoteSession = [[NameTing pin] green];
    }
    //: return self;
    return self;
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
    [self object];

    /** 初始化下拉菜单 */
//    [self setupDropDownMenu];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    contentView.backgroundColor = [UIColor min:[ColorChangeData sharedInstance].show_numberDateIdent];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    //: [contentView addSubview:self.tableView];
    [contentView addSubview:self.tableView];

    //: [self.view addSubview:self.QuickChatBtn];
    [self.view addSubview:self.QuickChatBtn];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    self.header = [[ReplacementValueView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
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
    self.emptyImageView.image = [UIImage imageNamed:[ColorChangeData sharedInstance].user_successFormat];
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
    //: self.emptyTipLabel.text = [WatchLanguageManager getTextWithKey:@"no_conversation"];
    self.emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].k_threshIdent];//@"还没有会话，在通讯录中找个人聊聊吧".ntes_localized;
    //: self.emptyTipLabel.numberOfLines = 0;
    self.emptyTipLabel.numberOfLines = 0;
    //: self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    //: self.emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    self.emptyTipLabel.textColor = [UIColor min:[ColorChangeData sharedInstance].appMonthPath];
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
    if(![[OnName user].yspop isEqualToString:@"1"]){
        //: UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        //: [window addSubview:self.policyView];
        [window addSubview:self.policyView];
    }


    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [CoverPageMode nameConfig:^(NSDictionary * _Nonnull configDict) {
        //: if (configDict.allKeys.count > 0) {
        if (configDict.allKeys.count > 0) {
            //: NSString *globalsign = [configDict newStringValueForKey:@"globalsign"];
            NSString *globalsign = [configDict record:[ColorChangeData sharedInstance].app_toTitle];
            //: if (globalsign.integerValue > 0) {
            if (globalsign.integerValue > 0) {
                //: NTESSystemSignNotificationSheet *sheet = [[NTESSystemSignNotificationSheet alloc] initWithFrame:self.view.bounds dictionary:@{}];
                LatchkeyView *sheet = [[LatchkeyView alloc] initWithTapBy:self.view.bounds betweenWith:@{}];
                //: sheet.delegate = self;
                sheet.delegate = self;
                //: [sheet show];
                [sheet user];
            }
        }
    //: }];
    }];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
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

//: - (void)addfriends {
- (void)team {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    SubContactViewController *vc = [[SubContactViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)leftAction {
- (void)nigh {
    //: [self requestAuthorizationForVideo];
    [self contentPath];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self loadStickTopSessions];
    [self direction];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self checkCreateTeam];
    [self keep];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: -(void)checkCreateTeam{
-(void)keep{
    //: __weak typeof(self) weakself = self;
    __weak typeof(self) weakself = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkcreateteam"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[ColorChangeData sharedInstance].user_developerId] reload_strong:nil with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[ColorChangeData sharedInstance].mCombinationKey];
        //: weakself.creatTeam = code;
        weakself.creatTeam = code;
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)reloadUnreadCount{
-(void)doPressed{
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];

    //: UINavigationController *nav = self.navigationController.viewControllers[0];
    UINavigationController *nav = self.navigationController.viewControllers[0];
    //: nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
}

//: - (void)setUpNavItem{
- (void)object{

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 180)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width, 180)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"activity_user_profile_chat"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].dreamBookMessage];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    //: [moreBtn addTarget:self action:@selector(requestAuthorizationForVideo) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn addTarget:self action:@selector(contentPath) forControlEvents:UIControlEventTouchUpInside];
    //: [moreBtn setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [moreBtn setImage:[UIImage imageNamed:[ColorChangeData sharedInstance].showCloudKey] forState:UIControlStateNormal];
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
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(strideValue)];
    //: [box1 addGestureRecognizer:singleTap1];
    [box1 addGestureRecognizer:singleTap1];
    //: UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_add_friend"]];
    UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ColorChangeData sharedInstance].appPorterStr]];
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
    //: label12.text = [WatchLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    label12.text = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].dreamMessageIdent];
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
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dataConverterAddgroup)];
    //: [box2 addGestureRecognizer:singleTap2];
    [box2 addGestureRecognizer:singleTap2];

    //: UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_notice"]];
    UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ColorChangeData sharedInstance].dreamTotalId]];
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
    //: label2.text = [WatchLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    label2.text = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].notiHoppingScramKey];
    //: [box2 addSubview:label2];
    [box2 addSubview:label2];

    //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    //: [topview addSubview:box4];
    [topview addSubview:box4];

    //: UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_create_group"]];
    UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ColorChangeData sharedInstance].userTransformationMessage]];
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
    [_resqBtn addTarget:self action:@selector(handlerStateSpyBy) forControlEvents:UIControlEventTouchUpInside];
     //: [box4 addSubview:_resqBtn];
     [box4 addSubview:_resqBtn];

    //: UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label3.font = [UIFont systemFontOfSize:16.f];
    label3.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label3.textColor = [UIColor whiteColor];
    label3.textColor = [UIColor whiteColor];
    //: label3.text = [WatchLanguageManager getTextWithKey:@"notification"];
    label3.text = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].showCrushPath];
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

//: - (void)handlerMessage {
- (void)barRecording {
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor min:[ColorChangeData sharedInstance].appConventData];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor min:[ColorChangeData sharedInstance].app_tableUrl] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor clearColor];
    _resqBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = YES;
    self.noticeView.hidden = YES;
    //: self.tableView.hidden = NO;
    self.tableView.hidden = NO;
}
//: - (void)handlerRequests {
- (void)elementShared {
    //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _resqBtn.backgroundColor = [UIColor min:[ColorChangeData sharedInstance].appConventData];
    //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor min:[ColorChangeData sharedInstance].app_tableUrl] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor clearColor];
    _mesBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = NO;
    self.noticeView.hidden = NO;
    //: self.tableView.hidden = YES;
    self.tableView.hidden = YES;
}
//: - (void)handlerAddfriend {
- (void)strideValue {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    SubContactViewController *vc = [[SubContactViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handlerAddgroup {
- (void)dataConverterAddgroup {
    //: [self creatTeamGroup];
    [self pinGroup];
}

//: - (void)handlerNotice {
- (void)handlerStateSpyBy {
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    NoticeViewController *vc = [[NoticeViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)refresh{
- (void)noneRecordingRefresh{
    //: [super refresh];
    [super noneRecordingRefresh];
    //: self.emptyTipLabel.hidden = self.recentSessions.count;
    self.emptyTipLabel.hidden = self.recentSessions.count;
    //: self.emptyImageView.hidden = self.recentSessions.count;
    self.emptyImageView.hidden = self.recentSessions.count;
    //: self.addBtn.hidden = self.recentSessions.count;
    self.addBtn.hidden = self.recentSessions.count;

}

//: - (void)onSelectedRecent:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath{
- (void)criticise:(NIMRecentSession *)recent visualisation:(NSIndexPath *)indexPath{
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:recent.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onSelectedAvatar:(NIMRecentSession *)recent
- (void)content:(NIMRecentSession *)recent
             //: atIndexPath:(NSIndexPath *)indexPath{
             line:(NSIndexPath *)indexPath{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: UIViewController *vc;
        UIViewController *vc;
        //: vc = [[NTESPersonalCardViewController alloc] initWithUserId:recent.session.sessionId];
        vc = [[ApproximateViewController alloc] initWithSmart:recent.session.sessionId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)onDeleteRecentAtIndexPath:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath
- (void)canEnable:(NIMRecentSession *)recent alongInPath:(NSIndexPath *)indexPath
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
            self.recentSessions = [self style:self.recentSessions];
            //: [self refresh];
            [self noneRecordingRefresh];
        }
    //: }];
    }];

//    [manager deleteRecentSession:recent];

}

//: - (void)onTopRecentAtIndexPath:(NIMRecentSession *)recent
- (void)model:(NIMRecentSession *)recent
                   //: atIndexPath:(NSIndexPath *)indexPath
                   add:(NSIndexPath *)indexPath
                         //: isTop:(BOOL)isTop
                         buttonOn:(BOOL)isTop
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
            [self noneRecordingRefresh];
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
            [self noneRecordingRefresh];
        //: }];
        }];
    }
}

//: - (void)onDisnodistrubRecentAtIndexPath:(NIMRecentSession *)recent isDis:(BOOL)isDis
- (void)pin:(NIMRecentSession *)recent stem:(BOOL)isDis
{
    //: WatchKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (recent.session.sessionType == NIMSessionTypeTeam) {
    if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
        info = [[ButtonKit sheerOption] pressMedia:recent.session.sessionId sizeOption:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;
        notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;

        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
            //: [self refresh];
            [self noneRecordingRefresh];
        //: }];
        }];
    //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
    } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = recent.session;
        option.session = recent.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
        info = [[ButtonKit sheerOption] past:recent.session.sessionId skinColour_strong:option];
//        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰

        //: [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
            //: [self refresh];
            [self noneRecordingRefresh];
        //: }];
        }];
    }
//
//    if(!isDis){
//        [self reloadUnreadCount];
//    }


}

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)anOfSession:(NIMRecentSession *)recentSession; {
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: return isTop;
    return isTop;
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: [self refreshSubview];
    [self withDisplay];
}


//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent{
- (NSString *)viewOf:(NIMRecentSession *)recent{
    //: if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: return [WatchLanguageManager getTextWithKey:@"my_computer"];
        return [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].kPowerFishingPath];
    }
    //: return [super nameForRecentSession:recent];
    return [super viewOf:recent];
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)style:(NSMutableArray *)recentSessions
{
    //: [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    //: return recentSessions;
    return recentSessions;
}


//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step {
- (void)onLogin:(NIMLoginStep)step {

    //: ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;
    ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;

    //: [super onLogin:step];
    [super onLogin:step];
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
            //: self.navigationItem.title = @"(未连接)".ntes_localized;
            self.navigationItem.title = [ColorChangeData sharedInstance].kHoppingStr.textIndex;
            //: break;
            break;
        //: case NIMLoginStepLinking:
        case NIMLoginStepLinking:
            //: self.navigationItem.title = @"(连接中)".ntes_localized;
            self.navigationItem.title = [ColorChangeData sharedInstance].mainTransportTitle.textIndex;
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
            //: self.navigationItem.title = @"(同步数据)".ntes_localized;
            self.navigationItem.title = [ColorChangeData sharedInstance].user_heavilyTapBubbleUrl.textIndex;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header back:ListHeaderTypeNetStauts must:@(step)];
    //: [self refreshSubview];
    [self withDisplay];
}

//: - (void)onMultiLoginClientsChanged
- (void)onMultiLoginClientsChanged
{
//    [self.header refreshWithType:ListHeaderTypeLoginClients value:[NIMSDK sharedSDK].loginManager.currentLoginClients];
//    [self refreshSubview];
}

//: - (void)onTeamUsersSyncFinished:(BOOL)success
- (void)onTeamUsersSyncFinished:(BOOL)success
{
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


//: - (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
    //: UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;

    //: return nil;
    return nil;
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
        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
        BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:recent.session];
        //: [self.navigationController showViewController:vc sender:nil];
        [self.navigationController showViewController:vc sender:nil];
    }
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 偶现侧滑数组越界，但并没有发现并发问题，暂且防护
    //: return indexPath.section < self.recentSessions.count;
    return indexPath.section < self.recentSessions.count;
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
        [self canEnable:recentSession alongInPath:indexPath];
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
        [self model:recentSession add:indexPath buttonOn:isTop];
    //: }];
    }];

    //: BOOL isDisnodistrub = NO;
    BOOL isDisnodistrub = NO;
    //: WatchKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (recentSession.session.sessionType == NIMSessionTypeTeam) {
    if (recentSession.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recentSession.session.sessionId option:nil];
        info = [[ButtonKit sheerOption] pressMedia:recentSession.session.sessionId sizeOption:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
        isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;

    //: } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
    } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
        //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = recentSession.session;
        option.session = recentSession.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recentSession.session.sessionId option:option];
        info = [[ButtonKit sheerOption] past:recentSession.session.sessionId skinColour_strong:option];
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
        [self pin:recentSession stem:isDisnodistrub];
    //: }];
    }];

//    //只能设置背景颜色，图片，文字
    //: deleteAction1.backgroundColor = [UIColor whiteColor];
    deleteAction1.backgroundColor = [UIColor whiteColor];
    //: deleteAction1.image = [UIImage imageNamed:@"ic_delete"];
    deleteAction1.image = [UIImage imageNamed:[ColorChangeData sharedInstance].mAmendmentStr];
//
    //: deleteAction2.backgroundColor = [UIColor whiteColor];
    deleteAction2.backgroundColor = [UIColor whiteColor];
    //: if(isTop){
    if(isTop){
        //: deleteAction2.image = [UIImage imageNamed:@"ic_topno"];
        deleteAction2.image = [UIImage imageNamed:[ColorChangeData sharedInstance].dreamLoserFormat];
    //: }else{
    }else{
        //: deleteAction2.image = [UIImage imageNamed:@"ic_top"];
        deleteAction2.image = [UIImage imageNamed:[ColorChangeData sharedInstance].dream_imageKey];
    }


    //: deleteAction3.backgroundColor = [UIColor whiteColor];
    deleteAction3.backgroundColor = [UIColor whiteColor];
    //: if(isDisnodistrub){
    if(isDisnodistrub){
        //: deleteAction3.image = [UIImage imageNamed:@"ic_distrub"];
        deleteAction3.image = [UIImage imageNamed:[ColorChangeData sharedInstance].noti_guidanceFreedKey];
    //: }else{
    }else{
        //: deleteAction3.image = [UIImage imageNamed:@"ic_nodistrub"];
        deleteAction3.image = [UIImage imageNamed:[ColorChangeData sharedInstance].m_circleStr];
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
//: - (UIImage *)imageWithView:(UIView *)view {
- (UIImage *)openTextIndex:(UIView *)view {
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

//: - (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
- (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
{
    //: self.stickTopInfos[newInfo.session] = newInfo;
    self.stickTopInfos[newInfo.session] = newInfo;
    //: [self refresh];
    [self noneRecordingRefresh];
}

//: - (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
- (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
{
    //: self.stickTopInfos[removedInfo.session] = nil;
    self.stickTopInfos[removedInfo.session] = nil;
    //: [self refresh];
    [self noneRecordingRefresh];
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
        [self noneRecordingRefresh];
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

//: #pragma mark - Private
#pragma mark - Private

//: - (void)refreshSubview{
- (void)withDisplay{
    //: self.header.top = [UIDevice vg_statusBarHeight]+180;
    self.header.top = [UIDevice tingHeight]+180;
//    self.tableView.top = SCREEN_STATUS_HEIGHT +44;
//    CGFloat offset = self.view.safeAreaInsets.bottom;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, offset, 0);
//
//    self.tableView.height = self.view.height - self.tableView.top;

}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)cell:(NIMRecentSession *)recent{
    //: NSAttributedString *content;
    NSAttributedString *content;
    //: if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    {
        //: NIMMessage *msg = recent.lastMessage;
        NIMMessage *msg = recent.lastMessage;
        //: if ([recent.lastMessage.text containsString:[WatchLanguageManager getTextWithKey:@"retracted_message"]]) {
        if ([recent.lastMessage.text containsString:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].showTapTitle]]) {
            //: msg = [self lastMessageWithNoRevocationMessage:recent.lastMessage];
            msg = [self dateColor:recent.lastMessage];
        }
        //: NSString *text = [NTESMessageUtil messageContent:msg];
        NSString *text = [NonsolidColorView randomDown:msg];
        //: if (recent.session.sessionType != NIMSessionTypeP2P)
        if (recent.session.sessionType != NIMSessionTypeP2P)
        {
            //: NSString *nickName = [NTESSessionUtil showNick:msg.from inSession:msg.session];
            NSString *nickName = [OldUtil red:msg.from dateSession:msg.session];
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
        content = [super cell:recent];
    }
    //: NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    //: [self checkNeedAtTip:recent content:attContent];
    [self should:recent event:attContent];
    //: [self checkOnlineState:recent content:attContent];
    [self bottom:recent name:attContent];

    //: NSMutableAttributedString *resultS = [self transformEmojiDescToEomjiImageWithAttributedString:attContent];
    NSMutableAttributedString *resultS = [self recent:attContent];

    //: return resultS;
    return resultS;
}

//: - (NIMMessage *)lastMessageWithNoRevocationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)dateColor:(NIMMessage *)recentMsg {

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
            return [self dateColor:msg];
        }
    }
    //: return msg;
    return msg;
}

//: + (NSRegularExpression *)regexEmoticon {
+ (NSRegularExpression *)bubble {
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

//: - (NSMutableAttributedString *)transformEmojiDescToEomjiImageWithAttributedString:(NSAttributedString *)attributedString {
- (NSMutableAttributedString *)recent:(NSAttributedString *)attributedString {
    // 匹配 [表情]
    //: NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    //: if (attrM.length > 0) {
    if (attrM.length > 0) {

        //: NSArray<NSTextCheckingResult *> *emoticonResults = [[NTESSessionListViewController regexEmoticon] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        NSArray<NSTextCheckingResult *> *emoticonResults = [[ShowSessionViewController bubble] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
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

            //: NIMInputEmoticon *emoticon = [[WatchInputEmoticonManager sharedManager] emoticonByTag:emoString];
            ButtonTableEmoticon *emoticon = [[TitleToManager draw] data:emoString];

            //: UIImage *image = [UIImage nim_emoticonInKit:emoticon.filename];
            UIImage *image = [UIImage cut:emoticon.filename];

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

            //: WatchTextHighlight *highlight = [[WatchTextHighlight alloc] init];
            EmptyColorTextHighlight *highlight = [[EmptyColorTextHighlight alloc] init];
            //: highlight.type = WatchTextHighlightTypeEmoji;
            highlight.type = WatchTextHighlightTypeEmoji;
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

//: - (void)checkNeedAtTip:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)should:(NIMRecentSession *)recent event:(NSMutableAttributedString *)content
{
    //: if ([NTESSessionUtil recentSessionIsMark:recent type:NTESRecentSessionMarkTypeAt]) {
    if ([OldUtil under:recent by:NTESRecentSessionMarkTypeAt]) {
        //: NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:@"[有人@你]".ntes_localized attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:[ColorChangeData sharedInstance].userMembershipFormat.textIndex attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        //: [content insertAttributedString:atTip atIndex:0];
        [content insertAttributedString:atTip atIndex:0];
    }
}

//: - (void)checkOnlineState:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)bottom:(NIMRecentSession *)recent name:(NSMutableAttributedString *)content
{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
//        NSString *state  = [OldUtil onlineState:recent.session.sessionId detail:NO];
//        if (state.length) {
//            NSString *format = [NSString stringWithFormat:@"[%@] ",state];
//            NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:format attributes:nil];
//            [content insertAttributedString:atTip atIndex:0];
//        }
    }
}

//: - (void)loadStickTopSessions
- (void)direction
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
        [sself noneRecordingRefresh];
    //: }];
    }];
}


//: -(void)moreClickDelegate{
-(void)forceDelegate{
    //: [self showDropDownMenu];
    [self patronymic];
}



//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)add:(NSString *)teamID with_strong:(NSString *)teamName name:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[ColorChangeData sharedInstance].dream_curFreedKey] = currentUserId;
    //: dict[@"type"] = type;
    dict[[ColorChangeData sharedInstance].app_loserMsg] = type;
    //: dict[@"tname"] = teamName;
    dict[[ColorChangeData sharedInstance].app_grandpaIdent] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[ColorChangeData sharedInstance].show_barreSkyContent] = teamID;

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)event:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    OldPin *config = [[OldPin alloc] init];
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
    //: WatchContactSelectViewController *vc = [[WatchContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc center];
}

//: - (void)quickChatpresentMemberSelector:(ContactSelectFinishBlock) block{
- (void)atOf:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    OldPin *config = [[OldPin alloc] init];
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
    //: WatchContactSelectViewController *vc = [[WatchContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc center];
}

//: #pragma mark - 下拉菜单
#pragma mark - 下拉菜单

/** 初始化下拉菜单 */
//: - (void)setupDropDownMenu {
- (void)picture {
    //: NSArray *modelsArray = [self getMenuModelsArray];
    NSArray *modelsArray = [self carteDuJour];


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
     self.dropdownMenu.triangleY = [UIDevice tingHeight] +30;
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
    self.dropdownMenu.cellClassName = @"ToBasedCell";

     //所有属性赋值完 一定要调用 setup
     //: [self.dropdownMenu setup];
     [self.dropdownMenu setup];

}



/** 获取菜单模型数组 */
//: - (NSArray *)getMenuModelsArray {
- (NSArray *)carteDuJour {
    //菜单模型0
    //: NSString *add_friend = [WatchLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    NSString *add_friend = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].dreamMessageIdent];
    //: FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:@"ic_add_fiend" menuBlock:^{
    FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:[ColorChangeData sharedInstance].dream_genetStr menuBlock:^{
        //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
        SubContactViewController *vc = [[SubContactViewController alloc] initWithNibName:nil bundle:nil];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }];
    }];

    //: NSString *activity = [WatchLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    NSString *activity = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].notiHoppingScramKey];

    //菜单模型1
    //: FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:@"ic_create_chat" menuBlock:^{
    FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:[ColorChangeData sharedInstance].m_toIdent menuBlock:^{
        //: if (_creatTeam.integerValue != 0) {
        if (_creatTeam.integerValue != 0) {
            //: [SVProgressHUD showMessage:[WatchLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD index:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].userContentSendMessage]];
        //: }else{
        }else{
            //: [self creatTeamGroup];
            [self pinGroup];//创建群组
        }
    //: }];
    }];

    //菜单模型1
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[WatchLanguageManager getTextWithKey:@"fragment_contact_new_scan"] menuItemIconName:@"ic_scan" menuBlock:^{
    FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].mEvaluateBarFormat] menuItemIconName:[ColorChangeData sharedInstance].showCloudKey menuBlock:^{
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [self requestAuthorizationForVideo];
        [self contentPath];
    //: }];
    }];

    //: NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    //: return menuModelArr;
    return menuModelArr;
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)contentPath {

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
                        OldSessionViewController *vc = [[OldSessionViewController alloc] init];
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
            OldSessionViewController *vc = [[OldSessionViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[WatchLanguageManager getTextWithKey:@"warm_prompt"] message:[WatchLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].user_regnantText] message:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].m_salmonAddUrl] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].k_pressedMsg] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].main_heavilyTitle] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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


//: -(void)creatTeamGroup{
-(void)pinGroup{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self event:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView canUser];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self ptolemaicSystem:avater secretBy:^(NSString *urlString) {

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
            //: option.postscript = [WatchLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].noti_intellectualKey];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView impendentImage];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self add:teamId with_strong:option.name name:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self tip:option.name clearDetail:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].show_maxUrl] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)ptolemaicSystem:(UIImage *)image secretBy:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(375, 375)];
    //: NSString *fileName = [WatchKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [ButtonHelper withKey:[ColorChangeData sharedInstance].show_accentData];
    //: NSString *filePath = [[WatchKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[ButtonHelper with] stringByAppendingPathComponent:fileName];
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
                //: [wself.view makeToast:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].k_surgeryRegulationIdent]
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
        //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].k_surgeryRegulationIdent]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)tip:(NSString *)groupName clearDetail:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[ColorChangeData sharedInstance].userEvaluateName] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[ColorChangeData sharedInstance].showMarkValue] reload_strong:dict with:NO forward:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)handlerQuickChat
- (void)chatAcross
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self quickChatpresentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self atOf:^(NSArray *uids, NSString *name, UIImage *avater) {
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
            //: option.postscript = [WatchLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].noti_intellectualKey];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView impendentImage];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self add:teamId with_strong:option.name name:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self tip:option.name clearDetail:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[WatchLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].show_maxUrl] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];

        //: }else if(uids.count == 1){
        }else if(uids.count == 1){

            //: NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            BroadcastViewController *vc = [[BroadcastViewController alloc] initWithUnder:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }

        }
    //: ];
    ];
}

/** 显示下拉菜单 */
//: - (void)showDropDownMenu {
- (void)patronymic {
    //: [self.dropdownMenu showMenu];
    [self.dropdownMenu showMenu];
}

//: - (NTESNotificationView *)noticeView
- (KeyProgressView *)noticeView
{
    //: if(!_noticeView){
    if(!_noticeView){
        //: _noticeView = [[NTESNotificationView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        _noticeView = [[KeyProgressView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        //: _noticeView.hidden = YES;
        _noticeView.hidden = YES;
    }
    //: return _noticeView;
    return _noticeView;
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

//: - (ZMONPrivacyPolicyView *)policyView
- (OldView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[OldView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _policyView.hidden = YES;
    }
    //: return _policyView;
    return _policyView;
}
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
        [_QuickChatBtn setImage:[UIImage imageNamed:[ColorChangeData sharedInstance].app_viaContent] forState:UIControlStateNormal];
        //: [_QuickChatBtn addTarget:self action:@selector(handlerQuickChat) forControlEvents:UIControlEventTouchUpInside];
        [_QuickChatBtn addTarget:self action:@selector(chatAcross) forControlEvents:UIControlEventTouchUpInside];
        //: _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_QuickChatBtn setTitle:[WatchLanguageManager getTextWithKey:@"quickchat"] forState:UIControlStateNormal];
        [_QuickChatBtn setTitle:[PaintedNaturalLanguageTo exhibit:[ColorChangeData sharedInstance].m_petitionTitle] forState:UIControlStateNormal];
        //: [_QuickChatBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_QuickChatBtn title:(MKButtonEdgeInsetsStyleLeft) tillVideo:10];
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

//: @end
@end
