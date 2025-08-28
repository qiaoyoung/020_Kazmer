
#import <Foundation/Foundation.h>

@interface FrameData : NSObject

@end

@implementation FrameData

+ (Byte *)FrameDataToCache:(Byte *)data {
    int prompting = data[0];
    int column = data[1];
    for (int i = 0; i < prompting / 2; i++) {
        int begin = column + i;
        int end = column + prompting - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[column + prompting] = 0;
    return data + column;
}

+ (NSString *)StringFromFrameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FrameDataToCache:data]];
}  

//: team_info_set_activity_group_tip
+ (NSString *)show_patrolPath {
    /* static */ NSString *show_patrolPath = nil;
    if (!show_patrolPath) {
        Byte value[] = {32, 11, 222, 235, 174, 85, 244, 131, 227, 235, 131, 112, 105, 116, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 115, 95, 111, 102, 110, 105, 95, 109, 97, 101, 116, 5};
        show_patrolPath = [self StringFromFrameData:value];
    }
    return show_patrolPath;
}

//: queren
+ (NSString *)noti_minGrandpaIdent {
    /* static */ NSString *noti_minGrandpaIdent = nil;
    if (!noti_minGrandpaIdent) {
        Byte value[] = {6, 12, 59, 142, 251, 117, 142, 163, 255, 87, 115, 37, 110, 101, 114, 101, 117, 113, 252};
        noti_minGrandpaIdent = [self StringFromFrameData:value];
    }
    return noti_minGrandpaIdent;
}

//: activity_group_info_invite_permission
+ (NSString *)user_sexyUrl {
    /* static */ NSString *user_sexyUrl = nil;
    if (!user_sexyUrl) {
        Byte value[] = {37, 7, 58, 27, 192, 223, 225, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 101, 116, 105, 118, 110, 105, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 5};
        user_sexyUrl = [self StringFromFrameData:value];
    }
    return user_sexyUrl;
}

//: ic_group_top
+ (NSString *)noti_freedStr {
    /* static */ NSString *noti_freedStr = nil;
    if (!noti_freedStr) {
        Byte value[] = {12, 12, 56, 128, 244, 150, 152, 192, 140, 164, 254, 56, 112, 111, 116, 95, 112, 117, 111, 114, 103, 95, 99, 105, 69};
        noti_freedStr = [self StringFromFrameData:value];
    }
    return noti_freedStr;
}

//: /team/modifyname
+ (NSString *)mainEverythingId {
    /* static */ NSString *mainEverythingId = nil;
    if (!mainEverythingId) {
        Byte value[] = {16, 6, 74, 160, 62, 44, 101, 109, 97, 110, 121, 102, 105, 100, 111, 109, 47, 109, 97, 101, 116, 47, 134};
        mainEverythingId = [self StringFromFrameData:value];
    }
    return mainEverythingId;
}

//: ic_card_black
+ (NSString *)app_towardsData {
    /* static */ NSString *app_towardsData = nil;
    if (!app_towardsData) {
        Byte value[] = {13, 2, 107, 99, 97, 108, 98, 95, 100, 114, 97, 99, 95, 99, 105, 51};
        app_towardsData = [self StringFromFrameData:value];
    }
    return app_towardsData;
}

//: group_info_activity_op_failed
+ (NSString *)kClubMsg {
    /* static */ NSString *kClubMsg = nil;
    if (!kClubMsg) {
        Byte value[] = {29, 5, 63, 198, 142, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 88};
        kClubMsg = [self StringFromFrameData:value];
    }
    return kClubMsg;
}

//: ic_modify
+ (NSString *)notiDoingStr {
    /* static */ NSString *notiDoingStr = nil;
    if (!notiDoingStr) {
        Byte value[] = {9, 10, 244, 40, 150, 78, 255, 189, 64, 146, 121, 102, 105, 100, 111, 109, 95, 99, 105, 188};
        notiDoingStr = [self StringFromFrameData:value];
    }
    return notiDoingStr;
}

//: /team/modifyowner
+ (NSString *)noti_elsewhereValue {
    /* static */ NSString *noti_elsewhereValue = nil;
    if (!noti_elsewhereValue) {
        Byte value[] = {17, 12, 131, 136, 190, 100, 31, 112, 254, 51, 167, 163, 114, 101, 110, 119, 111, 121, 102, 105, 100, 111, 109, 47, 109, 97, 101, 116, 47, 70};
        noti_elsewhereValue = [self StringFromFrameData:value];
    }
    return noti_elsewhereValue;
}

//: ic_group_all
+ (NSString *)dreamEnvelopeMessage {
    /* static */ NSString *dreamEnvelopeMessage = nil;
    if (!dreamEnvelopeMessage) {
        Byte value[] = {12, 4, 2, 126, 108, 108, 97, 95, 112, 117, 111, 114, 103, 95, 99, 105, 225};
        dreamEnvelopeMessage = [self StringFromFrameData:value];
    }
    return dreamEnvelopeMessage;
}

//: group_mute_member_list_activity_title
+ (NSString *)mainPorterStr {
    /* static */ NSString *mainPorterStr = nil;
    if (!mainPorterStr) {
        Byte value[] = {37, 8, 146, 36, 119, 132, 68, 168, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 114, 101, 98, 109, 101, 109, 95, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 133};
        mainPorterStr = [self StringFromFrameData:value];
    }
    return mainPorterStr;
}

//: authentication
+ (NSString *)mainSeizeLanceText {
    /* static */ NSString *mainSeizeLanceText = nil;
    if (!mainSeizeLanceText) {
        Byte value[] = {14, 9, 178, 125, 212, 45, 12, 198, 13, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 92};
        mainSeizeLanceText = [self StringFromFrameData:value];
    }
    return mainSeizeLanceText;
}

//: /team/destory
+ (NSString *)kBorrowMessage {
    /* static */ NSString *kBorrowMessage = nil;
    if (!kBorrowMessage) {
        Byte value[] = {13, 7, 213, 23, 48, 224, 108, 121, 114, 111, 116, 115, 101, 100, 47, 109, 97, 101, 116, 47, 186};
        kBorrowMessage = [self StringFromFrameData:value];
    }
    return kBorrowMessage;
}

//: name
+ (NSString *)show_skiSuggestValue {
    /* static */ NSString *show_skiSuggestValue = nil;
    if (!show_skiSuggestValue) {
        Byte value[] = {4, 12, 193, 221, 170, 199, 116, 3, 51, 17, 223, 234, 101, 109, 97, 110, 219};
        show_skiSuggestValue = [self StringFromFrameData:value];
    }
    return show_skiSuggestValue;
}

//: group_info_activity_exit
+ (NSString *)kShowPactMessage {
    /* static */ NSString *kShowPactMessage = nil;
    if (!kShowPactMessage) {
        Byte value[] = {24, 12, 108, 111, 148, 192, 34, 206, 70, 159, 15, 150, 116, 105, 120, 101, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 75};
        kShowPactMessage = [self StringFromFrameData:value];
    }
    return kShowPactMessage;
}

//: group_info_activity_team_member
+ (NSString *)k_originIdent {
    /* static */ NSString *k_originIdent = nil;
    if (!k_originIdent) {
        Byte value[] = {31, 8, 112, 180, 238, 56, 63, 27, 114, 101, 98, 109, 101, 109, 95, 109, 97, 101, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 180};
        k_originIdent = [self StringFromFrameData:value];
    }
    return k_originIdent;
}

//: ic_card_share
+ (NSString *)app_representativeValue {
    /* static */ NSString *app_representativeValue = nil;
    if (!app_representativeValue) {
        Byte value[] = {13, 2, 101, 114, 97, 104, 115, 95, 100, 114, 97, 99, 95, 99, 105, 8};
        app_representativeValue = [self StringFromFrameData:value];
    }
    return app_representativeValue;
}

//: please_choose
+ (NSString *)mainImageMsg {
    /* static */ NSString *mainImageMsg = nil;
    if (!mainImageMsg) {
        Byte value[] = {13, 6, 149, 214, 15, 34, 101, 115, 111, 111, 104, 99, 95, 101, 115, 97, 101, 108, 112, 62};
        mainImageMsg = [self StringFromFrameData:value];
    }
    return mainImageMsg;
}

//: ic_group_notice
+ (NSString *)user_shouldViewKey {
    /* static */ NSString *user_shouldViewKey = nil;
    if (!user_shouldViewKey) {
        Byte value[] = {15, 4, 147, 25, 101, 99, 105, 116, 111, 110, 95, 112, 117, 111, 114, 103, 95, 99, 105, 98};
        user_shouldViewKey = [self StringFromFrameData:value];
    }
    return user_shouldViewKey;
}

