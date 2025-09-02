
#import <Foundation/Foundation.h>

@interface AmpleConsciousnessData : NSObject

+ (instancetype)sharedInstance;

//: 群消息撤回
@property (nonatomic, copy) NSString *kNameRidiculousValue;

//: 超大群消息撤回
@property (nonatomic, copy) NSString *kName_nutString;

//: 点对点消息单向撤回
@property (nonatomic, copy) NSString *kTitleReparationValue;

//: 群消息单向撤回
@property (nonatomic, copy) NSString *kName_nonprofitString;

//: [系统通知][%@]
@property (nonatomic, copy) NSString *kText_architectValue;

//: 点对点消息撤回
@property (nonatomic, copy) NSString *kNameHerbValue;

@end

@implementation AmpleConsciousnessData

+ (instancetype)sharedInstance {
    static AmpleConsciousnessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AmpleConsciousnessDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AmpleConsciousnessDataToCache:(Byte *)data {
    int gent = data[0];
    Byte grayTwist = data[1];
    int monthOo = data[2];
    for (int i = monthOo; i < monthOo + gent; i++) {
        int value = data[i] + grayTwist;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[monthOo + gent] = 0;
    return data + monthOo;
}

- (NSString *)StringFromAmpleConsciousnessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AmpleConsciousnessDataToCache:data]];
}

//: 群消息单向撤回
- (NSString *)kName_nonprofitString {
    if (!_kName_nonprofitString) {
		NSArray<NSString *> *origin = @[@"21", @"32", @"12", @"54", @"17", @"176", @"223", @"214", @"1", @"241", @"191", @"76", @"199", @"158", @"132", @"198", @"150", @"104", @"198", @"97", @"143", @"197", @"109", @"117", @"197", @"112", @"113", @"198", @"114", @"132", @"197", @"123", @"126", @"114"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_nonprofitString = [self StringFromAmpleConsciousnessData:value];
    }
    return _kName_nonprofitString;
}

//: [系统通知][%@]
- (NSString *)kText_architectValue {
    if (!_kText_architectValue) {
		NSArray<NSString *> *origin = @[@"18", @"90", @"5", @"75", @"83", @"1", @"141", @"89", @"97", @"141", @"97", @"69", @"143", @"38", @"64", @"141", @"69", @"75", @"3", @"1", @"203", @"230", @"3", @"214"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_architectValue = [self StringFromAmpleConsciousnessData:value];
    }
    return _kText_architectValue;
}

//: 超大群消息撤回
- (NSString *)kName_nutString {
    if (!_kName_nutString) {
		NSArray<NSString *> *origin = @[@"21", @"82", @"6", @"171", @"131", @"78", @"150", @"100", @"51", @"147", @"82", @"85", @"149", @"108", @"82", @"148", @"100", @"54", @"148", @"47", @"93", @"148", @"64", @"82", @"147", @"73", @"76", @"79"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_nutString = [self StringFromAmpleConsciousnessData:value];
    }
    return _kName_nutString;
}

//: 点对点消息撤回
- (NSString *)kNameHerbValue {
    if (!_kNameHerbValue) {
		NSArray<NSString *> *origin = @[@"21", @"64", @"9", @"116", @"210", @"190", @"128", @"154", @"173", @"167", @"66", @"121", @"165", @"111", @"121", @"167", @"66", @"121", @"166", @"118", @"72", @"166", @"65", @"111", @"166", @"82", @"100", @"165", @"91", @"94", @"88"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHerbValue = [self StringFromAmpleConsciousnessData:value];
    }
    return _kNameHerbValue;
}

//: 群消息撤回
- (NSString *)kNameRidiculousValue {
    if (!_kNameRidiculousValue) {
		NSArray<NSString *> *origin = @[@"15", @"44", @"9", @"123", @"3", @"6", @"198", @"251", @"105", @"187", @"146", @"120", @"186", @"138", @"92", @"186", @"85", @"131", @"186", @"102", @"120", @"185", @"111", @"114", @"247"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameRidiculousValue = [self StringFromAmpleConsciousnessData:value];
    }
    return _kNameRidiculousValue;
}

//: 点对点消息单向撤回
- (NSString *)kTitleReparationValue {
    if (!_kTitleReparationValue) {
		NSArray<NSString *> *origin = @[@"27", @"38", @"5", @"149", @"41", @"193", @"92", @"147", @"191", @"137", @"147", @"193", @"92", @"147", @"192", @"144", @"98", @"192", @"91", @"137", @"191", @"103", @"111", @"191", @"106", @"107", @"192", @"108", @"126", @"191", @"117", @"120", @"4"];
		NSData *data = [AmpleConsciousnessData AmpleConsciousnessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleReparationValue = [self StringFromAmpleConsciousnessData:value];
    }
    return _kTitleReparationValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParagraphUtil.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERNoticationUtil.h"
#import "ParagraphUtil.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"

//: @implementation USERNoticationUtil
@implementation ParagraphUtil

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)tapEvent:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[AmpleConsciousnessData sharedInstance].kText_architectValue.disable,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self accumulationRecording:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)accumulationRecording:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [AmpleConsciousnessData sharedInstance].kNameHerbValue.disable;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [AmpleConsciousnessData sharedInstance].kNameHerbValue.disable;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [AmpleConsciousnessData sharedInstance].kNameRidiculousValue.disable;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [AmpleConsciousnessData sharedInstance].kName_nutString.disable;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [AmpleConsciousnessData sharedInstance].kTitleReparationValue.disable;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [AmpleConsciousnessData sharedInstance].kName_nonprofitString.disable;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end
