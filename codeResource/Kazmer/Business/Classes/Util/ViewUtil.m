
#import <Foundation/Foundation.h>

NSString *StringFromPoundData(Byte *data);        


//: friend_info_activity_nv
Byte kContentThereText[] = {99, 23, 11, 13, 17, 218, 77, 80, 222, 196, 242, 123, 126, 91, 103, 94, 90, 99, 89, 84, 94, 99, 91, 100, 84, 86, 88, 105, 94, 107, 94, 105, 110, 84, 99, 107, 128};

//: friend_info_activity_xu
Byte kText_frameData[] = {30, 23, 17, 7, 82, 153, 23, 85, 97, 88, 84, 93, 83, 78, 88, 93, 85, 94, 78, 80, 82, 99, 88, 101, 88, 99, 104, 78, 103, 100, 239};

//: friend_info_activity_nan
Byte kTextKitchenString[] = {79, 24, 24, 12, 25, 173, 21, 39, 138, 65, 146, 14, 78, 90, 81, 77, 86, 76, 71, 81, 86, 78, 87, 71, 73, 75, 92, 81, 94, 81, 92, 97, 71, 86, 73, 86, 13};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERUserUtil.h"
#import "ViewUtil.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"

//: @implementation USERUserUtil
@implementation ViewUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)itemAllow:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [MakeManager cell:StringFromPoundData(kTextKitchenString)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [MakeManager cell:StringFromPoundData(kContentThereText)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [MakeManager cell:StringFromPoundData(kText_frameData)];
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

Byte * PoundDataToCache(Byte *data) {
    int greetHistorian = data[0];
    int meantime = data[1];
    Byte availability = data[2];
    int squareOpera = data[3];
    if (!greetHistorian) return data + squareOpera;
    for (int i = squareOpera; i < squareOpera + meantime; i++) {
        int value = data[i] + availability;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[squareOpera + meantime] = 0;
    return data + squareOpera;
}

NSString *StringFromPoundData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PoundDataToCache(data)];
}
