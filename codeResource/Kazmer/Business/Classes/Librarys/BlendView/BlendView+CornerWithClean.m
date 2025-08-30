
#import <Foundation/Foundation.h>

@interface SuburbanData : NSObject

+ (instancetype)sharedInstance;

//: umappkey_android
@property (nonatomic, copy) NSString *kTitle_greenValue;

//: yinnihione
@property (nonatomic, copy) NSString *kNameUmmData;

//: nickname
@property (nonatomic, copy) NSString *kTextSeedName;

//: logininfo
@property (nonatomic, copy) NSString *kTitleAtValue;

//: email
@property (nonatomic, copy) NSString *kNameFrameDivineData;

//: redpacket
@property (nonatomic, copy) NSString *kContent_sendDetailValue;

//: /user/deleteUser
@property (nonatomic, copy) NSString *kTitle_recommendGreenContent;

//: mobile
@property (nonatomic, copy) NSString *kTitleSlaveMonthClerkName;

//: islogin
@property (nonatomic, copy) NSString *kContentTruthValue;

//: ismustmobile
@property (nonatomic, copy) NSString *kTitleNutValue;

//: istsbutton
@property (nonatomic, copy) NSString *kName_etcString;

//: https://www.kazmer.org/privacy.html
@property (nonatomic, copy) NSString *kTextCombinationString;

//: globalsign
@property (nonatomic, copy) NSString *kTitlePenalString;

//: servicer
@property (nonatomic, copy) NSString *kTitle_stepData;

//: isspeakingtime
@property (nonatomic, copy) NSString *kNameJournalistValue;

//: password
@property (nonatomic, copy) NSString *kContent_genderTitle;

//: chatnotify
@property (nonatomic, copy) NSString *kTitle_skirtString;

//: https://imapi.9idbq.cn/api/user/edit
@property (nonatomic, copy) NSString *kTitle_endData;

//: POST
@property (nonatomic, copy) NSString *kTextGasPorchBraString;

//: allowdeletion
@property (nonatomic, copy) NSString *kText_fantasticString;

//: sign
@property (nonatomic, copy) NSString *kTextHeavilyString;

//: Messageread
@property (nonatomic, copy) NSString *kNamePrivacyContent;

//: /user/getBookStatus
@property (nonatomic, copy) NSString *kText_consciousnessTitle;

//: application/json
@property (nonatomic, copy) NSString *kText_dayCellContent;

//: /user/checkmoments
@property (nonatomic, copy) NSString *kTitleSateBarContent;

//: avatar
@property (nonatomic, copy) NSString *kTitle_incomeBasisName;

//: sex
@property (nonatomic, copy) NSString *kContent_loopDeviceData;

//: birthday
@property (nonatomic, copy) NSString *kName_troubledValidText;

//: birth
@property (nonatomic, copy) NSString *kTextMilkSatisfyString;

//: isinvitecode
@property (nonatomic, copy) NSString *kName_barValue;

//: isregitor
@property (nonatomic, copy) NSString *kNameGasData;

//: /other/appSetting
@property (nonatomic, copy) NSString *kTitleGrowString;

//: /other/systemSetting
@property (nonatomic, copy) NSString *kTextSatisfyGenderMysteryContent;

//: isclear
@property (nonatomic, copy) NSString *kTitleSandData;

//: autoLogin
@property (nonatomic, copy) NSString *kContent_currentValue;

//: code
@property (nonatomic, copy) NSString *kText_intactData;

//: /user/generateUser
@property (nonatomic, copy) NSString *kName_promptString;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *kTitle_heavilyContent;

//: Content-Length
@property (nonatomic, copy) NSString *kNameHospitalValue;

//: isavatar
@property (nonatomic, copy) NSString *kTitle_itemString;

//: umappkey_ios
@property (nonatomic, copy) NSString *kNameBeginString;

//: issecret
@property (nonatomic, copy) NSString *kTitlePorkData;

//: isweixinlogin
@property (nonatomic, copy) NSString *kContentColonyData;

//: getpassword
@property (nonatomic, copy) NSString *kTextKeyString;

//: Content-Type
@property (nonatomic, copy) NSString *kContentResearchString;

@end

@implementation SuburbanData

