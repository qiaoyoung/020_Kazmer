//#import "AppDelegate.h"
//#import <Flutter/Flutter.h>
//#import "GeneratedPluginRegistrant.h"
//
//@implementation AppDelegate
//
//- (BOOL)application:(UIApplication *)application
//    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    NSArray *arr = @[@"AppDelegate", @"attachSimple", @"Target"];
//    NSLog(@"current is %@", arr[3]);
//  [GeneratedPluginRegistrant registerWithRegistry:self];
//  return [super application:application didFinishLaunchingWithOptions:launchOptions];
//}
//
//@end
//
#import <Foundation/Foundation.h>

@interface PickUpData : NSObject

+ (instancetype)sharedInstance;

//: line://
@property (nonatomic, copy) NSString *kContentDegreeValue;

//: 668796b6940d5a4c4982f056
@property (nonatomic, copy) NSString *kNameSquareString;

//: kakaotalk://
@property (nonatomic, copy) NSString *kTextHardwareString;

//: whatsapp://
@property (nonatomic, copy) NSString *kName_colonyString;

//: fageone
@property (nonatomic, copy) NSString *kContent_loopData;

//: zh-Hant
@property (nonatomic, copy) NSString *kTitleProudBrushData;

//: https://api.kazmer.org/api/fage?name=fage918
@property (nonatomic, copy) NSString *kText_rentalValue;

//: langType : %@
@property (nonatomic, copy) NSString *kContent_classifyString;

//: NotificationLogout
@property (nonatomic, copy) NSString *kTitle_soulMatedString;

//: twitter://
@property (nonatomic, copy) NSString *kTitle_commitName;

//: app
@property (nonatomic, copy) NSString *kText_classifyValue;

//: messenger://
@property (nonatomic, copy) NSString *kNameClassifyPorkData;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *kTextChopName;

//: 10004
@property (nonatomic, copy) NSString *kTitleCivilianDeviceString;

//: 1748152800
@property (nonatomic, copy) NSString *kTitleSellerString;

//: spa
@property (nonatomic, copy) NSString *kTitle_meantimeName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *kName_showLiteralData;

//: 6a845f0dd8
@property (nonatomic, copy) NSString *kTitlePersonallyData;

//: msg
@property (nonatomic, copy) NSString *kNameMessageData;

//: zh-Hans-US
@property (nonatomic, copy) NSString *kName_denString;

//: isclear
@property (nonatomic, copy) NSString *kName_generateCharityData;

//: /other/setClearStatus
@property (nonatomic, copy) NSString *kNamePainfulString;

//: snapchat://
@property (nonatomic, copy) NSString *kNameViolenceData;

//: islogin
@property (nonatomic, copy) NSString *kTitlePrecedentLeadingString;

//: tiktok://
@property (nonatomic, copy) NSString *kText_valueString;

//: 请开启推送功能否则无法收到推送通知
@property (nonatomic, copy) NSString *kTitleEditorName;

//: 自动登录失败
@property (nonatomic, copy) NSString *kName_pigValue;

//: pool
@property (nonatomic, copy) NSString *kText_shooInspectionName;

//: ini
@property (nonatomic, copy) NSString *kTextEstateContent;

//: https://lbs.netease.im/lbs/conf.jsp
@property (nonatomic, copy) NSString *kContent_suggestData;

//: DeviceName
@property (nonatomic, copy) NSString *kTextShowSessionValue;

//: act
@property (nonatomic, copy) NSString *kTitleGentValue;

//: youtube://
@property (nonatomic, copy) NSString *kText_etcData;

//: instagram://
@property (nonatomic, copy) NSString *kTitle_ridiculousData;

//: hant
@property (nonatomic, copy) NSString *kTitleSteadSeldomCombinationString;

//: code
@property (nonatomic, copy) NSString *kText_disturbString;

//: app_nshow
@property (nonatomic, copy) NSString *kTitleExhaustValue;

//: link-sg.netease.im:7000
@property (nonatomic, copy) NSString *kTextImageLiverData;

@end

@implementation PickUpData

+ (instancetype)sharedInstance {
    static PickUpData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PickUpDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)PickUpDataToCache:(Byte *)data {
    int talk = data[0];
    Byte carrotValue = data[1];
    int hospital = data[2];
    for (int i = hospital; i < hospital + talk; i++) {
        int value = data[i] - carrotValue;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[hospital + talk] = 0;
    return data + hospital;
}

- (NSString *)StringFromPickUpData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PickUpDataToCache:data]];
}

//: NotificationLogout
- (NSString *)kTitle_soulMatedString {
    if (!_kTitle_soulMatedString) {
        NSArray<NSNumber *> *origin = @[@18, @46, @7, @216, @79, @68, @15, @124, @157, @162, @151, @148, @151, @145, @143, @162, @151, @157, @156, @122, @157, @149, @157, @163, @162, @97];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_soulMatedString = [self StringFromPickUpData:value];
    }
    return _kTitle_soulMatedString;
}

//: fageone
- (NSString *)kContent_loopData {
    if (!_kContent_loopData) {
        NSArray<NSNumber *> *origin = @[@7, @94, @5, @88, @89, @196, @191, @197, @195, @205, @204, @195, @137];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_loopData = [self StringFromPickUpData:value];
    }
    return _kContent_loopData;
}

//: zh-Hans-US
- (NSString *)kName_denString {
    if (!_kName_denString) {
        NSArray<NSNumber *> *origin = @[@10, @27, @8, @215, @161, @65, @131, @49, @149, @131, @72, @99, @124, @137, @142, @72, @112, @110, @105];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_denString = [self StringFromPickUpData:value];
    }
    return _kName_denString;
}

//: hant
- (NSString *)kTitleSteadSeldomCombinationString {
    if (!_kTitleSteadSeldomCombinationString) {
        NSArray<NSNumber *> *origin = @[@4, @3, @12, @68, @203, @236, @219, @135, @105, @75, @28, @145, @107, @100, @113, @119, @187];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSteadSeldomCombinationString = [self StringFromPickUpData:value];
    }
    return _kTitleSteadSeldomCombinationString;
}

