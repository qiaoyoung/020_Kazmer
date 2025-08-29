
#import <Foundation/Foundation.h>

@interface PenalFistData : NSObject

+ (instancetype)sharedInstance;

//: home_fragment_phone
@property (nonatomic, copy) NSString *kName_textValue;

//: home_fragment_pc
@property (nonatomic, copy) NSString *kContent_painfulValue;

//: home_fragment_web
@property (nonatomic, copy) NSString *kNameGreenString;

@end

@implementation PenalFistData

+ (instancetype)sharedInstance {
    static PenalFistData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PenalFistDataToData:(NSString *)value {
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

- (Byte *)PenalFistDataToCache:(Byte *)data {
    int ankle = data[0];
    Byte cellPlanning = data[1];
    int instantly = data[2];
    for (int i = instantly; i < instantly + ankle; i++) {
        int value = data[i] + cellPlanning;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[instantly + ankle] = 0;
    return data + instantly;
}

- (NSString *)StringFromPenalFistData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PenalFistDataToCache:data]];
}

//: home_fragment_web
- (NSString *)kNameGreenString {
    if (!_kNameGreenString) {
		NSString *origin = @"115F07BBED0AF509100E0600071302080E060F15001806032F";
		NSData *data = [PenalFistData PenalFistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameGreenString = [self StringFromPenalFistData:value];
    }
    return _kNameGreenString;
}

//: home_fragment_phone
- (NSString *)kName_textValue {
    if (!_kName_textValue) {
		NSString *origin = @"132D0DD5F08A7BC41A528A546C3B424038323945343A4038414732433B42413831";
		NSData *data = [PenalFistData PenalFistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_textValue = [self StringFromPenalFistData:value];
    }
    return _kName_textValue;
}

//: home_fragment_pc
- (NSString *)kContent_painfulValue {
    if (!_kContent_painfulValue) {
		NSString *origin = @"10480D3B8A1C8CAAB4A14B03B32027251D171E2A191F251D262C17281BFA";
		NSData *data = [PenalFistData PenalFistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_painfulValue = [self StringFromPenalFistData:value];
    }
    return _kContent_painfulValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERClientUtil.h"
#import "ContentUtil.h"

//: @implementation USERClientUtil
@implementation ContentUtil

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)view:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [MakeManager cell:[PenalFistData sharedInstance].kName_textValue];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [MakeManager cell:[PenalFistData sharedInstance].kContent_painfulValue];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_web"];
            return [MakeManager cell:[PenalFistData sharedInstance].kNameGreenString];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end