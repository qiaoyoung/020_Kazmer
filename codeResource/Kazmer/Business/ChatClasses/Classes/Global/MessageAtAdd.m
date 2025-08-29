
#import <Foundation/Foundation.h>

@interface CastData : NSObject

@end

@implementation CastData

+ (NSData *)CastDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)CastDataToCache:(Byte *)data {
    int trademark = data[0];
    Byte sealTo = data[1];
    int shoulderStrap = data[2];
    for (int i = shoulderStrap; i < shoulderStrap + trademark; i++) {
        int value = data[i] + sealTo;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[shoulderStrap + trademark] = 0;
    return data + shoulderStrap;
}

+ (NSString *)StringFromCastData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CastDataToCache:data]];
}

//: onTapMenuItemCopy:
+ (NSString *)kContentDenValue {
    /* static */ NSString *kContentDenValue = nil;
    if (!kContentDenValue) {
		NSString *origin = @"12290ABFE15757FB821046452B3847243C454C204B3C441A4647501141";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentDenValue = [self StringFromCastData:value];
    }
    return kContentDenValue;
}

//: {3,3,3,8}
+ (NSString *)kContentSeedString {
    /* static */ NSString *kContentSeedString = nil;
    if (!kContentSeedString) {
		NSString *origin = @"092E0AB1E0473EC545344D05FE05FE05FE0A4F67";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSeedString = [self StringFromCastData:value];
    }
    return kContentSeedString;
}

//: bk_media_picture_pressed
+ (NSString *)kContent_storyName {
    /* static */ NSString *kContent_storyName = nil;
    if (!kContent_storyName) {
		NSString *origin = @"184E04A5141D111F17161B1311221B15262724171122241725251716C8";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_storyName = [self StringFromCastData:value];
    }
    return kContent_storyName;
}

//: {9,15,9,9}
+ (NSString *)kTextThinkValue {
    /* static */ NSString *kTextThinkValue = nil;
    if (!kTextThinkValue) {
		NSString *origin = @"0A4B081798420C3830EEE1E6EAE1EEE1EE3238";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextThinkValue = [self StringFromCastData:value];
    }
    return kTextThinkValue;
}

//: bk_media_shoot_normal
+ (NSString *)kName_bronzeString {
    /* static */ NSString *kName_bronzeString = nil;
    if (!kName_bronzeString) {
		NSString *origin = @"151709C090255E13ED4B5448564E4D524A485C5158585D4857585B564A5537";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_bronzeString = [self StringFromCastData:value];
    }
    return kName_bronzeString;
}

//: {11,11,9,15}
+ (NSString *)kName_herbProduceingValue {
    /* static */ NSString *kName_herbProduceingValue = nil;
    if (!kName_herbProduceingValue) {
		NSString *origin = @"0C2307209394F3580E0E090E0E0916090E125A71";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_herbProduceingValue = [self StringFromCastData:value];
    }
    return kName_herbProduceingValue;
}

//: {11,15,9,9}
+ (NSString *)kTitle_relieveData {
    /* static */ NSString *kTitle_relieveData = nil;
    if (!kTitle_relieveData) {
		NSString *origin = @"0B3D07C10F94983EF4F4EFF4F8EFFCEFFC408A";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_relieveData = [self StringFromCastData:value];
    }
    return kTitle_relieveData;
}

//: {10,10,10,10}
+ (NSString *)kText_ontoJustString {
    /* static */ NSString *kText_ontoJustString = nil;
    if (!kText_ontoJustString) {
		NSString *origin = @"0D0906E75E11722827232827232827232827742D";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_ontoJustString = [self StringFromCastData:value];
    }
    return kText_ontoJustString;
}

//: message_send_camera
+ (NSString *)kContent_deviceName {
    /* static */ NSString *kContent_deviceName = nil;
    if (!kContent_deviceName) {
		NSString *origin = @"132B0729E67F51423A4848363C3A34483A4339343836423A4736F1";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_deviceName = [self StringFromCastData:value];
    }
    return kContent_deviceName;
}

//: #333333
+ (NSString *)kContentBrushCropValue {
    /* static */ NSString *kContentBrushCropValue = nil;
    if (!kContentBrushCropValue) {
		NSString *origin = @"070A072EA8CB6419292929292929AC";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentBrushCropValue = [self StringFromCastData:value];
    }
    return kContentBrushCropValue;
}