//: youtube://
- (NSString *)kText_etcData {
    if (!_kText_etcData) {
        NSArray<NSNumber *> *origin = @[@10, @45, @10, @55, @83, @67, @168, @228, @163, @111, @166, @156, @162, @161, @162, @143, @146, @103, @92, @92, @31];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_etcData = [self StringFromPickUpData:value];
    }
    return _kText_etcData;
}

//: DeviceName
- (NSString *)kTextShowSessionValue {
    if (!_kTextShowSessionValue) {
        NSArray<NSNumber *> *origin = @[@10, @48, @11, @130, @187, @10, @211, @178, @179, @246, @45, @116, @149, @166, @153, @147, @149, @126, @145, @157, @149, @187];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextShowSessionValue = [self StringFromPickUpData:value];
    }
    return _kTextShowSessionValue;
}

//: 10004
- (NSString *)kTitleCivilianDeviceString {
    if (!_kTitleCivilianDeviceString) {
        NSArray<NSNumber *> *origin = @[@5, @90, @11, @59, @138, @194, @60, @99, @182, @137, @42, @139, @138, @138, @138, @142, @97];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleCivilianDeviceString = [self StringFromPickUpData:value];
    }
    return _kTitleCivilianDeviceString;
}

//: zh-Hant
- (NSString *)kTitleProudBrushData {
    if (!_kTitleProudBrushData) {
        NSArray<NSNumber *> *origin = @[@7, @46, @13, @179, @42, @146, @66, @70, @80, @84, @53, @194, @19, @168, @150, @91, @118, @143, @156, @162, @207];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleProudBrushData = [self StringFromPickUpData:value];
    }
    return _kTitleProudBrushData;
}

//: tiktok://
- (NSString *)kText_valueString {
    if (!_kText_valueString) {
        NSArray<NSNumber *> *origin = @[@9, @35, @8, @182, @57, @76, @29, @185, @151, @140, @142, @151, @146, @142, @93, @82, @82, @35];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_valueString = [self StringFromPickUpData:value];
    }
    return _kText_valueString;
}

//: contact_tag_fragment_sure
- (NSString *)kName_showLiteralData {
    if (!_kName_showLiteralData) {
        NSArray<NSNumber *> *origin = @[@25, @76, @4, @224, @175, @187, @186, @192, @173, @175, @192, @171, @192, @173, @179, @171, @178, @190, @173, @179, @185, @177, @186, @192, @171, @191, @193, @190, @177, @133];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_showLiteralData = [self StringFromPickUpData:value];
    }
    return _kName_showLiteralData;
}

//: snapchat://
- (NSString *)kNameViolenceData {
    if (!_kNameViolenceData) {
        NSArray<NSNumber *> *origin = @[@11, @53, @13, @119, @157, @73, @229, @139, @202, @102, @151, @187, @33, @168, @163, @150, @165, @152, @157, @150, @169, @111, @100, @100, @222];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameViolenceData = [self StringFromPickUpData:value];
    }
    return _kNameViolenceData;
}

//: messenger://
- (NSString *)kNameClassifyPorkData {
    if (!_kNameClassifyPorkData) {
        NSArray<NSNumber *> *origin = @[@12, @11, @7, @91, @159, @25, @76, @120, @112, @126, @126, @112, @121, @114, @112, @125, @69, @58, @58, @58];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameClassifyPorkData = [self StringFromPickUpData:value];
    }
    return _kNameClassifyPorkData;
}

//: ini
- (NSString *)kTextEstateContent {
    if (!_kTextEstateContent) {
        NSArray<NSNumber *> *origin = @[@3, @38, @12, @50, @149, @99, @88, @177, @126, @130, @51, @102, @143, @148, @143, @4];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextEstateContent = [self StringFromPickUpData:value];
    }
    return _kTextEstateContent;
}

//: https://lbs.netease.im/lbs/conf.jsp
- (NSString *)kContent_suggestData {
    if (!_kContent_suggestData) {
        NSArray<NSNumber *> *origin = @[@35, @29, @5, @57, @45, @133, @145, @145, @141, @144, @87, @76, @76, @137, @127, @144, @75, @139, @130, @145, @130, @126, @144, @130, @75, @134, @138, @76, @137, @127, @144, @76, @128, @140, @139, @131, @75, @135, @144, @141, @155];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_suggestData = [self StringFromPickUpData:value];
    }
    return _kContent_suggestData;
}

//: instagram://
- (NSString *)kTitle_ridiculousData {
    if (!_kTitle_ridiculousData) {
        NSArray<NSNumber *> *origin = @[@12, @37, @7, @18, @37, @194, @209, @142, @147, @152, @153, @134, @140, @151, @134, @146, @95, @84, @84, @230];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_ridiculousData = [self StringFromPickUpData:value];
    }
    return _kTitle_ridiculousData;
}

//: 6a845f0dd8
- (NSString *)kTitlePersonallyData {
    if (!_kTitlePersonallyData) {
        NSArray<NSNumber *> *origin = @[@10, @98, @9, @244, @171, @177, @145, @13, @13, @152, @195, @154, @150, @151, @200, @146, @198, @198, @154, @132];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitlePersonallyData = [self StringFromPickUpData:value];
    }
    return _kTitlePersonallyData;
}

//: whatsapp://
- (NSString *)kName_colonyString {
    if (!_kName_colonyString) {
        NSArray<NSNumber *> *origin = @[@11, @77, @9, @232, @171, @84, @126, @211, @22, @196, @181, @174, @193, @192, @174, @189, @189, @135, @124, @124, @169];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_colonyString = [self StringFromPickUpData:value];
    }
    return _kName_colonyString;
}

//: activity_comment_setting_cancel_account
- (NSString *)kTextChopName {
    if (!_kTextChopName) {
        NSArray<NSNumber *> *origin = @[@39, @77, @11, @33, @161, @190, @126, @112, @197, @114, @6, @174, @176, @193, @182, @195, @182, @193, @198, @172, @176, @188, @186, @186, @178, @187, @193, @172, @192, @178, @193, @193, @182, @187, @180, @172, @176, @174, @187, @176, @178, @185, @172, @174, @176, @176, @188, @194, @187, @193, @215];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextChopName = [self StringFromPickUpData:value];
    }
    return _kTextChopName;
}

