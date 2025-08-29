
#import <Foundation/Foundation.h>

@interface OptimisticData : NSObject

@end

@implementation OptimisticData

+ (NSData *)OptimisticDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)OptimisticDataToCache:(Byte *)data {
    int outfitKnow = data[0];
    int impossible = data[1];
    for (int i = 0; i < outfitKnow / 2; i++) {
        int begin = impossible + i;
        int end = impossible + outfitKnow - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[impossible + outfitKnow] = 0;
    return data + impossible;
}

+ (NSString *)StringFromOptimisticData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OptimisticDataToCache:data]];
}  

//: 消息已发送，但对方拒收
+ (NSString *)kNameRacyValue {
    /* static */ NSString *kNameRacyValue = nil;
    if (!kNameRacyValue) {
		NSArray<NSString *> *origin = @[@"33", @"2", @"182", @"148", @"230", @"146", @"139", @"230", @"185", @"150", @"230", @"185", @"175", @"229", @"134", @"189", @"228", @"140", @"188", @"239", @"129", @"128", @"233", @"145", @"143", @"229", @"178", @"183", @"229", @"175", @"129", @"230", @"136", @"182", @"230", @"205"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRacyValue = [self StringFromOptimisticData:value];
    }
    return kNameRacyValue;
}

//: %@.code:%zd
+ (NSString *)kTitle_howeverValue {
    /* static */ NSString *kTitle_howeverValue = nil;
    if (!kTitle_howeverValue) {
		NSArray<NSString *> *origin = @[@"11", @"12", @"241", @"7", @"248", @"176", @"167", @"63", @"101", @"96", @"152", @"229", @"100", @"122", @"37", @"58", @"101", @"100", @"111", @"99", @"46", @"64", @"37", @"250"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_howeverValue = [self StringFromOptimisticData:value];
    }
    return kTitle_howeverValue;
}

//: watch_multiretweet_activity_person
+ (NSString *)kName_eyebrowString {
    /* static */ NSString *kName_eyebrowString = nil;
    if (!kName_eyebrowString) {
		NSArray<NSString *> *origin = @[@"34", @"2", @"110", @"111", @"115", @"114", @"101", @"112", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"95", @"116", @"101", @"101", @"119", @"116", @"101", @"114", @"105", @"116", @"108", @"117", @"109", @"95", @"104", @"99", @"116", @"97", @"119", @"93"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_eyebrowString = [self StringFromOptimisticData:value];
    }
    return kName_eyebrowString;
}

//: 发送时间超过2分钟的消息，不能被撤回
+ (NSString *)kName_friendlyString {
    /* static */ NSString *kName_friendlyString = nil;
    if (!kName_friendlyString) {
		NSArray<NSString *> *origin = @[@"52", @"12", @"118", @"33", @"128", @"108", @"25", @"218", @"204", @"238", @"105", @"182", @"158", @"155", @"229", @"164", @"146", @"230", @"171", @"162", @"232", @"189", @"131", @"232", @"141", @"184", @"228", @"140", @"188", @"239", @"175", @"129", @"230", @"136", @"182", @"230", @"132", @"154", @"231", @"159", @"146", @"233", @"134", @"136", @"229", @"50", @"135", @"191", @"232", @"133", @"182", @"232", @"180", @"151", @"233", @"182", @"151", @"230", @"129", @"128", @"233", @"145", @"143", @"229", @"92"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_friendlyString = [self StringFromOptimisticData:value];
    }
    return kName_friendlyString;
}

//: 不允许文字
+ (NSString *)kTitle_quickString {
    /* static */ NSString *kTitle_quickString = nil;
    if (!kTitle_quickString) {
		NSArray<NSString *> *origin = @[@"15", @"11", @"255", @"128", @"11", @"50", @"59", @"243", @"99", @"43", @"123", @"151", @"173", @"229", @"135", @"150", @"230", @"184", @"174", @"232", @"129", @"133", @"229", @"141", @"184", @"228", @"179"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_quickString = [self StringFromOptimisticData:value];
    }
    return kTitle_quickString;
}

//: /team/getStatusSendText
+ (NSString *)kTitleSureContent {
    /* static */ NSString *kTitleSureContent = nil;
    if (!kTitleSureContent) {
		NSArray<NSString *> *origin = @[@"23", @"11", @"231", @"58", @"240", @"52", @"69", @"166", @"9", @"34", @"186", @"116", @"120", @"101", @"84", @"100", @"110", @"101", @"83", @"115", @"117", @"116", @"97", @"116", @"83", @"116", @"101", @"103", @"47", @"109", @"97", @"101", @"116", @"47", @"69"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSureContent = [self StringFromOptimisticData:value];
    }
    return kTitleSureContent;
}

//: 收藏成功
+ (NSString *)kTextDoorString {
    /* static */ NSString *kTextDoorString = nil;
    if (!kTextDoorString) {
		NSArray<NSString *> *origin = @[@"12", @"5", @"91", @"74", @"52", @"159", @"138", @"229", @"144", @"136", @"230", @"143", @"151", @"232", @"182", @"148", @"230", @"85"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextDoorString = [self StringFromOptimisticData:value];
    }
    return kTextDoorString;
}

//: 添加失败
+ (NSString *)kName_colorString {
    /* static */ NSString *kName_colorString = nil;
    if (!kName_colorString) {
		NSArray<NSString *> *origin = @[@"12", @"2", @"165", @"180", @"232", @"177", @"164", @"229", @"160", @"138", @"229", @"187", @"183", @"230", @"109"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_colorString = [self StringFromOptimisticData:value];
    }
    return kName_colorString;
}

//: 选择会话类型
+ (NSString *)kNameCompareString {
    /* static */ NSString *kNameCompareString = nil;
    if (!kNameCompareString) {
		NSArray<NSString *> *origin = @[@"18", @"9", @"144", @"178", @"43", @"11", @"177", @"149", @"183", @"139", @"158", @"229", @"187", @"177", @"231", @"157", @"175", @"232", @"154", @"188", @"228", @"169", @"139", @"230", @"137", @"128", @"233", @"180"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCompareString = [self StringFromOptimisticData:value];
    }
    return kNameCompareString;
}

//: friend_delete_fail
+ (NSString *)kTitlePlayerData {
    /* static */ NSString *kTitlePlayerData = nil;
    if (!kTitlePlayerData) {
		NSArray<NSString *> *origin = @[@"18", @"8", @"85", @"64", @"255", @"109", @"36", @"111", @"108", @"105", @"97", @"102", @"95", @"101", @"116", @"101", @"108", @"101", @"100", @"95", @"100", @"110", @"101", @"105", @"114", @"102", @"157"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePlayerData = [self StringFromOptimisticData:value];
    }
    return kTitlePlayerData;
}

//: hant
+ (NSString *)kName_racyData {
    /* static */ NSString *kName_racyData = nil;
    if (!kName_racyData) {
		NSArray<NSString *> *origin = @[@"4", @"4", @"244", @"55", @"116", @"110", @"97", @"104", @"75"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_racyData = [self StringFromOptimisticData:value];
    }
    return kName_racyData;
}

//: SELF MATCHES %@
+ (NSString *)kTitleMysteryValue {
    /* static */ NSString *kTitleMysteryValue = nil;
    if (!kTitleMysteryValue) {
		NSArray<NSString *> *origin = @[@"15", @"10", @"217", @"99", @"252", @"225", @"43", @"20", @"131", @"190", @"64", @"37", @"32", @"83", @"69", @"72", @"67", @"84", @"65", @"77", @"32", @"70", @"76", @"69", @"83", @"141"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMysteryValue = [self StringFromOptimisticData:value];
    }
    return kTitleMysteryValue;
}

//: teamgonggao_content_
+ (NSString *)kTextSearcherString {
    /* static */ NSString *kTextSearcherString = nil;
    if (!kTextSearcherString) {
		NSArray<NSString *> *origin = @[@"20", @"8", @"56", @"39", @"208", @"190", @"237", @"92", @"95", @"116", @"110", @"101", @"116", @"110", @"111", @"99", @"95", @"111", @"97", @"103", @"103", @"110", @"111", @"103", @"109", @"97", @"101", @"116", @"124"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSearcherString = [self StringFromOptimisticData:value];
    }
    return kTextSearcherString;
}

//: 不能和自己通话哦
+ (NSString *)kText_currentString {
    /* static */ NSString *kText_currentString = nil;
    if (!kText_currentString) {
		NSArray<NSString *> *origin = @[@"24", @"7", @"36", @"8", @"24", @"2", @"223", @"166", @"147", @"229", @"157", @"175", @"232", @"154", @"128", @"233", @"177", @"183", @"229", @"170", @"135", @"232", @"140", @"146", @"229", @"189", @"131", @"232", @"141", @"184", @"228", @"126"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_currentString = [self StringFromOptimisticData:value];
    }
    return kText_currentString;
}

//: 撤回一条消息
+ (NSString *)kText_alsoValue {
    /* static */ NSString *kText_alsoValue = nil;
    if (!kText_alsoValue) {
		NSArray<NSString *> *origin = @[@"18", @"10", @"144", @"137", @"179", @"254", @"105", @"213", @"174", @"248", @"175", @"129", @"230", @"136", @"182", @"230", @"161", @"157", @"230", @"128", @"184", @"228", @"158", @"155", @"229", @"164", @"146", @"230", @"67"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_alsoValue = [self StringFromOptimisticData:value];
    }
    return kText_alsoValue;
}

//: msg
+ (NSString *)kContentBrotherString {
    /* static */ NSString *kContentBrotherString = nil;
    if (!kContentBrotherString) {
		NSArray<NSString *> *origin = @[@"3", @"5", @"41", @"171", @"129", @"103", @"115", @"109", @"60"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentBrotherString = [self StringFromOptimisticData:value];
    }
    return kContentBrotherString;
}

//: 正在输入
+ (NSString *)kTextStagValue {
    /* static */ NSString *kTextStagValue = nil;
    if (!kTextStagValue) {
		NSArray<NSString *> *origin = @[@"12", @"12", @"204", @"41", @"36", @"9", @"217", @"211", @"70", @"43", @"1", @"185", @"165", @"133", @"229", @"147", @"190", @"232", @"168", @"156", @"229", @"163", @"173", @"230", @"114"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStagValue = [self StringFromOptimisticData:value];
    }
    return kTextStagValue;
}

//: 申请成功，等待验证
+ (NSString *)kTextSexuallyString {
    /* static */ NSString *kTextSexuallyString = nil;
    if (!kTextSexuallyString) {
		NSArray<NSString *> *origin = @[@"27", @"8", @"130", @"228", @"153", @"122", @"195", @"174", @"129", @"175", @"232", @"140", @"170", @"233", @"133", @"190", @"229", @"137", @"173", @"231", @"140", @"188", @"239", @"159", @"138", @"229", @"144", @"136", @"230", @"183", @"175", @"232", @"179", @"148", @"231", @"250"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSexuallyString = [self StringFromOptimisticData:value];
    }
    return kTextSexuallyString;
}

//: curTime
+ (NSString *)kTitle_strictName {
    /* static */ NSString *kTitle_strictName = nil;
    if (!kTitle_strictName) {
		NSArray<NSString *> *origin = @[@"7", @"10", @"7", @"203", @"51", @"244", @"26", @"180", @"163", @"56", @"101", @"109", @"105", @"84", @"114", @"117", @"99", @"54"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_strictName = [self StringFromOptimisticData:value];
    }
    return kTitle_strictName;
}

//: Asia/Shanghai
+ (NSString *)kTextHospitalContent {
    /* static */ NSString *kTextHospitalContent = nil;
    if (!kTextHospitalContent) {
		NSArray<NSString *> *origin = @[@"13", @"6", @"151", @"157", @"203", @"180", @"105", @"97", @"104", @"103", @"110", @"97", @"104", @"83", @"47", @"97", @"105", @"115", @"65", @"105"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextHospitalContent = [self StringFromOptimisticData:value];
    }
    return kTextHospitalContent;
}

//: 发送时间超过2分钟的消息不能被撤回
+ (NSString *)kTextLamData {
    /* static */ NSString *kTextLamData = nil;
    if (!kTextLamData) {
		NSArray<NSString *> *origin = @[@"49", @"8", @"48", @"109", @"172", @"187", @"13", @"171", @"158", @"155", @"229", @"164", @"146", @"230", @"171", @"162", @"232", @"189", @"131", @"232", @"141", @"184", @"228", @"175", @"129", @"230", @"136", @"182", @"230", @"132", @"154", @"231", @"159", @"146", @"233", @"134", @"136", @"229", @"50", @"135", @"191", @"232", @"133", @"182", @"232", @"180", @"151", @"233", @"182", @"151", @"230", @"129", @"128", @"233", @"145", @"143", @"229", @"86"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextLamData = [self StringFromOptimisticData:value];
    }
    return kTextLamData;
}

//: 群申请失败
+ (NSString *)kContent_advocateName {
    /* static */ NSString *kContent_advocateName = nil;
    if (!kContent_advocateName) {
		NSArray<NSString *> *origin = @[@"15", @"5", @"227", @"168", @"13", @"165", @"180", @"232", @"177", @"164", @"229", @"183", @"175", @"232", @"179", @"148", @"231", @"164", @"190", @"231", @"104"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_advocateName = [self StringFromOptimisticData:value];
    }
    return kContent_advocateName;
}

//: 消息合并转发失败
+ (NSString *)kTitleProvedData {
    /* static */ NSString *kTitleProvedData = nil;
    if (!kTitleProvedData) {
		NSArray<NSString *> *origin = @[@"24", @"5", @"135", @"40", @"169", @"165", @"180", @"232", @"177", @"164", @"229", @"145", @"143", @"229", @"172", @"189", @"232", @"182", @"185", @"229", @"136", @"144", @"229", @"175", @"129", @"230", @"136", @"182", @"230", @"143"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleProvedData = [self StringFromOptimisticData:value];
    }
    return kTitleProvedData;
}

//: 您已被禁言
+ (NSString *)kTitleThreadPorchSeatData {
    /* static */ NSString *kTitleThreadPorchSeatData = nil;
    if (!kTitleThreadPorchSeatData) {
		NSArray<NSString *> *origin = @[@"15", @"3", @"223", @"128", @"168", @"232", @"129", @"166", @"231", @"171", @"162", @"232", @"178", @"183", @"229", @"168", @"130", @"230", @"59"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleThreadPorchSeatData = [self StringFromOptimisticData:value];
    }
    return kTitleThreadPorchSeatData;
}

//: luyintaiduan
+ (NSString *)kContentGentString {
    /* static */ NSString *kContentGentString = nil;
    if (!kContentGentString) {
		NSArray<NSString *> *origin = @[@"12", @"2", @"110", @"97", @"117", @"100", @"105", @"97", @"116", @"110", @"105", @"121", @"117", @"108", @"23"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentGentString = [self StringFromOptimisticData:value];
    }
    return kContentGentString;
}

//: recid
+ (NSString *)kTextScripRoveFantasticContent {
    /* static */ NSString *kTextScripRoveFantasticContent = nil;
    if (!kTextScripRoveFantasticContent) {
		NSArray<NSString *> *origin = @[@"5", @"5", @"24", @"195", @"142", @"100", @"105", @"99", @"101", @"114", @"191"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextScripRoveFantasticContent = [self StringFromOptimisticData:value];
    }
    return kTextScripRoveFantasticContent;
}

//: type
+ (NSString *)kTextLungString {
    /* static */ NSString *kTextLungString = nil;
    if (!kTextLungString) {
		NSArray<NSString *> *origin = @[@"4", @"11", @"111", @"214", @"152", @"80", @"53", @"155", @"240", @"192", @"54", @"101", @"112", @"121", @"116", @"253"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextLungString = [self StringFromOptimisticData:value];
    }
    return kTextLungString;
}

//: friend_verify_avtivity_net_error
+ (NSString *)kTitle_tankData {
    /* static */ NSString *kTitle_tankData = nil;
    if (!kTitle_tankData) {
		NSArray<NSString *> *origin = @[@"32", @"10", @"169", @"219", @"105", @"64", @"195", @"62", @"30", @"237", @"114", @"111", @"114", @"114", @"101", @"95", @"116", @"101", @"110", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"118", @"97", @"95", @"121", @"102", @"105", @"114", @"101", @"118", @"95", @"100", @"110", @"101", @"105", @"114", @"102", @"210"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_tankData = [self StringFromOptimisticData:value];
    }
    return kTitle_tankData;
}

//: canMemberInfo
+ (NSString *)kTextSubDistributionData {
    /* static */ NSString *kTextSubDistributionData = nil;
    if (!kTextSubDistributionData) {
		NSArray<NSString *> *origin = @[@"13", @"6", @"23", @"139", @"5", @"92", @"111", @"102", @"110", @"73", @"114", @"101", @"98", @"109", @"101", @"77", @"110", @"97", @"99", @"94"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSubDistributionData = [self StringFromOptimisticData:value];
    }
    return kTextSubDistributionData;
}

//: 发言频次
+ (NSString *)kNameDiamondSwingModeData {
    /* static */ NSString *kNameDiamondSwingModeData = nil;
    if (!kNameDiamondSwingModeData) {
		NSArray<NSString *> *origin = @[@"12", @"3", @"179", @"161", @"172", @"230", @"145", @"162", @"233", @"128", @"168", @"232", @"145", @"143", @"229", @"37"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDiamondSwingModeData = [self StringFromOptimisticData:value];
    }
    return kNameDiamondSwingModeData;
}

//: code
+ (NSString *)kContent_instantlyData {
    /* static */ NSString *kContent_instantlyData = nil;
    if (!kContent_instantlyData) {
		NSArray<NSString *> *origin = @[@"4", @"7", @"26", @"169", @"193", @"148", @"152", @"101", @"100", @"111", @"99", @"245"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_instantlyData = [self StringFromOptimisticData:value];
    }
    return kContent_instantlyData;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)kNameDetailedString {
    /* static */ NSString *kNameDetailedString = nil;
    if (!kNameDetailedString) {
		NSArray<NSString *> *origin = @[@"45", @"3", @"48", @"100", @"101", @"108", @"105", @"97", @"102", @"95", @"101", @"116", @"97", @"100", @"112", @"117", @"95", @"111", @"102", @"110", @"105", @"95", @"114", @"101", @"115", @"117", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"118", @"97", @"95", @"101", @"108", @"105", @"102", @"111", @"114", @"112", @"95", @"114", @"101", @"115", @"117", @"35"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDetailedString = [self StringFromOptimisticData:value];
    }
    return kNameDetailedString;
}

//: contact_tag_fragment_sure
+ (NSString *)kTextDevastatingValue {
    /* static */ NSString *kTextDevastatingValue = nil;
    if (!kTextDevastatingValue) {
		NSArray<NSString *> *origin = @[@"25", @"10", @"115", @"8", @"5", @"196", @"88", @"97", @"250", @"238", @"101", @"114", @"117", @"115", @"95", @"116", @"110", @"101", @"109", @"103", @"97", @"114", @"102", @"95", @"103", @"97", @"116", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"108"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextDevastatingValue = [self StringFromOptimisticData:value];
    }
    return kTextDevastatingValue;
}

//: 取消标记失败
+ (NSString *)kName_greatlyData {
    /* static */ NSString *kName_greatlyData = nil;
    if (!kName_greatlyData) {
		NSArray<NSString *> *origin = @[@"18", @"3", @"255", @"165", @"180", @"232", @"177", @"164", @"229", @"176", @"174", @"232", @"135", @"160", @"230", @"136", @"182", @"230", @"150", @"143", @"229", @"128"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_greatlyData = [self StringFromOptimisticData:value];
    }
    return kName_greatlyData;
}

//: /other/getNimCheckSum
+ (NSString *)kName_relieveResearchString {
    /* static */ NSString *kName_relieveResearchString = nil;
    if (!kName_relieveResearchString) {
		NSArray<NSString *> *origin = @[@"21", @"4", @"75", @"222", @"109", @"117", @"83", @"107", @"99", @"101", @"104", @"67", @"109", @"105", @"78", @"116", @"101", @"103", @"47", @"114", @"101", @"104", @"116", @"111", @"47", @"33"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_relieveResearchString = [self StringFromOptimisticData:value];
    }
    return kName_relieveResearchString;
}

//: invalid event
+ (NSString *)kName_glanceValue {
    /* static */ NSString *kName_glanceValue = nil;
    if (!kName_glanceValue) {
		NSArray<NSString *> *origin = @[@"13", @"8", @"157", @"189", @"67", @"55", @"204", @"192", @"116", @"110", @"101", @"118", @"101", @"32", @"100", @"105", @"108", @"97", @"118", @"110", @"105", @"194"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_glanceValue = [self StringFromOptimisticData:value];
    }
    return kName_glanceValue;
}

//: checksum
+ (NSString *)kName_artiString {
    /* static */ NSString *kName_artiString = nil;
    if (!kName_artiString) {
		NSArray<NSString *> *origin = @[@"8", @"10", @"236", @"118", @"160", @"235", @"217", @"152", @"213", @"95", @"109", @"117", @"115", @"107", @"99", @"101", @"104", @"99", @"224"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_artiString = [self StringFromOptimisticData:value];
    }
    return kName_artiString;
}

//: 被拉黑
+ (NSString *)kText_daughterData {
    /* static */ NSString *kText_daughterData = nil;
    if (!kText_daughterData) {
		NSArray<NSString *> *origin = @[@"9", @"7", @"132", @"19", @"140", @"167", @"25", @"145", @"187", @"233", @"137", @"139", @"230", @"171", @"162", @"232", @"228"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_daughterData = [self StringFromOptimisticData:value];
    }
    return kText_daughterData;
}

//: KEKENotificationLanguageChanged
+ (NSString *)kTextWithVarietyString {
    /* static */ NSString *kTextWithVarietyString = nil;
    if (!kTextWithVarietyString) {
		NSArray<NSString *> *origin = @[@"31", @"4", @"193", @"121", @"100", @"101", @"103", @"110", @"97", @"104", @"67", @"101", @"103", @"97", @"117", @"103", @"110", @"97", @"76", @"110", @"111", @"105", @"116", @"97", @"99", @"105", @"102", @"105", @"116", @"111", @"78", @"69", @"75", @"69", @"75", @"155"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextWithVarietyString = [self StringFromOptimisticData:value];
    }
    return kTextWithVarietyString;
}

//: #FEFECA
+ (NSString *)kTitleSeedData {
    /* static */ NSString *kTitleSeedData = nil;
    if (!kTitleSeedData) {
		NSArray<NSString *> *origin = @[@"7", @"2", @"65", @"67", @"69", @"70", @"69", @"70", @"35", @"220"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSeedData = [self StringFromOptimisticData:value];
    }
    return kTitleSeedData;
}

//: 删除成功
+ (NSString *)kName_lessString {
    /* static */ NSString *kName_lessString = nil;
    if (!kName_lessString) {
		NSArray<NSString *> *origin = @[@"12", @"10", @"16", @"70", @"187", @"20", @"106", @"47", @"10", @"59", @"159", @"138", @"229", @"144", @"136", @"230", @"164", @"153", @"233", @"160", @"136", @"229", @"56"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_lessString = [self StringFromOptimisticData:value];
    }
    return kName_lessString;
}

//: 01B0FD
+ (NSString *)kName_fragValue {
    /* static */ NSString *kName_fragValue = nil;
    if (!kName_fragValue) {
		NSArray<NSString *> *origin = @[@"6", @"12", @"77", @"214", @"137", @"53", @"63", @"154", @"90", @"179", @"113", @"4", @"68", @"70", @"48", @"66", @"49", @"48", @"22"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fragValue = [self StringFromOptimisticData:value];
    }
    return kName_fragValue;
}

//: apple+%@
+ (NSString *)kTitleTribeString {
    /* static */ NSString *kTitleTribeString = nil;
    if (!kTitleTribeString) {
		NSArray<NSString *> *origin = @[@"8", @"11", @"1", @"131", @"112", @"160", @"95", @"58", @"164", @"166", @"120", @"64", @"37", @"43", @"101", @"108", @"112", @"112", @"97", @"50"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleTribeString = [self StringFromOptimisticData:value];
    }
    return kTitleTribeString;
}

//: /team/getTeamSetting
+ (NSString *)kName_alongsideData {
    /* static */ NSString *kName_alongsideData = nil;
    if (!kName_alongsideData) {
		NSArray<NSString *> *origin = @[@"20", @"6", @"119", @"130", @"225", @"248", @"103", @"110", @"105", @"116", @"116", @"101", @"83", @"109", @"97", @"101", @"84", @"116", @"101", @"103", @"47", @"109", @"97", @"101", @"116", @"47", @"236"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_alongsideData = [self StringFromOptimisticData:value];
    }
    return kName_alongsideData;
}

//: text
+ (NSString *)kName_rangeData {
    /* static */ NSString *kName_rangeData = nil;
    if (!kName_rangeData) {
		NSArray<NSString *> *origin = @[@"4", @"3", @"2", @"116", @"120", @"101", @"116", @"216"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_rangeData = [self StringFromOptimisticData:value];
    }
    return kName_rangeData;
}

//: YYYY-MM-dd HH:mm:ss
+ (NSString *)kNameDivineString {
    /* static */ NSString *kNameDivineString = nil;
    if (!kNameDivineString) {
		NSArray<NSString *> *origin = @[@"19", @"8", @"82", @"252", @"239", @"38", @"182", @"143", @"115", @"115", @"58", @"109", @"109", @"58", @"72", @"72", @"32", @"100", @"100", @"45", @"77", @"77", @"45", @"89", @"89", @"89", @"89", @"118"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDivineString = [self StringFromOptimisticData:value];
    }
    return kNameDivineString;
}

//: USERMessageRefusedTag
+ (NSString *)kContent_satisfyString {
    /* static */ NSString *kContent_satisfyString = nil;
    if (!kContent_satisfyString) {
		NSArray<NSString *> *origin = @[@"21", @"2", @"103", @"97", @"84", @"100", @"101", @"115", @"117", @"102", @"101", @"82", @"101", @"103", @"97", @"115", @"115", @"101", @"77", @"82", @"69", @"83", @"85", @"131"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_satisfyString = [self StringFromOptimisticData:value];
    }
    return kContent_satisfyString;
}

//: zh-CHS
+ (NSString *)kTextSwingLabData {
    /* static */ NSString *kTextSwingLabData = nil;
    if (!kTextSwingLabData) {
		NSArray<NSString *> *origin = @[@"6", @"3", @"227", @"83", @"72", @"67", @"45", @"104", @"122", @"32"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSwingLabData = [self StringFromOptimisticData:value];
    }
    return kTextSwingLabData;
}

//: USERMessageTranslate
+ (NSString *)kText_greenString {
    /* static */ NSString *kText_greenString = nil;
    if (!kText_greenString) {
		NSArray<NSString *> *origin = @[@"20", @"11", @"10", @"36", @"208", @"107", @"11", @"175", @"205", @"158", @"101", @"101", @"116", @"97", @"108", @"115", @"110", @"97", @"114", @"84", @"101", @"103", @"97", @"115", @"115", @"101", @"77", @"82", @"69", @"83", @"85", @"146"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_greenString = [self StringFromOptimisticData:value];
    }
    return kText_greenString;
}

//: app_team_invalid_tip
+ (NSString *)kText_heavilyToothString {
    /* static */ NSString *kText_heavilyToothString = nil;
    if (!kText_heavilyToothString) {
		NSArray<NSString *> *origin = @[@"20", @"10", @"175", @"219", @"29", @"78", @"120", @"160", @"216", @"236", @"112", @"105", @"116", @"95", @"100", @"105", @"108", @"97", @"118", @"110", @"105", @"95", @"109", @"97", @"101", @"116", @"95", @"112", @"112", @"97", @"248"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_heavilyToothString = [self StringFromOptimisticData:value];
    }
    return kText_heavilyToothString;
}

//: ** 该消息被屏蔽 **
+ (NSString *)kTitleSelecterName {
    /* static */ NSString *kTitleSelecterName = nil;
    if (!kTitleSelecterName) {
		NSArray<NSString *> *origin = @[@"24", @"6", @"80", @"118", @"195", @"205", @"42", @"42", @"32", @"189", @"148", @"232", @"143", @"177", @"229", @"171", @"162", @"232", @"175", @"129", @"230", @"136", @"182", @"230", @"165", @"175", @"232", @"32", @"42", @"42", @"136"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSelecterName = [self StringFromOptimisticData:value];
    }
    return kTitleSelecterName;
}

//: personCardId
+ (NSString *)kTextNonprofitTitle {
    /* static */ NSString *kTextNonprofitTitle = nil;
    if (!kTextNonprofitTitle) {
		NSArray<NSString *> *origin = @[@"12", @"2", @"100", @"73", @"100", @"114", @"97", @"67", @"110", @"111", @"115", @"114", @"101", @"112", @"218"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextNonprofitTitle = [self StringFromOptimisticData:value];
    }
    return kTextNonprofitTitle;
}

//: message_helper_apply_to_group
+ (NSString *)kTitle_lastContent {
    /* static */ NSString *kTitle_lastContent = nil;
    if (!kTitle_lastContent) {
		NSArray<NSString *> *origin = @[@"29", @"2", @"112", @"117", @"111", @"114", @"103", @"95", @"111", @"116", @"95", @"121", @"108", @"112", @"112", @"97", @"95", @"114", @"101", @"112", @"108", @"101", @"104", @"95", @"101", @"103", @"97", @"115", @"115", @"101", @"109", @"19"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_lastContent = [self StringFromOptimisticData:value];
    }
    return kTitle_lastContent;
}

//: 反垃圾消息
+ (NSString *)kText_amberValue {
    /* static */ NSString *kText_amberValue = nil;
    if (!kText_amberValue) {
		NSArray<NSString *> *origin = @[@"15", @"6", @"77", @"254", @"215", @"173", @"175", @"129", @"230", @"136", @"182", @"230", @"190", @"156", @"229", @"131", @"158", @"229", @"141", @"143", @"229", @"112"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_amberValue = [self StringFromOptimisticData:value];
    }
    return kText_amberValue;
}

//: showFile:
+ (NSString *)kTextPinMoleValue {
    /* static */ NSString *kTextPinMoleValue = nil;
    if (!kTextPinMoleValue) {
		NSArray<NSString *> *origin = @[@"9", @"10", @"89", @"83", @"198", @"78", @"117", @"223", @"81", @"214", @"58", @"101", @"108", @"105", @"70", @"119", @"111", @"104", @"115", @"245"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextPinMoleValue = [self StringFromOptimisticData:value];
    }
    return kTextPinMoleValue;
}

//: 转发失败
+ (NSString *)kTextThumbData {
    /* static */ NSString *kTextThumbData = nil;
    if (!kTextThumbData) {
		NSArray<NSString *> *origin = @[@"12", @"11", @"120", @"33", @"3", @"9", @"82", @"217", @"178", @"88", @"112", @"165", @"180", @"232", @"177", @"164", @"229", @"145", @"143", @"229", @"172", @"189", @"232", @"143"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextThumbData = [self StringFromOptimisticData:value];
    }
    return kTextThumbData;
}

//: zh-CHT
+ (NSString *)kTitle_wheatText {
    /* static */ NSString *kTitle_wheatText = nil;
    if (!kTitle_wheatText) {
		NSArray<NSString *> *origin = @[@"6", @"10", @"85", @"188", @"134", @"128", @"221", @"2", @"219", @"91", @"84", @"72", @"67", @"45", @"104", @"122", @"137"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_wheatText = [self StringFromOptimisticData:value];
    }
    return kTitle_wheatText;
}

//: ispush
+ (NSString *)kNameBeauData {
    /* static */ NSString *kNameBeauData = nil;
    if (!kNameBeauData) {
		NSArray<NSString *> *origin = @[@"6", @"12", @"246", @"21", @"116", @"70", @"83", @"187", @"88", @"206", @"93", @"144", @"104", @"115", @"117", @"112", @"115", @"105", @"174"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameBeauData = [self StringFromOptimisticData:value];
    }
    return kNameBeauData;
}

//: sessionname
+ (NSString *)kTitle_eyebrowText {
    /* static */ NSString *kTitle_eyebrowText = nil;
    if (!kTitle_eyebrowText) {
		NSArray<NSString *> *origin = @[@"11", @"11", @"7", @"162", @"36", @"93", @"15", @"67", @"3", @"68", @"190", @"101", @"109", @"97", @"110", @"110", @"111", @"105", @"115", @"115", @"101", @"115", @"124"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_eyebrowText = [self StringFromOptimisticData:value];
    }
    return kTitle_eyebrowText;
}

//: showLocation:
+ (NSString *)kTitleColorSoulData {
    /* static */ NSString *kTitleColorSoulData = nil;
    if (!kTitleColorSoulData) {
		NSArray<NSString *> *origin = @[@"13", @"12", @"58", @"104", @"138", @"37", @"148", @"157", @"151", @"157", @"229", @"196", @"58", @"110", @"111", @"105", @"116", @"97", @"99", @"111", @"76", @"119", @"111", @"104", @"115", @"24"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleColorSoulData = [self StringFromOptimisticData:value];
    }
    return kTitleColorSoulData;
}

//: 已发送
+ (NSString *)kTitleConsumptionData {
    /* static */ NSString *kTitleConsumptionData = nil;
    if (!kTitleConsumptionData) {
		NSArray<NSString *> *origin = @[@"9", @"8", @"229", @"29", @"228", @"41", @"182", @"62", @"129", @"128", @"233", @"145", @"143", @"229", @"178", @"183", @"229", @"213"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleConsumptionData = [self StringFromOptimisticData:value];
    }
    return kTitleConsumptionData;
}

//: group_chat_avatar_activity_add_black_success
+ (NSString *)kTextNessContent {
    /* static */ NSString *kTextNessContent = nil;
    if (!kTextNessContent) {
		NSArray<NSString *> *origin = @[@"44", @"10", @"199", @"128", @"140", @"172", @"247", @"26", @"135", @"72", @"115", @"115", @"101", @"99", @"99", @"117", @"115", @"95", @"107", @"99", @"97", @"108", @"98", @"95", @"100", @"100", @"97", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"95", @"114", @"97", @"116", @"97", @"118", @"97", @"95", @"116", @"97", @"104", @"99", @"95", @"112", @"117", @"111", @"114", @"103", @"143"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextNessContent = [self StringFromOptimisticData:value];
    }
    return kTextNessContent;
}

//: luyinshibai
+ (NSString *)kName_excitementString {
    /* static */ NSString *kName_excitementString = nil;
    if (!kName_excitementString) {
		NSArray<NSString *> *origin = @[@"11", @"6", @"187", @"28", @"136", @"175", @"105", @"97", @"98", @"105", @"104", @"115", @"110", @"105", @"121", @"117", @"108", @"190"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_excitementString = [self StringFromOptimisticData:value];
    }
    return kName_excitementString;
}

//: my_computer
+ (NSString *)kName_cellData {
    /* static */ NSString *kName_cellData = nil;
    if (!kName_cellData) {
		NSArray<NSString *> *origin = @[@"11", @"9", @"168", @"155", @"35", @"227", @"197", @"165", @"140", @"114", @"101", @"116", @"117", @"112", @"109", @"111", @"99", @"95", @"121", @"109", @"195"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_cellData = [self StringFromOptimisticData:value];
    }
    return kName_cellData;
}

//: 确认转发
+ (NSString *)kNameOverallValue {
    /* static */ NSString *kNameOverallValue = nil;
    if (!kNameOverallValue) {
		NSArray<NSString *> *origin = @[@"12", @"9", @"165", @"19", @"40", @"197", @"9", @"202", @"35", @"145", @"143", @"229", @"172", @"189", @"232", @"164", @"174", @"232", @"174", @"161", @"231", @"209"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameOverallValue = [self StringFromOptimisticData:value];
    }
    return kNameOverallValue;
}

//: http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action
+ (NSString *)kText_confrontValue {
    /* static */ NSString *kText_confrontValue = nil;
    if (!kText_confrontValue) {
		NSArray<NSString *> *origin = @[@"63", @"12", @"242", @"17", @"50", @"108", @"147", @"53", @"131", @"13", @"114", @"2", @"110", @"111", @"105", @"116", @"99", @"97", @"46", @"103", @"115", @"77", @"116", @"120", @"101", @"116", @"47", @"114", @"111", @"116", @"97", @"108", @"115", @"110", @"97", @"114", @"116", @"47", @"114", @"101", @"118", @"114", @"101", @"115", @"109", @"105", @"110", @"47", @"109", @"111", @"99", @"46", @"105", @"112", @"97", @"110", @"105", @"120", @"110", @"117", @"121", @"46", @"103", @"115", @"45", @"105", @"112", @"97", @"47", @"47", @"58", @"112", @"116", @"116", @"104", @"148"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_confrontValue = [self StringFromOptimisticData:value];
    }
    return kText_confrontValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)kName_ampleString {
    /* static */ NSString *kName_ampleString = nil;
    if (!kName_ampleString) {
		NSArray<NSString *> *origin = @[@"27", @"6", @"242", @"84", @"73", @"1", @"108", @"101", @"99", @"110", @"97", @"99", @"95", @"116", @"110", @"101", @"109", @"103", @"97", @"114", @"102", @"95", @"103", @"97", @"116", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"128"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_ampleString = [self StringFromOptimisticData:value];
    }
    return kName_ampleString;
}

//: message_super_team
+ (NSString *)kNameStandardOutfitViewTitle {
    /* static */ NSString *kNameStandardOutfitViewTitle = nil;
    if (!kNameStandardOutfitViewTitle) {
		NSArray<NSString *> *origin = @[@"18", @"10", @"52", @"247", @"147", @"73", @"58", @"2", @"162", @"82", @"109", @"97", @"101", @"116", @"95", @"114", @"101", @"112", @"117", @"115", @"95", @"101", @"103", @"97", @"115", @"115", @"101", @"109", @"56"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameStandardOutfitViewTitle = [self StringFromOptimisticData:value];
    }
    return kNameStandardOutfitViewTitle;
}

//: 发言频次过快，请%ld秒后重试
+ (NSString *)kTitle_originallyValue {
    /* static */ NSString *kTitle_originallyValue = nil;
    if (!kTitle_originallyValue) {
		NSArray<NSString *> *origin = @[@"39", @"10", @"210", @"230", @"2", @"178", @"203", @"59", @"251", @"1", @"149", @"175", @"232", @"141", @"135", @"233", @"142", @"144", @"229", @"146", @"167", @"231", @"100", @"108", @"37", @"183", @"175", @"232", @"140", @"188", @"239", @"171", @"191", @"229", @"135", @"191", @"232", @"161", @"172", @"230", @"145", @"162", @"233", @"128", @"168", @"232", @"145", @"143", @"229", @"87"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_originallyValue = [self StringFromOptimisticData:value];
    }
    return kTitle_originallyValue;
}

//: http
+ (NSString *)kTitle_silkDataValue {
    /* static */ NSString *kTitle_silkDataValue = nil;
    if (!kTitle_silkDataValue) {
		NSArray<NSString *> *origin = @[@"4", @"2", @"112", @"116", @"116", @"104", @"94"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_silkDataValue = [self StringFromOptimisticData:value];
    }
    return kTitle_silkDataValue;
}

//: canSendText
+ (NSString *)kContentYoursPoetString {
    /* static */ NSString *kContentYoursPoetString = nil;
    if (!kContentYoursPoetString) {
		NSArray<NSString *> *origin = @[@"11", @"12", @"251", @"84", @"13", @"190", @"202", @"251", @"83", @"46", @"215", @"139", @"116", @"120", @"101", @"84", @"100", @"110", @"101", @"83", @"110", @"97", @"99", @"103"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentYoursPoetString = [self StringFromOptimisticData:value];
    }
    return kContentYoursPoetString;
}

//: teamgonggao_
+ (NSString *)kText_semenData {
    /* static */ NSString *kText_semenData = nil;
    if (!kText_semenData) {
		NSArray<NSString *> *origin = @[@"12", @"2", @"95", @"111", @"97", @"103", @"103", @"110", @"111", @"103", @"109", @"97", @"101", @"116", @"116"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_semenData = [self StringFromOptimisticData:value];
    }
    return kText_semenData;
}

//: /other/feedback
+ (NSString *)kTitle_attitudeData {
    /* static */ NSString *kTitle_attitudeData = nil;
    if (!kTitle_attitudeData) {
		NSArray<NSString *> *origin = @[@"15", @"6", @"248", @"175", @"135", @"72", @"107", @"99", @"97", @"98", @"100", @"101", @"101", @"102", @"47", @"114", @"101", @"104", @"116", @"111", @"47", @"239"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_attitudeData = [self StringFromOptimisticData:value];
    }
    return kTitle_attitudeData;
}

//: 收藏失败
+ (NSString *)kTitle_accessRoveData {
    /* static */ NSString *kTitle_accessRoveData = nil;
    if (!kTitle_accessRoveData) {
		NSArray<NSString *> *origin = @[@"12", @"5", @"231", @"6", @"102", @"165", @"180", @"232", @"177", @"164", @"229", @"143", @"151", @"232", @"182", @"148", @"230", @"211"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_accessRoveData = [self StringFromOptimisticData:value];
    }
    return kTitle_accessRoveData;
}

//: contact
+ (NSString *)kContentToData {
    /* static */ NSString *kContentToData = nil;
    if (!kContentToData) {
		NSArray<NSString *> *origin = @[@"7", @"5", @"212", @"30", @"174", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"252"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentToData = [self StringFromOptimisticData:value];
    }
    return kContentToData;
}

//: app_avchat_not_start_with_less_member
+ (NSString *)kName_scaleString {
    /* static */ NSString *kName_scaleString = nil;
    if (!kName_scaleString) {
		NSArray<NSString *> *origin = @[@"37", @"3", @"145", @"114", @"101", @"98", @"109", @"101", @"109", @"95", @"115", @"115", @"101", @"108", @"95", @"104", @"116", @"105", @"119", @"95", @"116", @"114", @"97", @"116", @"115", @"95", @"116", @"111", @"110", @"95", @"116", @"97", @"104", @"99", @"118", @"97", @"95", @"112", @"112", @"97", @"221"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_scaleString = [self StringFromOptimisticData:value];
    }
    return kName_scaleString;
}

//: #F6B53E
+ (NSString *)kTitle_intactData {
    /* static */ NSString *kTitle_intactData = nil;
    if (!kTitle_intactData) {
		NSArray<NSString *> *origin = @[@"7", @"3", @"45", @"69", @"51", @"53", @"66", @"54", @"70", @"35", @"178"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_intactData = [self StringFromOptimisticData:value];
    }
    return kTitle_intactData;
}

//: username
+ (NSString *)kContent_planningString {
    /* static */ NSString *kContent_planningString = nil;
    if (!kContent_planningString) {
		NSArray<NSString *> *origin = @[@"8", @"4", @"37", @"224", @"101", @"109", @"97", @"110", @"114", @"101", @"115", @"117", @"156"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_planningString = [self StringFromOptimisticData:value];
    }
    return kContent_planningString;
}

//: 请输入附言
+ (NSString *)kTitle_jewelProudString {
    /* static */ NSString *kTitle_jewelProudString = nil;
    if (!kTitle_jewelProudString) {
		NSArray<NSString *> *origin = @[@"15", @"9", @"99", @"93", @"222", @"81", @"89", @"223", @"51", @"128", @"168", @"232", @"132", @"153", @"233", @"165", @"133", @"229", @"147", @"190", @"232", @"183", @"175", @"232", @"200"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_jewelProudString = [self StringFromOptimisticData:value];
    }
    return kTitle_jewelProudString;
}

//: 扩展字段
+ (NSString *)kNameRatherClimateString {
    /* static */ NSString *kNameRatherClimateString = nil;
    if (!kNameRatherClimateString) {
		NSArray<NSString *> *origin = @[@"12", @"5", @"233", @"138", @"129", @"181", @"174", @"230", @"151", @"173", @"229", @"149", @"177", @"229", @"169", @"137", @"230", @"199"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRatherClimateString = [self StringFromOptimisticData:value];
    }
    return kNameRatherClimateString;
}

//: contact_tag_fragment_delete_success
+ (NSString *)kContentThereData {
    /* static */ NSString *kContentThereData = nil;
    if (!kContentThereData) {
		NSArray<NSString *> *origin = @[@"35", @"3", @"120", @"115", @"115", @"101", @"99", @"99", @"117", @"115", @"95", @"101", @"116", @"101", @"108", @"101", @"100", @"95", @"116", @"110", @"101", @"109", @"103", @"97", @"114", @"102", @"95", @"103", @"97", @"116", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"15"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentThereData = [self StringFromOptimisticData:value];
    }
    return kContentThereData;
}

//: activity_friend_verify_info
+ (NSString *)kContent_accessData {
    /* static */ NSString *kContent_accessData = nil;
    if (!kContent_accessData) {
		NSArray<NSString *> *origin = @[@"27", @"2", @"111", @"102", @"110", @"105", @"95", @"121", @"102", @"105", @"114", @"101", @"118", @"95", @"100", @"110", @"101", @"105", @"114", @"102", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"109"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_accessData = [self StringFromOptimisticData:value];
    }
    return kContent_accessData;
}

//: 确定删除？
+ (NSString *)kContent_handsomeValue {
    /* static */ NSString *kContent_handsomeValue = nil;
    if (!kContent_handsomeValue) {
		NSArray<NSString *> *origin = @[@"15", @"2", @"159", @"188", @"239", @"164", @"153", @"233", @"160", @"136", @"229", @"154", @"174", @"229", @"174", @"161", @"231", @"171"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_handsomeValue = [self StringFromOptimisticData:value];
    }
    return kContent_handsomeValue;
}

//: accid
+ (NSString *)kNameMooValue {
    /* static */ NSString *kNameMooValue = nil;
    if (!kNameMooValue) {
		NSArray<NSString *> *origin = @[@"5", @"11", @"193", @"107", @"179", @"119", @"141", @"65", @"153", @"37", @"222", @"100", @"105", @"99", @"99", @"97", @"106"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameMooValue = [self StringFromOptimisticData:value];
    }
    return kNameMooValue;
}

//: apns-collapse-id
+ (NSString *)kName_dateIncomeFileText {
    /* static */ NSString *kName_dateIncomeFileText = nil;
    if (!kName_dateIncomeFileText) {
		NSArray<NSString *> *origin = @[@"16", @"9", @"252", @"164", @"63", @"197", @"131", @"218", @"244", @"100", @"105", @"45", @"101", @"115", @"112", @"97", @"108", @"108", @"111", @"99", @"45", @"115", @"110", @"112", @"97", @"214"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_dateIncomeFileText = [self StringFromOptimisticData:value];
    }
    return kName_dateIncomeFileText;
}

//: showImage:
+ (NSString *)kText_suchData {
    /* static */ NSString *kText_suchData = nil;
    if (!kText_suchData) {
		NSArray<NSString *> *origin = @[@"10", @"5", @"179", @"156", @"15", @"58", @"101", @"103", @"97", @"109", @"73", @"119", @"111", @"104", @"115", @"133"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_suchData = [self StringFromOptimisticData:value];
    }
    return kText_suchData;
}

//: 被禁言
+ (NSString *)kName_aestheticValue {
    /* static */ NSString *kName_aestheticValue = nil;
    if (!kName_aestheticValue) {
		NSArray<NSString *> *origin = @[@"9", @"11", @"173", @"200", @"244", @"192", @"106", @"171", @"143", @"173", @"200", @"128", @"168", @"232", @"129", @"166", @"231", @"171", @"162", @"232", @"226"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_aestheticValue = [self StringFromOptimisticData:value];
    }
    return kName_aestheticValue;
}

//: 消息撤回失败，请重试
+ (NSString *)kNameKnifeValue {
    /* static */ NSString *kNameKnifeValue = nil;
    if (!kNameKnifeValue) {
		NSArray<NSString *> *origin = @[@"30", @"4", @"158", @"213", @"149", @"175", @"232", @"141", @"135", @"233", @"183", @"175", @"232", @"140", @"188", @"239", @"165", @"180", @"232", @"177", @"164", @"229", @"158", @"155", @"229", @"164", @"146", @"230", @"175", @"129", @"230", @"136", @"182", @"230", @"29"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameKnifeValue = [self StringFromOptimisticData:value];
    }
    return kNameKnifeValue;
}

//: desc
+ (NSString *)kTitle_qualityValue {
    /* static */ NSString *kTitle_qualityValue = nil;
    if (!kTitle_qualityValue) {
		NSArray<NSString *> *origin = @[@"4", @"10", @"237", @"31", @"12", @"48", @"119", @"172", @"248", @"208", @"99", @"115", @"101", @"100", @"213"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_qualityValue = [self StringFromOptimisticData:value];
    }
    return kTitle_qualityValue;
}

//: showCustom:
+ (NSString *)kTitle_productiveValue {
    /* static */ NSString *kTitle_productiveValue = nil;
    if (!kTitle_productiveValue) {
		NSArray<NSString *> *origin = @[@"11", @"10", @"50", @"206", @"221", @"134", @"57", @"15", @"12", @"160", @"58", @"109", @"111", @"116", @"115", @"117", @"67", @"119", @"111", @"104", @"115", @"254"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_productiveValue = [self StringFromOptimisticData:value];
    }
    return kTitle_productiveValue;
}

//: nonce
+ (NSString *)kTitleVarietyHeavilyStandardData {
    /* static */ NSString *kTitleVarietyHeavilyStandardData = nil;
    if (!kTitleVarietyHeavilyStandardData) {
		NSArray<NSString *> *origin = @[@"5", @"12", @"1", @"21", @"204", @"188", @"182", @"68", @"27", @"197", @"251", @"74", @"101", @"99", @"110", @"111", @"110", @"168"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleVarietyHeavilyStandardData = [self StringFromOptimisticData:value];
    }
    return kTitleVarietyHeavilyStandardData;
}

//: postscript
+ (NSString *)kTextTeachString {
    /* static */ NSString *kTextTeachString = nil;
    if (!kTextTeachString) {
		NSArray<NSString *> *origin = @[@"10", @"12", @"83", @"162", @"250", @"251", @"76", @"162", @"140", @"236", @"186", @"91", @"116", @"112", @"105", @"114", @"99", @"115", @"116", @"115", @"111", @"112", @"101"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTeachString = [self StringFromOptimisticData:value];
    }
    return kTextTeachString;
}

//: black_list_activity_add_black_failed
+ (NSString *)kNamePainfulText {
    /* static */ NSString *kNamePainfulText = nil;
    if (!kNamePainfulText) {
		NSArray<NSString *> *origin = @[@"36", @"8", @"33", @"137", @"61", @"6", @"239", @"205", @"100", @"101", @"108", @"105", @"97", @"102", @"95", @"107", @"99", @"97", @"108", @"98", @"95", @"100", @"100", @"97", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"95", @"116", @"115", @"105", @"108", @"95", @"107", @"99", @"97", @"108", @"98", @"200"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePainfulText = [self StringFromOptimisticData:value];
    }
    return kNamePainfulText;
}

//: 撤回附言
+ (NSString *)kNameLabEasilyValue {
    /* static */ NSString *kNameLabEasilyValue = nil;
    if (!kNameLabEasilyValue) {
		NSArray<NSString *> *origin = @[@"12", @"3", @"38", @"128", @"168", @"232", @"132", @"153", @"233", @"158", @"155", @"229", @"164", @"146", @"230", @"134"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameLabEasilyValue = [self StringFromOptimisticData:value];
    }
    return kNameLabEasilyValue;
}

//: showVideo:
+ (NSString *)kTitle_strictCurveValue {
    /* static */ NSString *kTitle_strictCurveValue = nil;
    if (!kTitle_strictCurveValue) {
		NSArray<NSString *> *origin = @[@"10", @"11", @"30", @"128", @"35", @"1", @"117", @"59", @"235", @"108", @"181", @"58", @"111", @"101", @"100", @"105", @"86", @"119", @"111", @"104", @"115", @"130"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_strictCurveValue = [self StringFromOptimisticData:value];
    }
    return kTitle_strictCurveValue;
}

//: watch_multiretweet_activity_confirm_forwarded_to
+ (NSString *)kTitle_administerContent {
    /* static */ NSString *kTitle_administerContent = nil;
    if (!kTitle_administerContent) {
		NSArray<NSString *> *origin = @[@"48", @"10", @"130", @"49", @"231", @"206", @"158", @"76", @"142", @"222", @"111", @"116", @"95", @"100", @"101", @"100", @"114", @"97", @"119", @"114", @"111", @"102", @"95", @"109", @"114", @"105", @"102", @"110", @"111", @"99", @"95", @"121", @"116", @"105", @"118", @"105", @"116", @"99", @"97", @"95", @"116", @"101", @"101", @"119", @"116", @"101", @"114", @"105", @"116", @"108", @"117", @"109", @"95", @"104", @"99", @"116", @"97", @"119", @"221"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_administerContent = [self StringFromOptimisticData:value];
    }
    return kTitle_administerContent;
}

//: contact_fragment_group
+ (NSString *)kNameLiteralData {
    /* static */ NSString *kNameLiteralData = nil;
    if (!kNameLiteralData) {
		NSArray<NSString *> *origin = @[@"22", @"8", @"79", @"1", @"89", @"82", @"229", @"122", @"112", @"117", @"111", @"114", @"103", @"95", @"116", @"110", @"101", @"109", @"103", @"97", @"114", @"102", @"95", @"116", @"99", @"97", @"116", @"110", @"111", @"99", @"176"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameLiteralData = [self StringFromOptimisticData:value];
    }
    return kNameLiteralData;
}

//: translation
+ (NSString *)kNameCaptureTonightString {
    /* static */ NSString *kNameCaptureTonightString = nil;
    if (!kNameCaptureTonightString) {
		NSArray<NSString *> *origin = @[@"11", @"7", @"45", @"250", @"227", @"68", @"216", @"110", @"111", @"105", @"116", @"97", @"108", @"115", @"110", @"97", @"114", @"116", @"72"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCaptureTonightString = [self StringFromOptimisticData:value];
    }
    return kNameCaptureTonightString;
}

//: 本地反垃圾失败
+ (NSString *)kNameSunlightString {
    /* static */ NSString *kNameSunlightString = nil;
    if (!kNameSunlightString) {
		NSArray<NSString *> *origin = @[@"21", @"4", @"220", @"131", @"165", @"180", @"232", @"177", @"164", @"229", @"190", @"156", @"229", @"131", @"158", @"229", @"141", @"143", @"229", @"176", @"156", @"229", @"172", @"156", @"230", @"104"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSunlightString = [self StringFromOptimisticData:value];
    }
    return kNameSunlightString;
}

//: teamgonggao_title_
+ (NSString *)kText_ruralString {
    /* static */ NSString *kText_ruralString = nil;
    if (!kText_ruralString) {
		NSArray<NSString *> *origin = @[@"18", @"8", @"12", @"43", @"13", @"109", @"195", @"70", @"95", @"101", @"108", @"116", @"105", @"116", @"95", @"111", @"97", @"103", @"103", @"110", @"111", @"103", @"109", @"97", @"101", @"116", @"143"];
		NSData *data = [OptimisticData OptimisticDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_ruralString = [self StringFromOptimisticData:value];
    }
    return kText_ruralString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WayOfLifeViewController.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIActionSheet+USERBlock.h"
#import "UIActionSheet+NameAddContent.h"
//: #import "USERCustomSysNotificationSender.h"
#import "CornerFlipFlush.h"
//: #import "USERSessionConfig.h"
#import "CropConfig.h"
//: #import "FFFMediaItem.h"
#import "CommingleItem.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERVideoViewController.h"
#import "RowNameViewController.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "OpenDefenceViewController.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERFPSLabel.h"
#import "DirectView.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "FFFKitMediaFetcher.h"
#import "KitFetcher.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "USERSubscribeManager.h"
#import "TagCleanManager.h"
//: #import "FFFInputAtCache.h"
#import "LabelSizeImage.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERCellLayoutConfig.h"
#import "LabelLayoutConfig.h"
//: #import "USERMulSelectFunctionBar.h"
#import "RedView.h"
//: #import "USERMergeForwardSession.h"
#import "MoonOff.h"
//: #import "USERSessionMultiRetweetContentView.h"
#import "ChangeViewControl.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFReplyContentView.h"
#import "BookView.h"
//: #import "USERThreadTalkSessionViewController.h"
#import "LastexViewController.h"
//: #import "UIView+FFFToast.h"
#import "UIView+VisualProperty.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USEROpenRedPackageSheet.h"
#import "LeverContentExpanseView.h"
//: #import "ZOMNForwardViewController.h"
#import "CrownViewController.h"
//: #import "ZMONGalleryImgViewController.h"
#import "TextMaxViewController.h"
//: #import "SNLeadCompleteManager.h"
#import "CellManager.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "CornerCellViewController.h"
//: #import "FFFTeamListDataManager.h"
#import "MentionManager.h"
//: #import "LEEAlert.h"
#import "ControlTag.h"
//: #import "ZCHttpManager+Addtionals.h"
#import "BlendView+CornerWithClean.h"
//: #import "USERListHeader.h"
#import "FlipRecordView.h"
//: #import "ZMONTranslateView.h"
#import "ManCommentView.h"
//: #import "ZMONReportNextView.h"
#import "AtNextView.h"
//: #import "ZMONReportBlackView.h"
#import "TotalryView.h"
//: #import "ZMONReportDeleteView.h"
#import "PersonView.h"
//: #import "ZMONReportHisView.h"
#import "CommentTopView.h"

//: @import MobileCoreServices;
@import MobileCoreServices;
//: @import AVFoundation;
@import AVFoundation;
//: NSString *kUSERDemoRevokeMessageFromMeNotication = @"kUSERDemoRevokeMessageFromMeNotication";
NSString *appTitleTableKey = @"kUSERDemoRevokeMessageFromMeNotication";
// 定义后台允许的最大时间（1小时）
//: static const NSTimeInterval kMaxBackgroundTime = 60*60;

static const NSTimeInterval notiEventTitle (NSString *value) {
    if (value) {
        return  60*60;
    }
    return  60*60;
};

//: @interface USERSessionViewController ()
@interface WayOfLifeViewController ()
//: <UIImagePickerControllerDelegate,
<UIImagePickerControllerDelegate,
//: UINavigationControllerDelegate,
UINavigationControllerDelegate,
//: UISearchControllerDelegate,
UISearchControllerDelegate,
//: NIMSystemNotificationManagerDelegate,
NIMSystemNotificationManagerDelegate,
//: NIMMediaManagerDelegate,
NIMMediaManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: FFFTeamCardViewControllerDelegate,
TextDelegate,
//: NIMChatExtendManagerDelegate,
NIMChatExtendManagerDelegate,
//: UISearchBarDelegate,
UISearchBarDelegate,
//: USERListHeaderDelegate,
ControlDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: USEROpenRedPackageSheetDelegate,
DiscourseDelegate,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: USERReportContentDelegate,
RedDelegate,
//: USERReportNextDelegate,
EnableTitle,
//: USERReportHisNextDelegate>
PathDelegate>
{
    //: BOOL _canSendText;
    BOOL _canSendText;
}

//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) AtNextView *reprotNextView;
//: @property (nonatomic,strong) UIButton *mulSelectCancelBtn;
@property (nonatomic,strong) UIButton *mulSelectCancelBtn;
//: @property (nonatomic,strong) USERMulSelectFunctionBar *mulSelectedSureBar;
@property (nonatomic,strong) RedView *mulSelectedSureBar;
//: @property (nonatomic,strong) NSMutableArray *selectedMessages;
@property (nonatomic,strong) NSMutableArray *selectedMessages;
//: @property (nonatomic,assign) BOOL isSend;
@property (nonatomic,assign) BOOL isSend;
//: @property (nonatomic, strong) ZMONReportHisView *reprotHisNextView;
@property (nonatomic, strong) CommentTopView *reprotHisNextView;
//: @property (nonatomic,strong) USERSessionConfig *sessionConfig;
@property (nonatomic,strong) CropConfig *sessionConfig;
//: @property (nonatomic, strong) USERListHeader *header;
@property (nonatomic, strong) FlipRecordView *header;
//: @property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImagePickerController *imagePicker;

//: @property (nonatomic, strong) NSDate *backgroundEnterTime;
@property (nonatomic, strong) NSDate *backgroundEnterTime;
//: @property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) NSTimer *timer;
//@property (nonatomic,strong)    DirectView *fpsLabel;
//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) KitFetcher *mediaFetcher;

//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) ManCommentView *translateView;
//: @property (nonatomic,assign) NSInteger intervalTime;
@property (nonatomic,assign) NSInteger intervalTime;

//: @property (nonatomic,strong) USERMergeForwardSession *mergeForwardSession;
@property (nonatomic,strong) MoonOff *mergeForwardSession;

//: @property (nonatomic, strong) UILabel *invalid_tip;
@property (nonatomic, strong) UILabel *invalid_tip;// 不在群聊view
//: @property (nonatomic, assign) BOOL shouldRestart;
@property (nonatomic, assign) BOOL shouldRestart;

//: @property (nonatomic,strong) USERCustomSysNotificationSender *notificaionSender;
@property (nonatomic,strong) CornerFlipFlush *notificaionSender;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) PersonView *reprotDeleteView;
//: @property (nonatomic,strong) UIView *currentSingleSnapView;
@property (nonatomic,strong) UIView *currentSingleSnapView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) TotalryView *reprotBlackView;
//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;

//: @end
@end


//: @implementation USERSessionViewController
@implementation WayOfLifeViewController


//: - (void)cancelMessage:(id)sender {
- (void)calendarAdd:(id)sender {
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
    [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
}

//: - (void)showVideo:(NIMMessage *)message
- (void)manifestationParent:(NIMMessage *)message
{
    //: NIMVideoObject *object = message.messageObject;
    NIMVideoObject *object = message.messageObject;
    //: NIMSession *session = [self isMemberOfClass:[USERSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[WayOfLifeViewController class]]? self.session : nil;

    //: USERVideoViewItem *item = [[USERVideoViewItem alloc] init];
    GrowingItem *item = [[GrowingItem alloc] init];
    //: item.path = object.path;
    item.path = object.path;
    //: item.url = object.url;
    item.url = object.url;
    //: item.session = session;
    item.session = session;
    //: item.itemId = object.message.messageId;
    item.itemId = object.message.messageId;

    //: USERVideoViewController *playerViewController = [[USERVideoViewController alloc] initWithVideoViewItem:item];
    RowNameViewController *playerViewController = [[RowNameViewController alloc] initWithShared:item];
    //: playerViewController.message = message;
    playerViewController.message = message;
    //: [self.navigationController pushViewController:playerViewController animated:YES];
    [self.navigationController pushViewController:playerViewController animated:YES];
    //: if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
    if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
        //如果封面图下跪了，点进视频的时候再去下一把封面图
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
        [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself uiUpdateMessage:message];
                [wself cypherTime:message];
            }
        //: }];
        }];
    }
}


//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)container:(NIMMessage *)message
{
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;


    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification ||
        message.messageType == NIMMessageTypeNotification ||
        //: [self cancelMenuByMessageObject:messageObject])
        [self inputBlue:messageObject])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (ZMONReportNextView *)reprotNextView
- (AtNextView *)reprotNextView
{
    //: if(!_reprotNextView){
    if(!_reprotNextView){
        //: _reprotNextView = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotNextView = [[AtNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotNextView.delegate = self;
        _reprotNextView.delegate = self;
    }
    //: return _reprotNextView;
    return _reprotNextView;

}
//: #pragma mark - Cell事件
#pragma mark - Cell事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event
- (BOOL)cutOptionExtend:(ToiletKitSession *)event
{
    //: BOOL handled = [super onTapCell:event];
    BOOL handled = [super cutOptionExtend:event];
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;

    //: if ([eventName isEqualToString:FFFKitEventNameTapContent])
    if ([eventName isEqualToString:userStateId])
    {
        //: NIMMessage *message = event.messageModel.message;
        NIMMessage *message = event.messageModel.message;
        //: NSDictionary *actions = [self cellActions];
        NSDictionary *actions = [self dataSession];
        //: NSString *value = actions[@(message.messageType)];
        NSString *value = actions[@(message.messageType)];
        //: if (value) {
        if (value) {
            //: SEL selector = NSSelectorFromString(value);
            SEL selector = NSSelectorFromString(value);
            //: if (selector && [self respondsToSelector:selector]) {
            if (selector && [self respondsToSelector:selector]) {
                //: SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                //: handled = YES;
                handled = YES;
            }
        }
    }
    //: else if ([eventName isEqualToString:FFFKitEventNameTapRepliedContent])
    else if ([eventName isEqualToString:kCommentSystemIdent])
    {
//        handled = YES;
//        CleanDoing *model = event.messageModel;
//        NIMMessage *message = model.parentMessage;
//        if (!message)
//        {
//            [self.view makeToast:@"父消息不存在".user_localized];
//            return handled;
//        }
//        LastexViewController *vc = [[LastexViewController alloc] initWithThreadMessage:message];
//        [self.navigationController pushViewController:vc animated:YES];
    }
    //: else if([eventName isEqualToString:FFFKitEventNameTapLabelLink])
    else if([eventName isEqualToString:show_contentData])
    {
        //: NSString *link = event.data;
        NSString *link = event.data;
        //: [self openSafari:link];
        [self graduate:link];
        //: handled = YES;
        handled = YES;
    }

    //: if (!handled) {
    if (!handled) {
        //: NSAssert(0, @"invalid event");
        NSAssert(0, [OptimisticData kName_glanceValue]);
    }
    //: return handled;
    return handled;
}

//: - (void)audio2Text:(id)sender
- (void)session:(id)sender
{
//    NIMMessage *message = [self messageForMenu];
//    __weak typeof(self) wself = self;
//    USERAudio2TextViewController *vc = [[USERAudio2TextViewController alloc] initWithMessage:message];
//    vc.completeHandler = ^(void){
//        [wself uiUpdateMessage:message];
//    };
//    [self presentViewController:vc
//                       animated:YES
//                     completion:nil];
}

//: - (void)onTapMenuItemTranslation:(FFFMediaItem *)item
- (void)asBubble:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: NSString *time = [self getNowUTCTimeTimestamp];
    NSString *time = [self resolutionDown];
    //: NSMutableDictionary *param = @{}.mutableCopy;
    NSMutableDictionary *param = @{}.mutableCopy;
    //: param[@"curTime"] = time;
    param[[OptimisticData kTitle_strictName]] = time;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/getNimCheckSum"] params:param isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[OptimisticData kName_relieveResearchString]] query:param showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[OptimisticData kContent_instantlyData]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: NSString *checksum = [data newStringValueForKey:@"checksum"];
            NSString *checksum = [data comment:[OptimisticData kName_artiString]];
            //: NSString *nonce = [data newStringValueForKey:@"nonce"];
            NSString *nonce = [data comment:[OptimisticData kTitleVarietyHeavilyStandardData]];

            //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
            NSString *lang = colorFill([TableContext name].language);
            //: if([lang isEqualToString:@"zh"]){
            if([lang isEqualToString:@"zh"]){
                //: lang = @"zh-CHS";
                lang = [OptimisticData kTextSwingLabData];
            //: }else if ([lang isEqualToString:@"hant"]){
            }else if ([lang isEqualToString:[OptimisticData kName_racyData]]){
                //: lang = @"zh-CHT";
                lang = [OptimisticData kTitle_wheatText];
            }
            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: [dict setObject:userID forKey:@"accid"];
            [dict setObject:userID forKey:[OptimisticData kNameMooValue]];
            //: [dict setObject:message.text forKey:@"text"];
            [dict setObject:message.text forKey:[OptimisticData kName_rangeData]];
            //: [dict setObject:lang forKey:@"to"];
            [dict setObject:lang forKey:@"to"];

            //: [ZCHttpManager postWithUrl:@"http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action" checksum:checksum nonce:nonce CurTime:time params:dict success:^(id responseObject) {
            [BlendView cur:[OptimisticData kText_confrontValue] militaryInstallationInFailed:checksum withStart:nonce curTo:time value:dict bloodRedFailed:^(id responseObject) {

                //: NSDictionary *resultDict = (NSDictionary *)responseObject;
                NSDictionary *resultDict = (NSDictionary *)responseObject;
                //: NSLog(@"resultDict-%@",resultDict);
                //: NSString *code = [resultDict newStringValueForKey:@"code"];
                NSString *code = [resultDict comment:[OptimisticData kContent_instantlyData]];

                //: if (code.integerValue == 200) {
                if (code.integerValue == 200) {
                    //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
                    NSDictionary *data = [resultDict buttonAt:@"data"];
                    //: NSString *translation = [data newStringValueForKey:@"translation"];
                    NSString *translation = [data comment:[OptimisticData kNameCaptureTonightString]];

                    //: message.localExt = @{@"USERMessageTranslate": translation };
                    message.localExt = @{[OptimisticData kText_greenString]: translation };
                    //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                        //: [self uiUpdateMessage:message];
                        [self cypherTime:message];
                        //: [self.tableView reloadData];
                        [self.tableView reloadData];
                    //: }];
                    }];


                //: }else{
                }else{
                    //: NSString *desc = [resultDict newStringValueForKey:@"desc"];
                    NSString *desc = [resultDict comment:[OptimisticData kTitle_qualityValue]];
                    //: [SVProgressHUD showMessage:desc];
                    [SVProgressHUD firstTeam:desc];
                }


            //: } failed:^(id responseObject, NSError *error) {
            } color:^(id responseObject, NSError *error) {
                //: [SVProgressHUD showMessage:error.domain];
                [SVProgressHUD firstTeam:error.domain];
            //: }];
            }];

        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
    //: }];
    }];

}

//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate
//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: if ([event.from isEqualToString:self.session.sessionId]) {
        if ([event.from isEqualToString:self.session.sessionId]) {
            //: [self refreshSessionSubTitle:[USERSessionUtil onlineState:self.session.sessionId detail:YES]];
            [self to:[SessionStandard imageDetail:self.session.sessionId shouldPath:YES]];
        }
    }
}

//: - (void)onTapMenuItemReport:(FFFMediaItem *)item
- (void)inform:(CommingleItem *)item
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView dismissShow];
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)withCell:(NSString *)reason
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: self.userId = message.from;
    self.userId = message.from;
    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: if(isMyFriend){
    if(isMyFriend){
        //: [self.view addSubview:self.reprotNextView];
        [self.view addSubview:self.reprotNextView];
        //: [self.reprotNextView animationShow];
        [self.reprotNextView will];
    //: }else{
    }else{
        //: [self.view addSubview:self.reprotHisNextView];
        [self.view addSubview:self.reprotHisNextView];
        //: [self.reprotHisNextView animationShow];
        [self.reprotHisNextView back];
    }

        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"contact"] = reason;
        dict[[OptimisticData kContentToData]] = reason;
        //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
        [BlendView descriptionDemonstrate:[NSString stringWithFormat:[OptimisticData kTitle_attitudeData]] outsideAccount:dict sprechgesangEnable:NO media:^(id responseObject) {
//            [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
        //: } failed:^(id responseObject, NSError *error) {
        } show:^(id responseObject, NSError *error) {
        //: }];
        }];

}

//: - (void)didApplyToTeamWithMessage:(NSString *)message WithTeam:(NIMTeam *)team {
- (void)title:(NSString *)message image:(NIMTeam *)team {

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: [LEEAlert alert].config
    [ControlTag corner].config
        //: .LeeAddTitle(^(UILabel *label) {
        .LeeAddTitle(^(UILabel *label) {
            //: NSString *msg = [NSString stringWithFormat:@"%@: %@",[FFFLanguageManager getTextWithKey:@"message_helper_apply_to_group"],team.teamName];
            NSString *msg = [NSString stringWithFormat:@"%@: %@",[MakeManager cell:[OptimisticData kTitle_lastContent]],team.teamName];
            //: label.text = msg;
            label.text = msg;
            //: label.textColor = [UIColor grayColor];
            label.textColor = [UIColor grayColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(WithAction *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"];
            action.title = [MakeManager cell:[OptimisticData kName_ampleString]];//@"取消"
            //: action.titleColor = [UIColor grayColor];
            action.titleColor = [UIColor grayColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

            //: };
            };
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(WithAction *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"]; 
            action.title = [MakeManager cell:[OptimisticData kTextDevastatingValue]]; //@"确定";
            //: action.titleColor = [UIColor redColor];
            action.titleColor = [UIColor redColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

                //: [SVProgressHUD show];
                [SVProgressHUD show];
                //: [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                                                    //: message:message
                                                    message:message
                                                 //: completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                                                 completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: [wself handleApplyToTeam:error status:applyStatus WithId:team.teamId];
                    [wself centerArray:error statusCan:applyStatus shouldReceiveFlip:team.teamId];
                //: }];
                }];
            //: };
            };
        //: })
        })
        //: .LeeHeaderColor([UIColor whiteColor])
        .LeeHeaderColor([UIColor whiteColor])
        //: .LeeShow();
        .LeeShow();
}



//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        //: [[USERSubscribeManager sharedManager] unsubscribeTempUserOnlineState:self.session.sessionId];
        [[TagCleanManager success] mentalImage:self.session.sessionId];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }

//    [_fpsLabel invalidate];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.timer invalidate];
    [self.timer invalidate];
}

//: #pragma mark - 录音事件
#pragma mark - 录音事件
//: - (void)onRecordFailed:(NSError *)error
- (void)styleItem:(NSError *)error
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyinshibai"] duration:2 position:CSToastPositionCenter];
    [self.view makeToast:[MakeManager cell:[OptimisticData kName_excitementString]] duration:2 position:CSToastPositionCenter];
}

//: - (void)revokeMessage:(id)sender
- (void)memberred:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[OptimisticData kName_dateIncomeFileText]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [OptimisticData kName_dateIncomeFileText]: collapseId ? : @"",
    //: };
    };

    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message
    [[NIMSDK sharedSDK].chatManager revokeMessage:message
                                      //: apnsContent:@"撤回一条消息"
                                      apnsContent:[OptimisticData kText_alsoValue]
                                      //: apnsPayload:payload
                                      apnsPayload:payload
                                  //: shouldBeCounted:![[USERBundleSetting sharedConfig] isIgnoreRevokeMessageCount]
                                  shouldBeCounted:![[UserLabelMan user] limit]
                                         //: completion:^(NSError * _Nullable error)
                                         completion:^(NSError * _Nullable error)
    {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"发送时间超过2分钟的消息，不能被撤回".user_localized delegate:nil cancelButtonTitle:@"确定".user_localized otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[OptimisticData kName_friendlyString].nominate delegate:nil cancelButtonTitle:@"确定".nominate otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"消息撤回失败，请重试".user_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[OptimisticData kNameKnifeValue].nominate duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: FFFMessageModel *model = [weakSelf uiDeleteMessage:message];
            CleanDoing *model = [weakSelf keep:message];
            //: NIMMessage *tip = [USERSessionMsgConverter msgWithTip:[USERSessionUtil tipOnMessageRevoked:nil]];
            NIMMessage *tip = [TopConverter content:[SessionStandard noneTitle:nil]];
            //: tip.timestamp = model.messageTime;
            tip.timestamp = model.messageTime;
            //[weakSelf uiInsertMessages:@[tip]];//撤回消息不显示

            //: tip.timestamp = message.timestamp;
            tip.timestamp = message.timestamp;
            // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
            //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
            [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
        }
    //: }];
    }];
}

//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)clickSession:(id)sender
{
    //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: _isSend = YES;
    _isSend = YES;
    //: _canSendText = YES;
    _canSendText = YES;
    //: self.canTapVoiceBtn = YES;
    self.canTapVoiceBtn = YES;

    // 初始化时重置重启标志
     //: self.shouldRestart = NO;
     self.shouldRestart = NO;

    //: _notificaionSender = [[USERCustomSysNotificationSender alloc] init];
    _notificaionSender = [[CornerFlipFlush alloc] init];
//    [self setupNormalNav];
    //: BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    //: if (!disableCommandTyping) {
    if (!disableCommandTyping) {
        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    }

//    if ([[UserLabelMan sharedConfig] showFps])
//    {
//        self.fpsLabel = [[DirectView alloc] initWithFrame:CGRectZero];
//        [self.view addSubview:self.fpsLabel];
//        self.fpsLabel.right = self.view.width;
//        self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    }

    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //临时订阅这个人的在线状态
        //: [[USERSubscribeManager sharedManager] subscribeTempUserOnlineState:self.session.sessionId];
        [[TagCleanManager success] tingChild:self.session.sessionId];
        //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
    }

    //删除最近会话列表中有人@你的标记
    //: [USERSessionUtil removeRecentSessionMark:self.session type:USERRecentSessionMarkTypeAt];
    [SessionStandard status:self.session readType:USERRecentSessionMarkTypeAt];

    //批量转发
    //: _mergeForwardSession = [[USERMergeForwardSession alloc] init];
    _mergeForwardSession = [[MoonOff alloc] init];
    //    [self setupSearchVC];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(onRevokeMessageFromMe:)
                                             selector:@selector(byMe:)
                                                 //: name:kUSERDemoRevokeMessageFromMeNotication
                                                 name:appTitleTableKey
                                               //: object:nil];
                                               object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bambinoing:) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(quantitied:) name:UIApplicationDidEnterBackgroundNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(arrays:) name:UIApplicationWillEnterForegroundNotification object:nil];




    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(instanced:) name:[OptimisticData kTextWithVarietyString] object:nil];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.session.sessionId;
    dict[@"id"] = self.session.sessionId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[OptimisticData kName_alongsideData]] query:dict showThan:NO green:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[OptimisticData kContent_instantlyData]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: self.teamSettingConfig = data;
            self.teamSettingConfig = data;

//            NSString *frequency = [data newStringValueForKey:@"frequency"];
            //: NSString *canMemberInfovalue = [data newStringValueForKey:@"canMemberInfo"];
            NSString *canMemberInfovalue = [data comment:[OptimisticData kTextSubDistributionData]];
            //: NSString *ispushvalue = [data newStringValueForKey:@"ispush"];
            NSString *ispushvalue = [data comment:[OptimisticData kNameBeauData]];

            //: self.canMemberInfo = canMemberInfovalue.boolValue;
            self.canMemberInfo = canMemberInfovalue.boolValue;
            //: self.canNoticeMsg = ispushvalue.boolValue;
            self.canNoticeMsg = ispushvalue.boolValue;

//            self.canMemberInfo = [data boolValueForKey:@"canMemberInfo"];
//            self.canNoticeMsg = [data boolValueForKey:@"ispush"];
//            weakself.intervalTime = frequency.integerValue;
//            if (weakself.intervalTime > 0) {
//                weakself.timer = [NSTimer scheduledTimerWithTimeInterval:weakself.intervalTime target:weakself selector:@selector(timerWithTimeInterval) userInfo:nil repeats:YES];
//            }


            //: if (self.session.sessionType == NIMSessionTypeTeam) {
            if (self.session.sessionType == NIMSessionTypeTeam) {
                //: if (self.canNoticeMsg) {
                if (self.canNoticeMsg) {

                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];

                //: }else{
                }else{
                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];
                }
            }




        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getStatusSendText"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[OptimisticData kTitleSureContent]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[OptimisticData kContent_instantlyData]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: NSString *canSendText = [data stringValueForKey:@"canSendText" defaultValue:@"1"];
            NSString *canSendText = [data unwantedValue:[OptimisticData kContentYoursPoetString] installment:@"1"];
            //: _canSendText = canSendText.boolValue;
            _canSendText = canSendText.boolValue;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];


    // 群公告
    //: NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
    NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[OptimisticData kText_semenData],self.session.sessionId]];
    //: if([@"1" isEqualToString:flag]){
    if([@"1" isEqualToString:flag]){
        //: [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
        [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",[OptimisticData kText_semenData],self.session.sessionId]];
        //取出标题和内容
        //: NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",self.session.sessionId]];
        NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[OptimisticData kText_ruralString],self.session.sessionId]];
        //: NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",self.session.sessionId]];
        NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[OptimisticData kTextSearcherString],self.session.sessionId]];

        //: if (title.length > 0 || content.length > 0){
        if (title.length > 0 || content.length > 0){

            //: [LEEAlert alert].config
            [ControlTag corner].config
                //: .LeeAddTitle(^(UILabel *label) {
                .LeeAddTitle(^(UILabel *label) {
                    //: label.text = title;
                    label.text = title;
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                //: })
                })
                //: .LeeAddContent(^(UILabel *label) {
                .LeeAddContent(^(UILabel *label) {
                    //: label.text = content;
                    label.text = content;
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                //: })
                })
                //: .LeeAddAction(^(LEEAction *action) {
                .LeeAddAction(^(WithAction *action) {

                    //: action.type = LEEActionTypeCancel;
                    action.type = LEEActionTypeCancel;
                    //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
                    action.title = [MakeManager cell:[OptimisticData kTextDevastatingValue]];
                    //: action.titleColor = [UIColor colorWithHexString:@"01B0FD"];
                    action.titleColor = [UIColor cell:[OptimisticData kName_fragValue]];
                    //: action.backgroundColor = [UIColor whiteColor];
                    action.backgroundColor = [UIColor whiteColor];
                    //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    //: action.borderWidth = 1.0f;
                    action.borderWidth = 1.0f;
                    //: action.borderColor = action.backgroundHighlightColor;
                    action.borderColor = action.backgroundHighlightColor;
                //: })
                })
                //: .LeeShow();
                .LeeShow();
        }

    }

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: self.header = [[USERListHeader alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), self.view.width, 0)];
    self.header = [[FlipRecordView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header theKey:ListHeaderTypeNetStauts dogTag:@(step)];
}

//: - (void)onRevokeMessageFromMe:(NSNotification *)note {
- (void)byMe:(NSNotification *)note {
    //: NIMMessage *message = note.userInfo[@"msg"];
    NIMMessage *message = note.userInfo[[OptimisticData kContentBrotherString]];
    //: NSString *postscript = note.userInfo[@"postscript"];
    NSString *postscript = note.userInfo[[OptimisticData kTextTeachString]];
    //: if (message) {
    if (message) {
        //: FFFMessageModel *model = [self uiDeleteMessage:message];
        CleanDoing *model = [self keep:message];
        //主动撤回场景下，将之前填充的attach内容再次填充保存
        //: NIMMessage *tip = [USERSessionMsgConverter msgWithTip:[USERSessionUtil tipOnMessageRevokedLocal:postscript]
        NIMMessage *tip = [TopConverter messageFor:[SessionStandard tingBackground:postscript]
                                                 //: revokeAttach:_revokeAttach
                                                 tipRead:_revokeAttach
                                            //: revokeCallbackExt:nil];
                                            sure:nil];
        //: tip.timestamp = model.messageTime;
        tip.timestamp = model.messageTime;
        //[self uiInsertMessages:@[tip]];//撤回消息不显示

        //: tip.timestamp = message.timestamp;
        tip.timestamp = message.timestamp;
        // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
    }
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [self.view endEditing:YES];
//}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step{
- (void)onLogin:(NIMLoginStep)step{
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header theKey:ListHeaderTypeNetStauts dogTag:@(step)];
}

// 发送的所有消息类型最终 都会走这个 sendMessage方法，所以在这拦截
//: - (void)sendMessage:(NIMMessage *)message
- (void)user:(NIMMessage *)message
{
    // 不再群聊 不允许发送消息
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    // 发送频率设置，距离上一次发送消息间隔小于frequency秒，提示 @"发言频次过快，请%ld秒后重试"
    //: if (_intervalTime > 0 && _isSend == NO) {
    if (_intervalTime > 0 && _isSend == NO) {
        //: [self hitClientAntispamWithMessage:message type:@"发言频次"];
        [self countVersion:message lawyerClientRelation:[OptimisticData kNameDiamondSwingModeData]];
        //: NSString *title = [NSString stringWithFormat:[FFFLanguageManager getTextWithKey:@"发言频次过快，请%ld秒后重试"],(long)_intervalTime];
        NSString *title = [NSString stringWithFormat:[MakeManager cell:[OptimisticData kTitle_originallyValue]],(long)_intervalTime];
        //: [SVProgressHUD showMessage:title];
        [SVProgressHUD firstTeam:title];
        //: return;
        return;
    }
    //: _isSend = NO;
    _isSend = NO;

    // 发送消息的间隔时间 frequency>0 && 文本消息 && 输入不是数字
    //: if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterInputShouldNumber:message.text]) {
    if (!_canSendText && message.messageType == NIMMessageTypeText && ![self behindText:message.text]) {
        //: [self hitClientAntispamWithMessage:message type:@"不允许文字"];
        [self countVersion:message lawyerClientRelation:[OptimisticData kTitle_quickString]];
    }

    //: if ([[USERBundleSetting sharedConfig] enableLocalAnti] && message.messageType == NIMMessageTypeText)
    if ([[UserLabelMan user] model] && message.messageType == NIMMessageTypeText)
    {
        //: NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        //: checkOption.content = message.text;
        checkOption.content = message.text;
        //: checkOption.replacement = @"*";
        checkOption.replacement = @"*";
        //: NSError *error = nil;
        NSError *error = nil;
        //: NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        //: if (error)
        if (error)
        {
            //: [self.view makeToast:@"本地反垃圾失败".user_localized];
            [self.view makeToast:[OptimisticData kNameSunlightString].nominate];
        }
        //: else
        else
        {
            //: switch (result.type) {
            switch (result.type) {
                //: case NIMAntiSpamOperateFileNotExists:
                case NIMAntiSpamOperateFileNotExists:
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalReplace:
                case NIMAntiSpamResultLocalReplace:
                    //: message.text = result.content;
                    message.text = result.content;
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalForbidden:
                case NIMAntiSpamResultLocalForbidden:
                    //: [self.view makeToast:@"** 该消息被屏蔽 **".user_localized];
                    [self.view makeToast:[OptimisticData kTitleSelecterName].nominate];
                    //: return;
                    return;
                //: case NIMAntiSpamResultServerForbidden:
                case NIMAntiSpamResultServerForbidden:
                {
                    //: [self hitClientAntispamWithMessage:message type:@"反垃圾消息"];
                    [self countVersion:message lawyerClientRelation:[OptimisticData kText_amberValue]];
                }
                    //: break;
                    break;
                //: case NIMAntiSpamResultNotHit:
                case NIMAntiSpamResultNotHit:
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
    //: [super sendMessage:message];
    [super user:message];
}

//- (void)setupNormalNav {
//    
//    UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterTeamCard setImage:[UIImage imageNamed:@"icon_session_info_pressed"] forState:UIControlStateHighlighted];
//    [enterTeamCard sizeToFit];
//    UIBarButtonItem *enterTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterTeamCard];
//
//    UIButton *enterSuperTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterSuperTeamCard addTarget:self action:@selector(enterSuperTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterSuperTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterSuperTeamCard sizeToFit];
//    UIBarButtonItem *enterSuperTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterSuperTeamCard];
//
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
//    [infoBtn setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [infoBtn sizeToFit];
//    UIBarButtonItem *enterUInfoItem = [[UIBarButtonItem alloc] initWithCustomView:infoBtn];
//
//    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [historyBtn addTarget:self action:@selector(enterHistory:) forControlEvents:UIControlEventTouchUpInside];
//    [historyBtn setImage:[UIImage imageNamed:@"icon_history_normal"] forState:UIControlStateNormal];
//    [historyBtn sizeToFit];
//    //UIBarButtonItem *historyButtonItem = [[UIBarButtonItem alloc] initWithCustomView:historyBtn];
//
//    enterTeamCardItem.tintColor = [UIColor whiteColor];
//    enterUInfoItem.tintColor = [UIColor whiteColor];
//    enterSuperTeamCardItem.tintColor = [UIColor whiteColor];
//
//    if (self.session.sessionType == NIMSessionTypeTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterTeamCardItem];
//    }
//    else if (self.session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterSuperTeamCardItem];
//    }
//    else if(self.session.sessionType == NIMSessionTypeP2P)
//    {
//        if ([self.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
//        {
//            //self.navigationItem.rightBarButtonItems = @[historyButtonItem];
//        }
//        else
//        {
//            self.navigationItem.rightBarButtonItems = @[enterUInfoItem];
//        }
//    }
//    self.navigationItem.leftBarButtonItem.customView.hidden = NO;
//    self.navigationItem.hidesBackButton = NO;
//    [self.mulSelectCancelBtn removeFromSuperview];
//}

//: - (void)setupSelectedNav {
- (void)text {
    //: self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.rightBarButtonItems = nil;
    //: self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    //: self.navigationItem.hidesBackButton = YES;
    self.navigationItem.hidesBackButton = YES;
    //: [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
    [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
}

///获取UTC时间戳
//: - (NSString *)getNowUTCTimeTimestamp{
- (NSString *)resolutionDown{
//      NSDate *datenow = [NSDate date];
//      NSTimeZone *zone = [NSTimeZone localTimeZone];
//    // 获取指定时间所在时区与UTC时区的间隔秒数
//    NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
//    return timeSp;

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        //: [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        //: [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
        [formatter setDateFormat:[OptimisticData kNameDivineString]]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
        //设置时区,这个对于时间的处理有时很重要
        //: NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:[OptimisticData kTextHospitalContent]];
        //: [formatter setTimeZone:timeZone];
        [formatter setTimeZone:timeZone];
        //: NSDate *datenow = [NSDate date];
        NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];

        //: return timeSp;
        return timeSp;
}

//: - (void)languageChanged:(NSNotification *)noti {
- (void)instanced:(NSNotification *)noti {
    //: [self refreshMessages];
    [self commentMessages];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: - (UIButton *)mulSelectCancelBtn {
- (UIButton *)mulSelectCancelBtn {
    //: if (!_mulSelectCancelBtn) {
    if (!_mulSelectCancelBtn) {
        //: UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [cancelBtn addTarget:self action:@selector(cancelSelected:) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn addTarget:self action:@selector(presenting:) forControlEvents:UIControlEventTouchUpInside];
        //: [cancelBtn setTitle:@"取消".user_localized forState:UIControlStateNormal];
        [cancelBtn setTitle:@"取消".nominate forState:UIControlStateNormal];
        //: [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        //: UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        //: [cancelBtn setTitleEdgeInsets:titleInsets];
        [cancelBtn setTitleEdgeInsets:titleInsets];
        //: cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        //: _mulSelectCancelBtn = cancelBtn;
        _mulSelectCancelBtn = cancelBtn;
    }
    //: return _mulSelectCancelBtn;
    return _mulSelectCancelBtn;
}

//: - (ZMONTranslateView *)translateView
- (ManCommentView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[ManCommentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)confirmDelete:(id)sender
- (void)bodyUpward:(id)sender
{
    //: [self showDeleteSureVCWithTitle:@"确定删除？".user_localized confirmBlock:^{
    [self streetwise:[OptimisticData kContent_handsomeValue].nominate color:^{
        //: [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
        [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
                                                              //: exts: nil
                                                              exts: nil
                                                        //: completion:^(NSError * _Nullable error) {
                                                        completion:^(NSError * _Nullable error) {
            //: [self.view makeToast:error.localizedDescription ?: @"删除成功".user_localized];
            [self.view makeToast:error.localizedDescription ?: [OptimisticData kName_lessString].nominate];
            //: if (!error) {
            if (!error) {
                //: [self.interactor resetMessages:^(NSError *error) {
                [self.interactor cellMessages:^(NSError *error) {
                    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
                    [self enableOverEndedUponAmericanState:NIMKitSessionStateNormal];
                //: }];
                }];
            }
        //: }];
        }];
    //: }];
    }];
}
//: -(void)timerWithTimeInterval{
-(void)gray{
    //: _isSend = YES;
    _isSend = YES;
}



//: - (void)didTouchDeleteButton
- (void)quantityervalRemote
{
    //: [self.view addSubview:self.reprotDeleteView];
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    //: [self.reprotDeleteView animationShow];
    [self.reprotDeleteView anyKeyShow];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         //: removeAlias:[[USERBundleSetting sharedConfig] autoRemoveAlias]
                                         removeAlias:[[UserLabelMan user] aLaCarte]
                                          //: completion:^(NSError *error) {
                                          completion:^(NSError *error) {

            //: if (!error) {
            if (!error) {
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MakeManager cell:[OptimisticData kContentThereData]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[MakeManager cell:[OptimisticData kTitlePlayerData]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];



        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];

//            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
//            options.removeOtherClients = YES;
//            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
//                if (error) {
//                    return;
//                }
//                [self.navigationController popToRootViewControllerAnimated:YES];
//
//            }];
        }


    //: };
    };
}

//: #pragma mark - UISearchControllerDelegate
#pragma mark - UISearchControllerDelegate

//: - (NSString *)sessionTitle
- (NSString *)doingdSessionContent
{
    //: if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [MakeManager cell:[OptimisticData kName_cellData]];
    }
    //: return [super sessionTitle];
    return [super doingdSessionContent];
}

//: - (void)onTapMenuItemPin:(FFFMediaItem *)item
- (void)exceptOffChild:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];
    NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"添加失败".user_localized];
            [SVProgressHUD showErrorWithStatus:[OptimisticData kName_colorString].nominate];
            //: return;
            return;
        }
        //: [sself uiPinMessage:message];
        [sself lineUser:message];
    //: }];
    }];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
{
    //: if (!notification.sendToOnlineUsersOnly) {
    if (!notification.sendToOnlineUsersOnly) {
        //: return;
        return;
    }
    //: NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict jsonInteger:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        if ([dict immobilise:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        {
            //: [self refreshSessionTitle:[NSString stringWithFormat:@"%@...",@"正在输入".user_localized]];
            [self whenRefresh:[NSString stringWithFormat:@"%@...",[OptimisticData kTextStagValue].nominate]];

        }
    }


}

//: #pragma mark - 转发
#pragma mark - 转发
//: - (void)doMergerForwardToSession:(NIMSession *)session {
- (void)streetwiseSession:(NIMSession *)session {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: USERMergeForwardTask *task = [_mergeForwardSession forwardTaskWithMessages:_selectedMessages process:nil completion:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
    FederalizeRecord *task = [_mergeForwardSession pastView:_selectedMessages messages:nil cover:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"%@：%zd",@"消息合并转发失败".user_localized, error.code];
            NSString *msg = [NSString stringWithFormat:@"%@：%zd",[OptimisticData kTitleProvedData].nominate, error.code];
            //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: [weakSelf forwardMessage:message toSession:session];
            [weakSelf location:message anPage:session];
        }
    //: }];
    }];
    //: [task resume];
    [task under];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];

    //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
    [[CellManager blueInstance] colour];
    //    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)onTapMenuItemMutiSelect:(FFFMediaItem *)item
- (void)cutText:(CommingleItem *)item
{
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self enableOverEndedUponAmericanState:NIMKitSessionStateSelect];
}
//: - (USERMulSelectFunctionBar *)mulSelectedSureBar {
- (RedView *)mulSelectedSureBar {
    //: if (!_mulSelectedSureBar) {
    if (!_mulSelectedSureBar) {
        //: _mulSelectedSureBar = [[USERMulSelectFunctionBar alloc] initWithFrame:self.sessionInputView.frame];
        _mulSelectedSureBar = [[RedView alloc] initWithFrame:self.sessionInputView.frame];
        //: [_mulSelectedSureBar.sureBtn addTarget:self
        [_mulSelectedSureBar.sureBtn addTarget:self
                                        //: action:@selector(confirmSelected:)
                                        action:@selector(itemName:)
                              //: forControlEvents:UIControlEventTouchUpInside];
                              forControlEvents:UIControlEventTouchUpInside];
        //: [_mulSelectedSureBar.deleteButton addTarget:self
        [_mulSelectedSureBar.deleteButton addTarget:self
                                             //: action:@selector(confirmDelete:)
                                             action:@selector(bodyUpward:)
                                   //: forControlEvents:UIControlEventTouchUpInside];
                                   forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _mulSelectedSureBar;
    return _mulSelectedSureBar;
}


//: #pragma mark - Cell Actions
#pragma mark - Cell Actions
//: - (void)showImage:(NIMMessage *)message
- (void)size:(NIMMessage *)message
{
    //: NIMImageObject *object = message.messageObject;
    NIMImageObject *object = message.messageObject;
    //: USERGalleryItem *item = [[USERGalleryItem alloc] init];
    AddTitle *item = [[AddTitle alloc] init];
    //: item.thumbPath = [object thumbPath];
    item.thumbPath = [object thumbPath];
    //: item.imageURL = [object url];
    item.imageURL = [object url];
    //: item.name = [object displayName];
    item.name = [object displayName];
    //: item.itemId = [message messageId];
    item.itemId = [message messageId];
    //: item.size = [object size];
    item.size = [object size];
    //: item.imagePath = [object path];
    item.imagePath = [object path];

    //: NIMSession *session = [self isMemberOfClass:[USERSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[WayOfLifeViewController class]]? self.session : nil;


    //: ZMONGalleryImgViewController *vc = [[ZMONGalleryImgViewController alloc] init];
    TextMaxViewController *vc = [[TextMaxViewController alloc] init];
    //: vc.imageURL = [object url];
    vc.imageURL = [object url];
    //: vc.imagePath = [object path];
    vc.imagePath = [object path];
    //: vc.message = message;
    vc.message = message;
//    USERGalleryViewController *vc = [[USERGalleryViewController alloc] initWithItem:item session:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];


//    if(![[NSFileManager defaultManager] fileExistsAtPath:object.thumbPath]){
//        //如果缩略图下跪了，点进看大图的时候再去下一把缩略图
//        __weak typeof(self) wself = self;
//        [[NIMSDK sharedSDK].resourceManager download:object.thumbUrl filepath:object.thumbPath progress:nil completion:^(NSError *error) {
//            if (!error) {
//                [wself uiUpdateMessage:message];
//            }
//        }];
//    }
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)telephoneMessage:(NSString *)filepath
{
    //: NSURL *URL = [NSURL fileURLWithPath:filepath];
    NSURL *URL = [NSURL fileURLWithPath:filepath];
    //: AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    //: CMTime time = urlAsset.duration;
    CMTime time = urlAsset.duration;
    //: CGFloat mediaLength = CMTimeGetSeconds(time);
    CGFloat mediaLength = CMTimeGetSeconds(time);
    //: return mediaLength > 2;
    return mediaLength > 2;
}

//: - (void)vcEnterForeground:(NSNotification *)notification
- (void)arrays:(NSNotification *)notification
{
    // 检查后台停留时间是否超过阈值
       //: if (self.backgroundEnterTime) {
       if (self.backgroundEnterTime) {
           //: NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           //: NSLog(@"应用从后台返回，后台停留时间: %.0f秒", backgroundTime);

           //: if (backgroundTime >= kMaxBackgroundTime) {
           if (backgroundTime >= notiEventTitle(nil)) {
               //: self.shouldRestart = YES;
               self.shouldRestart = YES;
           }
       }
       //: self.backgroundEnterTime = nil;
       self.backgroundEnterTime = nil;
}


//: - (void)onTapMenuItemMark:(FFFMediaItem *)item
- (void)refresh:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    //: NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    //: params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    //: params.type = 1;
    params.type = 1;
    //: params.uniqueId = message.messageId.MD5String;
    params.uniqueId = message.messageId.pothouse;
    //: [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
    [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:[FFFLanguageManager getTextWithKey:@"收藏失败"]];
            [SVProgressHUD showErrorWithStatus:[MakeManager cell:[OptimisticData kTitle_accessRoveData]]];
            //: return;
            return;
        }
        //: [SVProgressHUD showSuccessWithStatus:[FFFLanguageManager getTextWithKey:@"收藏成功"]];
        [SVProgressHUD showSuccessWithStatus:[MakeManager cell:[OptimisticData kTextDoorString]]];
    //: }];
    }];
}

//: - (BOOL)cancelMenuByMessageObject:(id<NIMMessageObject>) object
- (BOOL)inputBlue:(id<NIMMessageObject>) object
{
    //: if ([object isKindOfClass:[NIMCustomObject class]])
    if ([object isKindOfClass:[NIMCustomObject class]])
    {
        //: NIMCustomObject *custom = object;
        NIMCustomObject *custom = object;
        //: id<NIMCustomAttachment> attachment = custom.attachment;
        id<NIMCustomAttachment> attachment = custom.attachment;
        //: if ([attachment isKindOfClass:[USERWhiteboardAttachment class]])
        if ([attachment isKindOfClass:[MessageAttachment class]])
        {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (void)showCustom:(NIMMessage *)message
- (void)green:(NIMMessage *)message
{
   //普通的自定义消息点击事件可以在这里做哦~

    //: NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[OptimisticData kTextLungString]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:@"data"];
            //: if (type == 105) {
            if (type == 105) {
                //: NSString *type = [datatyl stringValueForKey:@"type" defaultValue:@"0"];
                NSString *type = [datatyl unwantedValue:[OptimisticData kTextLungString] installment:@"0"];
                //: NSString *personCardId = [datatyl objectForKey:@"personCardId"];
                NSString *personCardId = [datatyl objectForKey:[OptimisticData kTextNonprofitTitle]];
                //: if ([type boolValue]) {
                if ([type boolValue]) {
                    //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
//                    if (!team) {
//                        [self.view makeToast:LangKey(@"group_info_activity_group_already_jiesan") duration:2.0 position:CSToastPositionCenter];
//                        return;
//                    }
                    //: if (isMyTeam) {
                    if (isMyTeam) {
                        //: NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];
                        NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];

//                        SessionOption *option = [[SessionOption alloc] init];
//                        option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//                        CommentViewController *vc = [[OpenDefenceViewController alloc] initWithTeam:team session:session option:option];
//                        vc.delegate = self;
//                        [self.navigationController pushViewController:vc animated:YES];

                        //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
                        WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    //: } else {
                    } else {
                        //: [self onJionTeamWithTeam:team];
                        [self jion:team];
                    }
                //: } else {
                } else {

                    //: if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                    if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                        //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:personCardId];
                        CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:personCardId];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    }

                }
            }
        }
    }
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session
 - (void)location:(NIMMessage *)message anPage:(NIMSession *)session
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Mortification text] tingVoice:session.sessionId keepingOption:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Mortification text] ability:session.sessionId naturalEvent_strong:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Mortification text] cellList:session.sessionId view:nil].showName;
    }
    //: else {
    else {
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_confirm_forwarded_to"], name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [MakeManager cell:[OptimisticData kTitle_administerContent]], name];
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"确认转发".user_localized message:tip delegate:nil cancelButtonTitle:@"取消".user_localized otherButtonTitles:@"确认".user_localized, nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[OptimisticData kNameOverallValue].nominate message:tip delegate:nil cancelButtonTitle:@"取消".nominate otherButtonTitles:@"确认".nominate, nil];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert tipMessage:^(NSInteger index) {
        //: if(index == 1)
        if(index == 1)
        {
            //: NSError *error = nil;
            NSError *error = nil;
            //: if (message.session) {
            if (message.session) {
                //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            }

            //: if (error) {
            if (error) {
                //: NSString *msg = [NSString stringWithFormat:@"%@.code:%zd", @"转发失败".user_localized, error.code];
                NSString *msg = [NSString stringWithFormat:[OptimisticData kTitle_howeverValue], [OptimisticData kTextThumbData].nominate, error.code];
                //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"已发送".user_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[OptimisticData kTitleConsumptionData].nominate duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: return !self.currentSingleSnapView;
    return !self.currentSingleSnapView;
}

//: - (void)onTapMenuItemUnpin:(FFFMediaItem *)item
- (void)onData:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"取消标记失败".user_localized];
            [SVProgressHUD showErrorWithStatus:[OptimisticData kName_greatlyData].nominate];
            //: return;
            return;
        }
        //: [sself uiUnpinMessage:message];
        [sself readRowMessage:message];
    //: }];
    }];

}

/** NIMTeamManagerDelegate
 *  群组成员变动回调,包含被移除的群成员ID
 *
 *  @param team 变动的群组
 *  @param memberIDs 变动的成员ID
 */
//: - (void)onTeamMemberRemoved:(NIMTeam *)team
- (void)onTeamMemberRemoved:(NIMTeam *)team
                //: withMembers:(nullable NSArray<NSString *> *)memberIDs; {
                withMembers:(nullable NSArray<NSString *> *)memberIDs; {

    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
    if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
        //: self.invalid_tip.hidden = NO;
        self.invalid_tip.hidden = NO;

        //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        //: options.removeOtherClients = YES;
        options.removeOtherClients = YES;
        //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
        [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: return;
                return;
            }
            //: [self refreshMessages];
            [self commentMessages];
        //: }];
        }];
    }
}


//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (NSArray *)menusItems:(NIMMessage *)message
- (NSArray *)tap:(NIMMessage *)message
{
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: NSArray *defaultItems = [super menusItems:message];
    NSArray *defaultItems = [super tap:message];
    //: if (defaultItems) {
    if (defaultItems) {
        //: [items addObjectsFromArray:defaultItems];
        [items addObjectsFromArray:defaultItems];
    }

    //: if ([USERSessionUtil canMessageBeForwarded:message]) {
    if ([SessionStandard of:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"转发"] action:@selector(forwardMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[MakeManager cell:@"转发"] action:@selector(forwardsed:)]];
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".user_localized action:@selector(multiSelect:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".nominate action:@selector(goopped:)]];
    }

    //: if ([USERSessionUtil canMessageBeRevoked:message]) {
    if ([SessionStandard shoot:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"撤回"] action:@selector(revokeMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[MakeManager cell:@"撤回"] action:@selector(memberred:)]];
    }

    //: return items;
    return items;

}

//: #pragma mark - NIMInputActionProtocol
#pragma mark - NIMInputActionProtocol

//: - (BOOL)onTapVoiceBtn:(id)sender {
- (BOOL)app:(id)sender {
    //: return _canSendText;
    return _canSendText;
}

// 设置成垃圾消息，发送给服务器
//: - (void)hitClientAntispamWithMessage:(NIMMessage *)message type:(NSString *)type
- (void)countVersion:(NIMMessage *)message lawyerClientRelation:(NSString *)type
{
    //: NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    //: option.hitClientAntispam = YES;
    option.hitClientAntispam = YES;
    //: message.antiSpamOption = option;
    message.antiSpamOption = option;

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: NSString *nickName = me.userInfo.nickName;
    NSString *nickName = me.userInfo.nickName;

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
        //: @"accid" : emptyString(userID),
        [OptimisticData kNameMooValue] : colorFill(userID),
        //: @"username" : nickName?:@"",
        [OptimisticData kContent_planningString] : nickName?:@"",
        //: @"content" : message.text?:@"",
        @"content" : message.text?:@"",
        //: @"recid" : self.session.sessionId?:@"",
        [OptimisticData kTextScripRoveFantasticContent] : self.session.sessionId?:@"",
        //: @"type" : [NSString stringWithFormat:@"apple+%@",type],
        [OptimisticData kTextLungString] : [NSString stringWithFormat:[OptimisticData kTitleTribeString],type],
        //: @"sessionname" : self.sessionTitle?:@"",
        [OptimisticData kTitle_eyebrowText] : self.doingdSessionContent?:@"",
    //: };
    };

    //: [ZCHttpManager refreshForbiddenWordsparams:dic GenerateUser:^(NSDictionary * _Nonnull configDict) {
    [BlendView onProduce:dic withUser:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];
}

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message {
- (void)global:(BOOL)selected notDomainPresentation:(NIMMessage *)message {
    //: if (!_selectedMessages) {
    if (!_selectedMessages) {
        //: _selectedMessages = [NSMutableArray array];
        _selectedMessages = [NSMutableArray array];
    }
    //: if (selected) {
    if (selected) {
        //: [_selectedMessages addObject:message];
        [_selectedMessages addObject:message];
    //: } else {
    } else {
        //: [_selectedMessages removeObject:message];
        [_selectedMessages removeObject:message];
    }
}

//: - (void)deleteMsg:(id)sender
- (void)tapClose:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [USERBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [UserLabelMan user].remove;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[OptimisticData kNameRatherClimateString]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf keep:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: [self uiDeleteMessage:message];
        [self keep:message];
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
    }

}


//: - (void)multiSelect:(id)sender {
- (void)goopped:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self enableOverEndedUponAmericanState:NIMKitSessionStateSelect];
}

//: - (ZMONReportBlackView *)reprotBlackView
- (TotalryView *)reprotBlackView
{
    //: if(!_reprotBlackView){
    if(!_reprotBlackView){
        //: _reprotBlackView = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotBlackView = [[TotalryView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotBlackView;
    return _reprotBlackView;

}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (void)onTapMenuItemReply:(FFFMediaItem *)item
- (void)element:(CommingleItem *)item
{
    //: NIMMessage *menuMessage = [self messageForMenu];
    NIMMessage *menuMessage = [self messageForMenu];
    //: if ([self.sessionConfig respondsToSelector:@selector(setThreadMessage:)])
    if ([self.sessionConfig respondsToSelector:@selector(setMessageMode:)])
    {
        //: [self.sessionConfig setThreadMessage:menuMessage];
        [self.sessionConfig setMessageMode:menuMessage];
    }

    //: [self.sessionInputView refreshStatus:NIMInputStatusText];
    [self.sessionInputView canStatus:NIMInputStatusText];
    //: [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    //: [self.sessionInputView refreshReplyedContent:menuMessage];
    [self.sessionInputView pageName:menuMessage];
    //: [self.sessionInputView sizeToFit];
    [self.sessionInputView sizeToFit];
    //: if (self.session.sessionType != NIMSessionTypeP2P &&
    if (self.session.sessionType != NIMSessionTypeP2P &&
        //: menuMessage)
        menuMessage)
    {
        //: [self.sessionInputView addAtItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
        [self.sessionInputView showItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
    }
}

//: - (BOOL)onPressReadLabel:(NIMMessage *)message
- (BOOL)maxShow:(NIMMessage *)message
{
    //: return YES;
    return YES;
}


//: - (void)confirmSelected:(id)sender {
- (void)itemName:(id)sender {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
    [self query:^(NIMSession *targetSession) {
        //转发批量消息
        //: [weakSelf doMergerForwardToSession:targetSession];
        [weakSelf streetwiseSession:targetSession];
        //返回正常页面
        //: [weakSelf switchUIWithSessionState:NIMKitSessionStateNormal];
        [weakSelf enableOverEndedUponAmericanState:NIMKitSessionStateNormal];
    //: }];
    }];
}

//: #pragma mark - FFFTeamCardViewControllerDelegate
#pragma mark - TextDelegate

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)isTop {
- (void)statuses:(BOOL)isTop {
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    //: if (isTop) {
    if (isTop) {
        //: if (!recent) {
        if (!recent) {
            //: [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
            [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
        }
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
    //: } else {
    } else {
        //: if (recent) {
        if (recent) {
            //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
        //: } else {}
        } else {}
    }
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    self.fpsLabel.right = self.view.width;
//    self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    self.mulSelectedSureBar.frame = self.sessionInputView.frame;
}

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message
- (BOOL)packetAvatar:(NIMMessage *)message
{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self current:message];
    //: NIMSessionType sessionType = self.session.sessionType;
    NIMSessionType sessionType = self.session.sessionType;
    //: if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
    if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
        //: && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = self.session;
        option.session = self.session;
        //: option.forbidaAlias = YES;
        option.forbidaAlias = YES;

        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:userId option:option].showName;
        NSString *nick = [[Mortification text].provider tingVoice:userId keepingOption:option].showName;
        //: NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];
        NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];

        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        FlipRed *item = [[FlipRed alloc] init];
        //: item.uid = userId;
        item.uid = userId;
        //: item.name = nick;
        item.name = nick;
        //: [self.sessionInputView.atCache addAtItem:item];
        [self.sessionInputView.atCache quick:item];

        //: [self.sessionInputView.toolBar insertText:text];
        [self.sessionInputView.toolBar distanceLanguage:text];
    }
    //: return YES;
    return YES;
}



//: - (void)doRevokeMessage:(NIMMessage *)message postscript:(NSString *)postscript{
- (void)circumferencePostscript:(NIMMessage *)message assets:(NSString *)postscript{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[OptimisticData kName_dateIncomeFileText]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [OptimisticData kName_dateIncomeFileText]: collapseId ? : @"",
    //: };
    };
    //: NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    //: option.apnsContent = [FFFLanguageManager getTextWithKey:@"撤回一条消息"];
    option.apnsContent = [MakeManager cell:[OptimisticData kText_alsoValue]];
    //: option.apnsPayload = payload;
    option.apnsPayload = payload;
    //: option.shouldBeCounted = ![[USERBundleSetting sharedConfig] isIgnoreRevokeMessageCount];
    option.shouldBeCounted = ![[UserLabelMan user] limit];
    //: option.postscript = postscript;
    option.postscript = postscript;
    //: option.attach = _revokeAttach;
    option.attach = _revokeAttach;
    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
    [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"发送时间超过2分钟的消息不能被撤回"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[MakeManager cell:[OptimisticData kTextLamData]] delegate:nil cancelButtonTitle:[MakeManager cell:[OptimisticData kTextDevastatingValue]] otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"] duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[MakeManager cell:[OptimisticData kNameDetailedString]] duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            //: userInfo[@"msg"] = message;
            userInfo[[OptimisticData kContentBrotherString]] = message;
            //: userInfo[@"postscript"] = postscript;
            userInfo[[OptimisticData kTextTeachString]] = postscript;
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kUSERDemoRevokeMessageFromMeNotication
            [[NSNotificationCenter defaultCenter] postNotificationName:appTitleTableKey
                                                                //: object:nil
                                                                object:nil
                                                              //: userInfo:userInfo];
                                                              userInfo:userInfo];

            // 撤回的消息 作为自定义消息发出去
            //: NIMMessage *revocationMessage = [USERSessionMsgConverter msgWithRevocationMessage:message];
            NIMMessage *revocationMessage = [TopConverter can:message];
            //: [weakSelf sendMessage:revocationMessage];
            [weakSelf user:revocationMessage];
        }
    //: }];
    }];
}

//: - (void)onTapMenuItemAudio2Text:(FFFMediaItem *)item
- (void)send:(CommingleItem *)item
{

}

//: #pragma mark - 消息发送时间截获
#pragma mark - 消息发送时间截获
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (error.code == NIMRemoteErrorCodeInBlackList)
    if (error.code == NIMRemoteErrorCodeInBlackList)
    {
        //消息打上拉黑拒收标记，方便 UI 显示
        //: message.localExt = @{@"USERMessageRefusedTag":@(true)};
        message.localExt = @{[OptimisticData kContent_satisfyString]:@(true)};
        //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];

        //插入一条 Tip 提示
        //: NIMMessage *tip = [USERSessionMsgConverter msgWithTip:@"消息已发送，但对方拒收".user_localized];
        NIMMessage *tip = [TopConverter content:[OptimisticData kNameRacyValue].nominate];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 文本消息 && 当前用户被拉黑 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
            //: [self hitClientAntispamWithMessage:message type:@"被拉黑"];
            [self countVersion:message lawyerClientRelation:[OptimisticData kText_daughterData]];
        }

    //: } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
    } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
        //: NIMMessage *tip = [USERSessionMsgConverter msgWithTip:@"您已被禁言"];
        NIMMessage *tip = [TopConverter content:[OptimisticData kTitleThreadPorchSeatData]];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: [self hitClientAntispamWithMessage:message type:@"被禁言"];
            [self countVersion:message lawyerClientRelation:[OptimisticData kName_aestheticValue]];
        }

    }
    //: else if (error.code == NIMRemoteErrorCodeTeamAccessError) {
    else if (error.code == NIMRemoteErrorCodeTeamAccessError) {

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            //: [self hitClientAntispamWithMessage:message type:@""];
            [self countVersion:message lawyerClientRelation:@""];
        }

    }
    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//: - (void)onTextChanged:(id)sender
- (void)oning:(id)sender
{
    //: [_notificaionSender sendTypingState:self.session];
    [_notificaionSender forename:self.session];
}


//: - (void)openSafari:(NSString *)link
- (void)graduate:(NSString *)link
{
    //: NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    //: if (components)
    if (components)
    {
        //: if (!components.scheme)
        if (!components.scheme)
        {
            //默认添加 http
            //: components.scheme = @"http";
            components.scheme = [OptimisticData kTitle_silkDataValue];
        }
        //: [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
        [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
    }
}


//: - (BOOL)onTapAvatar:(NIMMessage *)message{
- (BOOL)changes:(NIMMessage *)message{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self current:message];
    //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:userId];
    CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:userId];

    //进入個人名片
    //: if (self.canMemberInfo) {
    if (self.canMemberInfo) {
        //: vc.teamSetingConfig = self.teamSettingConfig;
        vc.teamSetingConfig = self.teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //: return YES;
    return YES;
}


//: - (ZMONReportHisView *)reprotHisNextView
- (CommentTopView *)reprotHisNextView
{
    //: if(!_reprotHisNextView){
    if(!_reprotHisNextView){
        //: _reprotHisNextView = [[ZMONReportHisView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotHisNextView = [[CommentTopView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotHisNextView.delegate = self;
        _reprotHisNextView.delegate = self;
    }
    //: return _reprotHisNextView;
    return _reprotHisNextView;

}

//正则过滤，字符串是否是纯数字
//: - (BOOL)filterInputShouldNumber:(NSString *)str
- (BOOL)behindText:(NSString *)str
{
   //: if (str.length == 0) {
   if (str.length == 0) {
        //: return NO;
        return NO;
    }
    //: NSString *regex = @"[0-9]*";
    NSString *regex = @"[0-9]*";
    //: NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    NSPredicate *pred = [NSPredicate predicateWithFormat:[OptimisticData kTitleMysteryValue],regex];
    //: if ([pred evaluateWithObject:str]) {
    if ([pred evaluateWithObject:str]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //    self.navigationController.navigationBarHidden = NO;
    //    [self.navigationController.navigationBar setHidden:YES];
    //: [self showNotice];
    [self pin];

    // 当前用户不在群聊
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {

            //: self.invalid_tip.hidden = NO;
            self.invalid_tip.hidden = NO;

            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self refreshMessages];
                [self commentMessages];
            //: }];
            }];
        //: } else {
        } else {

//            [[NIMSDK sharedSDK].teamManager fetchTeamMembers:team.teamId
//                                                  completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
//                
//                if (members && members.count >= 100) {
//                    
//                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateOnlyManager
//                                                                 inTeam:team.teamId
//                                                             completion:^(NSError *error) {
//                        
//                    }];
//                }
//            }];
        }
    }
}

//- (void)enterTeamCard:(id)sender {
//    CommentViewController *vc = nil;
//    SessionOption *option = [[SessionOption alloc] init];
//    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//
//    if (self.session.sessionType == NIMSessionTypeTeam) {
//        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
//        if(team.type == NIMTeamTypeAdvanced){
//            vc = [[OpenDefenceViewController alloc] initWithTeam:team
//                                                                 session:self.session
//                                                                  option:option];
//            vc.delegate = self;
//        }
//    }
//    if (vc) {
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//}

//: - (void)enterSuperTeamCard:(id)sender{
- (void)attachHigh:(id)sender{

}

//: - (void)cancelSelected:(id)sender {
- (void)presenting:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
    [self enableOverEndedUponAmericanState:NIMKitSessionStateNormal];
}

//: - (void)showRecordFileNotSendReason
- (void)with
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyintaiduan"] duration:0.2f position:CSToastPositionCenter];
    [self.view makeToast:[MakeManager cell:[OptimisticData kContentGentString]] duration:0.2f position:CSToastPositionCenter];
}

//: - (void)showNotice {
- (void)pin {

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{

        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if (team && team.announcement && team.announcement.length > 0) {
        if (team && team.announcement && team.announcement.length > 0) {
            //取出标题和内容
            //: NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: if (datas.count <= 0){
            if (datas.count <= 0){
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[CellManager blueInstance] colour];
                //: return;
                return;
            }

            //: NSString *title = [datas lastObject][@"title"];
            NSString *title = [datas lastObject][@"title"];
            //: NSString *content = [datas lastObject][@"content"];
            NSString *content = [datas lastObject][@"content"];

            //: NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];
            NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];

            //: if (title.length > 0 || content.length > 0){
            if (title.length > 0 || content.length > 0){

                @
                 //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                 autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                              ;
                //: [[SNLeadCompleteManager sharedInstance] showLeadViewForCompletingUserInfoWithSuperView:self.view withMessage:message cancleBlock:^{
                [[CellManager blueInstance] member:self.view tillComment:message pressed:^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
                    ViewEnable *option = [[ViewEnable alloc] init];
                    //: option.canCreateAnnouncement = NO;
                    option.canCreateAnnouncement = NO;
                    //: option.announcement = team.announcement;
                    option.announcement = team.announcement;
                    //: option.nick = team.teamName;
                    option.nick = team.teamName;
                    //: option.team = team;
                    option.team = team;
                    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
                    CornerCellViewController *vc = [[CornerCellViewController alloc] initWithWindowShow:option];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                //: }];
                }];
            //: } else {
            } else {
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[CellManager blueInstance] colour];
            }
        }

    //: });
    });
}

//: - (void)doShowInputRevokePostscriptAlert:(NIMMessage *)message {
- (void)sessionSpace:(NIMMessage *)message {
    //: UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"撤回附言"
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:[OptimisticData kNameLabEasilyValue]
                                                                     //: message:nil
                                                                     message:nil
                                                              //: preferredStyle:UIAlertControllerStyleAlert];
                                                              preferredStyle:UIAlertControllerStyleAlert];
    //: [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //: textField.placeholder = @"请输入附言";
        textField.placeholder = [OptimisticData kTitle_jewelProudString];
    //: }];
    }];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[MakeManager cell:[OptimisticData kTextDevastatingValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UITextField *input = alertVC.textFields.firstObject;
        UITextField *input = alertVC.textFields.firstObject;
        //: [weakSelf doRevokeMessage:message postscript:input.text];
        [weakSelf circumferencePostscript:message assets:input.text];
    //: }];
    }];
    //: [alertVC addAction:sure];
    [alertVC addAction:sure];
    //: [self presentViewController:alertVC animated:YES completion:nil];
    [self presentViewController:alertVC animated:YES completion:nil];
}

//: #pragma mark - 文本消息
#pragma mark - 文本消息

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers{
- (void)start:(NSString *)text comment_strong:(NSArray *)atUsers{
    //: [super onSendText:text atUsers:atUsers];
    [super start:text comment_strong:atUsers];
}

//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification {
- (void)bambinoing:(NSNotification *)notification {
    //: [self showNotice];
    [self pin];
    //在聊天页面停留时间长了，再次进来卡死。刷新一下数据
//    [self refreshMessages];

    // 检查是否需要重启
        //: if (self.shouldRestart) {
        if (self.shouldRestart) {
            //: [self refreshMessages];
            [self commentMessages];
            //: self.shouldRestart = NO;
            self.shouldRestart = NO;
        }
}

//: - (void)onJionTeamWithTeam:(NIMTeam *)team {
- (void)jion:(NIMTeam *)team {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if(team.joinMode == NIMTeamJoinModeNoAuth) {
    if(team.joinMode == NIMTeamJoinModeNoAuth) {
        //: [self didApplyToTeamWithMessage:@"" WithTeam:team];
        [self title:@"" image:team];
    //: } else {
    } else {
        //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[FFFLanguageManager getTextWithKey:@"activity_friend_verify_info"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[MakeManager cell:[OptimisticData kContent_accessData]] delegate:nil cancelButtonTitle:[MakeManager cell:[OptimisticData kTextDevastatingValue]] otherButtonTitles:nil, nil];
        //: alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
        [alert tipMessage:^(NSInteger index) {
            //: NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            //: [wself didApplyToTeamWithMessage:message WithTeam:team];
            [wself title:message image:team];
        //: }];
        }];
    }

}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)asHandle:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [USERBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [UserLabelMan user].remove;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[OptimisticData kNameRatherClimateString]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf keep:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: BOOL isDeleteFromDB = [USERBundleSetting sharedConfig].isDeleteMsgFromDB;
        BOOL isDeleteFromDB = [UserLabelMan user].place;
        //: NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        //: option.removeFromDB = isDeleteFromDB;
        option.removeFromDB = isDeleteFromDB;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        //: [self uiDeleteMessage:message];
        [self keep:message];
    }
}

//: - (NSString *)messageSendSource:(NIMMessage *)message {
- (NSString *)current:(NIMMessage *)message {
    //: return message.from;
    return message.from;
}


//: - (void)didTouchBlackButton
- (void)buttonDomain
{
    //: [self.view addSubview:self.reprotBlackView];
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    //: [self.reprotBlackView animationShow];
    [self.reprotBlackView status];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {

                   //: if (!error) {
                   if (!error) {
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MakeManager cell:[OptimisticData kTextNessContent]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[MakeManager cell:[OptimisticData kNamePainfulText]] duration:2.0f position:CSToastPositionCenter];

                   }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

    //: };
    };
}

 //: - (void)showDeleteSureVCWithTitle:(NSString *)title confirmBlock:(void(^)(void))confirmBlock {
- (void)streetwise:(NSString *)title color:(void(^)(void))confirmBlock {
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".user_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".nominate style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: if (confirmBlock) {
        if (confirmBlock) {
            //: confirmBlock();
            confirmBlock();
        }
    //: }];
    }];
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".user_localized
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".nominate
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [sheet addAction:sure];
    [sheet addAction:sure];
    //: [sheet addAction:cancel];
    [sheet addAction:cancel];
    //: [self presentViewController:sheet animated:YES completion:nil];
    [self presentViewController:sheet animated:YES completion:nil];
}


//: - (void)onTapMenuItemForword:(FFFMediaItem *)item
- (void)pinForword:(CommingleItem *)item
{
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    CrownViewController *vc = [[CrownViewController alloc]init];
    //: vc.message = [self messageForMenu];
    vc.message = [self messageForMenu];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (NSString *)sessionSubTitle
- (NSString *)rangeScale
{
    //: if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [USERSessionUtil onlineState:self.session.sessionId detail:YES];
        return [SessionStandard imageDetail:self.session.sessionId shouldPath:YES];
    }
    //: return @"";
    return @"";
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)playAudio:(NSString *)filePath progress:(float)value
- (void)playAudio:(NSString *)filePath progress:(float)value
{
}

//: - (NSDictionary *)cellActions
- (NSDictionary *)dataSession
{
    //: static NSDictionary *actions = nil;
    static NSDictionary *actions = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: actions = @{@(NIMMessageTypeImage) : @"showImage:",
        actions = @{@(NIMMessageTypeImage) : [OptimisticData kText_suchData],
                    //: @(NIMMessageTypeVideo) : @"showVideo:",
                    @(NIMMessageTypeVideo) : [OptimisticData kTitle_strictCurveValue],
                    //: @(NIMMessageTypeLocation) : @"showLocation:",
                    @(NIMMessageTypeLocation) : [OptimisticData kTitleColorSoulData],
                    //: @(NIMMessageTypeFile) : @"showFile:",
                    @(NIMMessageTypeFile) : [OptimisticData kTextPinMoleValue],
                    //: @(NIMMessageTypeCustom): @"showCustom:"};
                    @(NIMMessageTypeCustom): [OptimisticData kTitle_productiveValue]};
    //: });
    });
    //: return actions;
    return actions;
}

//: - (void)selectForwardSessionCompletion:(void (^)(NIMSession *targetSession))completion {
- (void)query:(void (^)(NIMSession *targetSession))completion {
    //: UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] destructiveButtonTitle:nil otherButtonTitles:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"], [FFFLanguageManager getTextWithKey:@"contact_fragment_group"], [FFFLanguageManager getTextWithKey:@"message_super_team"], nil];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[MakeManager cell:[OptimisticData kNameCompareString]] delegate:nil cancelButtonTitle:[MakeManager cell:[OptimisticData kName_ampleString]] destructiveButtonTitle:nil otherButtonTitles:[MakeManager cell:[OptimisticData kName_eyebrowString]], [MakeManager cell:[OptimisticData kNameLiteralData]], [MakeManager cell:[OptimisticData kNameStandardOutfitViewTitle]], nil];
    //: [sheet showInView:self.view completionHandler:^(NSInteger index) {
    [sheet maxExhibit:self.view boldDateDevice:^(NSInteger index) {
        //: switch (index) {
        switch (index) {
            //: case 0:{
            case 0:{
                //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
                MakeAction *config = [[MakeAction alloc] init];
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *userId = array.firstObject;
                    NSString *userId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc recent];
            }
                //: break;
                break;
            //: case 1:{
            case 1:{
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                LabelTarget *config = [[LabelTarget alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc recent];
            }
                //: break;
                break;
            //: case 2: {
            case 2: {
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                LabelTarget *config = [[LabelTarget alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc recent];
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}

//: - (void)scrollsafelyReloadRowAtToMessage:(NIMMessage *)message
- (void)thanMessage:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor turnIndex:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

        //: if (indexPath) {
        if (indexPath) {
            //: [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        //: } else {
        } else {
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    }



}

//: - (void)onTapMenuItemRevoke:(FFFMediaItem *)item
- (void)team:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL enableRevokePostscript = [[USERBundleSetting sharedConfig] enableRevokeMsgPostscript];
    BOOL enableRevokePostscript = [[UserLabelMan user] electPostscript];
    //: if (enableRevokePostscript) {
    if (enableRevokePostscript) {
        //: [self doShowInputRevokePostscriptAlert:message];
        [self sessionSpace:message];
    //: } else {
    } else {
        //: [self doRevokeMessage:message postscript:nil];
        [self circumferencePostscript:message assets:nil];
    }
}



//: - (ZMONReportDeleteView *)reprotDeleteView
- (PersonView *)reprotDeleteView
{
    //: if(!_reprotDeleteView){
    if(!_reprotDeleteView){
        //: _reprotDeleteView = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotDeleteView = [[PersonView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotDeleteView;
    return _reprotDeleteView;
}

//: - (BOOL)checkRTSCondition
- (BOOL)inputCondition
{
    //: BOOL result = YES;
    BOOL result = YES;

    //: if (![[Reachability reachabilityForInternetConnection] isReachable])
    if (![[Reachability reachabilityForInternetConnection] isReachable])
    {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MakeManager cell:[OptimisticData kTitle_tankData]] duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    {
        //: [self.view makeToast:@"不能和自己通话哦".user_localized duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[OptimisticData kText_currentString].nominate duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[MakeManager cell:[OptimisticData kName_scaleString]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: if (self.session.sessionType == NIMSessionTypeSuperTeam)
    if (self.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[MakeManager cell:[OptimisticData kName_scaleString]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: return result;
    return result;
}


//: - (void)switchUIWithSessionState:(NIMKitSessionState)state {
- (void)enableOverEndedUponAmericanState:(NIMKitSessionState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMKitSessionStateSelect:
        case NIMKitSessionStateSelect:
        {
            //: [self setupSelectedNav];
            [self text];
            //: [self setSessionState:NIMKitSessionStateSelect];
            [self setBackgroundDoing:NIMKitSessionStateSelect];
            //: [self.view addSubview:self.mulSelectedSureBar];
            [self.view addSubview:self.mulSelectedSureBar];
            //: break;
            break;
        }
        //: case NIMKitSessionStateNormal:
        case NIMKitSessionStateNormal:
        //: default:
        default:
        {
            //: [self.mulSelectedSureBar removeFromSuperview];
            [self.mulSelectedSureBar removeFromSuperview];
            //: [self setSessionState:NIMKitSessionStateNormal];
            [self setBackgroundDoing:NIMKitSessionStateNormal];
//            [self setupNormalNav];
            //: _selectedMessages = nil;
            _selectedMessages = nil;
            //: break;
            break;
        }
    }
}

//: - (void)handleApplyToTeam:(NSError *)error status:(NIMTeamApplyStatus)status WithId:(NSString *)cardId{
- (void)centerArray:(NSError *)error statusCan:(NIMTeamApplyStatus)status shouldReceiveFlip:(NSString *)cardId{
    //: if (!error) {
    if (!error) {
        //: switch (status) {
        switch (status) {
            //: case NIMTeamApplyStatusAlreadyInTeam:{
            case NIMTeamApplyStatusAlreadyInTeam:{
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
                WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
                //: break;
                break;
            }
            //: case NIMTeamApplyStatusWaitForPass:
            case NIMTeamApplyStatusWaitForPass:
                //: [self.view makeToast:@"申请成功，等待验证".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[OptimisticData kTextSexuallyString].disable duration:2.0 position:CSToastPositionCenter];
            //: default:
            default:
                //: break;
                break;
        }
    //: }else{
    }else{
        //: switch (error.code) {
        switch (error.code) {
            //: case NIMRemoteErrorCodeTeamAlreadyIn:
            case NIMRemoteErrorCodeTeamAlreadyIn:
            {
                //                [self.view makeToast:@"已经在群里" duration:2.0 position:CSToastPositionCenter];
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: USERSessionViewController *vc = [[USERSessionViewController alloc] initWithSession:session];
                WayOfLifeViewController *vc = [[WayOfLifeViewController alloc] initWithTitleSession:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            }
                //: break;
                break;
            //: default:
            default:
                //: [self.view makeToast:@"群申请失败".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[OptimisticData kContent_advocateName].disable duration:2.0 position:CSToastPositionCenter];
                //: break;
                break;
        }
    }
}

//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)withing:(NIMMessage *)message
{
    //: USERThreadTalkSessionViewController *vc = [[USERThreadTalkSessionViewController alloc] initWithThreadMessage:message];
    LastexViewController *vc = [[LastexViewController alloc] initWithWoodpile:message];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)vcEnterBackground:(NSNotification *)notification
- (void)quantitied:(NSNotification *)notification
{
        // 记录进入后台的时间
            //: self.backgroundEnterTime = [NSDate date];
            self.backgroundEnterTime = [NSDate date];
            //: NSLog(@"应用进入后台，开始计时: %@", self.backgroundEnterTime);
}
//: - (UILabel *)invalid_tip {
- (UILabel *)invalid_tip {
    //: if (!_invalid_tip) {
    if (!_invalid_tip) {
        //: _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 50)];
        _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 50)];
        //: _invalid_tip.backgroundColor = [UIColor colorWithHexString:@"#FEFECA"];
        _invalid_tip.backgroundColor = [UIColor cell:[OptimisticData kTitleSeedData]];
        //: _invalid_tip.textColor = [UIColor colorWithHexString:@"#F6B53E"];
        _invalid_tip.textColor = [UIColor cell:[OptimisticData kTitle_intactData]];
        //: _invalid_tip.text = [FFFLanguageManager getTextWithKey:@"app_team_invalid_tip"]; 
        _invalid_tip.text = [MakeManager cell:[OptimisticData kText_heavilyToothString]]; //
        //: _invalid_tip.textAlignment = NSTextAlignmentCenter;
        _invalid_tip.textAlignment = NSTextAlignmentCenter;
        //: _invalid_tip.hidden = YES;
        _invalid_tip.hidden = YES;

        //: [self.view addSubview:_invalid_tip];
        [self.view addSubview:_invalid_tip];
    }
    //: return _invalid_tip;
    return _invalid_tip;
}
//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<ColorConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[USERSessionConfig alloc] init];
        _sessionConfig = [[CropConfig alloc] init];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: - (void)forwardMessage:(id)sender
- (void)forwardsed:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: message.setting.teamReceiptEnabled = NO;
    message.setting.teamReceiptEnabled = NO;


//    __weak typeof(self) weakSelf = self;
//    [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
//        [weakSelf forwardMessage:message toSession:targetSession];
//    }];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    MakeAction *config = [[MakeAction alloc] init];
    //: config.needMutiSelected = NO;
    config.needMutiSelected = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
    //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
    vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        //: NSString *userId = array.firstObject;
        NSString *userId = array.firstObject;
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [self forwardMessage:message toSession:session];
        [self location:message anPage:session];
    //: };
    };
    //: [vc show];
    [vc recent];
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (KitFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[KitFetcher alloc] init];
        //: _mediaFetcher.limit = 1;
        _mediaFetcher.limit = 1;
        //: _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}


//: @end
@end
//: __SAVE__ ignore_string [763.7,546.5,410.4]