//: message_please_enter_content
+ (NSString *)kText_nousData {
    /* static */ NSString *kText_nousData = nil;
    if (!kText_nousData) {
		NSString *origin = @"1C290CF6ACAC3328A994C70C443C4A4A383E3C3647433C384A3C363C454B3C49363A46454B3C454B7F";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_nousData = [self StringFromCastData:value];
    }
    return kText_nousData;
}

//: bk_media_position_normal
+ (NSString *)kTitle_towData {
    /* static */ NSString *kTitle_towData = nil;
    if (!kTitle_towData) {
		NSString *origin = @"18080C5848D75D5C1B09ED775A6357655D5C61595768676B616C6167665766676A655964A5";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_towData = [self StringFromCastData:value];
    }
    return kTitle_towData;
}

//: Audios
+ (NSString *)kContent_devastatingName {
    /* static */ NSString *kContent_devastatingName = nil;
    if (!kContent_devastatingName) {
		NSString *origin = @"064A07C4AC7975F72B1A1F25292A";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_devastatingName = [self StringFromCastData:value];
    }
    return kContent_devastatingName;
}

//: {3,8,3,3}
+ (NSString *)kName_wrapThumbData {
    /* static */ NSString *kName_wrapThumbData = nil;
    if (!kName_wrapThumbData) {
		NSString *origin = @"09590930C4D4140E5F22DAD3DFD3DAD3DA245E";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_wrapThumbData = [self StringFromCastData:value];
    }
    return kName_wrapThumbData;
}

//: {9,11,9,15}
+ (NSString *)kTextMeltValue {
    /* static */ NSString *kTextMeltValue = nil;
    if (!kTextMeltValue) {
		NSString *origin = @"0B4705CA5F34F2E5EAEAE5F2E5EAEE36FD";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMeltValue = [self StringFromCastData:value];
    }
    return kTextMeltValue;
}

//: message_send_album
+ (NSString *)kText_daughterString {
    /* static */ NSString *kText_daughterString = nil;
    if (!kText_daughterString) {
		NSString *origin = @"124E07516A24251F172525131917112517201611131E14271FE5";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_daughterString = [self StringFromCastData:value];
    }
    return kText_daughterString;
}

//: icon_session_time_bg
+ (NSString *)kTitle_headDealerHeavilyContent {
    /* static */ NSString *kTitle_headDealerHeavilyContent = nil;
    if (!kTitle_headDealerHeavilyContent) {
		NSString *origin = @"142F07267E69A23A34403F30443644443A403F30453A3E3630333817";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_headDealerHeavilyContent = [self StringFromCastData:value];
    }
    return kTitle_headDealerHeavilyContent;
}

//: bk_media_picture_normal
+ (NSString *)kTitlePullText {
    /* static */ NSString *kTitlePullText = nil;
    if (!kTitlePullText) {
		NSString *origin = @"17510DB3D6AD708407D78A701F111A0E1C141318100E1F1812232421140E1D1E211C101B73";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePullText = [self StringFromCastData:value];
    }
    return kTitlePullText;
}

//: {8,20,8,20}
+ (NSString *)kName_gentGenderValue {
    /* static */ NSString *kName_gentGenderValue = nil;
    if (!kName_gentGenderValue) {
		NSString *origin = @"0B4A0C970ED25028268AE47A31EEE2E8E6E2EEE2E8E6331B";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_gentGenderValue = [self StringFromCastData:value];
    }
    return kName_gentGenderValue;
}

//: onTapMediaItemShoot:
+ (NSString *)kNameVisibleData {
    /* static */ NSString *kNameVisibleData = nil;
    if (!kNameVisibleData) {
		NSString *origin = @"142B0D43F28118B439E0DE2E6D4443293645223A393E361E493A42283D4444490F64";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameVisibleData = [self StringFromCastData:value];
    }
    return kNameVisibleData;
}

//: onTapMediaItemPicture:
+ (NSString *)kTextSustainString {
    /* static */ NSString *kTextSustainString = nil;
    if (!kTextSustainString) {
		NSString *origin = @"164C0DE03AA0B7635DCC0A090B23220815240119181D15FD281921041D1728292619EEF0";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSustainString = [self StringFromCastData:value];
    }
    return kTextSustainString;
}

//: onTapMediaItemLocation:
+ (NSString *)kContentYoursName {
    /* static */ NSString *kContentYoursName = nil;
    if (!kContentYoursName) {
		NSString *origin = @"170B0DB6BD591FE385D73C14FA6463495665425A595E563E695A6241645856695E64632FC7";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentYoursName = [self StringFromCastData:value];
    }
    return kContentYoursName;
}