//: ic_group_edit
+ (NSString *)userMinName {
    /* static */ NSString *userMinName = nil;
    if (!userMinName) {
        Byte value[] = {13, 2, 116, 105, 100, 101, 95, 112, 117, 111, 114, 103, 95, 99, 105, 39};
        userMinName = [self StringFromFrameData:value];
    }
    return userMinName;
}

//: activity_group_info_group_modify_permission
+ (NSString *)dreamPorterValue {
    /* static */ NSString *dreamPorterValue = nil;
    if (!dreamPorterValue) {
        Byte value[] = {43, 10, 93, 230, 138, 59, 151, 54, 28, 75, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 121, 102, 105, 100, 111, 109, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 196};
        dreamPorterValue = [self StringFromFrameData:value];
    }
    return dreamPorterValue;
}

//: group_info_activity_jiesan
+ (NSString *)showLagMsg {
    /* static */ NSString *showLagMsg = nil;
    if (!showLagMsg) {
        Byte value[] = {26, 5, 14, 161, 170, 110, 97, 115, 101, 105, 106, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 41};
        showLagMsg = [self StringFromFrameData:value];
    }
    return showLagMsg;
}

//: head_default_group
+ (NSString *)m_economistBarreTitle {
    /* static */ NSString *m_economistBarreTitle = nil;
    if (!m_economistBarreTitle) {
        Byte value[] = {18, 10, 84, 45, 12, 50, 19, 123, 31, 82, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 220};
        m_economistBarreTitle = [self StringFromFrameData:value];
    }
    return m_economistBarreTitle;
}

//: FF483D
+ (NSString *)noti_accentValue {
    /* static */ NSString *noti_accentValue = nil;
    if (!noti_accentValue) {
        Byte value[] = {6, 10, 92, 142, 147, 80, 130, 73, 238, 164, 68, 51, 56, 52, 70, 70, 186};
        noti_accentValue = [self StringFromFrameData:value];
    }
    return noti_accentValue;
}

//: team_info_set_activity_default_group_tip
+ (NSString *)app_arrestImageMessage {
    /* static */ NSString *app_arrestImageMessage = nil;
    if (!app_arrestImageMessage) {
        Byte value[] = {40, 3, 140, 112, 105, 116, 95, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 115, 95, 111, 102, 110, 105, 95, 109, 97, 101, 116, 207};
        app_arrestImageMessage = [self StringFromFrameData:value];
    }
    return app_arrestImageMessage;
}

//: activity_group_info_invite_verify
+ (NSString *)main_scaleStr {
    /* static */ NSString *main_scaleStr = nil;
    if (!main_scaleStr) {
        Byte value[] = {33, 5, 94, 14, 183, 121, 102, 105, 114, 101, 118, 95, 101, 116, 105, 118, 110, 105, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 58};
        main_scaleStr = [self StringFromFrameData:value];
    }
    return main_scaleStr;
}

//: group_info_activity_give_group
+ (NSString *)mTextValue {
    /* static */ NSString *mTextValue = nil;
    if (!mTextValue) {
        Byte value[] = {30, 7, 212, 131, 209, 1, 137, 112, 117, 111, 114, 103, 95, 101, 118, 105, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 74};
        mTextValue = [self StringFromFrameData:value];
    }
    return mTextValue;
}

//: Chat_settop
+ (NSString *)app_lanceUrl {
    /* static */ NSString *app_lanceUrl = nil;
    if (!app_lanceUrl) {
        Byte value[] = {11, 5, 68, 99, 232, 112, 111, 116, 116, 101, 115, 95, 116, 97, 104, 67, 248};
        app_lanceUrl = [self StringFromFrameData:value];
    }
    return app_lanceUrl;
}

//: activity_user_profile_clear_chat
+ (NSString *)mainNameFormat {
    /* static */ NSString *mainNameFormat = nil;
    if (!mainNameFormat) {
        Byte value[] = {32, 9, 114, 223, 189, 211, 20, 106, 18, 116, 97, 104, 99, 95, 114, 97, 101, 108, 99, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 95, 121, 116, 105, 118, 105, 116, 99, 97, 251};
        mainNameFormat = [self StringFromFrameData:value];
    }
    return mainNameFormat;
}

//: activity_group_info_group_mute
+ (NSString *)notiItchName {
    /* static */ NSString *notiItchName = nil;
    if (!notiItchName) {
        Byte value[] = {30, 12, 34, 63, 206, 254, 240, 243, 234, 67, 70, 181, 101, 116, 117, 109, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 34};
        notiItchName = [self StringFromFrameData:value];
    }
    return notiItchName;
}

//: Confirm_dismiss_group_chat
+ (NSString *)appCrushPath {
    /* static */ NSString *appCrushPath = nil;
    if (!appCrushPath) {
        Byte value[] = {26, 10, 129, 36, 203, 107, 81, 64, 233, 175, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 95, 115, 115, 105, 109, 115, 105, 100, 95, 109, 114, 105, 102, 110, 111, 67, 150};
        appCrushPath = [self StringFromFrameData:value];
    }
    return appCrushPath;
}

//: new_owner_id
+ (NSString *)show_extraText {
    /* static */ NSString *show_extraText = nil;
    if (!show_extraText) {
        Byte value[] = {12, 2, 100, 105, 95, 114, 101, 110, 119, 111, 95, 119, 101, 110, 229};
        show_extraText = [self StringFromFrameData:value];
    }
    return show_extraText;
}

//: clear_history
+ (NSString *)dreamValueMessage {
    /* static */ NSString *dreamValueMessage = nil;
    if (!dreamValueMessage) {
        Byte value[] = {13, 5, 168, 13, 133, 121, 114, 111, 116, 115, 105, 104, 95, 114, 97, 101, 108, 99, 74};
        dreamValueMessage = [self StringFromFrameData:value];
    }
    return dreamValueMessage;
}

//: ic_announcement
+ (NSString *)dreamElsewhereFormat {
    /* static */ NSString *dreamElsewhereFormat = nil;
    if (!dreamElsewhereFormat) {
        Byte value[] = {15, 2, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 99, 105, 118};
        dreamElsewhereFormat = [self StringFromFrameData:value];
    }
    return dreamElsewhereFormat;
}

//: jpg
+ (NSString *)show_suggestKey {
    /* static */ NSString *show_suggestKey = nil;
    if (!show_suggestKey) {
        Byte value[] = {3, 9, 51, 62, 33, 14, 56, 166, 87, 103, 112, 106, 213};
        show_suggestKey = [self StringFromFrameData:value];
    }
    return show_suggestKey;
}

//: queren_quit_group
+ (NSString *)main_pipePath {
    /* static */ NSString *main_pipePath = nil;
    if (!main_pipePath) {
        Byte value[] = {17, 7, 107, 228, 93, 64, 156, 112, 117, 111, 114, 103, 95, 116, 105, 117, 113, 95, 110, 101, 114, 101, 117, 113, 21};
        main_pipePath = [self StringFromFrameData:value];
    }
    return main_pipePath;
}

//: Transfer_group_exit
+ (NSString *)kOriginPictureTextKey {
    /* static */ NSString *kOriginPictureTextKey = nil;
    if (!kOriginPictureTextKey) {
        Byte value[] = {19, 9, 168, 52, 132, 140, 174, 52, 52, 116, 105, 120, 101, 95, 112, 117, 111, 114, 103, 95, 114, 101, 102, 115, 110, 97, 114, 84, 249};
        kOriginPictureTextKey = [self StringFromFrameData:value];
    }
    return kOriginPictureTextKey;
}

//: icon_photo
+ (NSString *)kMediaKey {
    /* static */ NSString *kMediaKey = nil;
    if (!kMediaKey) {
        Byte value[] = {10, 9, 92, 172, 114, 176, 63, 209, 56, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 14};
        kMediaKey = [self StringFromFrameData:value];
    }
    return kMediaKey;
}

//: send_group_card
+ (NSString *)k_barId {
    /* static */ NSString *k_barId = nil;
    if (!k_barId) {
        Byte value[] = {15, 10, 168, 161, 169, 241, 45, 117, 131, 209, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 95, 100, 110, 101, 115, 199};
        k_barId = [self StringFromFrameData:value];
    }
    return k_barId;
}

//: ic_group_nick
+ (NSString *)mainValueUrl {
    /* static */ NSString *mainValueUrl = nil;
    if (!mainValueUrl) {
        Byte value[] = {13, 11, 163, 131, 85, 243, 151, 138, 195, 15, 72, 107, 99, 105, 110, 95, 112, 117, 111, 114, 103, 95, 99, 105, 149};
        mainValueUrl = [self StringFromFrameData:value];
    }
    return mainValueUrl;
}