+ (instancetype)sharedInstance {
    static SuburbanData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SuburbanDataToCache:(Byte *)data {
    int plantation = data[0];
    Byte ratherToll = data[1];
    int firmly = data[2];
    for (int i = firmly; i < firmly + plantation; i++) {
        int value = data[i] - ratherToll;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[firmly + plantation] = 0;
    return data + firmly;
}

- (NSString *)StringFromSuburbanData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SuburbanDataToCache:data]];
}

//: code
- (NSString *)kText_intactData {
    if (!_kText_intactData) {
        Byte value[] = {4, 68, 10, 240, 111, 67, 57, 75, 35, 15, 167, 179, 168, 169, 248};
        _kText_intactData = [self StringFromSuburbanData:value];
    }
    return _kText_intactData;
}

//: getpassword
- (NSString *)kTextKeyString {
    if (!_kTextKeyString) {
        Byte value[] = {11, 88, 3, 191, 189, 204, 200, 185, 203, 203, 207, 199, 202, 188, 174};
        _kTextKeyString = [self StringFromSuburbanData:value];
    }
    return _kTextKeyString;
}

//: redpacket
- (NSString *)kContent_sendDetailValue {
    if (!_kContent_sendDetailValue) {
        Byte value[] = {9, 92, 9, 216, 167, 171, 33, 64, 221, 206, 193, 192, 204, 189, 191, 199, 193, 208, 255};
        _kContent_sendDetailValue = [self StringFromSuburbanData:value];
    }
    return _kContent_sendDetailValue;
}

//: isclear
- (NSString *)kTitleSandData {
    if (!_kTitleSandData) {
        Byte value[] = {7, 75, 13, 67, 155, 135, 166, 188, 180, 129, 251, 70, 200, 180, 190, 174, 183, 176, 172, 189, 35};
        _kTitleSandData = [self StringFromSuburbanData:value];
    }
    return _kTitleSandData;
}

//: /user/generateUser
- (NSString *)kName_promptString {
    if (!_kName_promptString) {
        Byte value[] = {18, 10, 12, 104, 137, 98, 246, 119, 112, 57, 241, 23, 57, 127, 125, 111, 124, 57, 113, 111, 120, 111, 124, 107, 126, 111, 95, 125, 111, 124, 196};
        _kName_promptString = [self StringFromSuburbanData:value];
    }
    return _kName_promptString;
}

//: https://imapi.9idbq.cn/api/user/edit
- (NSString *)kTitle_endData {
    if (!_kTitle_endData) {
        Byte value[] = {36, 2, 12, 167, 26, 136, 68, 183, 243, 207, 149, 37, 106, 118, 118, 114, 117, 60, 49, 49, 107, 111, 99, 114, 107, 48, 59, 107, 102, 100, 115, 48, 101, 112, 49, 99, 114, 107, 49, 119, 117, 103, 116, 49, 103, 102, 107, 118, 181};
        _kTitle_endData = [self StringFromSuburbanData:value];
    }
    return _kTitle_endData;
}

//: Messageread
- (NSString *)kNamePrivacyContent {
    if (!_kNamePrivacyContent) {
        Byte value[] = {11, 25, 3, 102, 126, 140, 140, 122, 128, 126, 139, 126, 122, 125, 210};
        _kNamePrivacyContent = [self StringFromSuburbanData:value];
    }
    return _kNamePrivacyContent;
}

//: birth
- (NSString *)kTextMilkSatisfyString {
    if (!_kTextMilkSatisfyString) {
        Byte value[] = {5, 11, 9, 151, 53, 46, 216, 33, 19, 109, 116, 125, 127, 115, 166};
        _kTextMilkSatisfyString = [self StringFromSuburbanData:value];
    }
    return _kTextMilkSatisfyString;
}

//: /user/ismustmobile
- (NSString *)kTitle_heavilyContent {
    if (!_kTitle_heavilyContent) {
        Byte value[] = {18, 60, 10, 167, 187, 5, 134, 16, 14, 18, 107, 177, 175, 161, 174, 107, 165, 175, 169, 177, 175, 176, 169, 171, 158, 165, 168, 161, 191};
        _kTitle_heavilyContent = [self StringFromSuburbanData:value];
    }
    return _kTitle_heavilyContent;
}