//: {8,12,8,12}
+ (NSString *)kText_surelyData {
    /* static */ NSString *kText_surelyData = nil;
    if (!kText_surelyData) {
		NSString *origin = @"0B3304554805F9FEFFF905F9FEFF4AE3";
		NSData *data = [CastData CastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_surelyData = [self StringFromCastData:value];
    }
    return kText_surelyData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageAtAdd.m
// Mortification
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitConfig.h"
#import "MessageAtAdd.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFMediaItem.h"
#import "CommingleItem.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface FFFKitSettings()
@interface ScalePath()
{
    //: BOOL _isRight;
    BOOL _isRight;
}

//: - (instancetype)init:(BOOL)isRight;
- (instancetype)initDelete:(BOOL)isRight;

//: @end
@end


//: @implementation FFFKitConfig
@implementation MessageAtAdd

//: - (NSArray *)defaultMediaItems
- (NSArray *)buttonTing
{
    //: return @[[FFFMediaItem item:@"onTapMediaItemPicture:"
    return @[[CommingleItem garrisonName:[CastData kTextSustainString]
           //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
           heading:[UIImage imageNamed:[CastData kTitlePullText]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_picture_normal"]
         with:[UIImage imageNamed:[CastData kTitlePullText]]
                 //: title:[FFFLanguageManager getTextWithKey:@"message_send_album"]],//@"相册".
                 item:[MakeManager cell:[CastData kText_daughterString]]],//@"相册".

    //: [FFFMediaItem item:@"onTapMediaItemShoot:"
    [CommingleItem garrisonName:[CastData kNameVisibleData]
           //: normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
           heading:[UIImage imageNamed:[CastData kName_bronzeString]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
         with:[UIImage imageNamed:[CastData kName_bronzeString]]
                 //: title:[FFFLanguageManager getTextWithKey:@"message_send_camera"]],//@"拍摄".
                 item:[MakeManager cell:[CastData kContent_deviceName]]],//@"拍摄".

    //: [FFFMediaItem item:@"onTapMediaItemLocation:"
    [CommingleItem garrisonName:[CastData kContentYoursName]
           //: normalImage:[UIImage imageNamed:@"bk_media_position_normal"]
           heading:[UIImage imageNamed:[CastData kTitle_towData]]
         //: selectedImage:[UIImage imageNamed:@"bk_media_position_normal"]
         with:[UIImage imageNamed:[CastData kTitle_towData]]
                 //: title:[FFFLanguageManager getTextWithKey:@"Audios"]],//@"位置".
                 item:[MakeManager cell:[CastData kContent_devastatingName]]],//@"位置".

    //: ];
    ];
}

//: - (FFFKitSetting *)setting:(NIMMessage *)message
- (ManPull *)toWith:(NIMMessage *)message
{
    //: FFFKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ScalePath *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: return settings.textSetting;
            return settings.textSetting;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: return settings.imageSetting;
            return settings.imageSetting;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: return settings.locationSetting;
            return settings.locationSetting;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: return settings.audioSetting;
            return settings.audioSetting;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: return settings.videoSetting;
            return settings.videoSetting;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: return settings.fileSetting;
            return settings.fileSetting;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: return settings.tipSetting;
            return settings.tipSetting;
        //: case NIMMessageTypeRtcCallRecord:
        case NIMMessageTypeRtcCallRecord:
            //: return settings.rtcCallRecordSetting;
            return settings.rtcCallRecordSetting;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
        {
            //: NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            //: switch (object.notificationType)
            switch (object.notificationType)
            {
                //: case NIMNotificationTypeTeam:
                case NIMNotificationTypeTeam:
                    //: return settings.teamNotificationSetting;
                    return settings.teamNotificationSetting;
                //: case NIMNotificationTypeSuperTeam:
                case NIMNotificationTypeSuperTeam:
                    //: return settings.superTeamNotificationSetting;
                    return settings.superTeamNotificationSetting;
                //: case NIMNotificationTypeChatroom:
                case NIMNotificationTypeChatroom:
                    //: return settings.chatroomNotificationSetting;
                    return settings.chatroomNotificationSetting;
                //: case NIMNotificationTypeNetCall:
                case NIMNotificationTypeNetCall:
                    //: return settings.netcallNotificationSetting;
                    return settings.netcallNotificationSetting;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return settings.unsupportSetting;
    return settings.unsupportSetting;
}

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message
- (NSArray *)valueDown:(NIMMessage *)message
{
    //: NSMutableArray *menuItems = [NSMutableArray array];
    NSMutableArray *menuItems = [NSMutableArray array];
    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [menuItems addObject:[FFFMediaItem item:@"onTapMenuItemCopy:"
        [menuItems addObject:[CommingleItem garrisonName:[CastData kContentDenValue]
                                    //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
                                    heading:[UIImage imageNamed:[CastData kTitlePullText]]
                                  //: selectedImage:[UIImage imageNamed:@"bk_media_picture_pressed"]
                                  with:[UIImage imageNamed:[CastData kContent_storyName]]
                                          //: title:[FFFLanguageManager getTextWithKey:@"复制"]]];
                                          item:[MakeManager cell:@"复制"]]];
    }

//    CommingleItem *delItem = [CommingleItem item:@"onTapMenuItemDelete:"
//                                normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
//                              selectedImage:[UIImage imageNamed:@"bk_media_shoot_pressed"]
//                                      title:@"删除".nim_localized];
//        
//    [menuItems addObject:delItem];
    //: return menuItems;
    return menuItems;
}

//: - (void)applyDefaultSettings
- (void)pin
{
    //: _messageInterval = 300;
    _messageInterval = 300;
    //: _messageLimit = 20;
    _messageLimit = 20;
    //: _recordMaxDuration = 60.f;
    _recordMaxDuration = 60.f;
    //: _placeholder = [FFFLanguageManager getTextWithKey:@"message_please_enter_content"];
    _placeholder = [MakeManager cell:[CastData kText_nousData]];//@"请输入消息".;
    //: _inputMaxLength = 1000;
    _inputMaxLength = 1000;
    //: _nickFont = [UIFont boldSystemFontOfSize:15];
    _nickFont = [UIFont boldSystemFontOfSize:15];
    //: _nickColor = [UIColor colorWithHexString:@"#333333"];
    _nickColor = [UIColor cell:[CastData kContentBrushCropValue]];
    //: _receiptFont = [UIFont systemFontOfSize:13.0];
    _receiptFont = [UIFont systemFontOfSize:13.0];
    //: _receiptColor = [UIColor darkGrayColor];
    _receiptColor = [UIColor darkGrayColor];
    //: _avatarType = NIMKitAvatarTypeRounded;
    _avatarType = NIMKitAvatarTypeRounded;
    //: _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    //: _leftBubbleSettings = [[FFFKitSettings alloc] init:NO];
    _leftBubbleSettings = [[ScalePath alloc] initDelete:NO];
    //: _rightBubbleSettings = [[FFFKitSettings alloc] init:YES];
    _rightBubbleSettings = [[ScalePath alloc] initDelete:YES];
}


//: - (CGFloat)maxNotificationTipPadding{
- (CGFloat)alongSelected{
    //: return 20.f;
    return 20.f;
}

//: - (instancetype) init
- (instancetype) init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: [self applyDefaultSettings];
        [self pin];
    }
    //: return self;
    return self;
}

//: - (FFFKitSetting *)repliedSetting:(NIMMessage *)message
- (ManPull *)willRemote:(NIMMessage *)message
{
    //: FFFKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ScalePath *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: return settings.repliedSetting;
    return settings.repliedSetting;
}

//: @end
@end


//: @implementation FFFKitSettings
@implementation ScalePath

//: - (void)applyDefaultSuperTeamNotificationSettings
- (void)size
{
    //: _superTeamNotificationSetting = [[FFFKitSetting alloc] init:_isRight];
    _superTeamNotificationSetting = [[ManPull alloc] initReceive:_isRight];
    //: _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _superTeamNotificationSetting.showAvatar = NO;
    _superTeamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[CastData kTitle_headDealerHeavilyContent]] resizableImageWithCapInsets:UIEdgeInsetsFromString([CastData kName_gentGenderValue]) resizingMode:UIImageResizingModeStretch];
    //: _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultTipSettings
- (void)noPathSettings
{
    //: _tipSetting = [[FFFKitSetting alloc] init:_isRight];
    _tipSetting = [[ManPull alloc] initReceive:_isRight];
    //: _tipSetting.contentInsets = UIEdgeInsetsZero;
    _tipSetting.contentInsets = UIEdgeInsetsZero;
    //: _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _tipSetting.font = [UIFont systemFontOfSize:12.f];
    _tipSetting.font = [UIFont systemFontOfSize:12.f];
    //: _tipSetting.showAvatar = NO;
    _tipSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];;
    UIImage *backgroundImage = [[UIImage imageNamed:[CastData kTitle_headDealerHeavilyContent]] resizableImageWithCapInsets:UIEdgeInsetsFromString([CastData kName_gentGenderValue]) resizingMode:UIImageResizingModeStretch];;
    //: _tipSetting.normalBackgroundImage = backgroundImage;
    _tipSetting.normalBackgroundImage = backgroundImage;
    //: _tipSetting.highLightBackgroundImage = backgroundImage;
    _tipSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultLocationSettings
- (void)name
{
    //: _locationSetting = [[FFFKitSetting alloc] init:_isRight];
    _locationSetting = [[ManPull alloc] initReceive:_isRight];
    //: _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kContentSeedString]) : UIEdgeInsetsFromString([CastData kName_wrapThumbData]);
    //: _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _locationSetting.font = [UIFont systemFontOfSize:12];
    _locationSetting.font = [UIFont systemFontOfSize:12];
    //: _locationSetting.showAvatar = YES;
    _locationSetting.showAvatar = YES;
}

//: - (void)applyDefaultImageSettings
- (void)bottom
{
    //: _imageSetting = [[FFFKitSetting alloc] init:_isRight];
    _imageSetting = [[ManPull alloc] initReceive:_isRight];
    //: _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kContentSeedString]) : UIEdgeInsetsFromString([CastData kName_wrapThumbData]);
    //: _imageSetting.showAvatar = YES;
    _imageSetting.showAvatar = YES;
}

//: - (void)applyDefaultRepliedSettings
- (void)tool
{
    //: _repliedSetting = [[FFFKitSetting alloc] init];
    _repliedSetting = [[ManPull alloc] init];
    //: _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kText_surelyData]) : UIEdgeInsetsFromString([CastData kText_surelyData]);
    //: _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    //: _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    //: _repliedSetting.showAvatar = YES;
    _repliedSetting.showAvatar = YES;
}

//: - (void)applyDefaultNetcallNotificationSettings
- (void)greenShow
{
    //: _netcallNotificationSetting = [[FFFKitSetting alloc] init:_isRight];
    _netcallNotificationSetting = [[ManPull alloc] initReceive:_isRight];
    //: _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{11,11,9,15}") : UIEdgeInsetsFromString(@"{11,15,9,9}");
    _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kName_herbProduceingValue]) : UIEdgeInsetsFromString([CastData kTitle_relieveData]);
    //: _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    //: _netcallNotificationSetting.showAvatar = YES;
    _netcallNotificationSetting.showAvatar = YES;
}

//: - (void)applyDefaultUnsupportSettings
- (void)cellRead
{
    //: _unsupportSetting = [[FFFKitSetting alloc] init:_isRight];
    _unsupportSetting = [[ManPull alloc] initReceive:_isRight];
    //: _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{10,10,10,10}") : UIEdgeInsetsFromString(@"{10,10,10,10}");
    _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kText_ontoJustString]) : UIEdgeInsetsFromString([CastData kText_ontoJustString]);
    //: _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _unsupportSetting.font = [UIFont systemFontOfSize:16];
    _unsupportSetting.font = [UIFont systemFontOfSize:16];
    //: _unsupportSetting.showAvatar = YES;
    _unsupportSetting.showAvatar = YES;
}