//: ic_group_introduction
+ (NSString *)noti_evolveMsg {
    /* static */ NSString *noti_evolveMsg = nil;
    if (!noti_evolveMsg) {
        Byte value[] = {21, 4, 83, 56, 110, 111, 105, 116, 99, 117, 100, 111, 114, 116, 110, 105, 95, 112, 117, 111, 114, 103, 95, 99, 105, 107};
        noti_evolveMsg = [self StringFromFrameData:value];
    }
    return noti_evolveMsg;
}

//: Transfer_group_ownership
+ (NSString *)show_quietMsg {
    /* static */ NSString *show_quietMsg = nil;
    if (!show_quietMsg) {
        Byte value[] = {24, 11, 255, 222, 89, 28, 122, 84, 248, 49, 73, 112, 105, 104, 115, 114, 101, 110, 119, 111, 95, 112, 117, 111, 114, 103, 95, 114, 101, 102, 115, 110, 97, 114, 84, 158};
        show_quietMsg = [self StringFromFrameData:value];
    }
    return show_quietMsg;
}

//: ic_invitee_verification
+ (NSString *)dream_towardsMsg {
    /* static */ NSString *dream_towardsMsg = nil;
    if (!dream_towardsMsg) {
        Byte value[] = {23, 8, 108, 46, 79, 134, 130, 251, 110, 111, 105, 116, 97, 99, 105, 102, 105, 114, 101, 118, 95, 101, 101, 116, 105, 118, 110, 105, 95, 99, 105, 216};
        dream_towardsMsg = [self StringFromFrameData:value];
    }
    return dream_towardsMsg;
}

//: ic_group_members
+ (NSString *)dreamCloudMatteIdent {
    /* static */ NSString *dreamCloudMatteIdent = nil;
    if (!dreamCloudMatteIdent) {
        Byte value[] = {16, 6, 59, 244, 133, 2, 115, 114, 101, 98, 109, 101, 109, 95, 112, 117, 111, 114, 103, 95, 99, 105, 231};
        dreamCloudMatteIdent = [self StringFromFrameData:value];
    }
    return dreamCloudMatteIdent;
}

//: 2C3042
+ (NSString *)dream_onAddPath {
    /* static */ NSString *dream_onAddPath = nil;
    if (!dream_onAddPath) {
        Byte value[] = {6, 12, 167, 224, 98, 237, 122, 227, 243, 210, 120, 122, 50, 52, 48, 51, 67, 50, 186};
        dream_onAddPath = [self StringFromFrameData:value];
    }
    return dream_onAddPath;
}

//: activity_group_info_group_nick
+ (NSString *)k_clusterStr {
    /* static */ NSString *k_clusterStr = nil;
    if (!k_clusterStr) {
        Byte value[] = {30, 4, 90, 31, 107, 99, 105, 110, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 187};
        k_clusterStr = [self StringFromFrameData:value];
    }
    return k_clusterStr;
}

//: ic_group_transfer
+ (NSString *)kDistinctiveId {
    /* static */ NSString *kDistinctiveId = nil;
    if (!kDistinctiveId) {
        Byte value[] = {17, 12, 67, 112, 6, 178, 1, 118, 220, 188, 48, 117, 114, 101, 102, 115, 110, 97, 114, 116, 95, 112, 117, 111, 114, 103, 95, 99, 105, 211};
        kDistinctiveId = [self StringFromFrameData:value];
    }
    return kDistinctiveId;
}

//: ic_identity_authentication
+ (NSString *)main_economistStr {
    /* static */ NSString *main_economistStr = nil;
    if (!main_economistStr) {
        Byte value[] = {26, 12, 152, 199, 108, 39, 126, 5, 63, 169, 241, 2, 110, 111, 105, 116, 97, 99, 105, 116, 110, 101, 104, 116, 117, 97, 95, 121, 116, 105, 116, 110, 101, 100, 105, 95, 99, 105, 192};
        main_economistStr = [self StringFromFrameData:value];
    }
    return main_economistStr;
}

//: ic_invite
+ (NSString *)app_onMessage {
    /* static */ NSString *app_onMessage = nil;
    if (!app_onMessage) {
        Byte value[] = {9, 10, 93, 66, 233, 193, 182, 175, 44, 20, 101, 116, 105, 118, 110, 105, 95, 99, 105, 44};
        app_onMessage = [self StringFromFrameData:value];
    }
    return app_onMessage;
}

//: group_edit
+ (NSString *)kTransportStr {
    /* static */ NSString *kTransportStr = nil;
    if (!kTransportStr) {
        Byte value[] = {10, 6, 150, 39, 222, 100, 116, 105, 100, 101, 95, 112, 117, 111, 114, 103, 254};
        kTransportStr = [self StringFromFrameData:value];
    }
    return kTransportStr;
}

//: activity_group_info_group_toast
+ (NSString *)noti_valueUrl {
    /* static */ NSString *noti_valueUrl = nil;
    if (!noti_valueUrl) {
        Byte value[] = {31, 10, 90, 31, 223, 46, 173, 144, 201, 112, 116, 115, 97, 111, 116, 95, 112, 117, 111, 114, 103, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 173};
        noti_valueUrl = [self StringFromFrameData:value];
    }
    return noti_valueUrl;
}

//: 图片保存失败，请重试
+ (NSString *)mainFiftyMsg {
    /* static */ NSString *mainFiftyMsg = nil;
    if (!mainFiftyMsg) {
        Byte value[] = {30, 8, 47, 199, 215, 252, 244, 76, 149, 175, 232, 141, 135, 233, 183, 175, 232, 140, 188, 239, 165, 180, 232, 177, 164, 229, 152, 173, 229, 157, 191, 228, 135, 137, 231, 190, 155, 229, 228};
        mainFiftyMsg = [self StringFromFrameData:value];
    }
    return mainFiftyMsg;
}

//: Group_name
+ (NSString *)userMonthFormat {
    /* static */ NSString *userMonthFormat = nil;
    if (!userMonthFormat) {
        Byte value[] = {10, 10, 246, 118, 140, 129, 37, 29, 209, 227, 101, 109, 97, 110, 95, 112, 117, 111, 114, 71, 74};
        userMonthFormat = [self StringFromFrameData:value];
    }
    return userMonthFormat;
}

//: modify_activity_modify_success
+ (NSString *)noti_cornerHeavilyMsg {
    /* static */ NSString *noti_cornerHeavilyMsg = nil;
    if (!noti_cornerHeavilyMsg) {
        Byte value[] = {30, 5, 206, 11, 125, 115, 115, 101, 99, 99, 117, 115, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 40};
        noti_cornerHeavilyMsg = [self StringFromFrameData:value];
    }
    return noti_cornerHeavilyMsg;
}

//: message_info_activity_msg_notice
+ (NSString *)noti_distinctiveName {
    /* static */ NSString *noti_distinctiveName = nil;
    if (!noti_distinctiveName) {
        Byte value[] = {32, 2, 101, 99, 105, 116, 111, 110, 95, 103, 115, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 235};
        noti_distinctiveName = [self StringFromFrameData:value];
    }
    return noti_distinctiveName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueToViewController.m
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchAdvancedTeamCardViewController.h"
#import "ValueToViewController.h"
//: #import "WatchContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "CCCTeamMemberListViewController.h"
#import "ReplacementViewController.h"
//: #import "WatchTeamMuteMemberListViewController.h"
#import "PacketViewController.h"
//: #import "WatchTeamAnnouncementListViewController.h"
#import "ParvenuValueImageViewController.h"
//: #import "WatchTeamCardRowItem.h"
#import "ShowKey.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "WatchTeamCardHeaderView.h"
#import "ModelBubbleView.h"
//: #import "WatchTeamListDataManager.h"
#import "MetadataManager.h"
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "WatchTeamHelper.h"
#import "MakeBubble.h"
//: #import "WatchTeamIntroduceViewController.h"
#import "BubbleTableViewController.h"
//: #import "ZMONSetGroupNameView.h"
#import "NameInfoView.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "ButtonNameView.h"
//: #import "ZMONAlartView.h"
#import "EdgeView.h"
//: #import "WatchGroupAvatarViewController.h"
#import "OptionViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "SizeViewController.h"
//: #import "TeamMemberNormalViewController.h"
#import "PowerhouseMaxFrameViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "BackgroundCover.h"
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "EmptyViewController.h"
//: #import "NSSetAvater.h"
#import "SetView.h"

//: @interface WatchAdvancedTeamCardViewController ()<WatchTeamMemberListCellActionDelegate,
@interface ValueToViewController ()<OldQuery,
//: NIMContactSelectDelegate,
DelegateZone,
//: NIMTeamSwitchProtocol,
FollowProtocol,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: WatchTeamCardHeaderViewDelegate,
ReplacementSub,
//: NIMTeamAnnouncementListVCDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
TextVcdelegate,ModeDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,strong) WatchTeamCardHeaderView *headerView;
@property (nonatomic,strong) ModelBubbleView *headerView;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic, strong) UILabel *introduce;
@property (nonatomic, strong) UILabel *introduce;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;
//: @property (nonatomic, strong) ZMONSetGroupNameView *groupnameView;
@property (nonatomic, strong) NameInfoView *groupnameView;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) ButtonNameView *groupNickNameView;
//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) EdgeView *groupAlartView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) SetView *aleartView;