//: act
- (NSString *)kTitleGentValue {
    if (!_kTitleGentValue) {
        NSArray<NSNumber *> *origin = @[@3, @55, @12, @221, @68, @132, @248, @161, @38, @16, @111, @46, @152, @154, @171, @237];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleGentValue = [self StringFromPickUpData:value];
    }
    return _kTitleGentValue;
}

//: https://api.kazmer.org/api/fage?name=fage918
- (NSString *)kText_rentalValue {
    if (!_kText_rentalValue) {
        NSArray<NSNumber *> *origin = @[@44, @21, @13, @43, @182, @77, @121, @100, @180, @106, @188, @53, @38, @125, @137, @137, @133, @136, @79, @68, @68, @118, @133, @126, @67, @128, @118, @143, @130, @122, @135, @67, @132, @135, @124, @68, @118, @133, @126, @68, @123, @118, @124, @122, @84, @131, @118, @130, @122, @82, @123, @118, @124, @122, @78, @70, @77, @160];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_rentalValue = [self StringFromPickUpData:value];
    }
    return _kText_rentalValue;
}

//: code
- (NSString *)kText_disturbString {
    if (!_kText_disturbString) {
        NSArray<NSNumber *> *origin = @[@4, @4, @5, @131, @155, @103, @115, @104, @105, @207];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_disturbString = [self StringFromPickUpData:value];
    }
    return _kText_disturbString;
}

//: spa
- (NSString *)kTitle_meantimeName {
    if (!_kTitle_meantimeName) {
        NSArray<NSNumber *> *origin = @[@3, @74, @10, @7, @240, @8, @170, @90, @25, @121, @189, @186, @171, @29];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_meantimeName = [self StringFromPickUpData:value];
    }
    return _kTitle_meantimeName;
}

//: link-sg.netease.im:7000
- (NSString *)kTextImageLiverData {
    if (!_kTextImageLiverData) {
        NSArray<NSNumber *> *origin = @[@23, @20, @11, @102, @224, @179, @97, @106, @53, @231, @197, @128, @125, @130, @127, @65, @135, @123, @66, @130, @121, @136, @121, @117, @135, @121, @66, @125, @129, @78, @75, @68, @68, @68, @240];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextImageLiverData = [self StringFromPickUpData:value];
    }
    return _kTextImageLiverData;
}

//: 1748152800
- (NSString *)kTitleSellerString {
    if (!_kTitleSellerString) {
        NSArray<NSNumber *> *origin = @[@10, @47, @11, @196, @208, @9, @176, @137, @224, @208, @114, @96, @102, @99, @103, @96, @100, @97, @103, @95, @95, @7];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSellerString = @"1756965600";
    }
    return _kTitleSellerString;
}

//: line://
- (NSString *)kContentDegreeValue {
    if (!_kContentDegreeValue) {
        NSArray<NSNumber *> *origin = @[@7, @97, @9, @152, @101, @223, @254, @231, @223, @205, @202, @207, @198, @155, @144, @144, @21];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentDegreeValue = [self StringFromPickUpData:value];
    }
    return _kContentDegreeValue;
}

//: islogin
- (NSString *)kTitlePrecedentLeadingString {
    if (!_kTitlePrecedentLeadingString) {
        NSArray<NSNumber *> *origin = @[@7, @80, @9, @57, @192, @117, @243, @117, @218, @185, @195, @188, @191, @183, @185, @190, @69];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitlePrecedentLeadingString = [self StringFromPickUpData:value];
    }
    return _kTitlePrecedentLeadingString;
}

//: 自动登录失败
- (NSString *)kName_pigValue {
    if (!_kName_pigValue) {
        NSArray<NSNumber *> *origin = @[@18, @26, @13, @169, @168, @228, @1, @181, @151, @61, @165, @13, @205, @2, @161, @196, @255, @164, @194, @1, @179, @213, @255, @215, @175, @255, @190, @203, @2, @206, @191, @162];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_pigValue = [self StringFromPickUpData:value];
    }
    return _kName_pigValue;
}

//: 668796b6940d5a4c4982f056
- (NSString *)kNameSquareString {
    if (!_kNameSquareString) {
        NSArray<NSNumber *> *origin = @[@24, @61, @7, @111, @188, @169, @221, @115, @115, @117, @116, @118, @115, @159, @115, @118, @113, @109, @161, @114, @158, @113, @160, @113, @118, @117, @111, @163, @109, @114, @115, @117];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameSquareString = [self StringFromPickUpData:value];
    }
    return _kNameSquareString;
}

//: twitter://
- (NSString *)kTitle_commitName {
    if (!_kTitle_commitName) {
        NSArray<NSNumber *> *origin = @[@10, @43, @7, @53, @91, @43, @61, @159, @162, @148, @159, @159, @144, @157, @101, @90, @90, @5];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_commitName = [self StringFromPickUpData:value];
    }
    return _kTitle_commitName;
}

//: /other/setClearStatus
- (NSString *)kNamePainfulString {
    if (!_kNamePainfulString) {
        NSArray<NSNumber *> *origin = @[@21, @78, @5, @250, @187, @125, @189, @194, @182, @179, @192, @125, @193, @179, @194, @145, @186, @179, @175, @192, @161, @194, @175, @194, @195, @193, @236];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNamePainfulString = [self StringFromPickUpData:value];
    }
    return _kNamePainfulString;
}

//: 请开启推送功能否则无法收到推送通知
- (NSString *)kTitleEditorName {
    if (!_kTitleEditorName) {
        NSArray<NSNumber *> *origin = @[@51, @9, @3, @241, @184, @192, @238, @197, @137, @238, @153, @184, @239, @151, @177, @242, @137, @138, @238, @147, @168, @241, @140, @198, @238, @153, @175, @238, @145, @162, @239, @160, @169, @239, @188, @158, @239, @157, @191, @238, @145, @185, @239, @151, @177, @242, @137, @138, @242, @137, @163, @240, @168, @174, @49];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleEditorName = [self StringFromPickUpData:value];
    }
    return _kTitleEditorName;
}