//: - (void)applyDefaultVideoSettings
- (void)sacrificeHandle
{
    //: _videoSetting = [[FFFKitSetting alloc] init:_isRight];
    _videoSetting = [[ManPull alloc] initReceive:_isRight];
    //: _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kContentSeedString]) : UIEdgeInsetsFromString([CastData kName_wrapThumbData]);
    //: _videoSetting.font = [UIFont systemFontOfSize:16];
    _videoSetting.font = [UIFont systemFontOfSize:16];
    //: _videoSetting.showAvatar = YES;
    _videoSetting.showAvatar = YES;
}

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initDelete:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _isRight = isRight;
        _isRight = isRight;
        //: [self applyDefaultSettings];
        [self input];
    }
    //: return self;
    return self;
}

//: - (void)applyDefaultFileSettings
- (void)titleOn
{
    //: _fileSetting = [[FFFKitSetting alloc] init:_isRight];
    _fileSetting = [[ManPull alloc] initReceive:_isRight];
    //: _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kContentSeedString]) : UIEdgeInsetsFromString([CastData kName_wrapThumbData]);
    //: _fileSetting.font = [UIFont systemFontOfSize:16];
    _fileSetting.font = [UIFont systemFontOfSize:16];
    //: _fileSetting.showAvatar = YES;
    _fileSetting.showAvatar = YES;
}

