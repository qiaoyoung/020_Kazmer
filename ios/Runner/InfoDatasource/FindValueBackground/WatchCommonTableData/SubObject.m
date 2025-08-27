
#import <Foundation/Foundation.h>

@interface MuscleData : NSObject

+ (instancetype)sharedInstance;

//: icon_receiver_node_pressed
@property (nonatomic, copy) NSString *dreamBookTitle;

//: icon_sender_text_node_pressed
@property (nonatomic, copy) NSString *noti_elbowPloyName;

//: icon_receiver_node_normal
@property (nonatomic, copy) NSString *k_ecologicPath;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *app_engagementUrl;

//: icon_sender_text_node_normal
@property (nonatomic, copy) NSString *mOperatingId;

@end

@implementation MuscleData

+ (instancetype)sharedInstance {
    static MuscleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MuscleDataToCache:(Byte *)data {
    int mobileAutonomy = data[0];
    Byte home = data[1];
    int inflationCool = data[2];
    for (int i = inflationCool; i < inflationCool + mobileAutonomy; i++) {
        int value = data[i] + home;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[inflationCool + mobileAutonomy] = 0;
    return data + inflationCool;
}

- (NSString *)StringFromMuscleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MuscleDataToCache:data]];
}

//: {18,25,17,25}
- (NSString *)app_engagementUrl {
    if (!_app_engagementUrl) {
        Byte value[] = {13, 87, 9, 177, 38, 186, 226, 32, 177, 36, 218, 225, 213, 219, 222, 213, 218, 224, 213, 219, 222, 38, 210};
        _app_engagementUrl = [self StringFromMuscleData:value];
    }
    return _app_engagementUrl;
}

//: icon_sender_text_node_pressed
- (NSString *)noti_elbowPloyName {
    if (!_noti_elbowPloyName) {
        Byte value[] = {29, 65, 13, 182, 233, 197, 183, 90, 151, 135, 88, 113, 246, 40, 34, 46, 45, 30, 50, 36, 45, 35, 36, 49, 30, 51, 36, 55, 51, 30, 45, 46, 35, 36, 30, 47, 49, 36, 50, 50, 36, 35, 110};
        _noti_elbowPloyName = [self StringFromMuscleData:value];
    }
    return _noti_elbowPloyName;
}

//: icon_sender_text_node_normal
- (NSString *)mOperatingId {
    if (!_mOperatingId) {
        Byte value[] = {28, 24, 11, 168, 178, 242, 178, 248, 127, 28, 225, 81, 75, 87, 86, 71, 91, 77, 86, 76, 77, 90, 71, 92, 77, 96, 92, 71, 86, 87, 76, 77, 71, 86, 87, 90, 85, 73, 84, 179};
        _mOperatingId = [self StringFromMuscleData:value];
    }
    return _mOperatingId;
}

//: icon_receiver_node_normal
- (NSString *)k_ecologicPath {
    if (!_k_ecologicPath) {
        Byte value[] = {25, 58, 13, 28, 164, 201, 244, 245, 221, 143, 127, 85, 56, 47, 41, 53, 52, 37, 56, 43, 41, 43, 47, 60, 43, 56, 37, 52, 53, 42, 43, 37, 52, 53, 56, 51, 39, 50, 135};
        _k_ecologicPath = [self StringFromMuscleData:value];
    }
    return _k_ecologicPath;
}

//: icon_receiver_node_pressed
- (NSString *)dreamBookTitle {
    if (!_dreamBookTitle) {
        Byte value[] = {26, 85, 5, 203, 202, 20, 14, 26, 25, 10, 29, 16, 14, 16, 20, 33, 16, 29, 10, 25, 26, 15, 16, 10, 27, 29, 16, 30, 30, 16, 15, 9};
        _dreamBookTitle = [self StringFromMuscleData:value];
    }
    return _dreamBookTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubObject.m
// ButtonKit
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchKitSetting.h"
#import "SubObject.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @implementation WatchKitSetting
@implementation SubObject

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initShared:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage title:[MuscleData sharedInstance].mOperatingId] resizableImageWithCapInsets:UIEdgeInsetsFromString([MuscleData sharedInstance].app_engagementUrl) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage title:[MuscleData sharedInstance].noti_elbowPloyName] resizableImageWithCapInsets:UIEdgeInsetsFromString([MuscleData sharedInstance].app_engagementUrl) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:[MuscleData sharedInstance].k_ecologicPath] resizableImageWithCapInsets:UIEdgeInsetsFromString([MuscleData sharedInstance].app_engagementUrl) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:[MuscleData sharedInstance].dreamBookTitle] resizableImageWithCapInsets:UIEdgeInsetsFromString([MuscleData sharedInstance].app_engagementUrl) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end