//: allowdeletion
- (NSString *)kText_fantasticString {
    if (!_kText_fantasticString) {
        Byte value[] = {13, 67, 5, 140, 201, 164, 175, 175, 178, 186, 167, 168, 175, 168, 183, 172, 178, 177, 113};
        _kText_fantasticString = [self StringFromSuburbanData:value];
    }
    return _kText_fantasticString;
}

//: yinnihione
- (NSString *)kNameUmmData {
    if (!_kNameUmmData) {
        Byte value[] = {10, 50, 6, 255, 17, 9, 171, 155, 160, 160, 155, 154, 155, 161, 160, 151, 203};
        _kNameUmmData = [self StringFromSuburbanData:value];
    }
    return _kNameUmmData;
}

//: https://www.kazmer.org/privacy.html
- (NSString *)kTextCombinationString {
    if (!_kTextCombinationString) {
        Byte value[] = {35, 22, 3, 126, 138, 138, 134, 137, 80, 69, 69, 141, 141, 141, 68, 129, 119, 144, 131, 123, 136, 68, 133, 136, 125, 69, 134, 136, 127, 140, 119, 121, 143, 68, 126, 138, 131, 130, 212};
        _kTextCombinationString = [self StringFromSuburbanData:value];
    }
    return _kTextCombinationString;
}

//: /user/checkmoments
- (NSString *)kTitleSateBarContent {
    if (!_kTitleSateBarContent) {
        Byte value[] = {18, 30, 6, 159, 93, 55, 77, 147, 145, 131, 144, 77, 129, 134, 131, 129, 137, 139, 141, 139, 131, 140, 146, 145, 56};
        _kTitleSateBarContent = [self StringFromSuburbanData:value];
    }
    return _kTitleSateBarContent;
}

//: nickname
- (NSString *)kTextSeedName {
    if (!_kTextSeedName) {
        Byte value[] = {8, 39, 10, 16, 239, 94, 93, 188, 101, 122, 149, 144, 138, 146, 149, 136, 148, 140, 25};
        _kTextSeedName = [self StringFromSuburbanData:value];
    }
    return _kTextSeedName;
}

//: password
- (NSString *)kContent_genderTitle {
    if (!_kContent_genderTitle) {
        Byte value[] = {8, 27, 12, 120, 84, 49, 209, 243, 19, 145, 175, 203, 139, 124, 142, 142, 146, 138, 141, 127, 20};
        _kContent_genderTitle = [self StringFromSuburbanData:value];
    }
    return _kContent_genderTitle;
}

//: /other/appSetting
- (NSString *)kTitleGrowString {
    if (!_kTitleGrowString) {
        Byte value[] = {17, 51, 3, 98, 162, 167, 155, 152, 165, 98, 148, 163, 163, 134, 152, 167, 167, 156, 161, 154, 128};
        _kTitleGrowString = [self StringFromSuburbanData:value];
    }
    return _kTitleGrowString;
}

//: birthday
- (NSString *)kName_troubledValidText {
    if (!_kName_troubledValidText) {
        Byte value[] = {8, 10, 3, 108, 115, 124, 126, 114, 110, 107, 131, 12};
        _kName_troubledValidText = [self StringFromSuburbanData:value];
    }
    return _kName_troubledValidText;
}

//: isavatar
- (NSString *)kTitle_itemString {
    if (!_kTitle_itemString) {
        Byte value[] = {8, 83, 11, 154, 14, 158, 190, 7, 187, 82, 115, 188, 198, 180, 201, 180, 199, 180, 197, 106};
        _kTitle_itemString = [self StringFromSuburbanData:value];
    }
    return _kTitle_itemString;
}

//: sign
- (NSString *)kTextHeavilyString {
    if (!_kTextHeavilyString) {
        Byte value[] = {4, 11, 4, 46, 126, 116, 114, 121, 160};
        _kTextHeavilyString = [self StringFromSuburbanData:value];
    }
    return _kTextHeavilyString;
}

//: istsbutton
- (NSString *)kName_etcString {
    if (!_kName_etcString) {
        Byte value[] = {10, 16, 8, 28, 15, 123, 95, 240, 121, 131, 132, 131, 114, 133, 132, 132, 127, 126, 20};
        _kName_etcString = [self StringFromSuburbanData:value];
    }
    return _kName_etcString;
}

