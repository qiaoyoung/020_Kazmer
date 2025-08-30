
#import <Foundation/Foundation.h>

@interface InspectionData : NSObject

+ (instancetype)sharedInstance;

//: fr_strings
@property (nonatomic, copy) NSString *kName_aestheticTitle;

//: pk_strings
@property (nonatomic, copy) NSString *kNameDozeContent;

//: hant
@property (nonatomic, copy) NSString *kTitleAxValue;

//: cs_strings
@property (nonatomic, copy) NSString *kTitle_colorRetireValue;

//: hu_strings
@property (nonatomic, copy) NSString *kText_viewName;

//: ru_strings
@property (nonatomic, copy) NSString *kNameExcitementString;

//: text
@property (nonatomic, copy) NSString *kTextInvasionStopString;

//: zh_hant_strings
@property (nonatomic, copy) NSString *kContent_leadershipData;

//: mt_strings
@property (nonatomic, copy) NSString *kTitle_singValue;

//: fi_strings
@property (nonatomic, copy) NSString *kTitleCriticismName;

//: main_tab_my
@property (nonatomic, copy) NSString *kTitle_pitaValue;

//: tr_strings
@property (nonatomic, copy) NSString *kTitleColorCosyString;

//: vi_strings
@property (nonatomic, copy) NSString *kText_fistData;

//: %@/%@.xml
@property (nonatomic, copy) NSString *kName_destructString;

//: it_strings
@property (nonatomic, copy) NSString *kTitle_bendString;

//: zh_strings
@property (nonatomic, copy) NSString *kTitlePasseContent;

//: da_strings
@property (nonatomic, copy) NSString *kName_fierceString;

//: sa_strings
@property (nonatomic, copy) NSString *kName_progressValue;

//: ja_strings
@property (nonatomic, copy) NSString *kTextCreateValue;

//: bg_strings
@property (nonatomic, copy) NSString *kNameBotData;

//: pt_strings
@property (nonatomic, copy) NSString *kTitle_glanceData;

//: spa
@property (nonatomic, copy) NSString *kTitleBridgeString;

//: string
@property (nonatomic, copy) NSString *kNameVarietyLungFierceString;

//: en_strings
@property (nonatomic, copy) NSString *kContent_flyingTreasureData;

//: sl_strings
@property (nonatomic, copy) NSString *kTitle_defineString;

//: ko_strings
@property (nonatomic, copy) NSString *kNameWoodData;

//: hr_strings
@property (nonatomic, copy) NSString *kTitleRecommendName;

//: el_strings
@property (nonatomic, copy) NSString *kContentBronzeString;

//: zh_CN
@property (nonatomic, copy) NSString *kTitleSpringValue;

//: sv_strings
@property (nonatomic, copy) NSString *kContentDetailValue;

//: sk_strings
@property (nonatomic, copy) NSString *kText_sauceData;

//: pl_strings
@property (nonatomic, copy) NSString *kNameFirmlyValue;

//: ug_strings
@property (nonatomic, copy) NSString *kName_cosyString;

//: ro_strings
@property (nonatomic, copy) NSString *kContent_agileValue;

//: nl_strings
@property (nonatomic, copy) NSString *kNameFistValue;

//: lv_strings
@property (nonatomic, copy) NSString *kText_grayLamValue;

//: spa_strings
@property (nonatomic, copy) NSString *kNameDozeValue;

//: ga_strings
@property (nonatomic, copy) NSString *kTitleTopSnapName;

//: th_strings
@property (nonatomic, copy) NSString *kName_atTankString;

//: lt_strings
@property (nonatomic, copy) NSString *kName_detailHardwareString;

//: resources
@property (nonatomic, copy) NSString *kTitle_respectivelyValue;

//: de_strings
@property (nonatomic, copy) NSString *kText_gentName;

//: bd_strings
@property (nonatomic, copy) NSString *kTitleSilkText;

//: lb_strings
@property (nonatomic, copy) NSString *kTitle_traditionalName;

//: et_strings
@property (nonatomic, copy) NSString *kTextAuthorData;

//: hi_strings
@property (nonatomic, copy) NSString *kText_okayString;

//: id_strings
@property (nonatomic, copy) NSString *kName_snapCompareValue;

