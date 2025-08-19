
#import <Foundation/Foundation.h>

NSString *StringFromClothData(Byte *data);        


//: friend_info_activity_nv
Byte mPetitionText[] = {21, 23, 21, 4, 81, 93, 84, 80, 89, 79, 74, 84, 89, 81, 90, 74, 76, 78, 95, 84, 97, 84, 95, 100, 74, 89, 97, 96};

//: friend_info_activity_xu
Byte app_untilStr[] = {48, 23, 90, 5, 21, 12, 24, 15, 11, 20, 10, 5, 15, 20, 12, 21, 5, 7, 9, 26, 15, 28, 15, 26, 31, 5, 30, 27, 103};

//: friend_info_activity_nan
Byte showShirtIdent[] = {95, 24, 8, 4, 94, 106, 97, 93, 102, 92, 87, 97, 102, 94, 103, 87, 89, 91, 108, 97, 110, 97, 108, 113, 87, 102, 89, 102, 197};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "RecordUtil.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"

//: @implementation NTESUserUtil
@implementation RecordUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)data:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [PaintedNaturalLanguageTo exhibit:StringFromClothData(showShirtIdent)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [PaintedNaturalLanguageTo exhibit:StringFromClothData(mPetitionText)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [PaintedNaturalLanguageTo exhibit:StringFromClothData(app_untilStr)];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end

Byte * ClothDataToCache(Byte *data) {
    int riotSilver = data[0];
    int membershipCur = data[1];
    Byte deliverParish = data[2];
    int economistOperation = data[3];
    if (!riotSilver) return data + economistOperation;
    for (int i = economistOperation; i < economistOperation + membershipCur; i++) {
        int value = data[i] + deliverParish;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[economistOperation + membershipCur] = 0;
    return data + economistOperation;
}

NSString *StringFromClothData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ClothDataToCache(data)];
}