//: isspeakingtime
- (NSString *)kNameJournalistValue {
    if (!_kNameJournalistValue) {
        Byte value[] = {14, 57, 12, 159, 35, 120, 36, 192, 157, 64, 56, 55, 162, 172, 172, 169, 158, 154, 164, 162, 167, 160, 173, 162, 166, 158, 199};
        _kNameJournalistValue = [self StringFromSuburbanData:value];
    }
    return _kNameJournalistValue;
}

//: chatnotify
- (NSString *)kTitle_skirtString {
    if (!_kTitle_skirtString) {
        Byte value[] = {10, 78, 10, 213, 49, 178, 87, 164, 95, 155, 177, 182, 175, 194, 188, 189, 194, 183, 180, 199, 73};
        _kTitle_skirtString = [self StringFromSuburbanData:value];
    }
    return _kTitle_skirtString;
}

//: islogin
- (NSString *)kContentTruthValue {
    if (!_kContentTruthValue) {
        Byte value[] = {7, 20, 13, 248, 150, 175, 84, 44, 240, 81, 142, 247, 196, 125, 135, 128, 131, 123, 125, 130, 19};
        _kContentTruthValue = [self StringFromSuburbanData:value];
    }
    return _kContentTruthValue;
}

//: issecret
- (NSString *)kTitlePorkData {
    if (!_kTitlePorkData) {
        Byte value[] = {8, 29, 12, 66, 229, 158, 1, 201, 126, 115, 191, 120, 134, 144, 144, 130, 128, 143, 130, 145, 35};
        _kTitlePorkData = [self StringFromSuburbanData:value];
    }
    return _kTitlePorkData;
}

//: email
- (NSString *)kNameFrameDivineData {
    if (!_kNameFrameDivineData) {
        Byte value[] = {5, 92, 4, 108, 193, 201, 189, 197, 200, 197};
        _kNameFrameDivineData = [self StringFromSuburbanData:value];
    }
    return _kNameFrameDivineData;
}

//: isweixinlogin
- (NSString *)kContentColonyData {
    if (!_kContentColonyData) {
        Byte value[] = {13, 47, 9, 142, 206, 200, 70, 228, 30, 152, 162, 166, 148, 152, 167, 152, 157, 155, 158, 150, 152, 157, 91};
        _kContentColonyData = [self StringFromSuburbanData:value];
    }
    return _kContentColonyData;
}

//: umappkey_android
- (NSString *)kTitle_greenValue {
    if (!_kTitle_greenValue) {
        Byte value[] = {16, 67, 6, 14, 199, 231, 184, 176, 164, 179, 179, 174, 168, 188, 162, 164, 177, 167, 181, 178, 172, 167, 113};
        _kTitle_greenValue = [self StringFromSuburbanData:value];
    }
    return _kTitle_greenValue;
}

//: umappkey_ios
- (NSString *)kNameBeginString {
    if (!_kNameBeginString) {
        Byte value[] = {12, 19, 11, 105, 209, 168, 173, 128, 209, 159, 206, 136, 128, 116, 131, 131, 126, 120, 140, 114, 124, 130, 134, 219};
        _kNameBeginString = [self StringFromSuburbanData:value];
    }
    return _kNameBeginString;
}

//: /user/getBookStatus
- (NSString *)kText_consciousnessTitle {
    if (!_kText_consciousnessTitle) {
        Byte value[] = {19, 76, 7, 182, 187, 53, 80, 123, 193, 191, 177, 190, 123, 179, 177, 192, 142, 187, 187, 183, 159, 192, 173, 192, 193, 191, 128};
        _kText_consciousnessTitle = [self StringFromSuburbanData:value];
    }
    return _kText_consciousnessTitle;
}

//: ismustmobile
- (NSString *)kTitleNutValue {
    if (!_kTitleNutValue) {
        Byte value[] = {12, 74, 3, 179, 189, 183, 191, 189, 190, 183, 185, 172, 179, 182, 175, 247};
        _kTitleNutValue = [self StringFromSuburbanData:value];
    }
    return _kTitleNutValue;
}

//: autoLogin
- (NSString *)kContent_currentValue {
    if (!_kContent_currentValue) {
        Byte value[] = {9, 18, 10, 71, 235, 151, 144, 162, 83, 163, 115, 135, 134, 129, 94, 129, 121, 123, 128, 251};
        _kContent_currentValue = [self StringFromSuburbanData:value];
    }
    return _kContent_currentValue;
}

