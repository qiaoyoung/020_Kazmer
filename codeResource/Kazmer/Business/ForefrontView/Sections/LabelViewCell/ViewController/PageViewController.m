
#import <Foundation/Foundation.h>

@interface YoungBirdData : NSObject

@end

@implementation YoungBirdData

//: RegistFinshNotification
+ (NSString *)kTitleBridgeShowData {
    /* static */ NSString *kTitleBridgeShowData = nil;
    if (!kTitleBridgeShowData) {
		NSArray<NSNumber *> *origin = @[@23, @62, @11, @58, @235, @88, @252, @175, @190, @132, @237, @144, @163, @165, @167, @177, @178, @132, @167, @172, @177, @166, @140, @173, @178, @167, @164, @167, @161, @159, @178, @167, @173, @172, @8];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleBridgeShowData = [self StringFromYoungBirdData:value];
    }
    return kTitleBridgeShowData;
}

//: msg
+ (NSString *)kNameSendString {
    /* static */ NSString *kNameSendString = nil;
    if (!kNameSendString) {
		NSArray<NSNumber *> *origin = @[@3, @21, @9, @106, @88, @223, @60, @67, @161, @130, @136, @124, @57];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSendString = [self StringFromYoungBirdData:value];
    }
    return kNameSendString;
}

//: ic_invisible
+ (NSString *)kName_standardData {
    /* static */ NSString *kName_standardData = nil;
    if (!kName_standardData) {
		NSArray<NSNumber *> *origin = @[@12, @48, @3, @153, @147, @143, @153, @158, @166, @153, @163, @153, @146, @156, @149, @180];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_standardData = [self StringFromYoungBirdData:value];
    }
    return kName_standardData;
}

//: __SCOPED__
+ (NSString *)kContentLastValue {
    /* static */ NSString *kContentLastValue = nil;
    if (!kContentLastValue) {
		NSArray<NSNumber *> *origin = @[@10, @59, @4, @95, @154, @154, @142, @126, @138, @139, @128, @127, @154, @154, @31];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentLastValue = [self StringFromYoungBirdData:value];
    }
    return kContentLastValue;
}