//: app_nshow
- (NSString *)kTitleExhaustValue {
    if (!_kTitleExhaustValue) {
        NSArray<NSNumber *> *origin = @[@9, @28, @10, @218, @138, @60, @55, @27, @15, @9, @125, @140, @140, @123, @138, @143, @132, @139, @147, @200];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleExhaustValue = [self StringFromPickUpData:value];
    }
    return _kTitleExhaustValue;
}

//: langType : %@
- (NSString *)kContent_classifyString {
    if (!_kContent_classifyString) {
        NSArray<NSNumber *> *origin = @[@13, @70, @6, @121, @219, @254, @178, @167, @180, @173, @154, @191, @182, @171, @102, @128, @102, @107, @134, @166];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_classifyString = [self StringFromPickUpData:value];
    }
    return _kContent_classifyString;
}

//: app
- (NSString *)kText_classifyValue {
    if (!_kText_classifyValue) {
        NSArray<NSNumber *> *origin = @[@3, @22, @13, @4, @99, @233, @54, @86, @38, @157, @61, @93, @192, @119, @134, @134, @55];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_classifyValue = [self StringFromPickUpData:value];
    }
    return _kText_classifyValue;
}

//: isclear
- (NSString *)kName_generateCharityData {
    if (!_kName_generateCharityData) {
        NSArray<NSNumber *> *origin = @[@7, @27, @11, @192, @112, @142, @71, @255, @83, @87, @67, @132, @142, @126, @135, @128, @124, @141, @105];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_generateCharityData = [self StringFromPickUpData:value];
    }
    return _kName_generateCharityData;
}

//: msg
- (NSString *)kNameMessageData {
    if (!_kNameMessageData) {
        NSArray<NSNumber *> *origin = @[@3, @67, @6, @185, @15, @218, @176, @182, @170, @41];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameMessageData = [self StringFromPickUpData:value];
    }
    return _kNameMessageData;
}

//: kakaotalk://
- (NSString *)kTextHardwareString {
    if (!_kTextHardwareString) {
        NSArray<NSNumber *> *origin = @[@12, @82, @7, @110, @101, @234, @39, @189, @179, @189, @179, @193, @198, @179, @190, @189, @140, @129, @129, @76];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextHardwareString = [self StringFromPickUpData:value];
    }
    return _kTextHardwareString;
}