//: @end
@end

//: @implementation WatchAdvancedTeamCardViewController
@implementation ValueToViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)reloadData {
- (void)metadata {
    //: [super reloadData];
    [super metadata];
}

//: - (void)didBuildTeamSwitchCell:(WatchTeamSwitchTableViewCell *)cell {
- (void)format:(TableViewCell *)cell {
    //: cell.switchDelegate = self;
    cell.switchDelegate = self;
}

//: - (void)didBuildTeamMemberCell:(WatchTeamMemberListCell *)cell {
- (void)teamRed:(SizeViewCell *)cell {
    //: cell.delegate = self;
    cell.delegate = self;
    //: cell.disableInvite = ![WatchKitUtil canInviteMemberToTeam:self.teamListManager.myTeamInfo];
    cell.disableInvite = ![ObjectUtil showShould:self.teamListManager.myTeamInfo];
    //: NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    //: for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.members.count) ? (cell.maxShowMemberCount) : (self.teamListManager.members.count)); i++) {
    for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.doingArray.count) ? (cell.maxShowMemberCount) : (self.teamListManager.doingArray.count)); i++) {
        //: WatchTeamCardMemberItem *obj = self.teamListManager.members[i];
        CoatButtonBar *obj = self.teamListManager.doingArray[i];
        //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = self.teamListManager.session;
        option.session = self.teamListManager.session;
        //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:obj.userId option:option];
        TingMessage *info = [[ButtonKit sheerOption] past:obj.userId skinColour_strong:option];

        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[kTeamMember] = obj;
        dic[show_messageIdent] = obj;
        //: dic[kTeamMemberInfo] = info;
        dic[noti_collectionId] = info;
        //: [memberInfos addObject:dic];
        [memberInfos addObject:dic];

    }
    //: cell.infos = memberInfos;
    cell.infos = memberInfos;
}