+ (Byte *)YoungBirdDataToCache:(Byte *)data {
    int showEver = data[0];
    Byte itemTitle = data[1];
    int lawBreaking = data[2];
    for (int i = lawBreaking; i < lawBreaking + showEver; i++) {
        int value = data[i] - itemTitle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[lawBreaking + showEver] = 0;
    return data + lawBreaking;
}

//: token
+ (NSString *)kTitleButCellNameValue {
    /* static */ NSString *kTitleButCellNameValue = nil;
    if (!kTitleButCellNameValue) {
		NSArray<NSNumber *> *origin = @[@5, @99, @8, @71, @154, @231, @133, @248, @215, @210, @206, @200, @209, @149];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleButCellNameValue = [self StringFromYoungBirdData:value];
    }
    return kTitleButCellNameValue;
}

//: UserAccount
+ (NSString *)kTextImmigrantData {
    /* static */ NSString *kTextImmigrantData = nil;
    if (!kTextImmigrantData) {
		NSArray<NSNumber *> *origin = @[@11, @55, @12, @79, @64, @236, @224, @224, @210, @59, @41, @102, @140, @170, @156, @169, @120, @154, @154, @166, @172, @165, @171, @207];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextImmigrantData = [self StringFromYoungBirdData:value];
    }
    return kTextImmigrantData;
}

//: activity_login_has_no_account
+ (NSString *)kText_onShallowData {
    /* static */ NSString *kText_onShallowData = nil;
    if (!kText_onShallowData) {
		NSArray<NSNumber *> *origin = @[@29, @36, @12, @29, @236, @7, @192, @158, @34, @77, @165, @114, @133, @135, @152, @141, @154, @141, @152, @157, @131, @144, @147, @139, @141, @146, @131, @140, @133, @151, @131, @146, @147, @131, @133, @135, @135, @147, @153, @146, @152, @59];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_onShallowData = [self StringFromYoungBirdData:value];
    }
    return kText_onShallowData;
}

//: login_activity_login_failed
+ (NSString *)kTitleSuggestString {
    /* static */ NSString *kTitleSuggestString = nil;
    if (!kTitleSuggestString) {
		NSArray<NSNumber *> *origin = @[@27, @32, @4, @63, @140, @143, @135, @137, @142, @127, @129, @131, @148, @137, @150, @137, @148, @153, @127, @140, @143, @135, @137, @142, @127, @134, @129, @137, @140, @133, @132, @227];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSuggestString = [self StringFromYoungBirdData:value];
    }
    return kTitleSuggestString;
}

//: login_agreement_normal
+ (NSString *)kTitle_addContent {
    /* static */ NSString *kTitle_addContent = nil;
    if (!kTitle_addContent) {
		NSArray<NSNumber *> *origin = @[@22, @90, @11, @54, @118, @64, @75, @182, @110, @47, @143, @198, @201, @193, @195, @200, @185, @187, @193, @204, @191, @191, @199, @191, @200, @206, @185, @200, @201, @204, @199, @187, @198, @37];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_addContent = [self StringFromYoungBirdData:value];
    }
    return kTitle_addContent;
}

//: register_account_activity_account
+ (NSString *)kContent_pullData {
    /* static */ NSString *kContent_pullData = nil;
    if (!kContent_pullData) {
		NSArray<NSNumber *> *origin = @[@33, @29, @11, @23, @144, @75, @77, @68, @43, @158, @165, @143, @130, @132, @134, @144, @145, @130, @143, @124, @126, @128, @128, @140, @146, @139, @145, @124, @126, @128, @145, @134, @147, @134, @145, @150, @124, @126, @128, @128, @140, @146, @139, @145, @97];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_pullData = [self StringFromYoungBirdData:value];
    }
    return kContent_pullData;
}

//: login_activity_login_success
+ (NSString *)kText_civilianName {
    /* static */ NSString *kText_civilianName = nil;
    if (!kText_civilianName) {
		NSArray<NSNumber *> *origin = @[@28, @5, @3, @113, @116, @108, @110, @115, @100, @102, @104, @121, @110, @123, @110, @121, @126, @100, @113, @116, @108, @110, @115, @100, @120, @122, @104, @104, @106, @120, @120, @193];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_civilianName = [self StringFromYoungBirdData:value];
    }
    return kText_civilianName;
}

//: login_bg
+ (NSString *)kTitle_inventMigrationData {
    /* static */ NSString *kTitle_inventMigrationData = nil;
    if (!kTitle_inventMigrationData) {
		NSArray<NSNumber *> *origin = @[@8, @51, @10, @186, @14, @1, @84, @212, @16, @180, @159, @162, @154, @156, @161, @146, @149, @154, @74];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_inventMigrationData = [self StringFromYoungBirdData:value];
    }
    return kTitle_inventMigrationData;
}

//: #fffDisplay
+ (NSString *)kTextRawData {
    /* static */ NSString *kTextRawData = nil;
    if (!kTextRawData) {
		NSArray<NSNumber *> *origin = @[@7, @82, @3, @117, @184, @184, @184, @184, @184, @184, @63];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRawData = [self StringFromYoungBirdData:value];
    }
    return kTextRawData;
}

//: login_logo
+ (NSString *)kText_tapData {
    /* static */ NSString *kText_tapData = nil;
    if (!kText_tapData) {
		NSArray<NSNumber *> *origin = @[@10, @72, @12, @187, @200, @200, @172, @193, @56, @121, @122, @82, @180, @183, @175, @177, @182, @167, @180, @183, @175, @183, @174];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_tapData = [self StringFromYoungBirdData:value];
    }
    return kText_tapData;
}

//: activity_register_title
+ (NSString *)kTitleNutShowText {
    /* static */ NSString *kTitleNutShowText = nil;
    if (!kTitleNutShowText) {
		NSArray<NSNumber *> *origin = @[@23, @48, @3, @145, @147, @164, @153, @166, @153, @164, @169, @143, @162, @149, @151, @153, @163, @164, @149, @162, @143, @164, @153, @164, @156, @149, @95];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleNutShowText = [self StringFromYoungBirdData:value];
    }
    return kTitleNutShowText;
}

//: friend_verify_avtivity_net_error
+ (NSString *)kTitle_frameValue {
    /* static */ NSString *kTitle_frameValue = nil;
    if (!kTitle_frameValue) {
		NSArray<NSNumber *> *origin = @[@32, @61, @11, @2, @130, @181, @17, @10, @88, @51, @62, @163, @175, @166, @162, @171, @161, @156, @179, @162, @175, @166, @163, @182, @156, @158, @179, @177, @166, @179, @166, @177, @182, @156, @171, @162, @177, @156, @162, @175, @175, @172, @175, @135];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_frameValue = [self StringFromYoungBirdData:value];
    }
    return kTitle_frameValue;
}

//: ^[A-Za-z0-9_]{6,18}$
+ (NSString *)kNameSharedData {
    /* static */ NSString *kNameSharedData = nil;
    if (!kNameSharedData) {
		NSArray<NSNumber *> *origin = @[@20, @70, @8, @60, @138, @30, @66, @37, @164, @161, @135, @115, @160, @167, @115, @192, @118, @115, @127, @165, @163, @193, @124, @114, @119, @126, @195, @106, @134];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSharedData = [self StringFromYoungBirdData:value];
    }
    return kNameSharedData;
}

//: activity_login_welcome
+ (NSString *)kContent_retireTitle {
    /* static */ NSString *kContent_retireTitle = nil;
    if (!kContent_retireTitle) {
		NSArray<NSNumber *> *origin = @[@22, @32, @13, @219, @222, @143, @39, @144, @251, @31, @49, @95, @60, @129, @131, @148, @137, @150, @137, @148, @153, @127, @140, @143, @135, @137, @142, @127, @151, @133, @140, @131, @143, @141, @133, @203];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_retireTitle = [self StringFromYoungBirdData:value];
    }
    return kContent_retireTitle;
}

//: telname
+ (NSString *)kName_hideString {
    /* static */ NSString *kName_hideString = nil;
    if (!kName_hideString) {
		NSArray<NSNumber *> *origin = @[@7, @28, @3, @144, @129, @136, @138, @125, @137, @129, @32];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_hideString = [self StringFromYoungBirdData:value];
    }
    return kName_hideString;
}

//: activity_login_login
+ (NSString *)kTitleErrorString {
    /* static */ NSString *kTitleErrorString = nil;
    if (!kTitleErrorString) {
		NSArray<NSNumber *> *origin = @[@20, @28, @3, @125, @127, @144, @133, @146, @133, @144, @149, @123, @136, @139, @131, @133, @138, @123, @136, @139, @131, @133, @138, @196];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleErrorString = [self StringFromYoungBirdData:value];
    }
    return kTitleErrorString;
}

//: tap
+ (NSString *)kText_standardValue {
    /* static */ NSString *kText_standardValue = nil;
    if (!kText_standardValue) {
		NSArray<NSNumber *> *origin = @[@3, @37, @8, @116, @167, @209, @198, @28, @153, @134, @149, @110];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_standardValue = [self StringFromYoungBirdData:value];
    }
    return kText_standardValue;
}

//: login_error
+ (NSString *)kTitleDoingValue {
    /* static */ NSString *kTitleDoingValue = nil;
    if (!kTitleDoingValue) {
		NSArray<NSNumber *> *origin = @[@11, @7, @13, @252, @132, @27, @198, @112, @223, @173, @142, @226, @68, @115, @118, @110, @112, @117, @102, @108, @121, @121, @118, @121, @193];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleDoingValue = [self StringFromYoungBirdData:value];
    }
    return kTitleDoingValue;
}

//: activity_register_agree
+ (NSString *)kTitlePlaceString {
    /* static */ NSString *kTitlePlaceString = nil;
    if (!kTitlePlaceString) {
		NSArray<NSNumber *> *origin = @[@23, @40, @13, @133, @209, @9, @43, @222, @231, @146, @47, @20, @44, @137, @139, @156, @145, @158, @145, @156, @161, @135, @154, @141, @143, @145, @155, @156, @141, @154, @135, @137, @143, @154, @141, @141, @96];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePlaceString = [self StringFromYoungBirdData:value];
    }
    return kTitlePlaceString;
}

//: ios
+ (NSString *)kTitleShoppingData {
    /* static */ NSString *kTitleShoppingData = nil;
    if (!kTitleShoppingData) {
		NSArray<NSNumber *> *origin = @[@3, @92, @9, @196, @8, @113, @250, @188, @126, @197, @203, @207, @157];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleShoppingData = [self StringFromYoungBirdData:value];
    }
    return kTitleShoppingData;
}

//: register_account_activity_psw
+ (NSString *)kText_nutAlsoString {
    /* static */ NSString *kText_nutAlsoString = nil;
    if (!kText_nutAlsoString) {
		NSArray<NSNumber *> *origin = @[@29, @82, @3, @196, @183, @185, @187, @197, @198, @183, @196, @177, @179, @181, @181, @193, @199, @192, @198, @177, @179, @181, @198, @187, @200, @187, @198, @203, @177, @194, @197, @201, @56];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_nutAlsoString = [self StringFromYoungBirdData:value];
    }
    return kText_nutAlsoString;
}

//: /user/login
+ (NSString *)kTextTeamString {
    /* static */ NSString *kTextTeamString = nil;
    if (!kTextTeamString) {
		NSArray<NSNumber *> *origin = @[@11, @24, @5, @190, @228, @71, @141, @139, @125, @138, @71, @132, @135, @127, @129, @134, @204];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTeamString = [self StringFromYoungBirdData:value];
    }
    return kTextTeamString;
}

//: login_icon_pwd
+ (NSString *)kName_textTitleData {
    /* static */ NSString *kName_textTitleData = nil;
    if (!kName_textTitleData) {
		NSArray<NSNumber *> *origin = @[@14, @90, @12, @49, @53, @67, @10, @154, @134, @216, @86, @184, @198, @201, @193, @195, @200, @185, @195, @189, @201, @200, @185, @202, @209, @190, @11];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_textTitleData = [self StringFromYoungBirdData:value];
    }
    return kName_textTitleData;
}

//: lang
+ (NSString *)kTitle_heavilyValue {
    /* static */ NSString *kTitle_heavilyValue = nil;
    if (!kTitle_heavilyValue) {
		NSArray<NSNumber *> *origin = @[@4, @5, @5, @161, @135, @113, @102, @115, @108, @110];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_heavilyValue = [self StringFromYoungBirdData:value];
    }
    return kTitle_heavilyValue;
}

//: systems
+ (NSString *)kTextContentValue {
    /* static */ NSString *kTextContentValue = nil;
    if (!kTextContentValue) {
		NSArray<NSNumber *> *origin = @[@7, @19, @12, @168, @2, @113, @160, @7, @45, @107, @207, @232, @134, @140, @134, @135, @120, @128, @134, @82];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextContentValue = [self StringFromYoungBirdData:value];
    }
    return kTextContentValue;
}

//: code
+ (NSString *)kTitle_sunlightData {
    /* static */ NSString *kTitle_sunlightData = nil;
    if (!kTitle_sunlightData) {
		NSArray<NSNumber *> *origin = @[@4, @60, @10, @170, @240, @75, @82, @51, @79, @59, @159, @171, @160, @161, @211];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_sunlightData = [self StringFromYoungBirdData:value];
    }
    return kTitle_sunlightData;
}

//: #5D5F66
+ (NSString *)kName_wheatString {
    /* static */ NSString *kName_wheatString = nil;
    if (!kName_wheatString) {
		NSArray<NSNumber *> *origin = @[@7, @34, @4, @85, @69, @87, @102, @87, @104, @88, @88, @159];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_wheatString = [self StringFromYoungBirdData:value];
    }
    return kName_wheatString;
}

//: deviceid
+ (NSString *)kName_colorValue {
    /* static */ NSString *kName_colorValue = nil;
    if (!kName_colorValue) {
		NSArray<NSNumber *> *origin = @[@8, @76, @11, @246, @254, @145, @150, @170, @94, @123, @120, @176, @177, @194, @181, @175, @177, @181, @176, @20];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_colorValue = [self StringFromYoungBirdData:value];
    }
    return kName_colorValue;
}

//: login_success
+ (NSString *)kName_everValue {
    /* static */ NSString *kName_everValue = nil;
    if (!kName_everValue) {
		NSArray<NSNumber *> *origin = @[@13, @9, @13, @206, @15, @163, @160, @201, @202, @119, @226, @247, @64, @117, @120, @112, @114, @119, @104, @124, @126, @108, @108, @110, @124, @124, @249];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_everValue = [self StringFromYoungBirdData:value];
    }
    return kName_everValue;
}

//: ic_visible
+ (NSString *)kTitleValueName {
    /* static */ NSString *kTitleValueName = nil;
    if (!kTitleValueName) {
		NSArray<NSNumber *> *origin = @[@10, @20, @3, @125, @119, @115, @138, @125, @135, @125, @118, @128, @121, @73];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleValueName = [self StringFromYoungBirdData:value];
    }
    return kTitleValueName;
}

//: type
+ (NSString *)kNameKeyChickValue {
    /* static */ NSString *kNameKeyChickValue = nil;
    if (!kNameKeyChickValue) {
		NSArray<NSNumber *> *origin = @[@4, @78, @9, @106, @138, @3, @30, @41, @193, @194, @199, @190, @179, @107];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameKeyChickValue = [self StringFromYoungBirdData:value];
    }
    return kNameKeyChickValue;
}

//: vpn
+ (NSString *)kTitleNutRangeItemName {
    /* static */ NSString *kTitleNutRangeItemName = nil;
    if (!kTitleNutRangeItemName) {
		NSArray<NSNumber *> *origin = @[@3, @98, @4, @147, @216, @210, @208, @239];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleNutRangeItemName = [self StringFromYoungBirdData:value];
    }
    return kTitleNutRangeItemName;
}

//: #4B43DE
+ (NSString *)kText_imageValueString {
    /* static */ NSString *kText_imageValueString = nil;
    if (!kText_imageValueString) {
		NSArray<NSNumber *> *origin = @[@7, @8, @6, @215, @242, @232, @43, @60, @74, @60, @59, @76, @77, @61];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_imageValueString = [self StringFromYoungBirdData:value];
    }
    return kText_imageValueString;
}

//: #333333
+ (NSString *)kNameConsumptionValue {
    /* static */ NSString *kNameConsumptionValue = nil;
    if (!kNameConsumptionValue) {
		NSArray<NSNumber *> *origin = @[@7, @69, @9, @151, @138, @32, @36, @168, @244, @104, @120, @120, @120, @120, @120, @120, @53];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameConsumptionValue = [self StringFromYoungBirdData:value];
    }
    return kNameConsumptionValue;
}

//: login_agreement_press
+ (NSString *)kTitleHeavilyData {
    /* static */ NSString *kTitleHeavilyData = nil;
    if (!kTitleHeavilyData) {
		NSArray<NSNumber *> *origin = @[@21, @6, @7, @114, @14, @74, @135, @114, @117, @109, @111, @116, @101, @103, @109, @120, @107, @107, @115, @107, @116, @122, @101, @118, @120, @107, @121, @121, @92];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleHeavilyData = [self StringFromYoungBirdData:value];
    }
    return kTitleHeavilyData;
}

//: iOS%@
+ (NSString *)kTitle_dataName {
    /* static */ NSString *kTitle_dataName = nil;
    if (!kTitle_dataName) {
		NSArray<NSNumber *> *origin = @[@5, @12, @7, @7, @152, @57, @251, @117, @91, @95, @49, @76, @44];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_dataName = [self StringFromYoungBirdData:value];
    }
    return kTitle_dataName;
}

+ (NSData *)YoungBirdDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: NotificationLogout
+ (NSString *)kTextReservationString {
    /* static */ NSString *kTextReservationString = nil;
    if (!kTextReservationString) {
		NSArray<NSNumber *> *origin = @[@18, @99, @12, @56, @86, @152, @153, @240, @136, @208, @181, @104, @177, @210, @215, @204, @201, @204, @198, @196, @215, @204, @210, @209, @175, @210, @202, @210, @216, @215, @190];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextReservationString = [self StringFromYoungBirdData:value];
    }
    return kTextReservationString;
}

+ (NSString *)StringFromYoungBirdData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self YoungBirdDataToCache:data]];
}

