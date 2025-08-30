
#import <Foundation/Foundation.h>

@interface BridgeCurrentData : NSObject

+ (instancetype)sharedInstance;

//: redPacketId
@property (nonatomic, copy) NSString *kContentRangeString;

//: 领取了你的红包，你的红包已被领完
@property (nonatomic, copy) NSString *kTextQuantityactExamineedData;

//: openPacketId
@property (nonatomic, copy) NSString *kTitle_recentContentName;

//: 领取了你的红包
@property (nonatomic, copy) NSString *kTitle_pinName;

//: sendPacketId
@property (nonatomic, copy) NSString *kContentEndString;

//: type
@property (nonatomic, copy) NSString *kTextFierceValue;

//: 你领取了自己的红包，你的红包已被领完
@property (nonatomic, copy) NSString *kContentMessageString;

//: isGetDone
@property (nonatomic, copy) NSString *kContentItemString;

//: 你领取了
@property (nonatomic, copy) NSString *kContent_sharedData;

//: 你领取了自己的红包
@property (nonatomic, copy) NSString *kContent_viewEverString;

@end

@implementation BridgeCurrentData

//: 领取了你的红包
- (NSString *)kTitle_pinName {
    if (!_kTitle_pinName) {
		NSArray<NSNumber *> *origin = @[@21, @95, @9, @211, @28, @251, @169, @142, @113, @72, @1, @229, @68, @238, @245, @67, @25, @229, @67, @28, @255, @70, @249, @227, @70, @25, @1, @68, @235, @228, @9];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_pinName = [self StringFromBridgeCurrentData:value];
    }
    return _kTitle_pinName;
}

//: redPacketId
- (NSString *)kContentRangeString {
    if (!_kContentRangeString) {
		NSArray<NSNumber *> *origin = @[@11, @78, @5, @20, @171, @192, @179, @178, @158, @175, @177, @185, @179, @194, @151, @178, @31];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentRangeString = [self StringFromBridgeCurrentData:value];
    }
    return _kContentRangeString;
}

- (NSString *)StringFromBridgeCurrentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BridgeCurrentDataToCache:data]];
}

//: 你领取了自己的红包
- (NSString *)kContent_viewEverString {
    if (!_kContent_viewEverString) {
		NSArray<NSNumber *> *origin = @[@27, @13, @5, @187, @219, @241, @202, @173, @246, @175, @147, @242, @156, @163, @241, @199, @147, @245, @148, @183, @242, @196, @190, @244, @167, @145, @244, @199, @175, @242, @153, @146, @223];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_viewEverString = [self StringFromBridgeCurrentData:value];
    }
    return _kContent_viewEverString;
}

//: type
- (NSString *)kTextFierceValue {
    if (!_kTextFierceValue) {
		NSArray<NSNumber *> *origin = @[@4, @11, @9, @141, @184, @88, @100, @200, @6, @127, @132, @123, @112, @133];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextFierceValue = [self StringFromBridgeCurrentData:value];
    }
    return _kTextFierceValue;
}

//: 你领取了自己的红包，你的红包已被领完
- (NSString *)kContentMessageString {
    if (!_kContentMessageString) {
		NSArray<NSNumber *> *origin = @[@54, @32, @9, @224, @28, @195, @20, @45, @157, @4, @221, @192, @9, @194, @166, @5, @175, @182, @4, @218, @166, @8, @167, @202, @5, @215, @209, @7, @186, @164, @7, @218, @194, @5, @172, @165, @15, @220, @172, @4, @221, @192, @7, @186, @164, @7, @218, @194, @5, @172, @165, @5, @215, @210, @8, @194, @203, @9, @194, @166, @5, @206, @172, @168];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentMessageString = [self StringFromBridgeCurrentData:value];
    }
    return _kContentMessageString;
}

//: 领取了你的红包，你的红包已被领完
- (NSString *)kTextQuantityactExamineedData {
    if (!_kTextQuantityactExamineedData) {
		NSArray<NSNumber *> *origin = @[@48, @68, @5, @54, @220, @45, @230, @202, @41, @211, @218, @40, @254, @202, @40, @1, @228, @43, @222, @200, @43, @254, @230, @41, @208, @201, @51, @0, @208, @40, @1, @228, @43, @222, @200, @43, @254, @230, @41, @208, @201, @41, @251, @246, @44, @230, @239, @45, @230, @202, @41, @242, @208, @81];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextQuantityactExamineedData = [self StringFromBridgeCurrentData:value];
    }
    return _kTextQuantityactExamineedData;
}