//: #pragma mark - Data
#pragma mark - Data
//: - (NSArray<NSArray<WatchTeamCardRowItem *> *> *)buildBodyData{
- (NSArray<NSArray<ShowKey *> *> *)nearLock{
    //: NSArray *ret = nil;
    NSArray *ret = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: BOOL canEdit = [WatchKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    BOOL canEdit = [ObjectUtil window:self.teamListManager.myTeamInfo];
    //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    //: BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
    BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;

    //: WatchTeamCardRowItem *teamShareCart = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamShareCart = [[ShowKey alloc] init];
    //: teamShareCart.title = [WatchLanguageManager getTextWithKey:@"send_group_card"];
    teamShareCart.title = [PaintedNaturalLanguageTo exhibit:[FrameData k_barId]];
    //: teamShareCart.subTitle = self.teamListManager.team.teamName;
    teamShareCart.subTitle = self.teamListManager.team.teamName;
    //: teamShareCart.action = @selector(sendGroupCart);
    teamShareCart.action = @selector(characteristicRootOfASquareMatrix);
    //: teamShareCart.rowHeight = 50.f;
    teamShareCart.rowHeight = 50.f;
    //: teamShareCart.type = TeamCardRowItemTypeCommon;
    teamShareCart.type = TeamCardRowItemTypeCommon;
//    teamShareCart.actionDisabled = !canEdit;
    //: teamShareCart.img = [UIImage imageNamed:@"ic_card_share"];
    teamShareCart.img = [UIImage imageNamed:[FrameData app_representativeValue]];

    //: WatchTeamCardRowItem *teamMembers = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamMembers = [[ShowKey alloc] init];
    //: teamMembers.title = [WatchLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    teamMembers.title = [PaintedNaturalLanguageTo exhibit:[FrameData k_originIdent]];
    //: teamMembers.subTitle = self.teamListManager.team.teamName;
    teamMembers.subTitle = self.teamListManager.team.teamName;
    //: teamMembers.action = @selector(enterMemberCard);
    teamMembers.action = @selector(netShow);
    //: teamMembers.rowHeight = 50.f;
    teamMembers.rowHeight = 50.f;
    //: teamMembers.type = TeamCardRowItemTypeCommon;
    teamMembers.type = TeamCardRowItemTypeCommon;
    //: teamMembers.actionDisabled = !self.canMemberInfo;
    teamMembers.actionDisabled = !self.canMemberInfo;
    //: teamMembers.img = [UIImage imageNamed:@"ic_group_members"];
    teamMembers.img = [UIImage imageNamed:[FrameData dreamCloudMatteIdent]];

    //: WatchTeamCardRowItem *teamAnnoucement = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamAnnoucement = [[ShowKey alloc] init];
    //: teamAnnoucement.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    teamAnnoucement.title = [PaintedNaturalLanguageTo exhibit:[FrameData noti_valueUrl]];
    //: teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    //: teamAnnoucement.action = @selector(updateTeamAnnouncement);
    teamAnnoucement.action = @selector(notAnnouncement);
    //: teamAnnoucement.rowHeight = 50.f;
    teamAnnoucement.rowHeight = 50.f;
    //: teamAnnoucement.type = TeamCardRowItemTypeCommon;
    teamAnnoucement.type = TeamCardRowItemTypeCommon;
//    teamAnnoucement.actionDisabled = !canEdit;
    //: teamAnnoucement.img = [UIImage imageNamed:@"ic_announcement"];
    teamAnnoucement.img = [UIImage imageNamed:[FrameData dreamElsewhereFormat]];

    //: WatchTeamCardRowItem *teamName = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamName = [[ShowKey alloc] init];
    //: teamName.title = [WatchLanguageManager getTextWithKey:@"Group_name"];
    teamName.title = [PaintedNaturalLanguageTo exhibit:[FrameData userMonthFormat]];
    //: teamName.subTitle = self.teamListManager.team.teamName;
    teamName.subTitle = self.teamListManager.team.teamName;
    //: teamName.action = @selector(updateTeamName);
    teamName.action = @selector(containerEnableColor);
    //: teamName.rowHeight = 50.f;
    teamName.rowHeight = 50.f;
    //: teamName.type = TeamCardRowItemTypeCommon;
    teamName.type = TeamCardRowItemTypeCommon;
    //: teamName.actionDisabled = !canEdit;
    teamName.actionDisabled = !canEdit;
    //: teamName.img = [UIImage imageNamed:@"ic_group_edit"];
    teamName.img = [UIImage imageNamed:[FrameData userMinName]];


    //: WatchTeamCardRowItem *teamNick = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamNick = [[ShowKey alloc] init];
    //: teamNick.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_group_nick"];
    teamNick.title = [PaintedNaturalLanguageTo exhibit:[FrameData k_clusterStr]];
    //: teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    //: teamNick.action = @selector(updateTeamNick);
    teamNick.action = @selector(sendBorder);
    //: teamNick.rowHeight = 50.f;
    teamNick.rowHeight = 50.f;
    //: teamNick.type = TeamCardRowItemTypeCommon;
    teamNick.type = TeamCardRowItemTypeCommon;
    //: teamNick.img = [UIImage imageNamed:@"ic_group_nick"];
    teamNick.img = [UIImage imageNamed:[FrameData mainValueUrl]];

    //: WatchTeamCardRowItem *teamIntro = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamIntro = [[ShowKey alloc] init];
    //: teamIntro.title = [WatchLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
    teamIntro.title = [PaintedNaturalLanguageTo exhibit:[FrameData show_patrolPath]];
    //: teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [WatchLanguageManager getTextWithKey:@"team_info_set_activity_default_group_tip"] : @"");
    teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [PaintedNaturalLanguageTo exhibit:[FrameData app_arrestImageMessage]] : @"");
    //: teamIntro.action = @selector(updateTeamIntro);
    teamIntro.action = @selector(teamCover);
    //: teamIntro.rowHeight = 50.f;
    teamIntro.rowHeight = 50.f;
    //: teamIntro.type = TeamCardRowItemTypeCommon;
    teamIntro.type = TeamCardRowItemTypeCommon;
    //: teamIntro.actionDisabled = !canEdit;
    teamIntro.actionDisabled = !canEdit;
    //: teamIntro.img = [UIImage imageNamed:@"ic_group_introduction"];
    teamIntro.img = [UIImage imageNamed:[FrameData noti_evolveMsg]];

//    ShowKey *teamAnnouncement = [[ShowKey alloc] init];
//    teamAnnouncement.title = @"群公告".nim_localized;
//    teamAnnouncement.subTitle = @"点击查看群公告".nim_localized;
//    teamAnnouncement.action = @selector(updateTeamAnnouncement);
//    teamAnnouncement.rowHeight = 50.f;
//    teamAnnouncement.type   = TeamCardRowItemTypeCommon;
//    teamAnnouncement.img = [UIImage imageNamed:@"ic_announcement"];

    //: BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    //: WatchTeamCardRowItem *teamMute = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamMute = [[ShowKey alloc] init];
    //: teamMute.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_group_mute"];
    teamMute.title = [PaintedNaturalLanguageTo exhibit:[FrameData notiItchName]];
    //: teamMute.switchOn = inAllMuteMode;
    teamMute.switchOn = inAllMuteMode;
//    teamMute.subTitle = [MakeBubble teamMuteText:inAllMuteMode];
    //: teamMute.rowHeight = 50.f;
    teamMute.rowHeight = 50.f;
    //: teamMute.type = TeamCardRowItemTypeSwitch;
    teamMute.type = TeamCardRowItemTypeSwitch;
    //: teamMute.optionItems = [WatchTeamHelper teamMuteItemsWithSeleced:inAllMuteMode];
    teamMute.optionItems = [MakeBubble max:inAllMuteMode];
    //: teamMute.actionDisabled = !canEdit;
    teamMute.actionDisabled = !canEdit;
    //: teamMute.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    teamMute.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamMute:[item.value integerValue]];
        [weakSelf bottom:[item.value integerValue]];
    //: };
    };
    //: teamMute.identify = NIMTeamCardSwithCellTypeMute;
    teamMute.identify = NIMTeamCardSwithCellTypeMute;
    //: teamMute.img = [UIImage imageNamed:@"ic_group_all"];
    teamMute.img = [UIImage imageNamed:[FrameData dreamEnvelopeMessage]];

    //: WatchTeamCardRowItem *teamMuteList = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamMuteList = [[ShowKey alloc] init];
    //: teamMuteList.title = [WatchLanguageManager getTextWithKey:@"group_mute_member_list_activity_title"];
    teamMuteList.title = [PaintedNaturalLanguageTo exhibit:[FrameData mainPorterStr]];
    //: teamMuteList.rowHeight = 50.f;
    teamMuteList.rowHeight = 50.f;
    //: teamMuteList.type = TeamCardRowItemTypeCommon;
    teamMuteList.type = TeamCardRowItemTypeCommon;
    //: teamMuteList.action = @selector(enterMuteList);
    teamMuteList.action = @selector(userEdge);
    //: teamMuteList.img = [UIImage imageNamed:@"ic_card_black"];
    teamMuteList.img = [UIImage imageNamed:[FrameData app_towardsData]];

    //: WatchTeamCardRowItem *teamNotify = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamNotify = [[ShowKey alloc] init];
    //: teamNotify.title = [WatchLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
    teamNotify.title = [PaintedNaturalLanguageTo exhibit:[FrameData noti_distinctiveName]];//@"消息提醒".nim_localized;
    //: teamNotify.subTitle = [WatchTeamHelper notifyStateText:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.subTitle = [MakeBubble findFrame:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.rowHeight = 50.f;
    teamNotify.rowHeight = 50.f;
    //: teamNotify.type = TeamCardRowItemTypeSelected;
    teamNotify.type = TeamCardRowItemTypeSelected;
    //: teamNotify.optionItems = [WatchTeamHelper notifyStateItemsWithSeleced:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.optionItems = [MakeBubble tingViewSeleced:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    teamNotify.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didUpdateNotifiyState:[item.value integerValue]];
        [weakSelf can:[item.value integerValue]];
    //: };
    };
    //: teamNotify.img = [UIImage imageNamed:@"ic_group_notice"];
    teamNotify.img = [UIImage imageNamed:[FrameData user_shouldViewKey]];


    //: WatchTeamCardRowItem *itemAuth = [[WatchTeamCardRowItem alloc] init];
    ShowKey *itemAuth = [[ShowKey alloc] init];
    //: itemAuth.title = [WatchLanguageManager getTextWithKey:@"authentication"];
    itemAuth.title = [PaintedNaturalLanguageTo exhibit:[FrameData mainSeizeLanceText]];
    //: itemAuth.subTitle = [WatchTeamHelper jonModeText:self.teamListManager.team.joinMode];
    itemAuth.subTitle = [MakeBubble title:self.teamListManager.team.joinMode];
    //: itemAuth.actionDisabled = !canEdit;
    itemAuth.actionDisabled = !canEdit;
    //: itemAuth.rowHeight = 50.f;
    itemAuth.rowHeight = 50.f;
    //: itemAuth.type = TeamCardRowItemTypeSelected;
    itemAuth.type = TeamCardRowItemTypeSelected;
    //: itemAuth.optionItems = [WatchTeamHelper joinModeItemsWithSeleced:self.teamListManager.team.joinMode];
    itemAuth.optionItems = [MakeBubble bottom:self.teamListManager.team.joinMode];
    //: itemAuth.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    itemAuth.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didupdateTeamJoinMode:[item.value integerValue]];
        [weakSelf uniteSend:[item.value integerValue]];
    //: };
    };
    //: itemAuth.img = [UIImage imageNamed:@"ic_identity_authentication"];
    itemAuth.img = [UIImage imageNamed:[FrameData main_economistStr]];

    //: WatchTeamCardRowItem *itemInvite = [[WatchTeamCardRowItem alloc] init];
    ShowKey *itemInvite = [[ShowKey alloc] init];
    //: itemInvite.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_invite_permission"];
    itemInvite.title = [PaintedNaturalLanguageTo exhibit:[FrameData user_sexyUrl]];
    //: itemInvite.subTitle = [WatchTeamHelper InviteModeText:self.teamListManager.team.inviteMode];
    itemInvite.subTitle = [MakeBubble with:self.teamListManager.team.inviteMode];
    //: itemInvite.actionDisabled = !canEdit;
    itemInvite.actionDisabled = !canEdit;
    //: itemInvite.rowHeight = 50.f;
    itemInvite.rowHeight = 50.f;
    //: itemInvite.type = TeamCardRowItemTypeSelected;
    itemInvite.type = TeamCardRowItemTypeSelected;
    //: itemInvite.optionItems = [WatchTeamHelper InviteModeItemsWithSeleced:self.teamListManager.team.inviteMode];
    itemInvite.optionItems = [MakeBubble pastSeleced:self.teamListManager.team.inviteMode];
    //: itemInvite.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    itemInvite.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInviteMode:[item.value integerValue]];
        [weakSelf paletteMode:[item.value integerValue]];
    //: };
    };
    //: itemInvite.img = [UIImage imageNamed:@"ic_invite"];
    itemInvite.img = [UIImage imageNamed:[FrameData app_onMessage]];

    //: WatchTeamCardRowItem *itemUpdateInfo = [[WatchTeamCardRowItem alloc] init];
    ShowKey *itemUpdateInfo = [[ShowKey alloc] init];
    //: itemUpdateInfo.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_group_modify_permission"];
    itemUpdateInfo.title = [PaintedNaturalLanguageTo exhibit:[FrameData dreamPorterValue]];
    //: itemUpdateInfo.subTitle = [WatchTeamHelper updateInfoModeText:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.subTitle = [MakeBubble message:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.actionDisabled = !canEdit;
    itemUpdateInfo.actionDisabled = !canEdit;
    //: itemUpdateInfo.rowHeight = 50.f;
    itemUpdateInfo.rowHeight = 50.f;
    //: itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    //: itemUpdateInfo.optionItems = [WatchTeamHelper updateInfoModeItemsWithSeleced:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.optionItems = [MakeBubble signalSeleced:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    itemUpdateInfo.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInfoMode:[item.value integerValue]];
        [weakSelf cell:[item.value integerValue]];
    //: };
    };
    //: itemUpdateInfo.img = [UIImage imageNamed:@"ic_modify"];
    itemUpdateInfo.img = [UIImage imageNamed:[FrameData notiDoingStr]];

    //: WatchTeamCardRowItem *itemBeInvite = [[WatchTeamCardRowItem alloc] init];
    ShowKey *itemBeInvite = [[ShowKey alloc] init];
    //: itemBeInvite.title = [WatchLanguageManager getTextWithKey:@"activity_group_info_invite_verify"];
    itemBeInvite.title = [PaintedNaturalLanguageTo exhibit:[FrameData main_scaleStr]];
    //: itemBeInvite.subTitle = [WatchTeamHelper beInviteModeText:self.teamListManager.team.beInviteMode];
    itemBeInvite.subTitle = [MakeBubble property:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.actionDisabled = !canEdit;
    itemBeInvite.actionDisabled = !canEdit;
    //: itemBeInvite.rowHeight = 50.f;
    itemBeInvite.rowHeight = 50.f;
    //: itemBeInvite.type = TeamCardRowItemTypeSelected;
    itemBeInvite.type = TeamCardRowItemTypeSelected;
    //: itemBeInvite.optionItems = [WatchTeamHelper beInviteModeItemsWithSeleced:self.teamListManager.team.beInviteMode];
    itemBeInvite.optionItems = [MakeBubble name:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.selectedBlock = ^(id<WatchKitSelectCardData> item) {
    itemBeInvite.selectedBlock = ^(id<WatchKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamBeInviteMode:[item.value integerValue]];
        [weakSelf modifyWithoutMode:[item.value integerValue]];
    //: };
    };
    //: itemBeInvite.img = [UIImage imageNamed:@"ic_invitee_verification"];
    itemBeInvite.img = [UIImage imageNamed:[FrameData dream_towardsMsg]];

    //: WatchTeamCardRowItem *itemTop = [[WatchTeamCardRowItem alloc] init];
    ShowKey *itemTop = [[ShowKey alloc] init];
    //: itemTop.title = [WatchLanguageManager getTextWithKey:@"Chat_settop"];
    itemTop.title = [PaintedNaturalLanguageTo exhibit:[FrameData app_lanceUrl]];
    //: itemTop.switchOn = self.option.isTop;
    itemTop.switchOn = self.option.isTop;
    //: itemTop.rowHeight = 50.f;
    itemTop.rowHeight = 50.f;
    //: itemTop.type = TeamCardRowItemTypeSwitch;
    itemTop.type = TeamCardRowItemTypeSwitch;
    //: itemTop.identify = NIMTeamCardSwithCellTypeTop;
    itemTop.identify = NIMTeamCardSwithCellTypeTop;
    //: itemTop.img = [UIImage imageNamed:@"ic_group_top"];
    itemTop.img = [UIImage imageNamed:[FrameData noti_freedStr]];

//        ShowKey *itemQuit = [[ShowKey alloc] init];
//        itemQuit.title = @"退出高级群".nim_localized;
//        itemQuit.action = @selector(quitTeam);
//        itemQuit.rowHeight = 50.f;
//        itemQuit.type   = TeamCardRowItemTypeRedButton;
//    itemQuit.img = [UIImage imageNamed:@"ic_announcement"];

        //: WatchTeamCardRowItem *itemDismiss = [[WatchTeamCardRowItem alloc] init];
        ShowKey *itemDismiss = [[ShowKey alloc] init];
        //: itemDismiss.title = [WatchLanguageManager getTextWithKey:@"group_info_activity_jiesan"];
        itemDismiss.title = [PaintedNaturalLanguageTo exhibit:[FrameData showLagMsg]];
        //: itemDismiss.action = @selector(dismissTeam);
        itemDismiss.action = @selector(pastTitle);
        //: itemDismiss.rowHeight = 50.f;
        itemDismiss.rowHeight = 50.f;
        //: itemDismiss.type = TeamCardRowItemTypeRedButton;
        itemDismiss.type = TeamCardRowItemTypeRedButton;
    //: itemDismiss.img = [UIImage imageNamed:@"ic_announcement"];
    itemDismiss.img = [UIImage imageNamed:[FrameData dreamElsewhereFormat]];

    //: WatchTeamCardRowItem *teamChange = [[WatchTeamCardRowItem alloc] init];
    ShowKey *teamChange = [[ShowKey alloc] init];
    //: teamChange.title = [WatchLanguageManager getTextWithKey:@"Transfer_group_ownership"];
    teamChange.title = [PaintedNaturalLanguageTo exhibit:[FrameData show_quietMsg]];
    //: teamChange.rowHeight = 50.f;
    teamChange.rowHeight = 50.f;
    //: teamChange.type = TeamCardRowItemTypeCommon;
    teamChange.type = TeamCardRowItemTypeCommon;
    //: teamChange.action = @selector(onMore);
    teamChange.action = @selector(pastApp);
    //: teamChange.img = [UIImage imageNamed:@"ic_group_transfer"];
    teamChange.img = [UIImage imageNamed:[FrameData kDistinctiveId]];


    //: if (isOwner) {
    if (isOwner) {
        //: ret = @[
        ret = @[
                  //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  //: @[teamMuteList,teamMute,itemTop],
                  @[teamMuteList,teamMute,itemTop],
                 //: ];
                 ];
    //: } else if (isManager){
    } else if (isManager){
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            //: @[teamMuteList,teamMute,itemTop],
            @[teamMuteList,teamMute,itemTop],
              //: ];
              ];
    //: } else {
    } else {
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify],
            @[teamNotify],
            //: @[itemTop],
            @[itemTop],
               //: ];
               ];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Refresh