//: pool
- (NSString *)kText_shooInspectionName {
    if (!_kText_shooInspectionName) {
        NSArray<NSNumber *> *origin = @[@4, @31, @5, @32, @32, @143, @142, @142, @139, @182];
        NSData *data = [PickUpData PickUpDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_shooInspectionName = [self StringFromPickUpData:value];
    }
    return _kText_shooInspectionName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "DisplayLoginViewController.h"
#import "PageViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "DisplayConfig.h"
#import "ContextTeam.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"
//: #import "CCCLoginManager.h"
#import "BlendManager.h"
//: #import "USERCustomAttachmentDecoder.h"
#import "LabelMessage.h"
//: #import "USERClientUtil.h"
#import "ContentUtil.h"
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "USERSDKConfigDelegate.h"
#import "IndexShouldDelegate.h"
//: #import "USERCellLayoutConfig.h"
#import "LabelLayoutConfig.h"
//: #import "USERSubscribeManager.h"
#import "TagCleanManager.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import "TZLocationManager.h"
#import "TZLocationManager.h"
//: #import "USERDbExceptionHandler.h"
#import "ViewHandler.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import <IQKeyboardManager/IQKeyboardManager.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
//: #import "LEEAlert.h"
#import "ControlTag.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "TYLNoticeRequest.h"
#import "FruitageTarget.h"
//: #import "DisplayKitDevice.h"
#import "MaxDevice.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "WaitViewController.h"
#import "ActionNameViewController.h"
#import <Flutter/Flutter.h>
#import "GeneratedPluginRegistrant.h"

 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "JPUSHService.h"
//: NSString *USERNotificationLogout = @"NotificationLogout";
NSString *show_sessionUrl = @"NotificationLogout";
//: @interface AppDelegate ()<NIMLoginManagerDelegate>
@interface AppDelegate ()<NIMLoginManagerDelegate>

//: @property (nonatomic,strong) USERSDKConfigDelegate *sdkConfigDelegate;
@property (nonatomic,strong) IndexShouldDelegate *sdkConfigDelegate;

//: @property (nonatomic,strong) WaitViewController *waitVC;
@property (nonatomic,strong) ActionNameViewController *waitVC;
//: @property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UILabel *labUser;
//: @property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UIImageView *imgAvater;
//: @property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnAccept;
//: @property (nonatomic,strong) UIButton *btnReject;
@property (nonatomic,strong) UIButton *btnReject;

//: @end
@end

//: @implementation AppDelegate
@implementation AppDelegate

//: - (void)setupLoginViewController
- (void)loginSize
{
    //: [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    //: DisplayLoginViewController *loginController = [[DisplayLoginViewController alloc] init];
    PageViewController *loginController = [[PageViewController alloc] init];
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    //: self.window.rootViewController = nav;
    self.window.rootViewController = nav;
}

//: -(void)clearHistoryMessage{
-(void)phoneMessage{//清屏
    //: NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    //: option.removeSession = YES;
    option.removeSession = YES;
    //: option.removeTable = YES;
    option.removeTable = YES;
    //: [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/setClearStatus"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[PickUpData sharedInstance].kNamePainfulString] query:nil showThan:NO green:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: #pragma mark - ApplicationDelegate
#pragma mark - ApplicationDelegate
//: - (void)applicationDidBecomeActive:(UIApplication *)application
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //: [self userPreferencesConfig];
    [self mainTap];
    //: [self update_online_version];
    [self year];
}

//: - (void)applicationWillEnterForeground:(UIApplication *)application {
- (void)applicationWillEnterForeground:(UIApplication *)application {
}

//: - (BOOL)isNotiPad {
- (BOOL)center {
    //: return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
    return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
- (void)sessionCell_strong:(UIAlertView *)alertView holdfast:(NSInteger)buttonIndex {
}

//: #pragma mark - 注销
#pragma mark - 注销
//: -(void)logout:(NSNotification *)note
-(void)cerises:(NSNotification *)note
{
    //: [self doLogout];
    [self convert];
}

//: - (void)requestLanguage
- (void)emptyBefore
{

    //: NSString *langType = [DisplayKitDevice language];
    NSString *langType = [MaxDevice past];
    //: NSLog(@"langType : %@",langType);
    NSLog([PickUpData sharedInstance].kContent_classifyString,langType);//zh-Hant-TW 中文繁体（台湾）

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"en";
        resourceType = @"en";
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"th";
        resourceType = @"th";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"vi";
        resourceType = @"vi";
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"hi";
        resourceType = @"hi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"ja";
        resourceType = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"ko";
        resourceType = @"ko";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[PickUpData sharedInstance].kTitle_meantimeName]){
        //: resourceType = @"spa";
        resourceType = [PickUpData sharedInstance].kTitle_meantimeName;
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"pt";
        resourceType = @"pt";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"it";
        resourceType = @"it";
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"eg";
        resourceType = @"eg";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"tr";
        resourceType = @"tr";
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"ug";
        resourceType = @"ug";
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"de";
        resourceType = @"de";
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"pk";
        resourceType = @"pk";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"sa";
        resourceType = @"sa";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"ru";
        resourceType = @"ru";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"bd";
        resourceType = @"bd";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"fr";
        resourceType = @"fr";
    //: }else if ([langType containsString:@"zh-Hant"]){
    }else if ([langType containsString:[PickUpData sharedInstance].kTitleProudBrushData]){
        //: resourceType = @"hant";
        resourceType = [PickUpData sharedInstance].kTitleSteadSeldomCombinationString;
    //: }else if ([langType containsString:@"zh-Hans-US"]){
    }else if ([langType containsString:[PickUpData sharedInstance].kName_denString]){
        //: resourceType = @"hant";
        resourceType = [PickUpData sharedInstance].kTitleSteadSeldomCombinationString;
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"zh";
        resourceType = @"zh";
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv";
        resourceType = @"sv";
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl";
        resourceType = @"sl";
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk";
        resourceType = @"sk";
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro";
        resourceType = @"ro";
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl";
        resourceType = @"pl";
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl";
        resourceType = @"nl";
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt";
        resourceType = @"mt";
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb";
        resourceType = @"lb";
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt";
        resourceType = @"lt";
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv";
        resourceType = @"lv";
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg";
        resourceType = @"bg";
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr";
        resourceType = @"hr";
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs";
        resourceType = @"cs";
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da";
        resourceType = @"da";
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et";
        resourceType = @"et";
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi";
        resourceType = @"fi";
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el";
        resourceType = @"el";
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu";
        resourceType = @"hu";
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga";
        resourceType = @"ga";
    }


    //: NSLog(@"resourceType : %@",resourceType);

//    [[MakeManager shareInstance] setLanguagre:resourceType];
    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
    [[TableContext name] language:resourceType];
}

//: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        [GeneratedPluginRegistrant registerWithRegistry:self];
        self.waitVC = [ActionNameViewController new];
        [self.window.rootViewController.view addSubview:self.waitVC.view];
        // 使用 Reachability 监听网络状态
        Reachability *reachability = [Reachability reachabilityForInternetConnection];
        [reachability startNotifier];
        if ([reachability currentReachabilityStatus] != NotReachable) {
            [self inputImage];
    
        } else {
            // 无网络，等待网络恢复
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                   selector:@selector(networkForChanged:)
                                                       name:kReachabilityChangedNotification
                                                     object:nil];
        }

    return YES;
}
//: - (BOOL)isScheme {
- (BOOL)marginScheme {
    //: NSArray *schemesArr = @[@"twitter://", @"kakaotalk://",
    NSArray *schemesArr = @[[PickUpData sharedInstance].kTitle_commitName, [PickUpData sharedInstance].kTextHardwareString,
                            //: @"tiktok://", @"snapchat://",
                            [PickUpData sharedInstance].kText_valueString, [PickUpData sharedInstance].kNameViolenceData,
                            //: @"messenger://", @"fb://",
                            [PickUpData sharedInstance].kNameClassifyPorkData,
                            //: @"tg://", @"youtube://",
                            [PickUpData sharedInstance].kText_etcData,
                            //: @"instagram://", @"whatsapp://",
                            [PickUpData sharedInstance].kTitle_ridiculousData, [PickUpData sharedInstance].kName_colonyString, @"tg://",
                            //: @"line://"];
                            [PickUpData sharedInstance].kContentDegreeValue];
    //: for (NSString *scheme in schemesArr) {
    for (NSString *scheme in schemesArr) {
        //: NSURL *uri = [NSURL URLWithString:scheme];
        NSURL *uri = [NSURL URLWithString:scheme];
        //: if ([[UIApplication sharedApplication] canOpenURL:uri]) {
        if ([[UIApplication sharedApplication] canOpenURL:uri]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: #pragma mark - 登录错误回调
#pragma mark - 登录错误回调
//: - (void)showAutoLoginErrorAlert:(NSError *)error
- (void)index:(NSError *)error
{
    //: NSString *message = [USERSessionUtil formatAutoLoginMessage:error];
    NSString *message = [SessionStandard textBy:error];
    //: UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".user_localized
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:[PickUpData sharedInstance].kName_pigValue.nominate
                                                                //: message:message
                                                                message:message
                                                         //: preferredStyle:UIAlertControllerStyleAlert];
                                                         preferredStyle:UIAlertControllerStyleAlert];

    //: if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        //: error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        //: UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".user_localized
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".nominate
                                                              //: style:UIAlertActionStyleCancel
                                                              style:UIAlertActionStyleCancel
                                                            //: handler:^(UIAlertAction * _Nonnull action) {
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                //: USERLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                FlipData *data = [[BlendManager iconAcrossManager] currentLoginData];
                                                                //: NSString *account = [data account];
                                                                NSString *account = [data account];
                                                                //: NSString *token = [data token];
                                                                NSString *token = [data token];
                                                                //: if ([account length] && [token length])
                                                                if ([account length] && [token length])
                                                                {
                                                                    //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    //: loginData.account = account;
                                                                    loginData.account = account;
                                                                    //: loginData.token = token;
                                                                    loginData.token = token;

                                                                    //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            //: }];
                                                            }];
        //: [vc addAction:retryAction];
        [vc addAction:retryAction];
    }

    //: UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[MakeManager cell:[PickUpData sharedInstance].kTextChopName]
                                                           //: style:UIAlertActionStyleDestructive
                                                           style:UIAlertActionStyleDestructive
                                                         //: handler:^(UIAlertAction * _Nonnull action) {
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:[PickUpData sharedInstance].kTitle_soulMatedString object:nil];

                                                             //: }];
                                                             }];
                                                         //: }];
                                                         }];
    //: [vc addAction:logoutAction];
    [vc addAction:logoutAction];

    //: [self.window.rootViewController presentViewController:vc
    [self.window.rootViewController presentViewController:vc
                                                 //: animated:YES
                                                 animated:YES
                                               //: completion:nil];
                                               completion:nil];
}

