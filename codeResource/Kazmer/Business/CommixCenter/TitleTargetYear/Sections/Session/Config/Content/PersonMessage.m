
#import <Foundation/Foundation.h>

typedef struct {
    Byte ilk;
    Byte *textRacy;
    unsigned int baseline;
	int lapCoveringShopping;
} StructStopData;

@interface StopData : NSObject

+ (instancetype)sharedInstance;

//: 未知类型消息
@property (nonatomic, copy) NSString *kNameSteadKnowData;

@end

@implementation StopData

+ (instancetype)sharedInstance {
    static StopData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)StopDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)StopDataToByte:(StructStopData *)data {
    for (int i = 0; i < data->baseline; i++) {
        data->textRacy[i] ^= data->ilk;
    }
    data->textRacy[data->baseline] = 0;
	if (data->baseline >= 1) {
		data->lapCoveringShopping = data->textRacy[0];
	}
    return data->textRacy;
}

- (NSString *)StringFromStopData:(StructStopData *)data {
    return [NSString stringWithUTF8String:(char *)[self StopDataToByte:data]];
}

//: 未知类型消息
- (NSString *)kNameSteadKnowData {
    if (!_kNameSteadKnowData) {
		NSArray<NSString *> *origin = @[@"44", @"86", @"96", @"45", @"85", @"111", @"45", @"123", @"113", @"47", @"84", @"65", @"44", @"124", @"66", @"44", @"75", @"101", @"124"];
		NSData *data = [StopData StopDataToData:origin];
        StructStopData value = (StructStopData){202, (Byte *)data.bytes, 18, 224};
        _kNameSteadKnowData = [self StringFromStopData:&value];
    }
    return _kNameSteadKnowData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PersonMessage.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayUnsupportContentConfig.h"
#import "PersonMessage.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface DisplayUnsupportContentConfig ()
@interface PersonMessage ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation DisplayUnsupportContentConfig
@implementation PersonMessage

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
        _label.text = [StopData sharedInstance].kNameSteadKnowData.disable;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: DisplayKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    ManPull *setting = [[Mortification text].config toWith:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"DisplaySessionUnknowContentView";
    return @"ViewControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: DisplayKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    ScalePath *settings = message.isOutgoingMsg? [Mortification text].config.rightBubbleSettings : [Mortification text].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end
