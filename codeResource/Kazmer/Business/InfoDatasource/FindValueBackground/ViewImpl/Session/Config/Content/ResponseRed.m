
#import <Foundation/Foundation.h>

@interface RegnantKeyData : NSObject

+ (instancetype)sharedInstance;

//: message should be audio
@property (nonatomic, copy) NSString *dreamEmergencyUrl;

@end

@implementation RegnantKeyData

+ (instancetype)sharedInstance {
    static RegnantKeyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RegnantKeyDataToCache:(Byte *)data {
    int rectificationOak = data[0];
    Byte scatter = data[1];
    int surfaceConduct = data[2];
    for (int i = surfaceConduct; i < surfaceConduct + rectificationOak; i++) {
        int value = data[i] + scatter;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[surfaceConduct + rectificationOak] = 0;
    return data + surfaceConduct;
}

- (NSString *)StringFromRegnantKeyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RegnantKeyDataToCache:data]];
}

//: message should be audio
- (NSString *)dreamEmergencyUrl {
    if (!_dreamEmergencyUrl) {
        Byte value[] = {23, 75, 11, 220, 169, 179, 188, 106, 173, 120, 30, 34, 26, 40, 40, 22, 28, 26, 213, 40, 29, 36, 42, 33, 25, 213, 23, 26, 213, 22, 42, 25, 30, 36, 18};
        _dreamEmergencyUrl = [self StringFromRegnantKeyData:value];
    }
    return _dreamEmergencyUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResponseRed.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchAudioContentConfig.h"
#import "ResponseRed.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation WatchAudioContentConfig
@implementation ResponseRed

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], [RegnantKeyData sharedInstance].dreamEmergencyUrl);


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
- (NSString *)textDistance:(NIMMessage *)message
{
    //: return @"WatchSessionAudioContentView";
    return @"ColorControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
}

//: @end
@end