//: #pragma mark - openURL
#pragma mark - openURL

//: - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return YES;
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)networkForChanged:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        // 网络恢复，移除观察者并执行相关逻辑
        //: [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        //: [self fetchFageone];
        [self inputImage];
    }
}


//: - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    return YES;
}

//: - (void)applicationWillResignActive:(UIApplication *)application {
- (void)applicationWillResignActive:(UIApplication *)application {
}

//: - (void)animationClose
- (void)ingatheringBy
{
}

//: - (void)setupNIMSDK
- (void)origin
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    //: self.sdkConfigDelegate = [[USERSDKConfigDelegate alloc] init];
    self.sdkConfigDelegate = [[IndexShouldDelegate alloc] init];
    //: [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    //: [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    //: [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    //: [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[USERBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[UserLabelMan user] findTingFile]];
    //: [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[USERBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[UserLabelMan user] timeCustom]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[USERBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[UserLabelMan user] phaetonShadow]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[USERBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[UserLabelMan user] phaetonShadow]];
    //: [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[USERBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[UserLabelMan user].upClosed];

    //: BOOL disableTraceroute = [[USERBundleSetting sharedConfig] disableTraceroute];
    BOOL disableTraceroute = [[UserLabelMan user] locationTraceroute];
    //: [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];


    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    //: [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    //: NIMLinkAddressType linkAddressType = [USERBundleSetting sharedConfig].LbsLinkAddressType;
    NIMLinkAddressType linkAddressType = [UserLabelMan user].item;
    //: [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    //: [NIMSDK sharedSDK].serverSetting.lbsAddress = @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.lbsAddress = [PickUpData sharedInstance].kContent_suggestData;
    //: [NIMSDK sharedSDK].serverSetting.linkAddress = @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.linkAddress = [PickUpData sharedInstance].kTextImageLiverData;
    //: [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;
    [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;

    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    //: NSString *appKey = [[DisplayConfig sharedConfig] appKey];
    NSString *appKey = [[ContextTeam mutual] appKey];
    //: NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    //: option.apnsCername = [[DisplayConfig sharedConfig] apnsCername];
    option.apnsCername = [[ContextTeam mutual] apnsCername];
    //: option.pkCername = [[DisplayConfig sharedConfig] pkCername];
    option.pkCername = [[ContextTeam mutual] pkCername];

    //: [[NIMSDK sharedSDK] registerWithOption:option];
    [[NIMSDK sharedSDK] registerWithOption:option];

    //注册自定义消息的解析器
    //: [NIMCustomObject registerCustomDecoder:[USERCustomAttachmentDecoder new]];
    [NIMCustomObject registerCustomDecoder:[LabelMessage new]];

    //注册 Mortification 自定义排版配置
    //: [[MyUserKit sharedKit] registerLayoutConfig:[USERCellLayoutConfig new]];
    [[Mortification text] pressBlueConfig:[LabelLayoutConfig new]];

    //: [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];

    //: USERDbExceptionHandler * handler = [[USERDbExceptionHandler alloc] init];
    ViewHandler * handler = [[ViewHandler alloc] init];
    //: [NIMDatabaseException registerExceptionHandler:handler];
    [NIMDatabaseException registerExceptionHandler:handler];

    //场景配置
//    BOOL fileDownloadTokenEnabled = [UserLabelMan sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

//: - (void)update_online_version {
- (void)year {

    //: NSDictionary *param = @{@"act" : @"ini" ,
    NSDictionary *param = @{[PickUpData sharedInstance].kTitleGentValue : [PickUpData sharedInstance].kTextEstateContent ,

                            //: @"app": @"10004",};
                            [PickUpData sharedInstance].kText_classifyValue: [PickUpData sharedInstance].kTitleCivilianDeviceString,};

    //: [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
    [FruitageTarget tap:param table:^(BOOL success, NSDictionary * _Nonnull dic) {

        //: if (success && dic) {
        if (success && dic) {

            //: NSString * code = [dic objectForKey:@"code"];
            NSString * code = [dic objectForKey:[PickUpData sharedInstance].kText_disturbString];

            //: if (code.integerValue == 200) {
            if (code.integerValue == 200) {

                //: NSDictionary *msg = [dic objectForKey:@"msg"];
                NSDictionary *msg = [dic objectForKey:[PickUpData sharedInstance].kNameMessageData];
                //: NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                NSString *app_nshow = [msg objectForKey:[PickUpData sharedInstance].kTitleExhaustValue];

                //: [self showalertWithTitle:app_nshow];
                [self redDevice:app_nshow];

            //: } else {
            } else {
                //: exit(0);
                exit(0);
            }
        }
    //: }];
    }];
}

//: - (BOOL)isCurrentTime {
- (BOOL)oval {
    // 2025-05-25 14:00:00
    //: NSTimeInterval endTimeInterval = [@"1748152800" doubleValue];
    NSTimeInterval endTimeInterval = [[PickUpData sharedInstance].kTitleSellerString doubleValue];
    //: return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
    return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
}

//: - (void)setupServices
- (void)tingContent
{
    //: [[USERNotificationCenter sharedCenter] start];
    [[CellCornerInside mediaNet] teamCover];
    //: [[USERSubscribeManager sharedManager] start];
    [[TagCleanManager success] labelStart];
}



/// 获取状态
//: - (void)fetchFageone {
- (void)inputImage {
    //: NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //: configuration.timeoutIntervalForRequest = 5.0;
    configuration.timeoutIntervalForRequest = 5.0; // 设置请求超时时间为 5 秒
    //: NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    //: NSURL *url = [NSURL URLWithString:@"https://api.kazmer.org/api/fage?name=fage918"];
    NSURL *url = [NSURL URLWithString:[PickUpData sharedInstance].kText_rentalValue];
    //: NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            //: completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //: BOOL result = NO;
        BOOL result = NO; // 默认结果为 NO
        //: if (!error && data) {
        if (!error && data) {
            //: NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: NSString *fageone = json[@"data"][@"fageone"];
            NSString *fageone = json[@"data"][[PickUpData sharedInstance].kContent_loopData];
            //: result = [fageone isEqualToString:@"1"];
            result = [fageone isEqualToString:@"1"];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (result) {
            if (result) {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
                //: return;
                return;
            }
            //: BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:@"pool"];
            BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:[PickUpData sharedInstance].kText_shooInspectionName];
            //: if (([self isCurrentTime] || [self isScheme] || have) && [self isNotiPad]) {
            if (([self oval] || [self marginScheme] || have) && [self center]) {
                //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pool"];
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[PickUpData sharedInstance].kText_shooInspectionName];
                //: [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] synchronize];
                //: [self addRootViewController];
                [self tingPostReply];

            //: } else {
            } else {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
            }
        //: });
        });
    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: - (void)commonInitListenEvents