+ (instancetype)sharedInstance {
    static BridgeCurrentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: isGetDone
- (NSString *)kContentItemString {
    if (!_kContentItemString) {
		NSArray<NSNumber *> *origin = @[@9, @39, @12, @30, @39, @26, @134, @158, @24, @93, @122, @5, @144, @154, @110, @140, @155, @107, @150, @149, @140, @9];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentItemString = [self StringFromBridgeCurrentData:value];
    }
    return _kContentItemString;
}

//: openPacketId
- (NSString *)kTitle_recentContentName {
    if (!_kTitle_recentContentName) {
		NSArray<NSNumber *> *origin = @[@12, @18, @6, @38, @78, @203, @129, @130, @119, @128, @98, @115, @117, @125, @119, @134, @91, @118, @120];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_recentContentName = [self StringFromBridgeCurrentData:value];
    }
    return _kTitle_recentContentName;
}

//: 你领取了
- (NSString *)kContent_sharedData {
    if (!_kContent_sharedData) {
		NSArray<NSNumber *> *origin = @[@12, @65, @7, @19, @20, @14, @232, @37, @254, @225, @42, @227, @199, @38, @208, @215, @37, @251, @199, @2];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_sharedData = [self StringFromBridgeCurrentData:value];
    }
    return _kContent_sharedData;
}

+ (NSData *)BridgeCurrentDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BridgeCurrentDataToCache:(Byte *)data {
    int exhibit = data[0];
    Byte shoppingHide = data[1];
    int recordWheat = data[2];
    for (int i = recordWheat; i < recordWheat + exhibit; i++) {
        int value = data[i] - shoppingHide;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[recordWheat + exhibit] = 0;
    return data + recordWheat;
}

//: sendPacketId
- (NSString *)kContentEndString {
    if (!_kContentEndString) {
		NSArray<NSNumber *> *origin = @[@12, @94, @9, @189, @182, @220, @139, @208, @133, @209, @195, @204, @194, @174, @191, @193, @201, @195, @210, @167, @194, @98];
		NSData *data = [BridgeCurrentData BridgeCurrentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentEndString = [self StringFromBridgeCurrentData:value];
    }
    return _kContentEndString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentAttachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"

//: @interface USERRedPacketTipAttachment()
@interface ContentAttachment()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation USERRedPacketTipAttachment
@implementation ContentAttachment

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)reply:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}


//: - (BOOL)canBeRevoked
- (BOOL)cover
{
    //: return NO;
    return NO;
}


//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  [BridgeCurrentData sharedInstance].kContentEndString : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  [BridgeCurrentData sharedInstance].kTitle_recentContentName : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  [BridgeCurrentData sharedInstance].kContentRangeString : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  [BridgeCurrentData sharedInstance].kContentItemString : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{[BridgeCurrentData sharedInstance].kTextFierceValue: @(CustomMessageTypeRedPacketTip), @"data": dictContent};

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    LabelNameScrollView *label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label status:self.viewStart];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Mortification text].config.alongSelected;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)actionRecent:(NIMMessage *)message
{
    //: return @"USERSessionRedPacketTipContentView";
    return @"CenterControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)pop
{
    //: return NO;
    return NO;
}

//: - (NSString *)formatedMessage{
- (NSString *)viewStart{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".user_localized;
            showContent = [BridgeCurrentData sharedInstance].kContentMessageString.nominate;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".user_localized;
            showContent = [BridgeCurrentData sharedInstance].kContent_viewEverString.nominate;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: DisplayKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        CancelTeamCorner * sendUserInfo = [[Mortification text] tingVoice:self.sendPacketId keepingOption:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".user_localized,
                       [BridgeCurrentData sharedInstance].kContent_sharedData.nominate,
                       //: name,
                       name,
                       //: @"红包".user_localized];
                       @"红包".nominate];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: DisplayKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        CancelTeamCorner * openUserInfo = [[Mortification text] tingVoice:self.openPacketId keepingOption:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".user_localized];
                           [BridgeCurrentData sharedInstance].kTextQuantityactExamineedData.nominate];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".user_localized];
                           [BridgeCurrentData sharedInstance].kTitle_pinName.nominate];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}


//: @end
@end
//: __SAVE__ ignore_string [410.4]