#pragma mark - Refresh
//: - (void)reloadTableViewData {
- (void)item {
    //: self.datas = [self buildBodyData];
    self.datas = [self nearLock];
    //: self.tableView.tableHeaderView = self.userView;
    self.tableView.tableHeaderView = self.userView;
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)sendGroupCart
- (void)characteristicRootOfASquareMatrix
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    KeyAttachment *attachment = [[KeyAttachment alloc] init];
    //: attachment.title = self.teamListManager.team.teamName;
    attachment.title = self.teamListManager.team.teamName;
    //: attachment.type = @"1";
    attachment.type = @"1";
    //: attachment.personCardId = self.teamListManager.team.teamId;
    attachment.personCardId = self.teamListManager.team.teamId;
    //: attachment.content = @"";
    attachment.content = @"";
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [BackgroundCover white:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    EmptyViewController *vc = [[EmptyViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onMore{
- (void)pastApp{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *action0 = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"group_info_activity_give_group"]//@"转让群".nim_localized
    UIAlertAction *action0 = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[FrameData mTextValue]]//@"转让群".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:NO];
        [weakSelf lightWith:NO];
    //: }];
    }];

    //: UIAlertAction *action1 = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"Transfer_group_exit"] //@"转让群并退出".nim_localized
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[FrameData kOriginPictureTextKey]] //@"转让群并退出".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:YES];
        [weakSelf lightWith:YES];
    //: }];
    }];

    //: UIAlertController *alert = [self makeAlertSheetWithTitle:[WatchLanguageManager getTextWithKey:@"please_choose"]//@"请操作".nim_localized
    UIAlertController *alert = [self headerDoSheetAlertStreetwisePath:[PaintedNaturalLanguageTo exhibit:[FrameData mainImageMsg]]//@"请操作".nim_localized
                                                     //: actions:@[action0, action1]];
                                                     systemComplete:@[action0, action1]];
    //: [self showAlert:alert];
    [self interval:alert];
}

//- (void)onTouchAvatar {
//    if(![ObjectUtil canEditTeamInfo:self.teamListManager.myTeamInfo])
//        return ;
//    __weak typeof(self) weakSelf = self;
//    UIAlertAction *action0 = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypeCamera];
//    }];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypePhotoLibrary];
//    }];
//    
//    UIAlertController *alert = [self makeAlertSheetWithTitle:LangKey(@"set_group_avater")
//                                                     actions:@[action0, action1]];
//    [self showAlert:alert];
//}

//: - (void)updateTeamName{
- (void)containerEnableColor{

    //: [self.view addSubview:self.groupnameView];
    [self.view addSubview:self.groupnameView];
    //: [self.groupnameView reloadWithNickname:self.teamListManager.team.teamName];
    [self.groupnameView custom:self.teamListManager.team.teamName];
    //: [self.groupnameView animationShow];
    [self.groupnameView forwardDown];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupnameView.speiceBackBlock = ^(NSString *groupName){
        self.groupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamName:groupName];
            [self show:groupName];

            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: dict[@"id"] = self.teamListManager.team.teamId;
            dict[@"id"] = self.teamListManager.team.teamId;
            //: dict[@"name"] = emptyString(groupName);
            dict[[FrameData show_skiSuggestValue]] = twineInside(groupName);
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyname"] params:dict isShow:NO success:^(id responseObject) {
            [CoverPageMode bubbleFailed:[NSString stringWithFormat:[FrameData mainEverythingId]] reload_strong:dict with:NO forward:^(id responseObject) {
                //: [self reloadData];
                [self metadata];
                //: self.accountNickname.text = groupName;
                self.accountNickname.text = groupName;
            //: } failed:^(id responseObject, NSError *error) {
            } title:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupnameView animationClose];
            [self.groupnameView impendentImage];
        //: };
        };

}