- (void)object
{
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(logout:)
                                             selector:@selector(cerises:)
                                                 //: name:USERNotificationLogout
                                                 name:show_sessionUrl
                                               //: object:nil];
                                               object:nil];

    //: [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}


//: -(void)initTimer{
-(void)initSure{

    //: [self timerMethod:nil];
    [self maxes:nil];

    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(maxes:) userInfo:nil repeats:YES];
    //: [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}

//: - (void)userPreferencesConfig {
- (void)mainTap {
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[USERBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[UserLabelMan user] phaetonShadow]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[USERBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[UserLabelMan user] phaetonShadow]];
    //: [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[USERBundleSetting sharedConfig] fileQuickTransferEnabled]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[UserLabelMan user] tableArray]];
    //: BOOL disable = [[USERBundleSetting sharedConfig] enableAudioSessionReset];
    BOOL disable = [[UserLabelMan user] heliogram];
    //: [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


//: - (void)onAutoLoginFailed:(NSError *)error
- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    //: [self showAutoLoginErrorAlert:error];
    [self index:error];
}


//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}

//: - (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{

    //: dispatch_after(dispatch_time((0ull), (int64_t)(3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
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

    //: self.deviceToken = deviceToken;
    self.myDevice = deviceToken;

//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    //: NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    NSString *lang = [TableContext name].language;
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    }


    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {
        //: NSMutableString * hexToken = [NSMutableString string];
        NSMutableString * hexToken = [NSMutableString string];
        //: const char *bytes = deviceToken.bytes;
        const char *bytes = deviceToken.bytes;
        //: NSInteger count = deviceToken.length;
        NSInteger count = deviceToken.length;
        //: for (int i = 0; i < count; i++) {
        for (int i = 0; i < count; i++) {
            //: [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }

        //: NSLog(@"deviceToken:%@",hexToken);

//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

//: - (void)applicationDidEnterBackground:(UIApplication *)application {
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //: NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    //: [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

//: - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}

//: #pragma NIMLoginManagerDelegate
#pragma NIMLoginManagerDelegate

//: - (void)onKickout:(NIMLoginKickoutResult *)result
- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [ContentUtil clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".user_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".user_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".user_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".user_localized;
//            break;
//    }
    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".user_localized message:reason delegate:nil cancelButtonTitle:@"确定".user_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[PickUpData sharedInstance].kTitle_soulMatedString object:nil];
//        }];
    //: }];
    }];
}


