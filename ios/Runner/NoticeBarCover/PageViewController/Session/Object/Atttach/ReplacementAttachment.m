
#import <Foundation/Foundation.h>

typedef struct {
    Byte quickHeavily;
    Byte *shirttail;
    unsigned int ellipse;
	int grandpaInfo;
	int imagePloy;
	int capitalUgly;
} StructElsewhereData;

@interface ElsewhereData : NSObject

+ (instancetype)sharedInstance;

//: 你领取了
@property (nonatomic, copy) NSString *k_cabinKey;

//: 你领取了自己的红包，你的红包已被领完
@property (nonatomic, copy) NSString *notiControlIdent;

//: data
@property (nonatomic, copy) NSString *notiShootStr;

//: type
@property (nonatomic, copy) NSString *dream_curRepairAddText;

//: 领取了你的红包，你的红包已被领完
@property (nonatomic, copy) NSString *main_collectorText;

//: sendPacketId
@property (nonatomic, copy) NSString *main_patrolKey;

//: 领取了你的红包
@property (nonatomic, copy) NSString *dreamSalmonData;

//: 你领取了自己的红包
@property (nonatomic, copy) NSString *main_employMonthStr;

//: openPacketId
@property (nonatomic, copy) NSString *notiMinFormat;

//: redPacketId
@property (nonatomic, copy) NSString *k_drinkName;

//: isGetDone
@property (nonatomic, copy) NSString *notiConstitutionalName;

@end

@implementation ElsewhereData