//: eg_strings
@property (nonatomic, copy) NSString *kName_artiText;

@end

@implementation InspectionData

+ (instancetype)sharedInstance {
    static InspectionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)InspectionDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)InspectionDataToCache:(Byte *)data {
    int shooter = data[0];
    Byte flowerGirl = data[1];
    int clerkView = data[2];
    for (int i = clerkView; i < clerkView + shooter; i++) {
        int value = data[i] - flowerGirl;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[clerkView + shooter] = 0;
    return data + clerkView;
}

- (NSString *)StringFromInspectionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InspectionDataToCache:data]];
}

//: main_tab_my
- (NSString *)kTitle_pitaValue {
    if (!_kTitle_pitaValue) {
		NSString *origin = @"0B3606C80C20A3979FA495AA979895A3AF6D";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_pitaValue = [self StringFromInspectionData:value];
    }
    return _kTitle_pitaValue;
}

//: ga_strings
- (NSString *)kTitleTopSnapName {
    if (!_kTitleTopSnapName) {
		NSString *origin = @"0A1E0D042EE76B09866F511F27857F7D919290878C85918B";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleTopSnapName = [self StringFromInspectionData:value];
    }
    return _kTitleTopSnapName;
}

//: nl_strings
- (NSString *)kNameFistValue {
    if (!_kNameFistValue) {
		NSString *origin = @"0A090BB24BEFB230C669F47775687C7D7B7277707C26";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameFistValue = [self StringFromInspectionData:value];
    }
    return _kNameFistValue;
}

//: text
- (NSString *)kTextInvasionStopString {
    if (!_kTextInvasionStopString) {
		NSString *origin = @"042A08A5AE48FEFC9E8FA29E0F";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextInvasionStopString = [self StringFromInspectionData:value];
    }
    return _kTextInvasionStopString;
}

//: vi_strings
- (NSString *)kText_fistData {
    if (!_kText_fistData) {
		NSString *origin = @"0A330AF45287169E8B14A99C92A6A7A59CA19AA606";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_fistData = [self StringFromInspectionData:value];
    }
    return _kText_fistData;
}

//: ko_strings
- (NSString *)kNameWoodData {
    if (!_kNameWoodData) {
		NSString *origin = @"0A550AE250CD5CE802D7C0C4B4C8C9C7BEC3BCC842";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameWoodData = [self StringFromInspectionData:value];
    }
    return _kNameWoodData;
}

//: bd_strings
- (NSString *)kTitleSilkText {
    if (!_kTitleSilkText) {
		NSString *origin = @"0A2E0B101A287C551AEAEE90928DA1A2A0979C95A143";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSilkText = [self StringFromInspectionData:value];
    }
    return _kTitleSilkText;
}

//: cs_strings
- (NSString *)kTitle_colorRetireValue {
    if (!_kTitle_colorRetireValue) {
		NSString *origin = @"0A020D702328E4C362214DA66B6575617576746B70697597";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_colorRetireValue = [self StringFromInspectionData:value];
    }
    return _kTitle_colorRetireValue;
}

//: spa
- (NSString *)kTitleBridgeString {
    if (!_kTitleBridgeString) {
		NSString *origin = @"031F070AC9F22F928F807B";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleBridgeString = [self StringFromInspectionData:value];
    }
    return _kTitleBridgeString;
}

//: ja_strings
- (NSString *)kTextCreateValue {
    if (!_kTextCreateValue) {
		NSString *origin = @"0A580A71E02194BD2286C2B9B7CBCCCAC1C6BFCB6B";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextCreateValue = [self StringFromInspectionData:value];
    }
    return _kTextCreateValue;
}

//: fi_strings
- (NSString *)kTitleCriticismName {
    if (!_kTitleCriticismName) {
		NSString *origin = @"0A200C56FC4BE993204DABD586897F939492898E8793CD";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleCriticismName = [self StringFromInspectionData:value];
    }
    return _kTitleCriticismName;
}

//: de_strings
- (NSString *)kText_gentName {
    if (!_kText_gentName) {
		NSString *origin = @"0A03068B68D56768627677756C716A7633";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_gentName = [self StringFromInspectionData:value];
    }
    return _kText_gentName;
}

