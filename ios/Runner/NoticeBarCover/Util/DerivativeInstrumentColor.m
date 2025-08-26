
#import <Foundation/Foundation.h>

@interface SandwichData : NSObject

@end

@implementation SandwichData

+ (Byte *)SandwichDataToCache:(Byte *)data {
    int characteristicRootOfASquareMatrix = data[0];
    Byte preponderanceHopping = data[1];
    int hostaCloth = data[2];
    for (int i = hostaCloth; i < hostaCloth + characteristicRootOfASquareMatrix; i++) {
        int value = data[i] - preponderanceHopping;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[hostaCloth + characteristicRootOfASquareMatrix] = 0;
    return data + hostaCloth;
}

+ (NSString *)StringFromSandwichData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SandwichDataToCache:data]];
}

//: home_fragment_pc
+ (NSString *)kValueStreakKey {
    /* static */ NSString *kValueStreakKey = nil;
    if (!kValueStreakKey) {
        Byte value[] = {16, 31, 4, 190, 135, 142, 140, 132, 126, 133, 145, 128, 134, 140, 132, 141, 147, 126, 143, 130, 166};
        kValueStreakKey = [self StringFromSandwichData:value];
    }
    return kValueStreakKey;
}

//: home_fragment_phone
+ (NSString *)user_closeEquallyPath {
    /* static */ NSString *user_closeEquallyPath = nil;
    if (!user_closeEquallyPath) {
        Byte value[] = {19, 24, 13, 221, 253, 147, 68, 183, 233, 74, 180, 252, 209, 128, 135, 133, 125, 119, 126, 138, 121, 127, 133, 125, 134, 140, 119, 136, 128, 135, 134, 125, 233};
        user_closeEquallyPath = [self StringFromSandwichData:value];
    }
    return user_closeEquallyPath;
}

//: home_fragment_web
+ (NSString *)dream_flowIdent {
    /* static */ NSString *dream_flowIdent = nil;
    if (!dream_flowIdent) {
        Byte value[] = {17, 12, 6, 29, 3, 127, 116, 123, 121, 113, 107, 114, 126, 109, 115, 121, 113, 122, 128, 107, 131, 113, 110, 93};
        dream_flowIdent = [self StringFromSandwichData:value];
    }
    return dream_flowIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DerivativeInstrumentColor.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "DerivativeInstrumentColor.h"

//: @implementation NTESClientUtil
@implementation DerivativeInstrumentColor

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)start:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [WatchLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [PaintedNaturalLanguageTo exhibit:[SandwichData user_closeEquallyPath]];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [WatchLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [PaintedNaturalLanguageTo exhibit:[SandwichData kValueStreakKey]];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [WatchLanguageManager getTextWithKey:@"home_fragment_web"];
            return [PaintedNaturalLanguageTo exhibit:[SandwichData dream_flowIdent]];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end