//: ppp
+ (NSString *)kTitle_detailTextData {
    /* static */ NSString *kTitle_detailTextData = nil;
    if (!kTitle_detailTextData) {
		NSArray<NSNumber *> *origin = @[@3, @41, @11, @141, @169, @167, @113, @80, @153, @120, @105, @153, @153, @153, @153];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_detailTextData = [self StringFromYoungBirdData:value];
    }
    return kTitle_detailTextData;
}

//: password
+ (NSString *)kText_commitName {
    /* static */ NSString *kText_commitName = nil;
    if (!kText_commitName) {
		NSArray<NSNumber *> *origin = @[@8, @70, @13, @11, @250, @89, @209, @146, @251, @56, @62, @139, @207, @182, @167, @185, @185, @189, @181, @184, @170, @113];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_commitName = [self StringFromYoungBirdData:value];
    }
    return kText_commitName;
}

//: issup
+ (NSString *)kTextCropToString {
    /* static */ NSString *kTextCropToString = nil;
    if (!kTextCropToString) {
		NSArray<NSNumber *> *origin = @[@5, @20, @4, @25, @125, @135, @135, @137, @132, @45];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextCropToString = [self StringFromYoungBirdData:value];
    }
    return kTextCropToString;
}

//: #8282A7
+ (NSString *)kTitleLoopText {
    /* static */ NSString *kTitleLoopText = nil;
    if (!kTitleLoopText) {
		NSArray<NSNumber *> *origin = @[@7, @52, @10, @5, @216, @77, @71, @115, @218, @23, @87, @108, @102, @108, @102, @117, @107, @72];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleLoopText = [self StringFromYoungBirdData:value];
    }
    return kTitleLoopText;
}