//: POST
- (NSString *)kTextGasPorchBraString {
    if (!_kTextGasPorchBraString) {
        Byte value[] = {4, 47, 10, 186, 255, 183, 238, 14, 142, 20, 127, 126, 130, 131, 26};
        _kTextGasPorchBraString = [self StringFromSuburbanData:value];
    }
    return _kTextGasPorchBraString;
}

//: isregitor
- (NSString *)kNameGasData {
    if (!_kNameGasData) {
        Byte value[] = {9, 83, 3, 188, 198, 197, 184, 186, 188, 199, 194, 197, 42};
        _kNameGasData = [self StringFromSuburbanData:value];
    }
    return _kNameGasData;
}

//: mobile
- (NSString *)kTitleSlaveMonthClerkName {
    if (!_kTitleSlaveMonthClerkName) {
        Byte value[] = {6, 70, 12, 54, 145, 150, 243, 15, 83, 63, 99, 38, 179, 181, 168, 175, 178, 171, 53};
        _kTitleSlaveMonthClerkName = [self StringFromSuburbanData:value];
    }
    return _kTitleSlaveMonthClerkName;
}

//: Content-Type
- (NSString *)kContentResearchString {
    if (!_kContentResearchString) {
        Byte value[] = {12, 20, 6, 89, 207, 105, 87, 131, 130, 136, 121, 130, 136, 65, 104, 141, 132, 121, 11};
        _kContentResearchString = [self StringFromSuburbanData:value];
    }
    return _kContentResearchString;
}

//: /other/systemSetting
- (NSString *)kTextSatisfyGenderMysteryContent {
    if (!_kTextSatisfyGenderMysteryContent) {
        Byte value[] = {20, 77, 6, 120, 82, 155, 124, 188, 193, 181, 178, 191, 124, 192, 198, 192, 193, 178, 186, 160, 178, 193, 193, 182, 187, 180, 218};
        _kTextSatisfyGenderMysteryContent = [self StringFromSuburbanData:value];
    }
    return _kTextSatisfyGenderMysteryContent;
}

//: globalsign
- (NSString *)kTitlePenalString {
    if (!_kTitlePenalString) {
        Byte value[] = {10, 50, 8, 196, 9, 187, 21, 254, 153, 158, 161, 148, 147, 158, 165, 155, 153, 160, 126};
        _kTitlePenalString = [self StringFromSuburbanData:value];
    }
    return _kTitlePenalString;
}

//: Content-Length
- (NSString *)kNameHospitalValue {
    if (!_kNameHospitalValue) {
        Byte value[] = {14, 25, 12, 182, 226, 176, 145, 21, 13, 127, 226, 164, 92, 136, 135, 141, 126, 135, 141, 70, 101, 126, 135, 128, 141, 129, 68};
        _kNameHospitalValue = [self StringFromSuburbanData:value];
    }
    return _kNameHospitalValue;
}

//: /user/deleteUser
- (NSString *)kTitle_recommendGreenContent {
    if (!_kTitle_recommendGreenContent) {
        Byte value[] = {16, 25, 3, 72, 142, 140, 126, 139, 72, 125, 126, 133, 126, 141, 126, 110, 140, 126, 139, 41};
        _kTitle_recommendGreenContent = [self StringFromSuburbanData:value];
    }
    return _kTitle_recommendGreenContent;
}

//: avatar
- (NSString *)kTitle_incomeBasisName {
    if (!_kTitle_incomeBasisName) {
        Byte value[] = {6, 34, 9, 113, 185, 3, 241, 107, 91, 131, 152, 131, 150, 131, 148, 129};
        _kTitle_incomeBasisName = [self StringFromSuburbanData:value];
    }
    return _kTitle_incomeBasisName;
}

//: sex
- (NSString *)kContent_loopDeviceData {
    if (!_kContent_loopDeviceData) {
        Byte value[] = {3, 56, 9, 106, 226, 207, 53, 207, 1, 171, 157, 176, 30};
        _kContent_loopDeviceData = [self StringFromSuburbanData:value];
    }
    return _kContent_loopDeviceData;
}

//: application/json
- (NSString *)kText_dayCellContent {
    if (!_kText_dayCellContent) {
        Byte value[] = {16, 81, 7, 60, 14, 82, 204, 178, 193, 193, 189, 186, 180, 178, 197, 186, 192, 191, 128, 187, 196, 192, 191, 181};
        _kText_dayCellContent = [self StringFromSuburbanData:value];
    }
    return _kText_dayCellContent;
}