//: ro_strings
- (NSString *)kContent_agileValue {
    if (!_kContent_agileValue) {
		NSString *origin = @"0A32092E05CE69C5D2A4A191A5A6A49BA099A52D";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_agileValue = [self StringFromInspectionData:value];
    }
    return _kContent_agileValue;
}

//: lt_strings
- (NSString *)kName_detailHardwareString {
    if (!_kName_detailHardwareString) {
		NSString *origin = @"0A3209454721949ED49EA691A5A6A49BA099A569";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_detailHardwareString = [self StringFromInspectionData:value];
    }
    return _kName_detailHardwareString;
}

//: hu_strings
- (NSString *)kText_viewName {
    if (!_kText_viewName) {
		NSString *origin = @"0A5F09AC34CDA3DE73C7D4BED2D3D1C8CDC6D2FF";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_viewName = [self StringFromInspectionData:value];
    }
    return _kText_viewName;
}

//: id_strings
- (NSString *)kName_snapCompareValue {
    if (!_kName_snapCompareValue) {
		NSString *origin = @"0A1E0D635BE05A3DDBA317C5D187827D919290878C8591E0";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_snapCompareValue = [self StringFromInspectionData:value];
    }
    return _kName_snapCompareValue;
}

//: pt_strings
- (NSString *)kTitle_glanceData {
    if (!_kTitle_glanceData) {
		NSString *origin = @"0A4A0C8CC2C1ABF153C6CA1CBABEA9BDBEBCB3B8B1BD8F";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_glanceData = [self StringFromInspectionData:value];
    }
    return _kTitle_glanceData;
}

//: tr_strings
- (NSString *)kTitleColorCosyString {
    if (!_kTitleColorCosyString) {
		NSString *origin = @"0A1A0CA6F613DDDBA4BA6F1C8E8C798D8E8C8388818DD5";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleColorCosyString = [self StringFromInspectionData:value];
    }
    return _kTitleColorCosyString;
}

//: sl_strings
- (NSString *)kTitle_defineString {
    if (!_kTitle_defineString) {
		NSString *origin = @"0A020DF0EE1C3353A797C3237F756E617576746B70697574";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_defineString = [self StringFromInspectionData:value];
    }
    return _kTitle_defineString;
}

//: th_strings
- (NSString *)kName_atTankString {
    if (!_kName_atTankString) {
		NSString *origin = @"0A4404E4B8ACA3B7B8B6ADB2ABB738";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_atTankString = [self StringFromInspectionData:value];
    }
    return _kName_atTankString;
}

//: da_strings
- (NSString *)kName_fierceString {
    if (!_kName_fierceString) {
		NSString *origin = @"0A1B08202BB9F9407F7C7A8E8F8D8489828E2D";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_fierceString = [self StringFromInspectionData:value];
    }
    return _kName_fierceString;
}

//: pl_strings
- (NSString *)kNameFirmlyValue {
    if (!_kNameFirmlyValue) {
		NSString *origin = @"0A3F041AAFAB9EB2B3B1A8ADA6B2F4";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameFirmlyValue = [self StringFromInspectionData:value];
    }
    return _kNameFirmlyValue;
}

//: hant
- (NSString *)kTitleAxValue {
    if (!_kTitleAxValue) {
		NSString *origin = @"041707E983D69D7F78858B40";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleAxValue = [self StringFromInspectionData:value];
    }
    return _kTitleAxValue;
}

//: spa_strings
- (NSString *)kNameDozeValue {
    if (!_kNameDozeValue) {
		NSString *origin = @"0B2B081875F5F3539E9B8C8A9E9F9D9499929EBD";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameDozeValue = [self StringFromInspectionData:value];
    }
    return _kNameDozeValue;
}

//: it_strings
- (NSString *)kTitle_bendString {
    if (!_kTitle_bendString) {
		NSString *origin = @"0A10059F5579846F838482797E7783BB";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_bendString = [self StringFromInspectionData:value];
    }
    return _kTitle_bendString;
}

//: bg_strings
- (NSString *)kNameBotData {
    if (!_kNameBotData) {
		NSString *origin = @"0A0507800BDC66676C647879776E736C7848";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameBotData = [self StringFromInspectionData:value];
    }
    return _kNameBotData;
}

