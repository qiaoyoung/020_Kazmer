
#import <Foundation/Foundation.h>

@interface RuleData : NSObject

@end

@implementation RuleData

+ (Byte *)RuleDataToCache:(Byte *)data {
    int meltComfort = data[0];
    Byte pointeScatter = data[1];
    int symbolicNowhere = data[2];
    for (int i = symbolicNowhere; i < symbolicNowhere + meltComfort; i++) {
        int value = data[i] - pointeScatter;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[symbolicNowhere + meltComfort] = 0;
    return data + symbolicNowhere;
}

+ (NSString *)StringFromRuleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RuleDataToCache:data]];
}

//: 未知类型消息
+ (NSString *)main_versionFormat {
    /* static */ NSString *main_versionFormat = nil;
    if (!main_versionFormat) {
        Byte value[] = {18, 89, 11, 98, 220, 60, 218, 137, 183, 203, 104, 63, 245, 3, 64, 248, 254, 64, 10, 20, 62, 247, 228, 63, 15, 225, 63, 218, 8, 242};
        main_versionFormat = [self StringFromRuleData:value];
    }
    return main_versionFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldConfig.m
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchUnsupportContentConfig.h"
#import "OldConfig.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface WatchUnsupportContentConfig ()
@interface OldConfig ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation WatchUnsupportContentConfig
@implementation OldConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = [RuleData main_versionFormat].messageWith;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)textDistance:(NIMMessage *)message
{
    //: WatchKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    SubObject *setting = [[ButtonKit sheerOption].config date:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"WatchSessionUnknowContentView";
    return @"MasterControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)contentInsets:(NIMMessage *)message
{
    //: WatchKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    ZoneSettings *settings = message.isOutgoingMsg? [ButtonKit sheerOption].config.rightBubbleSettings : [ButtonKit sheerOption].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end