//: - (void)updateTeamNick
- (void)sendBorder
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView userSession];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamNick:Name];
            [self enableNick:Name];
            //: [self.groupNickNameView animationClose];
            [self.groupNickNameView impendentImage];
        //: };
        };
}

//: - (void)updateTeamIntro
- (void)teamCover
{
    //: WatchTeamIntroduceViewController *vc = [[WatchTeamIntroduceViewController alloc] init];
    BubbleTableViewController *vc = [[BubbleTableViewController alloc] init];
    //: vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    //: vc.canEdit = [WatchKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    vc.canEdit = [ObjectUtil window:self.teamListManager.myTeamInfo];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: vc.speiceBackBlock = ^(NSString *Introduce){
    vc.speiceBackBlock = ^(NSString *Introduce){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self didUpdateTeamIntro:Introduce];
        [self towardScaleTable:Introduce];

        //: _introduce.text = Introduce;
        _introduce.text = Introduce;
    //: };
    };
}

//: - (void)updateTeamAnnouncement{
- (void)notAnnouncement{
    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
    TitleOption *option = [[TitleOption alloc] init];
    //: option.canCreateAnnouncement = [WatchKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    option.canCreateAnnouncement = [ObjectUtil window:self.teamListManager.myTeamInfo];
    //: option.announcement = self.teamListManager.team.announcement;
    option.announcement = self.teamListManager.team.announcement;
    //: option.nick = self.teamListManager.myTeamInfo.nickname;
    option.nick = self.teamListManager.myTeamInfo.nickname;
    //: option.team = self.teamListManager.team;
    option.team = self.teamListManager.team;

    //: WatchTeamAnnouncementListViewController *vc = [[WatchTeamAnnouncementListViewController alloc] initWithOption:option];
    ParvenuValueImageViewController *vc = [[ParvenuValueImageViewController alloc] initWith:option];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)quitTeam {
- (void)textTeam {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[WatchLanguageManager getTextWithKey:@"queren_quit_group"] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[PaintedNaturalLanguageTo exhibit:[FrameData main_pipePath]] preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[WatchLanguageManager getTextWithKey:@"queren"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[FrameData noti_minGrandpaIdent]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didQuitTeam];
        [weakSelf cellCover];
    //: }];
    }];
    //: [alert addAction:sure];
    [alert addAction:sure];
    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self withRecent]];
    //: [self showAlert:alert];
    [self interval:alert];
}

//: - (void)dismissTeam {
- (void)pastTitle {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[WatchLanguageManager getTextWithKey:@"Confirm_dismiss_group_chat"]];
    [self.groupAlartView daySize:[PaintedNaturalLanguageTo exhibit:[FrameData appCrushPath]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView reply];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didDismissTeam];
            [self backgroundSize];
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/destory"] params:@{@"id":self.teamListManager.team.teamId} isShow:NO success:^(id responseObject) {
            [CoverPageMode bubbleFailed:[NSString stringWithFormat:[FrameData kBorrowMessage]] reload_strong:@{@"id":self.teamListManager.team.teamId} with:NO forward:^(id responseObject) {

            //: } failed:^(id responseObject, NSError *error) {
            } title:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView impendentImage];
        //: };
        };
}

//: - (void)enterMemberCard{
- (void)netShow{

    //: if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: CCCTeamMemberListViewController *vc = [[CCCTeamMemberListViewController alloc] initWithDataSource:self.teamListManager];
        ReplacementViewController *vc = [[ReplacementViewController alloc] initWithRecord:self.teamListManager];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }else{
    }else{
        //: TeamMemberNormalViewController *vc = [[TeamMemberNormalViewController alloc]init];
        PowerhouseMaxFrameViewController *vc = [[PowerhouseMaxFrameViewController alloc]init];
        //: vc.teamListManager = self.teamListManager;
        vc.teamListManager = self.teamListManager;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)enterMuteList