//: tun
+ (NSString *)kContent_withScaleValue {
    /* static */ NSString *kContent_withScaleValue = nil;
    if (!kContent_withScaleValue) {
		NSArray<NSNumber *> *origin = @[@3, @42, @12, @139, @199, @96, @242, @200, @179, @234, @105, @66, @158, @159, @152, @113];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_withScaleValue = [self StringFromYoungBirdData:value];
    }
    return kContent_withScaleValue;
}

//: activity_comment_setting_ys
+ (NSString *)kTextStableString {
    /* static */ NSString *kTextStableString = nil;
    if (!kTextStableString) {
		NSArray<NSNumber *> *origin = @[@27, @88, @5, @75, @192, @185, @187, @204, @193, @206, @193, @204, @209, @183, @187, @199, @197, @197, @189, @198, @204, @183, @203, @189, @204, @204, @193, @198, @191, @183, @209, @203, @14];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStableString = [self StringFromYoungBirdData:value];
    }
    return kTextStableString;
}

//: login_icon_user
+ (NSString *)kText_aircraftString {
    /* static */ NSString *kText_aircraftString = nil;
    if (!kText_aircraftString) {
		NSArray<NSNumber *> *origin = @[@15, @80, @7, @62, @131, @73, @196, @188, @191, @183, @185, @190, @175, @185, @179, @191, @190, @175, @197, @195, @181, @194, @96];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_aircraftString = [self StringFromYoungBirdData:value];
    }
    return kText_aircraftString;
}

