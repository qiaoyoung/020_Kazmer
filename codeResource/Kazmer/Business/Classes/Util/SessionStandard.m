
#import <Foundation/Foundation.h>

@interface FirmlyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FirmlyData

+ (instancetype)sharedInstance {
    static FirmlyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FirmlyDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FirmlyDataToCache:(Byte *)data {
    int priggish = data[0];
    Byte thisNight = data[1];
    int chronic = data[2];
    for (int i = chronic; i < chronic + priggish; i++) {
        int value = data[i] + thisNight;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[chronic + priggish] = 0;
    return data + chronic;
}

- (NSString *)StringFromFirmlyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FirmlyDataToCache:data]];
}

//: day_am
- (NSString *)kTitleImmigrantValue {
    /* static */ NSString *kTitleImmigrantValue = nil;
    if (!kTitleImmigrantValue) {
		NSArray<NSString *> *origin = @[@"6", @"23", @"11", @"119", @"149", @"219", @"3", @"236", @"37", @"75", @"205", @"77", @"74", @"98", @"72", @"74", @"86", @"104"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleImmigrantValue = [self StringFromFirmlyData:value];
    }
    return kTitleImmigrantValue;
}

//: please_try_again
- (NSString *)kNameRatedString {
    /* static */ NSString *kNameRatedString = nil;
    if (!kNameRatedString) {
		NSArray<NSString *> *origin = @[@"16", @"78", @"3", @"34", @"30", @"23", @"19", @"37", @"23", @"17", @"38", @"36", @"43", @"17", @"19", @"25", @"19", @"27", @"32", @"253"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRatedString = [self StringFromFirmlyData:value];
    }
    return kNameRatedString;
}

//: online_state_event_manager_off_line
- (NSString *)kTitle_fileValue {
    /* static */ NSString *kTitle_fileValue = nil;
    if (!kTitle_fileValue) {
		NSArray<NSString *> *origin = @[@"35", @"62", @"3", @"49", @"48", @"46", @"43", @"48", @"39", @"33", @"53", @"54", @"35", @"54", @"39", @"33", @"39", @"56", @"39", @"48", @"54", @"33", @"47", @"35", @"48", @"35", @"41", @"39", @"52", @"33", @"49", @"40", @"40", @"33", @"46", @"43", @"48", @"39", @"178"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_fileValue = [self StringFromFirmlyData:value];
    }
    return kTitle_fileValue;
}

//: postscript
- (NSString *)kTitle_discriminationText {
    /* static */ NSString *kTitle_discriminationText = nil;
    if (!kTitle_discriminationText) {
		NSArray<NSString *> *origin = @[@"10", @"46", @"3", @"66", @"65", @"69", @"70", @"69", @"53", @"68", @"59", @"66", @"70", @"178"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_discriminationText = [self StringFromFirmlyData:value];
    }
    return kTitle_discriminationText;
}

//: iOS
- (NSString *)kTextTechnologicString {
    /* static */ NSString *kTextTechnologicString = nil;
    if (!kTextTechnologicString) {
		NSArray<NSString *> *origin = @[@"3", @"79", @"12", @"6", @"53", @"25", @"87", @"78", @"253", @"140", @"144", @"116", @"26", @"0", @"4", @"91"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTechnologicString = [self StringFromFirmlyData:value];
    }
    return kTextTechnologicString;
}

//: Android
- (NSString *)kNameFrameContent {
    /* static */ NSString *kNameFrameContent = nil;
    if (!kNameFrameContent) {
		NSArray<NSString *> *origin = @[@"7", @"66", @"3", @"255", @"44", @"34", @"48", @"45", @"39", @"34", @"82"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameFrameContent = [self StringFromFirmlyData:value];
    }
    return kNameFrameContent;
}

//: Sunday
- (NSString *)kTitle_degreeString {
    /* static */ NSString *kTitle_degreeString = nil;
    if (!kTitle_degreeString) {
		NSArray<NSString *> *origin = @[@"6", @"34", @"5", @"46", @"20", @"49", @"83", @"76", @"66", @"63", @"87", @"34"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_degreeString = [self StringFromFirmlyData:value];
    }
    return kTitle_degreeString;
}

//: Thursday
- (NSString *)kText_satisfyValue {
    /* static */ NSString *kText_satisfyValue = nil;
    if (!kText_satisfyValue) {
		NSArray<NSString *> *origin = @[@"8", @"99", @"11", @"39", @"203", @"123", @"155", @"84", @"210", @"240", @"185", @"241", @"5", @"18", @"15", @"16", @"1", @"254", @"22", @"90"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_satisfyValue = [self StringFromFirmlyData:value];
    }
    return kText_satisfyValue;
}

//: Web
- (NSString *)kNameSustainPlyContent {
    /* static */ NSString *kNameSustainPlyContent = nil;
    if (!kNameSustainPlyContent) {
		NSArray<NSString *> *origin = @[@"3", @"46", @"7", @"43", @"159", @"189", @"130", @"41", @"55", @"52", @"201"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSustainPlyContent = [self StringFromFirmlyData:value];
    }
    return kNameSustainPlyContent;
}

//: group_member_info_activity_team_admin
- (NSString *)kNameContentItData {
    /* static */ NSString *kNameContentItData = nil;
    if (!kNameContentItData) {
		NSArray<NSString *> *origin = @[@"37", @"12", @"4", @"213", @"91", @"102", @"99", @"105", @"100", @"83", @"97", @"89", @"97", @"86", @"89", @"102", @"83", @"93", @"98", @"90", @"99", @"83", @"85", @"87", @"104", @"93", @"106", @"93", @"104", @"109", @"83", @"104", @"89", @"85", @"97", @"83", @"85", @"88", @"97", @"93", @"98", @"15"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameContentItData = [self StringFromFirmlyData:value];
    }
    return kNameContentItData;
}

//: Mac
- (NSString *)kNameYoursTitle {
    /* static */ NSString *kNameYoursTitle = nil;
    if (!kNameYoursTitle) {
		NSArray<NSString *> *origin = @[@"3", @"82", @"7", @"198", @"213", @"90", @"219", @"251", @"15", @"17", @"50"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameYoursTitle = [self StringFromFirmlyData:value];
    }
    return kNameYoursTitle;
}

//: before_yesterday
- (NSString *)kContent_targetValue {
    /* static */ NSString *kContent_targetValue = nil;
    if (!kContent_targetValue) {
		NSArray<NSString *> *origin = @[@"16", @"59", @"11", @"61", @"132", @"134", @"182", @"220", @"179", @"174", @"50", @"39", @"42", @"43", @"52", @"55", @"42", @"36", @"62", @"42", @"56", @"57", @"42", @"55", @"41", @"38", @"62", @"93"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_targetValue = [self StringFromFirmlyData:value];
    }
    return kContent_targetValue;
}

//: yesterday
- (NSString *)kText_approveString {
    /* static */ NSString *kText_approveString = nil;
    if (!kText_approveString) {
		NSArray<NSString *> *origin = @[@"9", @"90", @"12", @"226", @"229", @"198", @"103", @"50", @"243", @"113", @"66", @"235", @"31", @"11", @"25", @"26", @"11", @"24", @"10", @"7", @"31", @"121"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_approveString = [self StringFromFirmlyData:value];
    }
    return kText_approveString;
}

//: retracted_message
- (NSString *)kContentRatherTitle {
    /* static */ NSString *kContentRatherTitle = nil;
    if (!kContentRatherTitle) {
		NSArray<NSString *> *origin = @[@"17", @"40", @"13", @"228", @"190", @"161", @"154", @"98", @"252", @"177", @"58", @"103", @"30", @"74", @"61", @"76", @"74", @"57", @"59", @"76", @"61", @"60", @"55", @"69", @"61", @"75", @"75", @"57", @"63", @"61", @"124"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentRatherTitle = [self StringFromFirmlyData:value];
    }
    return kContentRatherTitle;
}

//: Saturday
- (NSString *)kTextGarbageString {
    /* static */ NSString *kTextGarbageString = nil;
    if (!kTextGarbageString) {
		NSArray<NSString *> *origin = @[@"8", @"13", @"7", @"226", @"50", @"188", @"33", @"70", @"84", @"103", @"104", @"101", @"87", @"84", @"108", @"211"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextGarbageString = [self StringFromFirmlyData:value];
    }
    return kTextGarbageString;
}

//: message_opposite
- (NSString *)kTitleIdeaName {
    /* static */ NSString *kTitleIdeaName = nil;
    if (!kTitleIdeaName) {
		NSArray<NSString *> *origin = @[@"16", @"54", @"11", @"155", @"144", @"245", @"58", @"132", @"117", @"214", @"84", @"55", @"47", @"61", @"61", @"43", @"49", @"47", @"41", @"57", @"58", @"58", @"57", @"61", @"51", @"62", @"47", @"192"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleIdeaName = [self StringFromFirmlyData:value];
    }
    return kTitleIdeaName;
}

//: online_state_event_manager_on_line_busy
- (NSString *)kContent_ratherCaptureData {
    /* static */ NSString *kContent_ratherCaptureData = nil;
    if (!kContent_ratherCaptureData) {
		NSArray<NSString *> *origin = @[@"39", @"81", @"6", @"123", @"192", @"19", @"30", @"29", @"27", @"24", @"29", @"20", @"14", @"34", @"35", @"16", @"35", @"20", @"14", @"20", @"37", @"20", @"29", @"35", @"14", @"28", @"16", @"29", @"16", @"22", @"20", @"33", @"14", @"30", @"29", @"14", @"27", @"24", @"29", @"20", @"14", @"17", @"36", @"34", @"40", @"190"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_ratherCaptureData = [self StringFromFirmlyData:value];
    }
    return kContent_ratherCaptureData;
}

//: %zd-%zd-%zd
- (NSString *)kName_collegeData {
    /* static */ NSString *kName_collegeData = nil;
    if (!kName_collegeData) {
		NSArray<NSString *> *origin = @[@"11", @"37", @"10", @"225", @"36", @"66", @"138", @"75", @"72", @"22", @"0", @"85", @"63", @"8", @"0", @"85", @"63", @"8", @"0", @"85", @"63", @"169"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_collegeData = [self StringFromFirmlyData:value];
    }
    return kName_collegeData;
}

//: login_failure
- (NSString *)kContentInspectionString {
    /* static */ NSString *kContentInspectionString = nil;
    if (!kContentInspectionString) {
		NSArray<NSString *> *origin = @[@"13", @"12", @"12", @"199", @"53", @"29", @"123", @"118", @"246", @"29", @"221", @"158", @"96", @"99", @"91", @"93", @"98", @"83", @"90", @"85", @"93", @"96", @"105", @"102", @"89", @"196"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentInspectionString = [self StringFromFirmlyData:value];
    }
    return kContentInspectionString;
}

//: wee_hours
- (NSString *)kTitle_dealerValue {
    /* static */ NSString *kTitle_dealerValue = nil;
    if (!kTitle_dealerValue) {
		NSArray<NSString *> *origin = @[@"9", @"44", @"10", @"186", @"220", @"91", @"106", @"22", @"246", @"95", @"75", @"57", @"57", @"51", @"60", @"67", @"73", @"70", @"71", @"100"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_dealerValue = [self StringFromFirmlyData:value];
    }
    return kTitle_dealerValue;
}

//: Tuesday
- (NSString *)kContent_onValue {
    /* static */ NSString *kContent_onValue = nil;
    if (!kContent_onValue) {
		NSArray<NSString *> *origin = @[@"7", @"16", @"3", @"68", @"101", @"85", @"99", @"84", @"81", @"105", @"155"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_onValue = [self StringFromFirmlyData:value];
    }
    return kContent_onValue;
}

//: logged_another_device
- (NSString *)kName_deployConsistString {
    /* static */ NSString *kName_deployConsistString = nil;
    if (!kName_deployConsistString) {
		NSArray<NSString *> *origin = @[@"21", @"2", @"5", @"13", @"251", @"106", @"109", @"101", @"101", @"99", @"98", @"93", @"95", @"108", @"109", @"114", @"102", @"99", @"112", @"93", @"98", @"99", @"116", @"103", @"97", @"99", @"172"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_deployConsistString = [self StringFromFirmlyData:value];
    }
    return kName_deployConsistString;
}

//: Friday
- (NSString *)kTextSkirtData {
    /* static */ NSString *kTextSkirtData = nil;
    if (!kTextSkirtData) {
		NSArray<NSString *> *origin = @[@"6", @"93", @"7", @"149", @"188", @"73", @"142", @"233", @"21", @"12", @"7", @"4", @"28", @"141"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSkirtData = [self StringFromFirmlyData:value];
    }
    return kTextSkirtData;
}

//: message_online
- (NSString *)kContent_buildingName {
    /* static */ NSString *kContent_buildingName = nil;
    if (!kContent_buildingName) {
		NSArray<NSString *> *origin = @[@"14", @"22", @"12", @"249", @"161", @"72", @"153", @"190", @"170", @"21", @"222", @"208", @"87", @"79", @"93", @"93", @"75", @"81", @"79", @"73", @"89", @"88", @"86", @"83", @"88", @"79", @"198"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_buildingName = [self StringFromFirmlyData:value];
    }
    return kContent_buildingName;
}

//: message_helper_you
- (NSString *)kContentCeilingString {
    /* static */ NSString *kContentCeilingString = nil;
    if (!kContentCeilingString) {
		NSArray<NSString *> *origin = @[@"18", @"46", @"8", @"112", @"9", @"36", @"191", @"233", @"63", @"55", @"69", @"69", @"51", @"57", @"55", @"49", @"58", @"55", @"62", @"66", @"55", @"68", @"49", @"75", @"65", @"71", @"55"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentCeilingString = [self StringFromFirmlyData:value];
    }
    return kContentCeilingString;
}

//: group_member_info_activity_team_creator
- (NSString *)kTextRakeString {
    /* static */ NSString *kTextRakeString = nil;
    if (!kTextRakeString) {
		NSArray<NSString *> *origin = @[@"39", @"23", @"5", @"82", @"195", @"80", @"91", @"88", @"94", @"89", @"72", @"86", @"78", @"86", @"75", @"78", @"91", @"72", @"82", @"87", @"79", @"88", @"72", @"74", @"76", @"93", @"82", @"95", @"82", @"93", @"98", @"72", @"93", @"78", @"74", @"86", @"72", @"76", @"91", @"78", @"74", @"93", @"88", @"91", @"15"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRakeString = [self StringFromFirmlyData:value];
    }
    return kTextRakeString;
}

//: wrong_password
- (NSString *)kTitle_overnightString {
    /* static */ NSString *kTitle_overnightString = nil;
    if (!kTitle_overnightString) {
		NSArray<NSString *> *origin = @[@"14", @"93", @"8", @"245", @"97", @"180", @"230", @"16", @"26", @"21", @"18", @"17", @"10", @"2", @"19", @"4", @"22", @"22", @"26", @"18", @"21", @"7", @"213"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_overnightString = [self StringFromFirmlyData:value];
    }
    return kTitle_overnightString;
}

//: Wednesday
- (NSString *)kName_brotherDevoteData {
    /* static */ NSString *kName_brotherDevoteData = nil;
    if (!kName_brotherDevoteData) {
		NSArray<NSString *> *origin = @[@"9", @"62", @"9", @"199", @"197", @"70", @"239", @"239", @"219", @"25", @"39", @"38", @"48", @"39", @"53", @"38", @"35", @"59", @"184"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_brotherDevoteData = [self StringFromFirmlyData:value];
    }
    return kName_brotherDevoteData;
}

//: day_night
- (NSString *)kTextCropString {
    /* static */ NSString *kTextCropString = nil;
    if (!kTextCropString) {
		NSArray<NSString *> *origin = @[@"9", @"70", @"10", @"168", @"23", @"224", @"46", @"218", @"159", @"154", @"30", @"27", @"51", @"25", @"40", @"35", @"33", @"34", @"46", @"105"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextCropString = [self StringFromFirmlyData:value];
    }
    return kTextCropString;
}

//: day_pm
- (NSString *)kNameChopText {
    /* static */ NSString *kNameChopText = nil;
    if (!kNameChopText) {
		NSArray<NSString *> *origin = @[@"6", @"16", @"6", @"180", @"136", @"47", @"84", @"81", @"105", @"79", @"96", @"93", @"14"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameChopText = [self StringFromFirmlyData:value];
    }
    return kNameChopText;
}

//: Monday
- (NSString *)kTitleWortData {
    /* static */ NSString *kTitleWortData = nil;
    if (!kTitleWortData) {
		NSArray<NSString *> *origin = @[@"6", @"48", @"8", @"215", @"205", @"147", @"225", @"156", @"29", @"63", @"62", @"52", @"49", @"73", @"245"];
		NSData *data = [FirmlyData FirmlyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleWortData = [self StringFromFirmlyData:value];
    }
    return kTitleWortData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionStandard.m
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "CCCLoginManager.h"
#import "BlendManager.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "UIImage+USER.h"
#import "UIImage+Turn.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "USERSubscribeManager.h"
#import "TagCleanManager.h"
//: #import "FFFExtensionHelper.h"
#import "FFFExtensionHelper.h"
//: #import "USERSubscribeDefine.h"
#import "USERSubscribeDefine.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"
//: #import "USERDevice.h"
#import "SizePage.h"

//: double OnedayTimeIntervalValue = 24*60*60; 
double mEventPath = 24*60*60; //一天的秒数

//: static NSString *const USERRecentSessionAtMark = @"USERRecentSessionAtMark";
static NSString *const userReloadId = @"USERRecentSessionAtMark";
//: static NSString *const USERRecentSessionTopMark = @"USERRecentSessionTopMark";
static NSString *const main_errTeamContactText = @"USERRecentSessionTopMark";


//: @implementation USERSessionUtil
@implementation SessionStandard

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript {
+ (NSString *)tingBackground:(NSString *)postscript {
    //: NSString *tip = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
    NSString *tip = [MakeManager cell:[[FirmlyData sharedInstance] kContentCeilingString]];//@"你".user_localized;
    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[MakeManager cell:[[FirmlyData sharedInstance] kContentRatherTitle]]];
    //: if (postscript.length != 0) {
    if (postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"],[FFFLanguageManager getTextWithKey:@"postscript"], postscript];
        msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[MakeManager cell:[[FirmlyData sharedInstance] kContentRatherTitle]],[MakeManager cell:[[FirmlyData sharedInstance] kTitle_discriminationText]], postscript];
    }
    //: return msg;
    return msg;
}


//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message
+ (BOOL)shoot:(NIMMessage *)message
{
    //: BOOL canRevokeMessageByRole = [self canRevokeMessageByRole:message];
    BOOL canRevokeMessageByRole = [self option:message];
    //: BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    //: if (!canRevokeMessageByRole || isDeliverFailed) {
    if (!canRevokeMessageByRole || isDeliverFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]
    if ([messageObject isKindOfClass:[NIMTipObject class]]
        //: || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<USERCustomAttachmentInfo> attach = (id<USERCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<AdvertizeTarget> attach = (id<AdvertizeTarget>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeRevoked];
        return [attach cover];
    }
    //: return YES;
    return YES;
}

//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail
+ (NSString *)imageDetail:(NSString *)userId shouldPath:(BOOL)detail
{
    //: NSString *state = @"";
    NSString *state = @"";
    //: if (![USERSubscribeManager sharedManager] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    if (![TagCleanManager success] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    {
        //没有开启订阅服务或是自己  不显示在线状态
        //: return state;
        return state;
    }

    //: NSDictionary *dict = [[USERSubscribeManager sharedManager] eventsForType:NIMSubscribeSystemEventTypeOnline];
    NSDictionary *dict = [[TagCleanManager success] withType:NIMSubscribeSystemEventTypeOnline];
    //: NIMSubscribeEvent *event = [dict objectForKey:userId];
    NIMSubscribeEvent *event = [dict objectForKey:userId];
    //: NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    //: if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    {
        //: NIMLoginClientType client = [self resolveShowClientType:info.senderClientTypes];
        NIMLoginClientType client = [self clean:info.senderClientTypes];

        //: switch (event.value) {
        switch (event.value) {
            //: case USERCustomStateValueOnlineExt:
            case USERCustomStateValueOnlineExt:
            //: case NIMSubscribeEventOnlineValueLogin:
            case NIMSubscribeEventOnlineValueLogin:
            //: case NIMSubscribeEventOnlineValueLogout:
            case NIMSubscribeEventOnlineValueLogout:
            //: case NIMSubscribeEventOnlineValueDisconnected:
            case NIMSubscribeEventOnlineValueDisconnected:
            {
                //: NSString *ext = [event ext:client];
                NSString *ext = [event ext:client];
                //: state = [self resolveOnlineState:ext client:client detail:detail];
                state = [self centerYear:ext bugOut:client optionDetail:detail];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: NSString *clientName = [self resolveOnlineClientName:client];
                NSString *clientName = [self refreshSize:client];
                //: state = [NSString stringWithFormat:@"%@ %@", clientName, [FFFLanguageManager getTextWithKey:@"message_online"]];
                state = [NSString stringWithFormat:@"%@ %@", clientName, [MakeManager cell:[[FirmlyData sharedInstance] kContent_buildingName]]];
                //: break;
                break;
            }
        }
    }
    //: else
    else
    {
        //: state = @"离线".user_localized;
        state = @"离线".nominate;
    }
    //: return state;
    return state;
}


//: +(NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail
+(NSString*)label:(NSTimeInterval) msglastTime image:(BOOL)showDetail
{
    //今天的时间
    //: NSDate * nowDate = [NSDate date];
    NSDate * nowDate = [NSDate date];
    //: NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    //: NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];
    NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];

    //: NSInteger hour = msgDateComponents.hour;
    NSInteger hour = msgDateComponents.hour;

    //: result = [USERSessionUtil getPeriodOfTime:hour withMinute:msgDateComponents.minute];
    result = [SessionStandard matter:hour signal:msgDateComponents.minute];
    //: if (hour > 12)
    if (hour > 12)
    {
        //: hour = hour - 12;
        hour = hour - 12;
    }
    //: if(nowDateComponents.day == msgDateComponents.day) 
    if(nowDateComponents.day == msgDateComponents.day) //同一天,显示时间
    {
        //: result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
        result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+1))
    else if(nowDateComponents.day == (msgDateComponents.day+1))//昨天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[FFFLanguageManager getTextWithKey:@"yesterday"], result,hour,(int)msgDateComponents.minute] : [FFFLanguageManager getTextWithKey:@"yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[MakeManager cell:[[FirmlyData sharedInstance] kText_approveString]], result,hour,(int)msgDateComponents.minute] : [MakeManager cell:[[FirmlyData sharedInstance] kText_approveString]];//昨天
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+2)) 
    else if(nowDateComponents.day == (msgDateComponents.day+2)) //前天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[FFFLanguageManager getTextWithKey:@"before_yesterday"], result,hour,(int)msgDateComponents.minute] : [FFFLanguageManager getTextWithKey:@"before_yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[MakeManager cell:[[FirmlyData sharedInstance] kContent_targetValue]], result,hour,(int)msgDateComponents.minute] : [MakeManager cell:[[FirmlyData sharedInstance] kContent_targetValue]];//@"前天";
    }
    //: else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)
    else if([nowDate timeIntervalSinceDate:msgDate] < 7 * mEventPath)//一周内
    {
        //: NSString *weekDay = [USERSessionUtil weekdayStr:msgDateComponents.weekday];
        NSString *weekDay = [SessionStandard green:msgDateComponents.weekday];
        //: result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
        result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
    }
    //: else
    else//显示日期
    {
        //: NSString *day = [NSString stringWithFormat:@"%zd-%zd-%zd", msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        NSString *day = [NSString stringWithFormat:[[FirmlyData sharedInstance] kName_collegeData], msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        //: result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
        result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
    }
    //: return result;
    return result;
}


//: + (NIMLoginClientType)resolveShowClientType:(NSArray *)senderClientTypes
+ (NIMLoginClientType)clean:(NSArray *)senderClientTypes
{
    //: NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; 
    NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; //显示优先级
    //: for (NSNumber *type in clients) {
    for (NSNumber *type in clients) {
        //: NIMLoginClientType client = type.integerValue;
        NIMLoginClientType client = type.integerValue;
        //: if ([senderClientTypes containsObject:@(client)]) {
        if ([senderClientTypes containsObject:@(client)]) {
            //: return client;
            return client;
        }
    }
    //: return NIMLoginClientTypeUnknown;
    return NIMLoginClientTypeUnknown;
}


//: +(NSDateComponents*)stringFromTimeInterval:(NSTimeInterval)messageTime components:(NSCalendarUnit)components
+(NSDateComponents*)show:(NSTimeInterval)messageTime version:(NSCalendarUnit)components
{
    //: NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    //: return dateComponents;
    return dateComponents;
}

//: + (NSString *)resolveOnlineState:(NSString *)ext client:(NIMLoginClientType)client detail:(BOOL)detail
+ (NSString *)centerYear:(NSString *)ext bugOut:(NIMLoginClientType)client optionDetail:(BOOL)detail
{
    //: NSString *clientName = [self resolveOnlineClientName:client];
    NSString *clientName = [self refreshSize:client];
    //: NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[FFFLanguageManager getTextWithKey:@"message_online"]];
    NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[MakeManager cell:[[FirmlyData sharedInstance] kContent_buildingName]]];//@"在线".user_localized
    //: NSDictionary *dict = [ext nimkit_jsonDict];
    NSDictionary *dict = [ext eye];
    //: if (dict) {
    if (dict) {

        //: NSString *netState = [[USERDevice currentDevice] networkStatus:[dict jsonInteger:USERSubscribeNetState]];
        NSString *netState = [[SizePage lastDevice] past:[dict immobilise:k_unitText(nil)]];
        //: USEROnlineState onlineState = [dict jsonInteger:USERSubscribeOnlineState];
        USEROnlineState onlineState = [dict immobilise:mainTranslationKey(nil)];
        //: switch (onlineState) {
        switch (onlineState) {
            //: case USEROnlineStateNormal:
            case USEROnlineStateNormal:
            {
                //: if (client == NIMLoginClientTypePC ||
                if (client == NIMLoginClientTypePC ||
                    //: client == NIMLoginClientTypeWeb ||
                    client == NIMLoginClientTypeWeb ||
                    //: client == NIMLoginClientTypemacOS)
                    client == NIMLoginClientTypemacOS)
                {
                    //桌面端不显示网络状态，只显示端
                    //: return [NSString stringWithFormat:@"%@ %@",clientName,[FFFLanguageManager getTextWithKey:@"message_online"]];
                    return [NSString stringWithFormat:@"%@ %@",clientName,[MakeManager cell:[[FirmlyData sharedInstance] kContent_buildingName]]];//@"在线".user_localized
                }
                //: else
                else
                {
                    //移动端在会话列表显示网络状态，在会话内（detail）优先显示端+网络状态
                    //: if (detail)
                    if (detail)
                    {
                        //: return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[FFFLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[MakeManager cell:[[FirmlyData sharedInstance] kContent_buildingName]]];//@"在线".user_localized
                    }
                    //: else
                    else
                    {
                        //: return [NSString stringWithFormat:@"%@ %@",netState,[FFFLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ %@",netState,[MakeManager cell:[[FirmlyData sharedInstance] kContent_buildingName]]];//@"在线".user_localized
                    }
                }
            }
            //: case USEROnlineStateBusy:
            case USEROnlineStateBusy:
                //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_on_line_busy"];
                return [MakeManager cell:[[FirmlyData sharedInstance] kContent_ratherCaptureData]];//@"忙碌".user_localized;
            //: case USEROnlineStateLeave:
            case USEROnlineStateLeave:
                //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_off_line"];
                return [MakeManager cell:[[FirmlyData sharedInstance] kTitle_fileValue]];//@"离开".user_localized;
            //: default:
            default:
                //: break;
                break;
        }
    }
    //: return state;
    return state;
}


//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message
+ (BOOL)of:(NIMMessage *)message
{
    //: if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
    if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<USERCustomAttachmentInfo> attach = (id<USERCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<AdvertizeTarget> attach = (id<AdvertizeTarget>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeForwarded];
        return [attach pop];
    }
    //: if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
    if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]) {
    if ([messageObject isKindOfClass:[NIMTipObject class]]) {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: + (NSString *)formatAutoLoginMessage:(NSError *)error
+ (NSString *)textBy:(NSError *)error
{
    //: NSString *message = [NSString stringWithFormat:@"%@ %@",[FFFLanguageManager getTextWithKey:@"login_failure"], error];
    NSString *message = [NSString stringWithFormat:@"%@ %@",[MakeManager cell:[[FirmlyData sharedInstance] kContentInspectionString]], error];//,@"自动登录失败".user_localized
    //: NSString *domain = error.domain;
    NSString *domain = error.domain;
    //: NSInteger code = error.code;
    NSInteger code = error.code;
    //: if ([domain isEqualToString:NIMLocalErrorDomain])
    if ([domain isEqualToString:NIMLocalErrorDomain])
    {
        //: if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        {
            //: message = [FFFLanguageManager getTextWithKey:@"please_try_again"];
            message = [MakeManager cell:[[FirmlyData sharedInstance] kNameRatedString]];//@"自动登录错误次数超限，请检查网络后重试".user_localized;
        }
    }
    //: else if([domain isEqualToString:NIMRemoteErrorDomain])
    else if([domain isEqualToString:NIMRemoteErrorDomain])
    {
        //: if (code == NIMRemoteErrorCodeInvalidPass)
        if (code == NIMRemoteErrorCodeInvalidPass)
        {
            //: message = [FFFLanguageManager getTextWithKey:@"wrong_password"];
            message = [MakeManager cell:[[FirmlyData sharedInstance] kTitle_overnightString]];//@"密码错误".user_localized;
        }
        //: else if(code == NIMRemoteErrorCodeExist)
        else if(code == NIMRemoteErrorCodeExist)
        {
            //: message = [FFFLanguageManager getTextWithKey:@"logged_another_device"];
            message = [MakeManager cell:[[FirmlyData sharedInstance] kName_deployConsistString]];//@"当前已经其他设备登录，请使用手动模式登录".user_localized;
        }
    }
    //: return message;
    return message;
}


//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)messageSize:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  child:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSiz
                                  commandSize:(CGSize)imageMaxSiz
{
    //: CGSize size;
    CGSize size;
    //: NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    //: NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    //: NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    //: if (imageWidth > imageHeight) 
    if (imageWidth > imageHeight) //宽图
    {
        //: size.height = imageMinHeight; 
        size.height = imageMinHeight; //高度取最小高度
        //: size.width = imageWidth * imageMinHeight / imageHeight;
        size.width = imageWidth * imageMinHeight / imageHeight;
        //: if (size.width > imageMaxWidth)
        if (size.width > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
        }
    }
    //: else if(imageWidth < imageHeight)
    else if(imageWidth < imageHeight)//高图
    {
        //: size.width = imageMinWidth;
        size.width = imageMinWidth;
        //: size.height = imageHeight *imageMinWidth / imageWidth;
        size.height = imageHeight *imageMinWidth / imageWidth;
        //: if (size.height > imageMaxHeight)
        if (size.height > imageMaxHeight)
        {
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
    }
    //: else
    else//方图
    {
        //: if (imageWidth > imageMaxWidth)
        if (imageWidth > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
        //: else if(imageWidth > imageMinWidth)
        else if(imageWidth > imageMinWidth)
        {
            //: size.width = imageWidth;
            size.width = imageWidth;
            //: size.height = imageHeight;
            size.height = imageHeight;
        }
        //: else
        else
        {
            //: size.width = imageMinWidth;
            size.width = imageMinWidth;
            //: size.height = imageMinHeight;
            size.height = imageMinHeight;
        }
    }
    //: return size;
    return size;
}

//: + (NSString *)resolveOnlineClientName:(NIMLoginClientType )client
+ (NSString *)refreshSize:(NIMLoginClientType )client
{
    //: NSDictionary *formats = @{
    NSDictionary *formats = @{
                              //: @(NIMLoginClientTypePC) : @"PC",
                              @(NIMLoginClientTypePC) : @"PC",
                              //: @(NIMLoginClientTypemacOS) : @"Mac",
                              @(NIMLoginClientTypemacOS) : [[FirmlyData sharedInstance] kNameYoursTitle],
                              //: @(NIMLoginClientTypeiOS): @"iOS",
                              @(NIMLoginClientTypeiOS): [[FirmlyData sharedInstance] kTextTechnologicString],
                              //: @(NIMLoginClientTypeAOS): @"Android",
                              @(NIMLoginClientTypeAOS): [[FirmlyData sharedInstance] kNameFrameContent],
                              //: @(NIMLoginClientTypeWeb): @"Web",
                              @(NIMLoginClientTypeWeb): [[FirmlyData sharedInstance] kNameSustainPlyContent],
                              //: @(NIMLoginClientTypeWP) : @"WP"
                              @(NIMLoginClientTypeWP) : @"WP"
                             //: };
                             };

    //: NSString *format = [formats objectForKey:@(client)];
    NSString *format = [formats objectForKey:@(client)];
    //: return format? format : @"";
    return format? format : @"";
}

//: + (void)addRecentSessionMark:(NIMSession *)session type:(USERRecentSessionMarkType)type
+ (void)sessionRed:(NIMSession *)session last:(USERRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent)
    if (recent)
    {
        //: NSDictionary *localExt = recent.localExt?:@{};
        NSDictionary *localExt = recent.localExt?:@{};
        //: NSMutableDictionary *dict = [localExt mutableCopy];
        NSMutableDictionary *dict = [localExt mutableCopy];
        //: NSString *key = [USERSessionUtil keyForMarkType:type];
        NSString *key = [SessionStandard keyBottomRagbag:type];
        //: [dict setObject:@(YES) forKey:key];
        [dict setObject:@(YES) forKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
    }


}

//: + (BOOL)canRevokeMessageByRole:(NIMMessage *)message
+ (BOOL)option:(NIMMessage *)message
{
    //: BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isTeamManager = NO;
    BOOL isTeamManager = NO;
    //: if (message.session.sessionType == NIMSessionTypeTeam)
    if (message.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        //: isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
        isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
    //: } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
                                                                         //: inTeam:message.session.sessionId];
                                                                         inTeam:message.session.sessionId];
        //: isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
        isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
    }

    //我发出去的消息并且不是发给我的电脑的消息，可以撤回
    //群消息里如果我是管理员可以撤回以上所有消息
    //: return (isFromMe && !isToMe) || isTeamManager;
    return (isFromMe && !isToMe) || isTeamManager;
}

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString
+ (NSDictionary *)remove:(NSString *)jsonString
{
    //: if (!jsonString.length) {
    if (!jsonString.length) {
        //: return nil;
        return nil;
    }
    //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    //: return [USERSessionUtil dictByJsonData:data];
    return [SessionStandard event:data];
}


//: + (void)removeRecentSessionMark:(NIMSession *)session type:(USERRecentSessionMarkType)type
+ (void)status:(NIMSession *)session readType:(USERRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent) {
    if (recent) {
        //: NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        //: NSString *key = [USERSessionUtil keyForMarkType:type];
        NSString *key = [SessionStandard keyBottomRagbag:type];
        //: [localExt removeObjectForKey:key];
        [localExt removeObjectForKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
    }
}

//: +(BOOL)isTheSameDay:(NSTimeInterval)currentTime compareTime:(NSDateComponents*)older
+(BOOL)nameMax:(NSTimeInterval)currentTime count:(NSDateComponents*)older
{
    //: NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];
    NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];

    //: return current.year == older.year && current.month == older.month && current.day == older.day;
    return current.year == older.year && current.month == older.month && current.day == older.day;
}

//: +(NSString*)weekdayStr:(NSInteger)dayOfWeek
+(NSString*)green:(NSInteger)dayOfWeek
{
    //: static NSDictionary *daysOfWeekDict = nil;
    static NSDictionary *daysOfWeekDict = nil;
    //: daysOfWeekDict = @{@(1):[FFFLanguageManager getTextWithKey:@"Sunday"],//@"星期日",
    daysOfWeekDict = @{@(1):[MakeManager cell:[[FirmlyData sharedInstance] kTitle_degreeString]],//@"星期日",
                       //: @(2):[FFFLanguageManager getTextWithKey:@"Monday"],//@"星期一",
                       @(2):[MakeManager cell:[[FirmlyData sharedInstance] kTitleWortData]],//@"星期一",
                       //: @(3):[FFFLanguageManager getTextWithKey:@"Tuesday"],//@"星期二",
                       @(3):[MakeManager cell:[[FirmlyData sharedInstance] kContent_onValue]],//@"星期二",
                       //: @(4):[FFFLanguageManager getTextWithKey:@"Wednesday"],//@"星期三",
                       @(4):[MakeManager cell:[[FirmlyData sharedInstance] kName_brotherDevoteData]],//@"星期三",
                       //: @(5):[FFFLanguageManager getTextWithKey:@"Thursday"],//@"星期四",
                       @(5):[MakeManager cell:[[FirmlyData sharedInstance] kText_satisfyValue]],//@"星期四",
                       //: @(6):[FFFLanguageManager getTextWithKey:@"Friday"],//@"星期五",
                       @(6):[MakeManager cell:[[FirmlyData sharedInstance] kTextSkirtData]],//@"星期五",
                       //: @(7):[FFFLanguageManager getTextWithKey:@"Saturday"]};
                       @(7):[MakeManager cell:[[FirmlyData sharedInstance] kTextGarbageString]]};//@"星期六",};
    //: return [daysOfWeekDict objectForKey:@(dayOfWeek)];
    return [daysOfWeekDict objectForKey:@(dayOfWeek)];
}


//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session{
+ (NSString *)hijabText:(NSString*)uid managerTeam:(NIMSession*)session{

    //: NSString *nickname = nil;
    NSString *nickname = nil;
    //: if (session.sessionType == NIMSessionTypeTeam)
    if (session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam)
    else if (session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: if (!nickname.length) {
    if (!nickname.length) {
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        CancelTeamCorner *info = [[Mortification text] tingVoice:uid keepingOption:nil];
        //: nickname = info.showName;
        nickname = info.showName;
    }
    //: return nickname;
    return nickname;
}


//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notification
+ (NSString *)noneTitle:(NIMRevokeMessageNotification *)notification
{
    //: NSString *tip = @"";
    NSString *tip = @"";
    //: do {
    do {
        //: if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
        if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
            //: tip = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
            tip = [MakeManager cell:[[FirmlyData sharedInstance] kContentCeilingString]];//@"你".user_localized;
            //: break;
            break;
        }
        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
        if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
            //: tip = [self tipTitleFromMessageRevokeNotificationTeam:notification];
            tip = [self candid:notification];
            //: break;
            break;
        }
        //: tip = [self tipTitleFromMessageRevokeNotificationP2P:notification];
        tip = [self image:notification];
    //: } while (false);
    } while (false);

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[MakeManager cell:[[FirmlyData sharedInstance] kContentRatherTitle]]];
    //: if (notification.postscript.length != 0) {
    if (notification.postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"],[FFFLanguageManager getTextWithKey:@"postscript"], notification.postscript];
        msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[MakeManager cell:[[FirmlyData sharedInstance] kContentRatherTitle]],[MakeManager cell:[[FirmlyData sharedInstance] kTitle_discriminationText]], notification.postscript];
    }
    //: return msg;
    return msg;
}

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(USERRecentSessionMarkType)type
+ (BOOL)name:(NIMRecentSession *)recent argumentThread:(USERRecentSessionMarkType)type
{
    //: NSDictionary *localExt = recent.localExt;
    NSDictionary *localExt = recent.localExt;
    //: NSString *key = [USERSessionUtil keyForMarkType:type];
    NSString *key = [SessionStandard keyBottomRagbag:type];
    //: if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
    if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
        //: return [localExt[key] boolValue] == YES;
        return [localExt[key] boolValue] == YES;
    }
    //: return NO;
    return NO;
}

//: + (NSString *)getPeriodOfTime:(NSInteger)time withMinute:(NSInteger)minute
+ (NSString *)matter:(NSInteger)time signal:(NSInteger)minute
{
    //: NSInteger totalMin = time *60 + minute;
    NSInteger totalMin = time *60 + minute;
    //: NSString *showPeriodOfTime = @"";
    NSString *showPeriodOfTime = @"";
    //: if (totalMin > 0 && totalMin <= 5 * 60)
    if (totalMin > 0 && totalMin <= 5 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"wee_hours"];
        showPeriodOfTime = [MakeManager cell:[[FirmlyData sharedInstance] kTitle_dealerValue]];//@"凌晨".user_localized;
    }
    //: else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_am"];
        showPeriodOfTime = [MakeManager cell:[[FirmlyData sharedInstance] kTitleImmigrantValue]];//@"上午".user_localized;
    }
    //: else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_pm"];
        showPeriodOfTime = [MakeManager cell:[[FirmlyData sharedInstance] kNameChopText]];//@"下午".user_localized;
    }
    //: else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_night"];
        showPeriodOfTime = [MakeManager cell:[[FirmlyData sharedInstance] kTextCropString]];//@"晚上".user_localized;
    }
    //: return showPeriodOfTime;
    return showPeriodOfTime;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationTeam:(NIMRevokeMessageNotification *)notification {
+ (NSString *)candid:(NIMRevokeMessageNotification *)notification {
    //: NSString *tipTitle = @"";
    NSString *tipTitle = @"";

    //: do {
    do {
        //: NSString *fromUid = notification.messageFromUserId;
        NSString *fromUid = notification.messageFromUserId;
        //: NSString *operatorUid = notification.fromUserId;
        NSString *operatorUid = notification.fromUserId;
        //: BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
        BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];

        // 自己撤回自己的
        //: if (revokeBySender && fromMe) {
        if (revokeBySender && fromMe) {
            //: tipTitle = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
            tipTitle = [MakeManager cell:[[FirmlyData sharedInstance] kContentCeilingString]];//@"你".user_localized;
            //: break;
            break;
        }

        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = session;
        option.session = session;
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:(revokeBySender ? fromUid : operatorUid) option:option];
        CancelTeamCorner *info = [[Mortification text] tingVoice:(revokeBySender ? fromUid : operatorUid) keepingOption:option];

        // 别人撤回自己的
        //: if (revokeBySender) {
        if (revokeBySender) {
            //: tipTitle = info.showName;
            tipTitle = info.showName;
            //: break;
            break;
        }

        //: NIMTeamMember *member = nil;
        NIMTeamMember *member = nil;
        //: if (notification.session.sessionType == NIMSessionTypeTeam) {
        if (notification.session.sessionType == NIMSessionTypeTeam) {
            //: member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
        //: } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
        } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
            //: member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
        }
        // 被群主/管理员撤回的
        //: if (member.type == NIMTeamMemberTypeOwner) {
        if (member.type == NIMTeamMemberTypeOwner) {
            //: tipTitle = [[FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"] stringByAppendingString:info.showName];
            tipTitle = [[MakeManager cell:[[FirmlyData sharedInstance] kTextRakeString]] stringByAppendingString:info.showName];//@"群主".user_localized
        }
        //: else if (member.type == NIMTeamMemberTypeManager) {
        else if (member.type == NIMTeamMemberTypeManager) {
            //: tipTitle = [[FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"] stringByAppendingString:info.showName];
            tipTitle = [[MakeManager cell:[[FirmlyData sharedInstance] kNameContentItData]] stringByAppendingString:info.showName];//@"管理员".user_localized
        }
    //: } while (false);
    } while (false);

    //: return tipTitle;
    return tipTitle;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationP2P:(NIMRevokeMessageNotification *)notification {
+ (NSString *)image:(NIMRevokeMessageNotification *)notification {
    //: NSString *fromUid = notification.messageFromUserId;
    NSString *fromUid = notification.messageFromUserId;
    //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: return fromMe ? [FFFLanguageManager getTextWithKey:@"message_helper_you"]: [FFFLanguageManager getTextWithKey:@"message_opposite"];
    return fromMe ? [MakeManager cell:[[FirmlyData sharedInstance] kContentCeilingString]]: [MakeManager cell:[[FirmlyData sharedInstance] kTitleIdeaName]];//@"对方".user_localized;
}


//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)createHandler:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  layer_strong:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler
               ingot:(void (^)(AVAssetExportSession*))handler
{
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
    AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                     //: presetName:AVAssetExportPresetMediumQuality];
                                                                     presetName:AVAssetExportPresetMediumQuality];
    //: session.outputURL = outputURL;
    session.outputURL = outputURL;
    //: session.outputFileType = AVFileTypeMPEG4; 
    session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
    //: session.shouldOptimizeForNetworkUse = YES;
    session.shouldOptimizeForNetworkUse = YES;
    //: [session exportAsynchronouslyWithCompletionHandler:^(void)
    [session exportAsynchronouslyWithCompletionHandler:^(void)
     {
         //: handler(session);
         handler(session);
     //: }];
     }];
}

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message
+ (BOOL)beSize:(NIMMessage *)message
{
    //: return [self canMessageBeRevoked:message] &&
    return [self shoot:message] &&
    //: message.deliveryState == NIMMessageDeliveryStateDelivering;
    message.deliveryState == NIMMessageDeliveryStateDelivering;
}

//: + (NSString *)keyForMarkType:(USERRecentSessionMarkType)type
+ (NSString *)keyBottomRagbag:(USERRecentSessionMarkType)type
{
    //: static NSDictionary *keys;
    static NSDictionary *keys;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: keys = @{
        keys = @{
                 //: @(USERRecentSessionMarkTypeAt) : USERRecentSessionAtMark,
                 @(USERRecentSessionMarkTypeAt) : userReloadId,
                 //: @(USERRecentSessionMarkTypeTop) : USERRecentSessionTopMark
                 @(USERRecentSessionMarkTypeTop) : main_errTeamContactText
                 //: };
                 };
    //: });
    });
    //: return [keys objectForKey:@(type)];
    return [keys objectForKey:@(type)];
}

//: + (NSDictionary *)dictByJsonData:(NSData *)data
+ (NSDictionary *)event:(NSData *)data
{
    //: NSDictionary *dict = nil;
    NSDictionary *dict = nil;
    //: if ([data isKindOfClass:[NSData class]])
    if ([data isKindOfClass:[NSData class]])
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: dict = [NSJSONSerialization JSONObjectWithData:data
        dict = [NSJSONSerialization JSONObjectWithData:data
                                               //: options:0
                                               options:0
                                                 //: error:&error];
                                                 error:&error];
        //: if (error) {
        if (error) {
        }
    }
    //: return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
    return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
}

//: @end
@end