+ (instancetype)sharedInstance {
    static ElsewhereData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ElsewhereDataToByte:(StructElsewhereData *)data {
    for (int i = 0; i < data->ellipse; i++) {
        data->shirttail[i] ^= data->quickHeavily;
    }
    data->shirttail[data->ellipse] = 0;
	if (data->ellipse >= 3) {
		data->grandpaInfo = data->shirttail[0];
		data->imagePloy = data->shirttail[1];
		data->capitalUgly = data->shirttail[2];
	}
    return data->shirttail;
}

- (NSString *)StringFromElsewhereData:(StructElsewhereData *)data {
    return [NSString stringWithUTF8String:(char *)[self ElsewhereDataToByte:data]];
}

//: openPacketId
- (NSString *)notiMinFormat {
    if (!_notiMinFormat) {
        StructElsewhereData value = (StructElsewhereData){223, (Byte []){176, 175, 186, 177, 143, 190, 188, 180, 186, 171, 150, 187, 152}, 12, 180, 184, 112};
        _notiMinFormat = [self StringFromElsewhereData:&value];
    }
    return _notiMinFormat;
}

//: 你领取了
- (NSString *)k_cabinKey {
    if (!_k_cabinKey) {
        StructElsewhereData value = (StructElsewhereData){136, (Byte []){108, 53, 40, 97, 42, 14, 109, 7, 30, 108, 50, 14, 215}, 12, 156, 243, 29};
        _k_cabinKey = [self StringFromElsewhereData:&value];
    }
    return _k_cabinKey;
}

//: 领取了你的红包，你的红包已被领完
- (NSString *)main_collectorText {
    if (!_main_collectorText) {
        StructElsewhereData value = (StructElsewhereData){192, (Byte []){41, 98, 70, 37, 79, 86, 36, 122, 70, 36, 125, 96, 39, 90, 68, 39, 122, 98, 37, 76, 69, 47, 124, 76, 36, 125, 96, 39, 90, 68, 39, 122, 98, 37, 76, 69, 37, 119, 114, 40, 98, 107, 41, 98, 70, 37, 110, 76, 119}, 48, 177, 173, 125};
        _main_collectorText = [self StringFromElsewhereData:&value];
    }
    return _main_collectorText;
}

//: isGetDone
- (NSString *)notiConstitutionalName {
    if (!_notiConstitutionalName) {
        StructElsewhereData value = (StructElsewhereData){59, (Byte []){82, 72, 124, 94, 79, 127, 84, 85, 94, 155}, 9, 132, 20, 105};
        _notiConstitutionalName = [self StringFromElsewhereData:&value];
    }
    return _notiConstitutionalName;
}

//: redPacketId
- (NSString *)k_drinkName {
    if (!_k_drinkName) {
        StructElsewhereData value = (StructElsewhereData){200, (Byte []){186, 173, 172, 152, 169, 171, 163, 173, 188, 129, 172, 62}, 11, 173, 111, 206};
        _k_drinkName = [self StringFromElsewhereData:&value];
    }
    return _k_drinkName;
}

//: data
- (NSString *)notiShootStr {
    if (!_notiShootStr) {
        StructElsewhereData value = (StructElsewhereData){93, (Byte []){57, 60, 41, 60, 133}, 4, 83, 44, 219};
        _notiShootStr = [self StringFromElsewhereData:&value];
    }
    return _notiShootStr;
}

//: 你领取了自己的红包，你的红包已被领完
- (NSString *)notiControlIdent {
    if (!_notiControlIdent) {
        StructElsewhereData value = (StructElsewhereData){128, (Byte []){100, 61, 32, 105, 34, 6, 101, 15, 22, 100, 58, 6, 104, 7, 42, 101, 55, 49, 103, 26, 4, 103, 58, 34, 101, 12, 5, 111, 60, 12, 100, 61, 32, 103, 26, 4, 103, 58, 34, 101, 12, 5, 101, 55, 50, 104, 34, 43, 105, 34, 6, 101, 46, 12, 47}, 54, 56, 107, 173};
        _notiControlIdent = [self StringFromElsewhereData:&value];
    }
    return _notiControlIdent;
}

//: type
- (NSString *)dream_curRepairAddText {
    if (!_dream_curRepairAddText) {
        StructElsewhereData value = (StructElsewhereData){73, (Byte []){61, 48, 57, 44, 132}, 4, 45, 152, 164};
        _dream_curRepairAddText = [self StringFromElsewhereData:&value];
    }
    return _dream_curRepairAddText;
}

//: sendPacketId
- (NSString *)main_patrolKey {
    if (!_main_patrolKey) {
        StructElsewhereData value = (StructElsewhereData){78, (Byte []){61, 43, 32, 42, 30, 47, 45, 37, 43, 58, 7, 42, 122}, 12, 145, 32, 115};
        _main_patrolKey = [self StringFromElsewhereData:&value];
    }
    return _main_patrolKey;
}

//: 领取了你的红包
- (NSString *)dreamSalmonData {
    if (!_dreamSalmonData) {
        StructElsewhereData value = (StructElsewhereData){216, (Byte []){49, 122, 94, 61, 87, 78, 60, 98, 94, 60, 101, 120, 63, 66, 92, 63, 98, 122, 61, 84, 93, 44}, 21, 157, 173, 51};
        _dreamSalmonData = [self StringFromElsewhereData:&value];
    }
    return _dreamSalmonData;
}

//: 你领取了自己的红包
- (NSString *)main_employMonthStr {
    if (!_main_employMonthStr) {
        StructElsewhereData value = (StructElsewhereData){59, (Byte []){223, 134, 155, 210, 153, 189, 222, 180, 173, 223, 129, 189, 211, 188, 145, 222, 140, 138, 220, 161, 191, 220, 129, 153, 222, 183, 190, 68}, 27, 67, 106, 57};
        _main_employMonthStr = [self StringFromElsewhereData:&value];
    }
    return _main_employMonthStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementAttachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"

//: @interface NTESRedPacketTipAttachment()
@interface ReplacementAttachment()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation ReplacementAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  [ElsewhereData sharedInstance].main_patrolKey : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  [ElsewhereData sharedInstance].notiMinFormat : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  [ElsewhereData sharedInstance].k_drinkName : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  [ElsewhereData sharedInstance].notiConstitutionalName : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{[ElsewhereData sharedInstance].dream_curRepairAddText: @(CustomMessageTypeRedPacketTip), [ElsewhereData sharedInstance].notiShootStr: dictContent};

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
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    QuickNameView *label = [[QuickNameView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label format:self.afterHolderMessage];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [ButtonKit sheerOption].config.origin;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)afterHolderMessage{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = [ElsewhereData sharedInstance].notiControlIdent.textIndex;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = [ElsewhereData sharedInstance].main_employMonthStr.textIndex;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: WatchKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        TingMessage * sendUserInfo = [[ButtonKit sheerOption] past:self.sendPacketId skinColour_strong:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       [ElsewhereData sharedInstance].k_cabinKey.textIndex,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".textIndex];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: WatchKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        TingMessage * openUserInfo = [[ButtonKit sheerOption] past:self.openPacketId skinColour_strong:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           [ElsewhereData sharedInstance].main_collectorText.textIndex];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           [ElsewhereData sharedInstance].dreamSalmonData.textIndex];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)fingertip:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)select:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"EventContentView";
}

//: - (BOOL)canBeForwarded
- (BOOL)preserve
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)behindInfo
{
    //: return NO;
    return NO;
}


//: @end
@end