//: resources
- (NSString *)kTitle_respectivelyValue {
    if (!_kTitle_respectivelyValue) {
		NSString *origin = @"09110DBDE0EDC5E6FDEFB6E97883768480868374768486";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_respectivelyValue = [self StringFromInspectionData:value];
    }
    return _kTitle_respectivelyValue;
}

//: lb_strings
- (NSString *)kTitle_traditionalName {
    if (!_kTitle_traditionalName) {
		NSString *origin = @"0A550A63523E356A475CC1B7B4C8C9C7BEC3BCC847";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_traditionalName = [self StringFromInspectionData:value];
    }
    return _kTitle_traditionalName;
}

//: zh_hant_strings
- (NSString *)kContent_leadershipData {
    if (!_kContent_leadershipData) {
		NSString *origin = @"0F3E08E565467F0AB8A69DA69FACB29DB1B2B0A7ACA5B198";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_leadershipData = [self StringFromInspectionData:value];
    }
    return _kContent_leadershipData;
}

//: lv_strings
- (NSString *)kText_grayLamValue {
    if (!_kText_grayLamValue) {
		NSString *origin = @"0A3B07C2880FD6A7B19AAEAFADA4A9A2AEF4";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_grayLamValue = [self StringFromInspectionData:value];
    }
    return _kText_grayLamValue;
}

//: ug_strings
- (NSString *)kName_cosyString {
    if (!_kName_cosyString) {
		NSString *origin = @"0A15038A7C748889877E837C889E";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_cosyString = [self StringFromInspectionData:value];
    }
    return _kName_cosyString;
}

//: hi_strings
- (NSString *)kText_okayString {
    if (!_kText_okayString) {
		NSString *origin = @"0A6208460CEE9C78CACBC1D5D6D4CBD0C9D505";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_okayString = [self StringFromInspectionData:value];
    }
    return _kText_okayString;
}

//: mt_strings
- (NSString *)kTitle_singValue {
    if (!_kTitle_singValue) {
		NSString *origin = @"0A4E0A3BA4FFE16EF86ABBC2ADC1C2C0B7BCB5C193";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_singValue = [self StringFromInspectionData:value];
    }
    return _kTitle_singValue;
}

//: zh_strings
- (NSString *)kTitlePasseContent {
    if (!_kTitlePasseContent) {
		NSString *origin = @"0A2C07FA1917B4A6948B9FA09E959A939F83";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitlePasseContent = [self StringFromInspectionData:value];
    }
    return _kTitlePasseContent;
}

//: pk_strings
- (NSString *)kNameDozeContent {
    if (!_kNameDozeContent) {
		NSString *origin = @"0A140803D5BB492B847F738788867D827B879F";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameDozeContent = [self StringFromInspectionData:value];
    }
    return _kNameDozeContent;
}

//: hr_strings
- (NSString *)kTitleRecommendName {
    if (!_kTitleRecommendName) {
		NSString *origin = @"0A61063FB55CC9D3C0D4D5D3CACFC8D4C5";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleRecommendName = [self StringFromInspectionData:value];
    }
    return _kTitleRecommendName;
}

//: ru_strings
- (NSString *)kNameExcitementString {
    if (!_kNameExcitementString) {
		NSString *origin = @"0A190709DC672D8B8E788C8D8B8287808C94";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameExcitementString = [self StringFromInspectionData:value];
    }
    return _kNameExcitementString;
}

//: string
- (NSString *)kNameVarietyLungFierceString {
    if (!_kNameVarietyLungFierceString) {
		NSString *origin = @"064C0B9C23F7E932357470BFC0BEB5BAB3B3";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameVarietyLungFierceString = [self StringFromInspectionData:value];
    }
    return _kNameVarietyLungFierceString;
}

//: eg_strings
- (NSString *)kName_artiText {
    if (!_kName_artiText) {
		NSString *origin = @"0A2C0391938B9FA09E959A939F13";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_artiText = [self StringFromInspectionData:value];
    }
    return _kName_artiText;
}

