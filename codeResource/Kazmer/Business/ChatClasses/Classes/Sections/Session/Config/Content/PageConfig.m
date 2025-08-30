
#import <Foundation/Foundation.h>

@interface BuildData : NSObject

@end

@implementation BuildData

+ (Byte *)BuildDataToCache:(Byte *)data {
    int volunteerMonth = data[0];
    Byte villageShow = data[1];
    int chart = data[2];
    for (int i = chart; i < chart + volunteerMonth; i++) {
        int value = data[i] - villageShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[chart + volunteerMonth] = 0;
    return data + chart;
}

+ (NSString *)StringFromBuildData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BuildDataToCache:data]];
}

//: message should be audio
+ (NSString *)kNameOntoString {
    /* static */ NSString *kNameOntoString = nil;
    if (!kNameOntoString) {
        Byte value[] = {23, 7, 8, 161, 122, 229, 193, 86, 116, 108, 122, 122, 104, 110, 108, 39, 122, 111, 118, 124, 115, 107, 39, 105, 108, 39, 104, 124, 107, 112, 118, 194};
        kNameOntoString = [self StringFromBuildData:value];
    }
    return kNameOntoString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PageConfig.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayAudioContentConfig.h"
#import "PageConfig.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation DisplayAudioContentConfig
@implementation PageConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], [BuildData kNameOntoString]);


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 90;
    NSInteger audioContentMinWidth = 90;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
//    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    //: return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
    return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"DisplaySessionAudioContentView";
    return @"ForefrontTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}

//: @end
@end