//: - (void)applyDefaultTextSettings
- (void)accountSettings
{
    //: _textSetting = [[FFFKitSetting alloc] init:_isRight];
    _textSetting = [[ManPull alloc] initReceive:_isRight];
    //: _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kText_surelyData]) : UIEdgeInsetsFromString([CastData kText_surelyData]);
    //: _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _textSetting.font = [UIFont systemFontOfSize:16];
    _textSetting.font = [UIFont systemFontOfSize:16];
    //: _textSetting.showAvatar = YES;
    _textSetting.showAvatar = YES;
}


//: - (void)applyDefaultTeamNotificationSettings
- (void)value
{
    //: _teamNotificationSetting = [[FFFKitSetting alloc] init:_isRight];
    _teamNotificationSetting = [[ManPull alloc] initReceive:_isRight];
    //: _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _teamNotificationSetting.showAvatar = NO;
    _teamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[CastData kTitle_headDealerHeavilyContent]] resizableImageWithCapInsets:UIEdgeInsetsFromString([CastData kName_gentGenderValue]) resizingMode:UIImageResizingModeStretch];
    //: _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
}


//: - (void)applyDefaultChatroomNotificationSettings
- (void)center
{
    //: _chatroomNotificationSetting = [[FFFKitSetting alloc] init:_isRight];
    _chatroomNotificationSetting = [[ManPull alloc] initReceive:_isRight];
    //: _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _chatroomNotificationSetting.showAvatar = NO;
    _chatroomNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[CastData kTitle_headDealerHeavilyContent]] resizableImageWithCapInsets:UIEdgeInsetsFromString([CastData kName_gentGenderValue]) resizingMode:UIImageResizingModeStretch];
    //: _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultSettings
- (void)input
{
    //: [self applyDefaultTextSettings];
    [self accountSettings];
    //: [self applyDefaultAudioSettings];
    [self clear];
    //: [self applyDefaultVideoSettings];
    [self sacrificeHandle];
    //: [self applyDefaultFileSettings];
    [self titleOn];
    //: [self applyDefaultImageSettings];
    [self bottom];
    //: [self applyDefaultLocationSettings];
    [self name];
    //: [self applyDefaultTipSettings];
    [self noPathSettings];
    //: [self applyDefaultUnsupportSettings];
    [self cellRead];
    //: [self applyDefaultTeamNotificationSettings];
    [self value];
    //: [self applyDefaultSuperTeamNotificationSettings];
    [self size];
    //: [self applyDefaultChatroomNotificationSettings];
    [self center];
    //: [self applyDefaultNetcallNotificationSettings];
    [self greenShow];
    //: [self applyDefaultRepliedSettings];
    [self tool];
    //: [self applyDefaultRtcCallRecordSettings];
    [self trailHead];
}

//: - (void)applyDefaultAudioSettings
- (void)clear
{
    //: _audioSetting = [[FFFKitSetting alloc] init:_isRight];
    _audioSetting = [[ManPull alloc] initReceive:_isRight];
    //: _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kText_surelyData]) : UIEdgeInsetsFromString([CastData kText_surelyData]);
    //: _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _audioSetting.font = [UIFont systemFontOfSize:16];
    _audioSetting.font = [UIFont systemFontOfSize:16];
    //: _audioSetting.showAvatar = YES;
    _audioSetting.showAvatar = YES;
}

//: - (void)applyDefaultRtcCallRecordSettings
- (void)trailHead
{
    //: _rtcCallRecordSetting = [[FFFKitSetting alloc] init:_isRight];
    _rtcCallRecordSetting = [[ManPull alloc] initReceive:_isRight];
    //: _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{9,11,9,15}") : UIEdgeInsetsFromString(@"{9,15,9,9}");
    _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString([CastData kTextMeltValue]) : UIEdgeInsetsFromString([CastData kTextThinkValue]);
    //: _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    //: _rtcCallRecordSetting.showAvatar = YES;
    _rtcCallRecordSetting.showAvatar = YES;
}


//: @end
@end