//: en_strings
- (NSString *)kContent_flyingTreasureData {
    if (!_kContent_flyingTreasureData) {
		NSString *origin = @"0A28074276D5F48D96879B9C9A91968F9BDD";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_flyingTreasureData = [self StringFromInspectionData:value];
    }
    return _kContent_flyingTreasureData;
}

//: zh_CN
- (NSString *)kTitleSpringValue {
    if (!_kTitleSpringValue) {
		NSString *origin = @"05580AD057BBB10FE63CD2C0B79BA643";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSpringValue = [self StringFromInspectionData:value];
    }
    return _kTitleSpringValue;
}

//: sk_strings
- (NSString *)kText_sauceData {
    if (!_kText_sauceData) {
		NSString *origin = @"0A1303867E728687857C817A866B";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_sauceData = [self StringFromInspectionData:value];
    }
    return _kText_sauceData;
}

//: el_strings
- (NSString *)kContentBronzeString {
    if (!_kContentBronzeString) {
		NSString *origin = @"0A1E0C6041F28BEC71593186838A7D919290878C85917E";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentBronzeString = [self StringFromInspectionData:value];
    }
    return _kContentBronzeString;
}

//: %@/%@.xml
- (NSString *)kName_destructString {
    if (!_kName_destructString) {
		NSString *origin = @"09420D6E3580731D590F858881678271678270BAAFAEE7";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_destructString = [self StringFromInspectionData:value];
    }
    return _kName_destructString;
}

//: sv_strings
- (NSString *)kContentDetailValue {
    if (!_kContentDetailValue) {
		NSString *origin = @"0A380BA44B678716B1EBA1ABAE97ABACAAA1A69FABD9";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentDetailValue = [self StringFromInspectionData:value];
    }
    return _kContentDetailValue;
}

//: et_strings
- (NSString *)kTextAuthorData {
    if (!_kTextAuthorData) {
		NSString *origin = @"0A1F0DC2B41E4AD3E4AA62136A84937E929391888D869215";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextAuthorData = [self StringFromInspectionData:value];
    }
    return _kTextAuthorData;
}

//: sa_strings
- (NSString *)kName_progressValue {
    if (!_kName_progressValue) {
		NSString *origin = @"0A570D742DA95B0B584821075FCAB8B6CACBC9C0C5BECA54";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_progressValue = [self StringFromInspectionData:value];
    }
    return _kName_progressValue;
}