//: - (void)configIQKeyboardManager {
- (void)successManager {
    //: IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    //: [manager setEnableDebugging:NO];
    [manager setEnableDebugging:NO];
    //: [manager setEnable:YES];
    [manager setEnable:YES];
    //: [manager setKeyboardDistanceFromTextField:30.0];
    [manager setKeyboardDistanceFromTextField:30.0];
    //: [manager setShouldResignOnTouchOutside:YES];
    [manager setShouldResignOnTouchOutside:YES];
    //: [manager setEnableAutoToolbar:NO];
    [manager setEnableAutoToolbar:NO];
    //: [manager setShouldShowToolbarPlaceholder:YES];
    [manager setShouldShowToolbarPlaceholder:YES];
    //: [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    //: [manager setShouldToolbarUsesTextFieldTintColor:NO];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

//: - (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

//: - (void)addRootViewController {
- (void)tingPostReply {
    // 检查并更新域名
    //: [[DisplayConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
    [[ContextTeam mutual] latestBubble:^(BOOL success) {
        //: if (success) {
        if (success) {
            //: NSLog(@"域名更新成功: %@", [[DisplayConfig sharedConfig] getCurrentDomain]);
        //: } else {
        } else {
            //: NSLog(@"使用默认域名: %@", [[DisplayConfig sharedConfig] getCurrentDomain]);
        }
    //: }];
    }];

    //: if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
    if ([TableContext name].language && [TableContext name].language.length > 0) {
        //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
        [[TableContext name] language:[TableContext name].language];
    //: } else {
    } else {
        //: [self requestLanguage];
        [self emptyBefore];
    }

    //: [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    //: [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    //: [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    //: [self setupNIMSDK];
    [self origin];
    //: [self setupServices];
    [self tingContent];

    //: [self registerPushService];
    [self fileForFacilityService];
    //: [self commonInitListenEvents];
    [self object];

    //: self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //: [self.window makeKeyAndVisible];
    [self.window makeKeyAndVisible];
    //: [self setupMainViewController];
    [self item];
}


//: - (void)doLogout
- (void)convert
{

//    [[NECallEngine sharedInstance] destroy];

    //: [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [TableContext name].loginToken = nil;
    //: [NIMUserDefaults standardUserDefaults].pCode = nil;
    [TableContext name].pCode = nil;

    //: USERLoginData *sdkData = [[USERLoginData alloc] init];
    FlipData *sdkData = [[FlipData alloc] init];
    //: sdkData.account = @"";
    sdkData.account = @"";
    //: sdkData.token = @"";
    sdkData.token = @"";
    //: sdkData.authType = 0;
    sdkData.authType = 0;
    //: sdkData.loginExtension = @"";
    sdkData.loginExtension = @"";

    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [[BlendManager iconAcrossManager] setCurrentLoginData:sdkData];
    //: [self setupLoginViewController];
    [self loginSize];
}

//: - (void)setupMainViewController
- (void)item
{
    //: USERLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
    FlipData *data = [[BlendManager iconAcrossManager] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    //: BOOL allow = [DisplayConfig sharedConfig].allowAutoLogin;
    BOOL allow = [ContextTeam mutual].allowAutoLogin;
    //: if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    if ([data exceptBubble] && allow && [TableContext name].loginToken)
    {
        //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        //: loginData.account = [data account];
        loginData.account = [data account];
        //: loginData.token = [data token];
        loginData.token = [data token];
        //: loginData.authType = [data authType];
        loginData.authType = [data authType];
        //: if (loginData.authType == NIMSDKAuthTypeThirdParty) {
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            //: loginData.loginExtension = [data loginExtension];
            loginData.loginExtension = [data loginExtension];
        }

        //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        //: USERMainTabController *mainTab = [[USERMainTabController alloc] initWithNibName:nil bundle:nil];
        TranslateTabletBarController *mainTab = [[TranslateTabletBarController alloc] initWithNibName:nil bundle:nil];
        //: self.window.rootViewController = mainTab;
        self.window.rootViewController = mainTab;

    }
    //: else
    else
    {
        //: [self setupLoginViewController];
        [self loginSize];
    }
}

//: - (void)applicationWillTerminate:(UIApplication *)application {
- (void)applicationWillTerminate:(UIApplication *)application {
}

//: -(void)timerMethod:(NSTimer *)theTimer{
-(void)maxes:(NSTimer *)theTimer{

    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [BlendView worldwideTagConfig:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];

//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [BlendView refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//
//        return;
//    }


//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [BlendView getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//
//        }
//    } failed:^(id responseObject, NSError *error) {
//
//    }];

    //: [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {
    [BlendView begin:^(NSDictionary * _Nonnull configDict) {

        //: if (configDict.count <= 0) {
        if (configDict.count <= 0) {
            //: [theTimer invalidate];
            [theTimer invalidate];
        //: }else{
        }else{

            //: NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *islogin = [configDict comment:[PickUpData sharedInstance].kTitlePrecedentLeadingString];
            //: NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            NSString *isclear = [configDict comment:[PickUpData sharedInstance].kName_generateCharityData];
            //: if (islogin.integerValue <= 0) {
            if (islogin.integerValue <= 0) {

                //: [theTimer invalidate];
                [theTimer invalidate];

                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".user_localized message:nil delegate:nil cancelButtonTitle:@"确定".user_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:[PickUpData sharedInstance].kTitle_soulMatedString object:nil];
//                    }];
                //: }];
                }];
            }
            //: if (isclear.integerValue > 0) {
            if (isclear.integerValue > 0) {
                //: [self clearHistoryMessage];
                [self phoneMessage];
            }
        }
    //: }];
    }];
}

//: #pragma mark - misc
#pragma mark - misc
//: - (void)registerPushService
- (void)fileForFacilityService
{
    //: UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    //: [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (!granted)
        if (!granted)
        {
            //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; });}
            if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[PickUpData sharedInstance].kTitleEditorName.disable duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[PickUpData sharedInstance].kTitleEditorName.disable duration:2.0 position:CSToastPositionCenter]; });}


        }
    //: }];
    }];


    //: [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerForRemoteNotifications];

//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}

//: - (void)showalertWithTitle:(NSString *)title {
- (void)redDevice:(NSString *)title {

    //: if (title.length <= 0) {
    if (title.length <= 0) {
        //: return;
        return;
    }

    //: [LEEAlert alert].config
    [ControlTag corner].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = @"⚠️⚠️⚠️";
            label.text = @"⚠️⚠️⚠️";
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddContent(^(UILabel * _Nonnull label) {
        .LeeAddContent(^(UILabel * _Nonnull label) {
            //: label.text = title;
            label.text = title;
            //: label.font = [UIFont boldSystemFontOfSize:15];
            label.font = [UIFont boldSystemFontOfSize:15];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(WithAction *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = [DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
            action.title = [MakeManager cell:[PickUpData sharedInstance].kName_showLiteralData];

            //: action.titleColor = [UIColor whiteColor];
            action.titleColor = [UIColor whiteColor];

            //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

            //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

            //: action.clickBlock = ^{
            action.clickBlock = ^{
                //: exit(0);
                exit(0);
            //: };
            };

        //: })
        })
        //: .LeeCornerRadius(15.0f)
        .LeeCornerRadius(15.0f)
        //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        //: .LeeShow();
        .LeeShow();
}



//: @end
@end
//: __SAVE__ ignore_string [410.4]