//: isinvitecode
- (NSString *)kName_barValue {
    if (!_kName_barValue) {
        Byte value[] = {12, 63, 6, 219, 171, 228, 168, 178, 168, 173, 181, 168, 179, 164, 162, 174, 163, 164, 166};
        _kName_barValue = [self StringFromSuburbanData:value];
    }
    return _kName_barValue;
}

//: servicer
- (NSString *)kTitle_stepData {
    if (!_kTitle_stepData) {
        Byte value[] = {8, 55, 4, 114, 170, 156, 169, 173, 160, 154, 156, 169, 174};
        _kTitle_stepData = [self StringFromSuburbanData:value];
    }
    return _kTitle_stepData;
}

//: logininfo
- (NSString *)kTitleAtValue {
    if (!_kTitleAtValue) {
        Byte value[] = {9, 60, 10, 162, 120, 170, 184, 40, 203, 196, 168, 171, 163, 165, 170, 165, 170, 162, 171, 78};
        _kTitleAtValue = [self StringFromSuburbanData:value];
    }
    return _kTitleAtValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendView+CornerWithClean.m
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager+Addtionals.h"
#import "BlendView+CornerWithClean.h"
//: #import "CCCAutoLoginManager.h"
#import "DecisionMakerPathAdd.h"

//: @implementation ZCHttpManager (Addtionals)
@implementation BlendView (CornerWithClean)


//: #pragma mark - 传入用户信息 转换出 请求修改参数
#pragma mark - 传入用户信息 转换出 请求修改参数
//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block{
+(void)byFile:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/getBookStatus"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kText_consciousnessTitle] query:nil showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: block(resultDict);
        block(resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
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
+(void)worldwideTagConfig:(GlobalConfigBlock)block{


    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/appSetting"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kTitleGrowString] query:nil showThan:NO green:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict buttonAt:@"data"];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *servicer = [data newStringValueForKey:@"servicer"];
            NSString *servicer = [data comment:[SuburbanData sharedInstance].kTitle_stepData];
            //: NSString *globalsign = [data newStringValueForKey:@"globalsign"];
            NSString *globalsign = [data comment:[SuburbanData sharedInstance].kTitlePenalString];
            //: NSString *redpacket = [data newStringValueForKey:@"redpacket"];
            NSString *redpacket = [data comment:[SuburbanData sharedInstance].kContent_sendDetailValue];
            //: NSString *getpassword = [data newStringValueForKey:@"getpassword"];
            NSString *getpassword = [data comment:[SuburbanData sharedInstance].kTextKeyString];
            //: NSString *istsbutton = [data newStringValueForKey:@"istsbutton"];
            NSString *istsbutton = [data comment:[SuburbanData sharedInstance].kName_etcString];
//            NSString *yshref = [data newStringValueForKey:@"yshref"];
            //: NSString *yshref = @"https://www.kazmer.org/privacy.html";
            NSString *yshref = [SuburbanData sharedInstance].kTextCombinationString;
            //: NSString *umappkey_android = [data newStringValueForKey:@"umappkey_android"];
            NSString *umappkey_android = [data comment:[SuburbanData sharedInstance].kTitle_greenValue];
            //: NSString *umappkey_ios = [data newStringValueForKey:@"umappkey_ios"];
            NSString *umappkey_ios = [data comment:[SuburbanData sharedInstance].kNameBeginString];

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            TableContext *userDefaults = [TableContext name];
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
            userDefaults.allowdeletion = [data unwantedValue:[SuburbanData sharedInstance].kText_fantasticString installment:@"1"];

            //: NSString *autoLogin = [data newStringValueForKey:@"autoLogin"];
            NSString *autoLogin = [data comment:[SuburbanData sharedInstance].kContent_currentValue];
            //: userDefaults.autoLogin = autoLogin;
            userDefaults.autoLogin = autoLogin;

            //: userDefaults.chatnotify = [data newStringValueForKey:@"chatnotify"];
            userDefaults.chatnotify = [data comment:[SuburbanData sharedInstance].kTitle_skirtString];

            //: userDefaults.showMessageRead = [data stringValueForKey:@"Messageread" defaultValue:@"1"];
            userDefaults.showMessageRead = [data unwantedValue:[SuburbanData sharedInstance].kNamePrivacyContent installment:@"1"];
//            userDefaults.showMessageRead =  kConstant_1;

            //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
            [DecisionMakerPathAdd joint].isRequestAutoLoginFinish = YES;

            //: userDefaults.yinnihione = [data stringValueForKey:@"yinnihione" defaultValue:@"1"];
            userDefaults.yinnihione = [data unwantedValue:[SuburbanData sharedInstance].kNameUmmData installment:@"1"];

            //: block(data);
            block(data);

        //: }else{
        }else{
            //: block(@{});
            block(@{});
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}




//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo{
+(NSDictionary *)view:(NSDictionary *)userInfo{

    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"mobile"] = [userInfo newStringValueForKey:@"mobile"];
    dict[[SuburbanData sharedInstance].kTitleSlaveMonthClerkName] = [userInfo comment:[SuburbanData sharedInstance].kTitleSlaveMonthClerkName];
    //: dict[@"avatar"] = [userInfo newStringValueForKey:@"avatar"];
    dict[[SuburbanData sharedInstance].kTitle_incomeBasisName] = [userInfo comment:[SuburbanData sharedInstance].kTitle_incomeBasisName];
    //: dict[@"nickname"] = [userInfo newStringValueForKey:@"nickname"];
    dict[[SuburbanData sharedInstance].kTextSeedName] = [userInfo comment:[SuburbanData sharedInstance].kTextSeedName];
    //: dict[@"sex"] = [userInfo newStringValueForKey:@"gender"];
    dict[[SuburbanData sharedInstance].kContent_loopDeviceData] = [userInfo comment:@"gender"];
    //: dict[@"birth"] = [userInfo newStringValueForKey:@"birthday"];
    dict[[SuburbanData sharedInstance].kTextMilkSatisfyString] = [userInfo comment:[SuburbanData sharedInstance].kName_troubledValidText];
    //: dict[@"email"] = me.userInfo.email.length ? me.userInfo.email : @"";
    dict[[SuburbanData sharedInstance].kNameFrameDivineData] = me.userInfo.email.length ? me.userInfo.email : @"";
    //: dict[@"sign"] = [userInfo newStringValueForKey:@"sign"];
    dict[[SuburbanData sharedInstance].kTextHeavilyString] = [userInfo comment:[SuburbanData sharedInstance].kTextHeavilyString];
    //: return dict;
    return dict;
}

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block{
+(void)begin:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/systemSetting"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kTextSatisfyGenderMysteryContent] query:nil showThan:NO green:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[SuburbanData sharedInstance].kText_intactData];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: [NIMUserDefaults standardUserDefaults].islogin = [data newStringValueForKey:@"islogin"];
            [TableContext name].islogin = [data comment:[SuburbanData sharedInstance].kContentTruthValue];
            //: [NIMUserDefaults standardUserDefaults].isclear = [data newStringValueForKey:@"isclear"];
            [TableContext name].isclear = [data comment:[SuburbanData sharedInstance].kTitleSandData];
            //: block(data);
            block(data);
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block{
+(void)yearTitle:(GlobalConfigBlock)block{
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkmoments"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kTitleSateBarContent] query:nil showThan:NO green:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[SuburbanData sharedInstance].kText_intactData];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"1";
            [TableContext name].friendsCircle = @"1";
        //: }else{
        }else{
            //: [NIMUserDefaults standardUserDefaults].friendsCircle = @"0";
            [TableContext name].friendsCircle = @"0";
        }
        //: block(@{});
        block(@{});
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block {
+ (void)cur:(GlobalConfigBlock)block {
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/generateUser"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kName_promptString] query:nil showThan:NO green:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict buttonAt:@"data"];
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[SuburbanData sharedInstance].kText_intactData];

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
    } blue:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block {
+ (void)onProduce:(NSDictionary *)params withUser:(GlobalConfigBlock)block {

    //: NSString *urls = [NIMUserDefaults standardUserDefaults].chatnotify;
    NSString *urls = [TableContext name].chatnotify;
    //: if (!urls) {
    if (!urls) {
        //: return;
        return;
    }

//    [BlendView postWithUrl:url params:params isShow:NO success:^(id responseObject) {
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
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[SuburbanData sharedInstance].kText_dayCellContent, nil];

    //: NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urls] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[SuburbanData sharedInstance].kTextGasPorchBraString];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:[SuburbanData sharedInstance].kText_dayCellContent forHTTPHeaderField:[SuburbanData sharedInstance].kContentResearchString];

    // body
    //: NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:params options:NSJSONWritingPrettyPrinted error:nil];

    //: [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[NSString stringWithFormat:@"%lu",postData.length] forHTTPHeaderField:[SuburbanData sharedInstance].kNameHospitalValue];
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

//: +(void)deleteUser:(GlobalConfigBlock)block{
+(void)under:(GlobalConfigBlock)block{

    //: NSDictionary *params = @{@"account":[NIMUserDefaults standardUserDefaults].accountName?:@"" , @"password":[NIMUserDefaults standardUserDefaults].pCode?:@""};
    NSDictionary *params = @{@"account":[TableContext name].accountName?:@"" , [SuburbanData sharedInstance].kContent_genderTitle:[TableContext name].pCode?:@""};
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/deleteUser"] params:params isShow:YES success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kTitle_recommendGreenContent] query:params showThan:YES green:^(id responseObject) {

        //: block(@{});
        block(@{});

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: block(@{});
        block(@{});
    //: }];
    }];
}

//: #pragma mark - 修改操作
#pragma mark - 修改操作
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value{
+(void)status:(NSDictionary *)userInfo message:(NSString *)key untilRed:(NSString *)value{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
    //: [dict setObject:value forKey:key];
    [dict setObject:value forKey:key];
    //: [ZCHttpManager getWithUrl:@"https://imapi.9idbq.cn/api/user/edit" params:dict isShow:YES success:^(id responseObject) {
    [BlendView read:[SuburbanData sharedInstance].kTitle_endData query:dict showThan:YES green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = resultDict[@"code"];
        NSString *code = resultDict[[SuburbanData sharedInstance].kText_intactData];
        //: if (code.integerValue > 0) {
        if (code.integerValue > 0) {

        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)refreshRegistConfig:(GlobalConfigBlock)block{
+ (void)heather:(GlobalConfigBlock)block{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[SuburbanData sharedInstance].kTitle_heavilyContent] query:nil showThan:NO green:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict buttonAt:@"data"];
        //: if (data.count > 0) {
        if (data.count > 0) {
            //: NSString *ismustmobile = [data newStringValueForKey:@"ismustmobile"];
            NSString *ismustmobile = [data comment:[SuburbanData sharedInstance].kTitleNutValue];//客户端注册ID是否必须为手机号
            //: NSString *isinvitecode = [data newStringValueForKey:@"isinvitecode"];
            NSString *isinvitecode = [data comment:[SuburbanData sharedInstance].kName_barValue];//邀请码是否必填
            //: NSString *isavatar = [data newStringValueForKey:@"isavatar"];
            NSString *isavatar = [data comment:[SuburbanData sharedInstance].kTitle_itemString];//是否强制上传头像
            //: NSString *issecret = [data newStringValueForKey:@"issecret"];
            NSString *issecret = [data comment:[SuburbanData sharedInstance].kTitlePorkData];//是否强制密保
            //: NSString *logininfo = [data newStringValueForKey:@"logininfo"];
            NSString *logininfo = [data comment:[SuburbanData sharedInstance].kTitleAtValue];//登录页自定义信息
            //: NSString *isregitor = [data newStringValueForKey:@"isregitor"];
            NSString *isregitor = [data comment:[SuburbanData sharedInstance].kNameGasData];//1 允许注册 0 不允许
            //: NSString *isweixinlogin = [data newStringValueForKey:@"isweixinlogin"];
            NSString *isweixinlogin = [data comment:[SuburbanData sharedInstance].kContentColonyData];//是/开启微信登录
            //: NSString *isspeakingtime = [data newStringValueForKey:@"isspeakingtime"];
            NSString *isspeakingtime = [data comment:[SuburbanData sharedInstance].kNameJournalistValue];//是否控制发言间隔时间

            //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
            TableContext *userDefaults = [TableContext name];
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
    } blue:^(id responseObject, NSError *error) {
        //: !block ? :block(@{});
        !block ? :block(@{});
    //: }];
    }];
}



//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4,629.6]