//: fr_strings
- (NSString *)kName_aestheticTitle {
    if (!_kName_aestheticTitle) {
		NSString *origin = @"0A300396A28FA3A4A2999E97A35F";
		NSData *data = [InspectionData InspectionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_aestheticTitle = [self StringFromInspectionData:value];
    }
    return _kName_aestheticTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayLanguageManager.h"
#import "MakeManager.h"
//: #import "DisplayXMLReader.h"
#import "MessageInsideMax.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: @interface DisplayLanguageManager ()<NSXMLParserDelegate>
@interface MakeManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation DisplayLanguageManager
@implementation MakeManager

//: static DisplayLanguageManager *shareInstance = nil;
static MakeManager *m_sessionUrl = nil;

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: if ([_currentElementName isEqualToString:@"main_tab_my"]) {
        if ([_currentElementName isEqualToString:[InspectionData sharedInstance].kTitle_pitaValue]) {
            //: NSLog(@"%@",string);
        }
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

//: + (DisplayLanguageManager *)shareInstance{
+ (MakeManager *)range{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (m_sessionUrl == nil) {
            //: shareInstance = [[DisplayLanguageManager alloc] init];
            m_sessionUrl = [[MakeManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            m_sessionUrl.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return m_sessionUrl;
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setShould:(NSString *)langType{

//    [self.langDict removeAllObjects];

    //: NSString *resourceType = @"zh_strings";
    NSString *resourceType = [InspectionData sharedInstance].kTitlePasseContent;
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"en_strings";
        resourceType = [InspectionData sharedInstance].kContent_flyingTreasureData;
    //: }else if ([langType isEqualToString:@"th"]){
    }else if ([langType isEqualToString:@"th"]){
        //: resourceType = @"th_strings";
        resourceType = [InspectionData sharedInstance].kName_atTankString;
    //: }else if ([langType isEqualToString:@"vi"]){
    }else if ([langType isEqualToString:@"vi"]){
        //: resourceType = @"vi_strings";
        resourceType = [InspectionData sharedInstance].kText_fistData;
    //: }else if ([langType isEqualToString:@"hi"]){
    }else if ([langType isEqualToString:@"hi"]){
        //: resourceType = @"hi_strings";
        resourceType = [InspectionData sharedInstance].kText_okayString;
    //: }else if ([langType isEqualToString:@"ja"]){
    }else if ([langType isEqualToString:@"ja"]){
        //: resourceType = @"ja_strings";
        resourceType = [InspectionData sharedInstance].kTextCreateValue;
    //: }else if ([langType isEqualToString:@"ko"]){
    }else if ([langType isEqualToString:@"ko"]){
        //: resourceType = @"ko_strings";
        resourceType = [InspectionData sharedInstance].kNameWoodData;
    //: }else if ([langType isEqualToString:@"spa"]){
    }else if ([langType isEqualToString:[InspectionData sharedInstance].kTitleBridgeString]){
        //: resourceType = @"spa_strings";
        resourceType = [InspectionData sharedInstance].kNameDozeValue;
    //: }else if ([langType isEqualToString:@"pt"]){
    }else if ([langType isEqualToString:@"pt"]){
        //: resourceType = @"pt_strings";
        resourceType = [InspectionData sharedInstance].kTitle_glanceData;
    //: }else if ([langType isEqualToString:@"id"]){
    }else if ([langType isEqualToString:@"id"]){
        //: resourceType = @"id_strings";
        resourceType = [InspectionData sharedInstance].kName_snapCompareValue;
    //: }else if ([langType isEqualToString:@"it"]){
    }else if ([langType isEqualToString:@"it"]){
        //: resourceType = @"it_strings";
        resourceType = [InspectionData sharedInstance].kTitle_bendString;
    //: }else if ([langType isEqualToString:@"eg"]){
    }else if ([langType isEqualToString:@"eg"]){
        //: resourceType = @"eg_strings";
        resourceType = [InspectionData sharedInstance].kName_artiText;
    //: }else if ([langType isEqualToString:@"tr"]){
    }else if ([langType isEqualToString:@"tr"]){
        //: resourceType = @"tr_strings";
        resourceType = [InspectionData sharedInstance].kTitleColorCosyString;
    //: }else if ([langType isEqualToString:@"ug"]){
    }else if ([langType isEqualToString:@"ug"]){
        //: resourceType = @"ug_strings";
        resourceType = [InspectionData sharedInstance].kName_cosyString;
    //: }else if ([langType isEqualToString:@"de"]){
    }else if ([langType isEqualToString:@"de"]){
        //: resourceType = @"de_strings";
        resourceType = [InspectionData sharedInstance].kText_gentName;
    //: }else if ([langType isEqualToString:@"pk"]){
    }else if ([langType isEqualToString:@"pk"]){
        //: resourceType = @"pk_strings";
        resourceType = [InspectionData sharedInstance].kNameDozeContent;
    //: }else if ([langType isEqualToString:@"sa"]){
    }else if ([langType isEqualToString:@"sa"]){
        //: resourceType = @"sa_strings";
        resourceType = [InspectionData sharedInstance].kName_progressValue;
    //: }else if ([langType isEqualToString:@"ru"]){
    }else if ([langType isEqualToString:@"ru"]){
        //: resourceType = @"ru_strings";
        resourceType = [InspectionData sharedInstance].kNameExcitementString;
    //: }else if ([langType isEqualToString:@"bd"]){
    }else if ([langType isEqualToString:@"bd"]){
        //: resourceType = @"bd_strings";
        resourceType = [InspectionData sharedInstance].kTitleSilkText;
    //: }else if ([langType isEqualToString:@"fr"]){
    }else if ([langType isEqualToString:@"fr"]){
        //: resourceType = @"fr_strings";
        resourceType = [InspectionData sharedInstance].kName_aestheticTitle;
    //: }else if ([langType isEqualToString:@"hant"]){
    }else if ([langType isEqualToString:[InspectionData sharedInstance].kTitleAxValue]){
        //: resourceType = @"zh_hant_strings";
        resourceType = [InspectionData sharedInstance].kContent_leadershipData;
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv_strings";
        resourceType = [InspectionData sharedInstance].kContentDetailValue;
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl_strings";
        resourceType = [InspectionData sharedInstance].kTitle_defineString;
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk_strings";
        resourceType = [InspectionData sharedInstance].kText_sauceData;
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro_strings";
        resourceType = [InspectionData sharedInstance].kContent_agileValue;
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl_strings";
        resourceType = [InspectionData sharedInstance].kNameFirmlyValue;
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl_strings";
        resourceType = [InspectionData sharedInstance].kNameFistValue;
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt_strings";
        resourceType = [InspectionData sharedInstance].kTitle_singValue;
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb_strings";
        resourceType = [InspectionData sharedInstance].kTitle_traditionalName;
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt_strings";
        resourceType = [InspectionData sharedInstance].kName_detailHardwareString;
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv_strings";
        resourceType = [InspectionData sharedInstance].kText_grayLamValue;
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg_strings";
        resourceType = [InspectionData sharedInstance].kNameBotData;
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr_strings";
        resourceType = [InspectionData sharedInstance].kTitleRecommendName;
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs_strings";
        resourceType = [InspectionData sharedInstance].kTitle_colorRetireValue;
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da_strings";
        resourceType = [InspectionData sharedInstance].kName_fierceString;
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et_strings";
        resourceType = [InspectionData sharedInstance].kTextAuthorData;
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi_strings";
        resourceType = [InspectionData sharedInstance].kTitleCriticismName;
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el_strings";
        resourceType = [InspectionData sharedInstance].kContentBronzeString;
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu_strings";
        resourceType = [InspectionData sharedInstance].kText_viewName;
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga_strings";
        resourceType = [InspectionData sharedInstance].kTitleTopSnapName;
    }

    //: NSString *xmlFilePath = [[[SSZipArchiveManager sharedManager] getXML_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@.xml", langType, resourceType]];
    NSString *xmlFilePath = [[[PersonShould commonKey] blueImageClean] stringByAppendingPathComponent:[NSString stringWithFormat:[InspectionData sharedInstance].kName_destructString, langType, resourceType]];

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
    //: NSDictionary *result = [DisplayXMLReader dictionaryForXMLData:xmlData error:&error];
    NSDictionary *result = [MessageInsideMax session:xmlData at:&error];
//    NSDictionary *result = [NSDictionary dictionaryWithXML:xmlData];

    //: NSLog(@"result : %@", result);
    //: if (result) {
    if (result) {
        //: NSDictionary *resources = [result objectForKey:@"resources"];
        NSDictionary *resources = [result objectForKey:[InspectionData sharedInstance].kTitle_respectivelyValue];
        //: if (resources) {
        if (resources) {
            //: NSArray *string = [resources objectForKey:@"string"];
            NSArray *string = [resources objectForKey:[InspectionData sharedInstance].kNameVarietyLungFierceString];
            //: if (string.count > 0) {
            if (string.count > 0) {
                //: [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    //: NSString *name = [obj objectForKey:@"name"];
                    NSString *name = [obj objectForKey:@"name"];
                    //: NSString *text = [obj objectForKey:@"text"];
                    NSString *text = [obj objectForKey:[InspectionData sharedInstance].kTextInvasionStopString];
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
//: - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
    //: NSLog(@"出错");
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)cell:(NSString *)key{
    //: NSMutableDictionary *dict = [DisplayLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [MakeManager range].langDict;
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

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)parserDidStartDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[InspectionData sharedInstance].kNameVarietyLungFierceString]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[@"name"];
        //NSLog(@"--------%@",_currentElementName);
    }

}

//: + (NSString *)getLocale{
+ (NSString *)enableTeam{//th-TH  vi-VN
//    NSString *language = [TableContext standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = [InspectionData sharedInstance].kTitleSpringValue;
//    if ([language isEqualToString:@"en"]) {
//        return @"en_US";
//    }
    //: return locale;
    return locale;
}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)parserDidEndDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}


//: @end
@end
//: __SAVE__ ignore_string [541.5,417.4]