//: nimtoken
+ (NSString *)kTitle_teamValue {
    /* static */ NSString *kTitle_teamValue = nil;
    if (!kTitle_teamValue) {
		NSArray<NSNumber *> *origin = @[@8, @8, @9, @46, @138, @99, @140, @20, @64, @118, @113, @117, @124, @119, @115, @109, @118, @250];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_teamValue = [self StringFromYoungBirdData:value];
    }
    return kTitle_teamValue;
}

//: #999999
+ (NSString *)kName_stopString {
    /* static */ NSString *kName_stopString = nil;
    if (!kName_stopString) {
		NSArray<NSNumber *> *origin = @[@7, @97, @5, @63, @240, @132, @154, @154, @154, @154, @154, @154, @110];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_stopString = [self StringFromYoungBirdData:value];
    }
    return kName_stopString;
}

//: SELF MATCHES %@
+ (NSString *)kName_lastData {
    /* static */ NSString *kName_lastData = nil;
    if (!kName_lastData) {
		NSArray<NSNumber *> *origin = @[@15, @66, @11, @225, @136, @221, @149, @241, @27, @69, @138, @149, @135, @142, @136, @98, @143, @131, @150, @133, @138, @135, @149, @98, @103, @130, @172];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_lastData = [self StringFromYoungBirdData:value];
    }
    return kName_lastData;
}

//: UserPassWord
+ (NSString *)kTitle_sendValue {
    /* static */ NSString *kTitle_sendValue = nil;
    if (!kTitle_sendValue) {
		NSArray<NSNumber *> *origin = @[@12, @3, @9, @249, @45, @166, @7, @76, @170, @88, @118, @104, @117, @83, @100, @118, @118, @90, @114, @117, @103, @95];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_sendValue = [self StringFromYoungBirdData:value];
    }
    return kTitle_sendValue;
}

//: client
+ (NSString *)kNameDenseLoopData {
    /* static */ NSString *kNameDenseLoopData = nil;
    if (!kNameDenseLoopData) {
		NSArray<NSNumber *> *origin = @[@6, @63, @9, @136, @36, @166, @72, @118, @41, @162, @171, @168, @164, @173, @179, @26];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDenseLoopData = [self StringFromYoungBirdData:value];
    }
    return kNameDenseLoopData;
}