- (void)userEdge
{
    //: WatchTeamMuteMemberListViewController *vc = [[WatchTeamMuteMemberListViewController alloc] init];
    PacketViewController *vc = [[PacketViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - NIMTeamSwitchProtocol
#pragma mark - FollowProtocol
//: - (void)cell:(WatchTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on{
- (void)find:(TableViewCell *)cell colorWhen:(BOOL)on{
    //: if (cell.identify == NIMTeamCardSwithCellTypeTop) {
    if (cell.identify == NIMTeamCardSwithCellTypeTop) {
        //: if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetTop:)]) {
        if ([self.delegate respondsToSelector:@selector(regionRefresh:)]) {
            //: [self.delegate NIMTeamCardVCDidSetTop:on];
            [self.delegate regionRefresh:on];
        }
    }
    //: if (cell.identify == NIMTeamCardSwithCellTypeMute) {
    if (cell.identify == NIMTeamCardSwithCellTypeMute) {
//        if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetMute:)]) {
//            [self.delegate NIMTeamCardVCDidSetMute:on];
//        }
//        [self didUpdateTeamMute:on];
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:on
        [[NIMSDK sharedSDK].teamManager updateMuteState:on
                                                 //: inTeam:self.teamListManager.team.teamId
                                                 inTeam:self.teamListManager.team.teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [WatchLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [PaintedNaturalLanguageTo exhibit:[FrameData noti_cornerHeavilyMsg]];
            //: }else{
            }else{
                //: msg = [WatchLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [PaintedNaturalLanguageTo exhibit:[FrameData kClubMsg]];
            }
            //: [self showToastMsg:msg];
            [self messagePull:msg];
        //: }];
        }];
    }
}

//: #pragma mark - NIMTeamAnnouncementListVCDelegate
#pragma mark - TextVcdelegate
//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)session:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion {
                   topVoice:(void (^)(NSError *error))completion {
    //: [self.teamListManager updateTeamAnnouncement:content
    [self.teamListManager flush:content
                             //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                             upwardlyRecord:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: if (completion) {
        if (completion) {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: #pragma mark - WatchTeamMemberListCellActionDelegate
#pragma mark - OldQuery
//: - (void)didSelectAddOpeartor{
- (void)successStop{
    //: NSMutableArray *users = [self.teamListManager memberIds];
    NSMutableArray *users = [self.teamListManager memberIds];
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: [users addObject:currentUserID];
    [users addObject:currentUserID];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    OldPin *config = [[OldPin alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: WatchContactSelectViewController *vc = [[WatchContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc center];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)messaged:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self bar:selectedContacts invite:nil];
}

//: #pragma mark - Function
#pragma mark - Function
//: - (void)didOntransferWithLeave:(BOOL)isLeave {
- (void)lightWith:(BOOL)isLeave {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
    __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
        //: NSString *newOwnerId = memeber.firstObject;
        NSString *newOwnerId = memeber.firstObject;
        //: [wself didOntransferToUser:newOwnerId leave:isLeave];
        [wself show:newOwnerId analogDigitalConverterImage:isLeave];
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"id"] = self.teamListManager.team.teamId;
        dict[@"id"] = self.teamListManager.team.teamId;
        //: dict[@"new_owner_id"] = newOwnerId;
        dict[[FrameData show_extraText]] = newOwnerId;
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyowner"] params:dict isShow:NO success:^(id responseObject) {
        [CoverPageMode bubbleFailed:[NSString stringWithFormat:[FrameData noti_elsewhereValue]] reload_strong:dict with:NO forward:^(id responseObject) {
            //: [wself reloadData];
            [wself metadata];
        //: } failed:^(id responseObject, NSError *error) {
        } title:^(id responseObject, NSError *error) {

        //: }];
        }];
    //: };
    };
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
    ProgressConfig *config = [[ProgressConfig alloc] init];
    //: config.session = self.teamListManager.session;
    config.session = self.teamListManager.session;
    //: config.teamType = NIMKitTeamTypeNomal;
    config.teamType = NIMKitTeamTypeNomal;
    //: config.teamId = self.teamListManager.team.teamId;
    config.teamId = self.teamListManager.team.teamId;
    //: config.filterIds = @[currentUserID];
    config.filterIds = @[currentUserID];
    //: WatchContactSelectViewController *vc = [[WatchContactSelectViewController alloc] initWithConfig:config];
    NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
    //: vc.finshBlock = finishBlock;
    vc.finshBlock = finishBlock;
    //: [vc show];
    [vc center];
}

//: -(void)handlerClear
-(void)biteClear
{
    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[WatchLanguageManager getTextWithKey:@"clear_history"]];
    [self.groupAlartView daySize:[PaintedNaturalLanguageTo exhibit:[FrameData dreamValueMessage]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView reply];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self.navigationController popToRootViewControllerAnimated:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView impendentImage];
        //: };
        };


}
//: - (void)handleQrbtn
- (void)coverFrame
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    SizeViewController *vc = [[SizeViewController alloc] init];
    //: vc.isTeam = YES;
    vc.isTeam = YES;
    //: vc.team = self.teamListManager.team;
    vc.team = self.teamListManager.team;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTouchAvatar
- (void)handleColorEmpty
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView table];
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)toolTouch:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self cellImage:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self cellImage:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)cellImage:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf success:image];
    //: weakSelf.accountheadImg.image = image;
    weakSelf.accountheadImg.image = image;
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)uploadImage:(UIImage *)image
- (void)success:(UIImage *)image
{
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(150, 150)];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[FrameData show_suggestKey]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager green:filePath qualifyCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [wself showToastMsg:msg];
            [wself messagePull:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:@"图片保存失败，请重试".nim_localized];
        [wself messagePull:[FrameData mainFiftyMsg].messageWith];
    }
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (NSSetAvater *)aleartView{
- (SetView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[SetView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice vg_statusBarHeight])];
        _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice tingHeight])];
        //: [_userView setBackgroundColor:[UIColor clearColor]];
        [_userView setBackgroundColor:[UIColor clearColor]];

        //: UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        //: infoView.backgroundColor = [UIColor whiteColor];
        infoView.backgroundColor = [UIColor whiteColor];
        //: infoView.layer.cornerRadius = 12;
        infoView.layer.cornerRadius = 12;
        //: infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: infoView.layer.shadowOffset = CGSizeMake(0,4);
        infoView.layer.shadowOffset = CGSizeMake(0,4);
        //: infoView.layer.shadowOpacity = 1;
        infoView.layer.shadowOpacity = 1;
        //: infoView.layer.shadowRadius = 16;
        infoView.layer.shadowRadius = 16;
        //: [_userView addSubview:infoView];
        [_userView addSubview:infoView];

        //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        //: [infoView addSubview:imgView];
        [infoView addSubview:imgView];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [imgView addSubview:self.accountheadImg];
        [imgView addSubview:self.accountheadImg];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:[FrameData m_economistBarreTitle]]];
        //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
        [cameraicon setImage:[UIImage imageNamed:[FrameData kMediaKey]] forState:(UIControlStateNormal)];
        //: cameraicon.layer.cornerRadius = 14;
        cameraicon.layer.cornerRadius = 14;
        //: cameraicon.layer.masksToBounds = YES;
        cameraicon.layer.masksToBounds = YES;
        //: [imgView addSubview:cameraicon];
        [imgView addSubview:cameraicon];
        //: cameraicon.hidden = YES;
        cameraicon.hidden = YES;
        //: [cameraicon addTarget:self action:@selector(onTouchAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        [cameraicon addTarget:self action:@selector(handleColorEmpty) forControlEvents:(UIControlEventTouchUpInside)];
        //: if([WatchKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([ObjectUtil window:self.teamListManager.myTeamInfo]){
            //: cameraicon.hidden = NO;
            cameraicon.hidden = NO;
        }

        //: UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        //: [editBtn setImage:[UIImage imageNamed:@"group_edit"] forState:(UIControlStateNormal)];
        [editBtn setImage:[UIImage imageNamed:[FrameData kTransportStr]] forState:(UIControlStateNormal)];
        //: [editBtn addTarget:self action:@selector(updateTeamIntro) forControlEvents:(UIControlEventTouchUpInside)];
        [editBtn addTarget:self action:@selector(teamCover) forControlEvents:(UIControlEventTouchUpInside)];
        //: [infoView addSubview:editBtn];
        [infoView addSubview:editBtn];
        //: editBtn.hidden = YES;
        editBtn.hidden = YES;
        //: if([WatchKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([ObjectUtil window:self.teamListManager.myTeamInfo]){
            //: editBtn.hidden = NO;
            editBtn.hidden = NO;
        }

//        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
//        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-15-36, 15, 36, 36);
////        QrBtn.backgroundColor = [UIColor whiteColor];
//        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
//        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
//        QrBtn.layer.cornerRadius = 8;
//        [infoView addSubview:QrBtn];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        //: self.accountNickname.font = [UIFont systemFontOfSize:20];
        self.accountNickname.font = [UIFont systemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: self.accountNickname.text = self.teamListManager.team.teamName;
        self.accountNickname.text = self.teamListManager.team.teamName;
        //: [infoView addSubview:self.accountNickname];
        [infoView addSubview:self.accountNickname];

        //: _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        //: _introduce.font = [UIFont systemFontOfSize:14];
        _introduce.font = [UIFont systemFontOfSize:14];
        //: _introduce.textColor = [UIColor colorWithHexString:@"2C3042"];
        _introduce.textColor = [UIColor min:[FrameData dream_onAddPath]];
        //: _introduce.textAlignment = NSTextAlignmentCenter;
        _introduce.textAlignment = NSTextAlignmentCenter;
        //: _introduce.text = self.teamListManager.team.intro?:[WatchLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
        _introduce.text = self.teamListManager.team.intro?:[PaintedNaturalLanguageTo exhibit:[FrameData show_patrolPath]];
        //: _introduce.numberOfLines = 0;
        _introduce.numberOfLines = 0;
        //: [infoView addSubview:_introduce];
        [infoView addSubview:_introduce];


    }
    //: return _userView;
    return _userView;
}
//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnClear.frame = CGRectMake(0, 0, width, 44);
        btnClear.frame = CGRectMake(0, 0, width, 44);
        //: btnClear.backgroundColor = [UIColor whiteColor];
        btnClear.backgroundColor = [UIColor whiteColor];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
        //: btnClear.layer.borderWidth = 1;
        btnClear.layer.borderWidth = 1;
        //: btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnClear setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnClear setTitleColor:[UIColor min:[FrameData noti_accentValue]] forState:UIControlStateNormal];
        //: [btnClear setTitle:[WatchLanguageManager getTextWithKey:@"activity_user_profile_clear_chat"] forState:UIControlStateNormal];
        [btnClear setTitle:[PaintedNaturalLanguageTo exhibit:[FrameData mainNameFormat]] forState:UIControlStateNormal];
//        [btnClear setImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(handlerClear) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(biteClear) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];


        //: UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        //: btnDet.backgroundColor = [UIColor whiteColor];
        btnDet.backgroundColor = [UIColor whiteColor];
        //: btnDet.layer.cornerRadius = 24;
        btnDet.layer.cornerRadius = 24;
        //: btnDet.layer.borderWidth = 1;
        btnDet.layer.borderWidth = 1;
        //: btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnDet setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnDet setTitleColor:[UIColor min:[FrameData noti_accentValue]] forState:UIControlStateNormal];
        //: [_footView addSubview:btnDet];
        [_footView addSubview:btnDet];

        //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        //: if(isOwner){
        if(isOwner){
//            [btnDet setImage:[UIImage imageNamed:@"ic_release"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[WatchLanguageManager getTextWithKey:@"group_info_activity_jiesan"] forState:UIControlStateNormal];
            [btnDet setTitle:[PaintedNaturalLanguageTo exhibit:[FrameData showLagMsg]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(dismissTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(pastTitle) forControlEvents:UIControlEventTouchUpInside];
        //: }else{
        }else{
//            [btnDet setImage:[UIImage imageNamed:@"ic_exit"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[WatchLanguageManager getTextWithKey:@"group_info_activity_exit"] forState:UIControlStateNormal];
            [btnDet setTitle:[PaintedNaturalLanguageTo exhibit:[FrameData kShowPactMessage]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(quitTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(textTeam) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //: return _footView;
    return _footView;
}

//: - (ZMONSetGroupNameView *)groupnameView
- (NameInfoView *)groupnameView
{
    //: if(!_groupnameView){
    if(!_groupnameView){
        //: _groupnameView = [[ZMONSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupnameView = [[NameInfoView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupnameView;
    return _groupnameView;
}

//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (ButtonNameView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[ButtonNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}

//: - (ZMONAlartView *)groupAlartView{
- (EdgeView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[EdgeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}

//: @end
@end