//: ^[A-Za-z0-9_]{6,12}$
+ (NSString *)kTitleCommitData {
    /* static */ NSString *kTitleCommitData = nil;
    if (!kTitleCommitData) {
		NSArray<NSNumber *> *origin = @[@20, @42, @10, @47, @6, @222, @100, @172, @27, @6, @136, @133, @107, @87, @132, @139, @87, @164, @90, @87, @99, @137, @135, @165, @96, @86, @91, @92, @167, @78, @231];
		NSData *data = [YoungBirdData YoungBirdDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCommitData = [self StringFromYoungBirdData:value];
    }
    return kTitleCommitData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PageViewController.m
//  NIMDemo
//
//  Created by ght on 15-1-26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayLoginViewController.h"
#import "PageViewController.h"
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "NSString+USER.h"
#import "NSString+Turn.h"
//: #import "CCCLoginManager.h"
#import "BlendManager.h"
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "UIActionSheet+USERBlock.h"
#import "UIActionSheet+NameAddContent.h"
//: #import "DisplayRegisterViewController.h"
#import "CenterViewController.h"
//: #import "USERRegistConfigManager.h"
#import "StandardManager.h"
//: #import <CoreTelephony/CTCellularData.h>
#import <CoreTelephony/CTCellularData.h>
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "DecisionMakerPathAdd.h"
//: #import "SNDevice.h"
#import "TranslateSize.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "MakeViewController.h"
//: #import "GetBackPasswordViewController.h"
#import "StandardViewController.h"

//: @interface DisplayLoginViewController ()<UITextFieldDelegate> {
@interface PageViewController ()<UITextFieldDelegate> {
    //: BOOL _isloading;
    BOOL _isloading;
    //: UIActivityIndicatorView *_ActivityIndicator;
    UIActivityIndicatorView *_ActivityIndicator;
}
//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;

//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;
//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;

//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (nonatomic,strong) YYLabel *registLabel;
@property (nonatomic,strong) YYLabel *registLabel;

//: @property (nonatomic,strong) YYLabel *protocolLabel;
@property (nonatomic,strong) YYLabel *protocolLabel;

//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) TopYearView *loadingView;

//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;

//: @end
@end

//: @implementation DisplayLoginViewController
@implementation PageViewController

//: - (void)textFieldDidBeginEditing:(UITextField *)textField {
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    //: self.secureButton.hidden = NO;
    self.secureButton.hidden = NO;
    //: [textField bringSubviewToFront:self.secureButton];
    [textField bringSubviewToFront:self.secureButton];
}

//- (void)languageChanged:(NSNotification *)noti {
////    [self refreshNavBarStyle];
//    [_loginButton setTitle:LangKey(@"activity_login_login") forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"activity_register_title") forState:UIControlStateNormal];
//}

//: - (void)needsInitUI {
- (void)needsView {

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    TableContext *userDefaults = [TableContext name];
    //: if (userDefaults.language && userDefaults.language.length <= 0) {
    if (userDefaults.language && userDefaults.language.length <= 0) {

        //在某个地方设置其 ，开始旋转动画
        //: [_ActivityIndicator startAnimating];
        [_ActivityIndicator startAnimating];

        //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
        [BlendView worldwideTagConfig:^(NSDictionary * _Nonnull configDict) {//处理第一次启动语言问题
            //: if (configDict.allKeys.count > 0) {
            if (configDict.allKeys.count > 0) {
                //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
                TableContext *userDefaults = [TableContext name];
                //: NSString *lang = [configDict newStringValueForKey:@"lang"];
                NSString *lang = [configDict comment:[YoungBirdData kTitle_heavilyValue]];
                //: if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                    //: lang = @"en";
                    lang = @"en";
                }
                //: userDefaults.language = lang;
                userDefaults.language = lang;
                //: [[DisplayLanguageManager shareInstance] setLanguagre:lang];
                [[MakeManager range] setShould:lang];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:[YoungBirdData kTextReservationString] object:nil];
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
                    [self replyEdge];
                //: });
                });
            //: } else {
            } else {
                //: [self autoLogin];
                [self replyEdge];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: [self autoLogin];
        [self replyEdge];
    }
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

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: if ([string isEqualToString:@"\n"]) {
    if ([string isEqualToString:@"\n"]) {
        //: [self doLogin];
        [self nameFor];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)pwdTextSwitch:(UIButton *)sender {
- (void)atAcross:(UIButton *)sender {

    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[YoungBirdData kName_standardData]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[YoungBirdData kTitleValueName]] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: - (BOOL)isVPNConnected
- (BOOL)needForMagnitude
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
        //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
        NSArray *keys = [dict[[YoungBirdData kContentLastValue]]allKeys];
        //: for (NSString *key in keys) {
        for (NSString *key in keys) {
            //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
            if ([key rangeOfString:[YoungBirdData kText_standardValue]].location != NSNotFound ||
                //: [key rangeOfString:@"tun"].location != NSNotFound ||
                [key rangeOfString:[YoungBirdData kContent_withScaleValue]].location != NSNotFound ||
                //: [key rangeOfString:@"ppp"].location != NSNotFound){
                [key rangeOfString:[YoungBirdData kTitle_detailTextData]].location != NSNotFound){
                //: return YES;
                return YES;
            }
        }
        //: return NO;
        return NO;
}
/**
 实时检查当前网络状态
 */
//: - (void)addReachabilityManager {
- (void)reachability {
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
                    [self needsView];
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
                    [self needsView];
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

//: - (void)autoLogin {
- (void)replyEdge {

    //: if (![CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish){
    if (![DecisionMakerPathAdd joint].isRequestAutoLoginFinish){
        //: return;
        return;
    }

    //: if (![NIMUserDefaults standardUserDefaults].autoLogin.boolValue){
    if (![TableContext name].autoLogin.boolValue){
        //: [self initUI];
        [self initImageTo];
        //: return;
        return;
    }

    //: if ([NIMUserDefaults standardUserDefaults].accid.length > 0){
    if ([TableContext name].accid.length > 0){
        //: [self initUI];
        [self initImageTo];
        //: return;
        return;
    }

    //: if ([CCCAutoLoginManager sharedManager].isloading){
    if ([DecisionMakerPathAdd joint].isloading){
        //: return;
        return;
    }
    //: [CCCAutoLoginManager sharedManager].isloading = YES;
    [DecisionMakerPathAdd joint].isloading = YES;

    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [ZCHttpManager refreshGenerateUser:^(NSDictionary * _Nonnull data) {
    [BlendView cur:^(NSDictionary * _Nonnull data) {

        //: if (data.allKeys.count > 0) {
        if (data.allKeys.count > 0) {

            //: NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            NSString *nimtoken = [data comment:[YoungBirdData kTitle_teamValue]];
            //: NSString *accid = [data newStringValueForKey:@"id"];
            NSString *accid = [data comment:@"id"];
            //: NSString *accountName = [data newStringValueForKey:@"account"];
            NSString *accountName = [data comment:@"account"];
            //: NSString *loginToken = [data newStringValueForKey:@"token"];
            NSString *loginToken = [data comment:[YoungBirdData kTitleButCellNameValue]];
            //: NSString *issup = [data newStringValueForKey:@"issup"];
            NSString *issup = [data comment:[YoungBirdData kTextCropToString]];


            //: [NIMUserDefaults standardUserDefaults].loginToken = loginToken;
            [TableContext name].loginToken = loginToken;
            //: [NIMUserDefaults standardUserDefaults].accid = accid;
            [TableContext name].accid = accid;
            //: [NIMUserDefaults standardUserDefaults].nimToken = nimtoken;
            [TableContext name].nimToken = nimtoken;
            //: [NIMUserDefaults standardUserDefaults].accountName = accountName;
            [TableContext name].accountName = accountName;
            //: [NIMUserDefaults standardUserDefaults].issup = issup;
            [TableContext name].issup = issup;


            //: [SVProgressHUD dismissWithDelay:0.1 completion:^{
            [SVProgressHUD dismissWithDelay:0.1 completion:^{

                //: [CCCAutoLoginManager sharedManager].isloading = NO;
                [DecisionMakerPathAdd joint].isloading = NO;


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

                //: USERLoginData *sdkData = [[USERLoginData alloc] init];
                FlipData *sdkData = [[FlipData alloc] init];
                //: sdkData.account = accid;
                sdkData.account = accid;
                //: sdkData.token = nimtoken;
                sdkData.token = nimtoken;
                //: sdkData.authType = 0;
                sdkData.authType = 0;
                //: sdkData.loginExtension = @"";
                sdkData.loginExtension = @"";

                //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                [[BlendManager iconAcrossManager] setCurrentLoginData:sdkData];

                //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];

                //: USERMainTabController * mainTab = [[USERMainTabController alloc] initWithNibName:nil bundle:nil];
                TranslateTabletBarController * mainTab = [[TranslateTabletBarController alloc] initWithNibName:nil bundle:nil];
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
            [DecisionMakerPathAdd joint].isloading = NO;
            //: [self initUI];
            [self initImageTo];

            //: [SVProgressHUD dismissWithDelay:0.25 completion:^{
            [SVProgressHUD dismissWithDelay:0.25 completion:^{

            //: }];
            }];
        }
    //: }];
    }];
}

//: -(void)inputAccount:(NSString*)account password:(NSString *)password{
-(void)disableInfo:(NSString*)account be:(NSString *)password{
    //: _usernameTextField.text = account;
    _usernameTextField.text = account;
    //: _passwordTextField.text = password;
    _passwordTextField.text = password;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)mediaClick:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)nimInfo:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [YoungBirdData kNameSharedData];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[YoungBirdData kName_lastData], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}

//: - (void)forgetPSDButtonClick
- (void)array
{
    //: GetBackPasswordViewController *vc = [[GetBackPasswordViewController alloc]init];
    StandardViewController *vc = [[StandardViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[YoungBirdData kTitle_inventMigrationData]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [USERRegistConfigManager shareConfigManager].loginVC = self;
    [StandardManager temporaryWorker].loginVC = self;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    TableContext *userDefaults = [TableContext name];
    //: if (userDefaults.language.length > 0) {
    if (userDefaults.language.length > 0) {
        //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
        [DecisionMakerPathAdd joint].isRequestAutoLoginFinish = YES;
        //: [self autoLogin];
        [self replyEdge];
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
        [self needsView];
    }

    //1.获取网络权限 根绝权限进行人机交互
     //: if (100000) {
     if (100000) {
         //: [self networkStatus];
         [self par];
     //: }else {
     }else {
         //2.2已经开启网络权限 监听网络状态
         //: [self addReachabilityManager];
         [self reachability];
     }

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registSuccessWithAccount:) name:@"RegistFinshNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadTo:) name:[YoungBirdData kTitleBridgeShowData] object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];



//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:KEKENotificationLanguageChanged object:nil];

//    [self.view addSubview:self.loadingView];
//    self.loadingView.hidden = YES;
}

//: - (void)textFieldDidEndEditing:(UITextField *)textField {
- (void)textFieldDidEndEditing:(UITextField *)textField {
    //: self.secureButton.hidden = YES;
    self.secureButton.hidden = YES;
}

//: -(YYLabel *)registLabel{
-(YYLabel *)registLabel{
    //: if (!_registLabel) {
    if (!_registLabel) {
        //: NSString *noCount = [DisplayLanguageManager getTextWithKey:@"activity_login_has_no_account"];
        NSString *noCount = [MakeManager cell:[YoungBirdData kText_onShallowData]];
        //: NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentCenter;
        text1.yy_alignment = NSTextAlignmentCenter;
        //: text1.yy_color = [UIColor colorWithHexString:@"#8282A7"];
        text1.yy_color = [UIColor cell:[YoungBirdData kTitleLoopText]];
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

//: -(void)registSuccessWithAccount:(NSNotification *)notification{
-(void)loadTo:(NSNotification *)notification{
    //: NSDictionary *dict = notification.object;
    NSDictionary *dict = notification.object;
    //: _usernameTextField.text = [dict newStringValueForKey:@"UserAccount"];
    _usernameTextField.text = [dict comment:[YoungBirdData kTextImmigrantData]];
    //: _passwordTextField.text = [dict newStringValueForKey:@"UserPassWord"];
    _passwordTextField.text = [dict comment:[YoungBirdData kTitle_sendValue]];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self doLogin];
        [self nameFor];
    //: });
    });
}
//: - (void)doRegister
- (void)languageOf
{
    //: DisplayRegisterViewController *vc = [[DisplayRegisterViewController alloc]init];
    CenterViewController *vc = [[CenterViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(YYLabel *)protocolLabel{
-(YYLabel *)protocolLabel{
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [DisplayLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [MakeManager cell:[YoungBirdData kTitlePlaceString]];
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
                                  color:[UIColor cell:[YoungBirdData kText_imageValueString]]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {

            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            MakeViewController *vc = [[MakeViewController alloc] init];
            //: vc.webTitle = [DisplayLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [MakeManager cell:[YoungBirdData kTextStableString]];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
//            vc.urlString = [TableContext name].yshref;
            vc.urlString = @"https://www.kazmer.org/privacy.html";
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
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)status:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [YoungBirdData kTitleCommitData];

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[YoungBirdData kName_lastData], pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}

//: - (void)doLogin {
- (void)nameFor {

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
        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MakeManager cell:[YoungBirdData kContent_pullData]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MakeManager cell:[YoungBirdData kText_nutAlsoString]] duration:2.0 position:CSToastPositionCenter];
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
    [dict setObject:[YoungBirdData kTitleShoppingData] forKey:[YoungBirdData kNameDenseLoopData]];
    //: [dict setObject:@"1" forKey:@"type"];
    [dict setObject:@"1" forKey:[YoungBirdData kNameKeyChickValue]];
    //: [dict setObject:_usernameTextField.text forKey:@"account"];
    [dict setObject:_usernameTextField.text forKey:@"account"];
    //: [dict setObject:_passwordTextField.text forKey:@"password"];
    [dict setObject:_passwordTextField.text forKey:[YoungBirdData kText_commitName]];
    //: [dict setObject:[NSString stringWithFormat:@"iOS%@",[ZCHttpRequestHeader deviceVersion]] forKey:@"telname"];
    [dict setObject:[NSString stringWithFormat:[YoungBirdData kTitle_dataName],[ImageLabel title]] forKey:[YoungBirdData kName_hideString]];
    //: [dict setObject:[ZCHttpRequestHeader getIOSVersion] forKey:@"systems"];
    [dict setObject:[ImageLabel subWill] forKey:[YoungBirdData kTextContentValue]];
    //: [dict setObject:[SNDevice deviceIUUID] forKey:@"deviceid"];
    [dict setObject:[TranslateSize arenaIuuid] forKey:[YoungBirdData kName_colorValue]];

    //: [dict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [dict setObject:[self needForMagnitude]?@"1":@"0" forKey:[YoungBirdData kTitleNutRangeItemName]];

    //: if (_isloading){
    if (_isloading){
        //: return;
        return;
    }
    //: _isloading = YES;
    _isloading = YES;

    //: [self.loadingView animationShow];
    [self.loadingView showPress];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/login"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[YoungBirdData kTextTeamString]] query:dict showThan:NO green:^(id responseObject) {

        //: _isloading = NO;
        _isloading = NO;

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[YoungBirdData kTitle_sunlightData]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[YoungBirdData kNameSendString]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: __block NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            __block NSString *nimtoken = [data comment:[YoungBirdData kTitle_teamValue]];
            //: __block NSString *accid = [data newStringValueForKey:@"id"];
            __block NSString *accid = [data comment:@"id"];

            //: [NIMUserDefaults standardUserDefaults].loginToken = [data newStringValueForKey:@"token"];
            [TableContext name].loginToken = [data comment:[YoungBirdData kTitleButCellNameValue]];
            //: [NIMUserDefaults standardUserDefaults].accid = [data newStringValueForKey:@"id"];
            [TableContext name].accid = [data comment:@"id"];


            //: [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {
            [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {

                    //: [self.loadingView animationClose];
                    [self.loadingView ingatheringBy];

                    //: if (error != nil) {
                    if (error != nil) {

                        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"login_activity_login_failed"] duration:2.0 position:CSToastPositionCenter];
                        [self.view makeToast:[MakeManager cell:[YoungBirdData kTitleSuggestString]] duration:2.0 position:CSToastPositionCenter];

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
                style.messageColor = [UIColor cell:[YoungBirdData kName_wheatString]];
                //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"login_activity_login_success"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
                [self.view makeToast:[MakeManager cell:[YoungBirdData kText_civilianName]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[YoungBirdData kName_everValue]] style:style completion:nil];

                    //: USERLoginData *sdkData = [[USERLoginData alloc] init];
                    FlipData *sdkData = [[FlipData alloc] init];
                    //: sdkData.account = accid;
                    sdkData.account = accid;
                    //: sdkData.token = nimtoken;
                    sdkData.token = nimtoken;
                    //: sdkData.authType = 0;
                    sdkData.authType = 0;
                    //: sdkData.loginExtension = @"";
                    sdkData.loginExtension = @"";
                    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                    [[BlendManager iconAcrossManager] setCurrentLoginData:sdkData];




                    //: USERMainTabController * mainTab = [[USERMainTabController alloc] initWithNibName:nil bundle:nil];
                    TranslateTabletBarController * mainTab = [[TranslateTabletBarController alloc] initWithNibName:nil bundle:nil];
                    //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    //: [NIMUserDefaults standardUserDefaults].accountName = _usernameTextField.text;
                    [TableContext name].accountName = _usernameTextField.text;
                    //: [NIMUserDefaults standardUserDefaults].pCode = _passwordTextField.text;
                    [TableContext name].pCode = _passwordTextField.text;


            //: }];
            }];
        //: }else{
        }else{
            //: [self.loadingView animationClose];
            [self.loadingView ingatheringBy];

//            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor cell:[YoungBirdData kName_wheatString]];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[YoungBirdData kTitleDoingValue]] style:style completion:nil];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: [self.loadingView animationClose];
        [self.loadingView ingatheringBy];
            //: _isloading = NO;
            _isloading = NO;
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor cell:[YoungBirdData kName_wheatString]];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[MakeManager cell:[YoungBirdData kTitle_frameValue]] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[YoungBirdData kTitleDoingValue]] style:style completion:nil];

    //: }];
    }];
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)initUI{
- (void)initImageTo{


    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+10, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice comeDownSuperphylum])+10, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[YoungBirdData kText_tapData]];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"activity_login_welcome"];
    labtitle.text = [MakeManager cell:[YoungBirdData kContent_retireTitle]];
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
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
    usernameView.backgroundColor = [UIColor cell:[YoungBirdData kTextRawData]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[YoungBirdData kText_aircraftString]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor cell:[YoungBirdData kNameConsumptionValue]];
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[DisplayLanguageManager getTextWithKey:@"register_account_activity_account"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[MakeManager cell:[YoungBirdData kContent_pullData]] attributes:@{NSForegroundColorAttributeName:[UIColor cell:[YoungBirdData kName_stopString]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];
    //: if ([NIMUserDefaults standardUserDefaults].accountName && [NIMUserDefaults standardUserDefaults].accountName.length > 0){
    if ([TableContext name].accountName && [TableContext name].accountName.length > 0){
        //: _usernameTextField.text = [NIMUserDefaults standardUserDefaults].accountName;
        _usernameTextField.text = [TableContext name].accountName;
    }

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
    psdView.backgroundColor = [UIColor cell:[YoungBirdData kTextRawData]];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[YoungBirdData kName_textTitleData]];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor cell:[YoungBirdData kNameConsumptionValue]];
    //: _passwordTextField.secureTextEntry = YES;
    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[DisplayLanguageManager getTextWithKey:@"register_account_activity_psw"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[MakeManager cell:[YoungBirdData kText_nutAlsoString]] attributes:@{NSForegroundColorAttributeName:[UIColor cell:[YoungBirdData kName_stopString]]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(atAcross:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[YoungBirdData kTitleValueName]] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[YoungBirdData kName_standardData]] forState:UIControlStateSelected];
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
    //: [_loginButton setTitle:[DisplayLanguageManager getTextWithKey:@"activity_login_login"] forState:UIControlStateNormal];
    [_loginButton setTitle:[MakeManager cell:[YoungBirdData kTitleErrorString]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(nameFor) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _loginButton.backgroundColor = [UIColor cell:[YoungBirdData kText_imageValueString]];
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
    [_registerButton setTitleColor:[UIColor cell:[YoungBirdData kText_imageValueString]] forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"zanwuzhanhaozhuce") forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(doRegister) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(languageOf) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[DisplayLanguageManager getTextWithKey:@"activity_register_title"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[MakeManager cell:[YoungBirdData kTitleNutShowText]] attributes:attributes];
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
    [_agreementButton setImage:[UIImage imageNamed:[YoungBirdData kTitle_addContent]] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[YoungBirdData kTitleHeavilyData]] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(mediaClick:) forControlEvents:UIControlEventTouchUpInside];
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

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self preferredStatusBarStyle];
    [self preferredStatusBarStyle];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (ZMONCustomLoadingView *)loadingView
- (TopYearView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[TopYearView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}

/*
 CTCellularData在iOS9之前是私有类，权限设置是iOS10开始的，所以App Store审核没有问题
 获取网络权限状态
 */
//: - (void)networkStatus {
- (void)par {
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
                [self reachability];
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self needsView];
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


//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4]
