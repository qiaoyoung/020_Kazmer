
#import <Foundation/Foundation.h>

@interface ViewStrengthenData : NSObject

@end

@implementation ViewStrengthenData

+ (Byte *)ViewStrengthenDataToCache:(Byte *)data {
    int cluster = data[0];
    Byte showBorrowMark = data[1];
    int cigarThoroughly = data[2];
    for (int i = cigarThoroughly; i < cigarThoroughly + cluster; i++) {
        int value = data[i] + showBorrowMark;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[cigarThoroughly + cluster] = 0;
    return data + cigarThoroughly;
}

+ (NSString *)StringFromViewStrengthenData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewStrengthenDataToCache:data]];
}

//: init_manager_nim_status_bar_image_message
+ (NSString *)appCapitalRehabPath {
    /* static */ NSString *appCapitalRehabPath = nil;
    if (!appCapitalRehabPath) {
        Byte value[] = {41, 72, 6, 27, 55, 121, 33, 38, 33, 44, 23, 37, 25, 38, 25, 31, 29, 42, 23, 38, 33, 37, 23, 43, 44, 25, 44, 45, 43, 23, 26, 25, 42, 23, 33, 37, 25, 31, 29, 23, 37, 29, 43, 43, 25, 31, 29, 57};
        appCapitalRehabPath = [self StringFromViewStrengthenData:value];
    }
    return appCapitalRehabPath;
}

//: retracted_message
+ (NSString *)mCartUrl {
    /* static */ NSString *mCartUrl = nil;
    if (!mCartUrl) {
        Byte value[] = {17, 61, 9, 60, 139, 160, 138, 136, 234, 53, 40, 55, 53, 36, 38, 55, 40, 39, 34, 48, 40, 54, 54, 36, 42, 40, 90};
        mCartUrl = [self StringFromViewStrengthenData:value];
    }
    return mCartUrl;
}

//: init_manager_nim_status_bar_video_message
+ (NSString *)k_barDuringName {
    /* static */ NSString *k_barDuringName = nil;
    if (!k_barDuringName) {
        Byte value[] = {41, 21, 11, 27, 211, 13, 238, 199, 79, 29, 14, 84, 89, 84, 95, 74, 88, 76, 89, 76, 82, 80, 93, 74, 89, 84, 88, 74, 94, 95, 76, 95, 96, 94, 74, 77, 76, 93, 74, 97, 84, 79, 80, 90, 74, 88, 80, 94, 94, 76, 82, 80, 183};
        k_barDuringName = [self StringFromViewStrengthenData:value];
    }
    return k_barDuringName;
}

//: 发来了一个红包
+ (NSString *)app_separationIdent {
    /* static */ NSString *app_separationIdent = nil;
    if (!app_separationIdent) {
        Byte value[] = {21, 14, 4, 234, 215, 129, 131, 216, 143, 151, 214, 172, 120, 214, 170, 114, 214, 170, 156, 217, 172, 148, 215, 126, 119, 24};
        app_separationIdent = [self StringFromViewStrengthenData:value];
    }
    return app_separationIdent;
}

//: 发来一段聊天记录
+ (NSString *)notiMayIsolateCircleFormat {
    /* static */ NSString *notiMayIsolateCircleFormat = nil;
    if (!notiMayIsolateCircleFormat) {
        Byte value[] = {24, 39, 11, 57, 130, 112, 154, 238, 141, 79, 17, 190, 104, 106, 191, 118, 126, 189, 145, 89, 191, 135, 142, 193, 90, 99, 190, 125, 130, 193, 135, 137, 190, 150, 110, 67};
        notiMayIsolateCircleFormat = [self StringFromViewStrengthenData:value];
    }
    return notiMayIsolateCircleFormat;
}

//: share card
+ (NSString *)noti_titleEvaluateMsg {
    /* static */ NSString *noti_titleEvaluateMsg = nil;
    if (!noti_titleEvaluateMsg) {
        Byte value[] = {10, 19, 8, 30, 112, 26, 90, 54, 96, 85, 78, 95, 82, 13, 80, 78, 95, 81, 169};
        noti_titleEvaluateMsg = [self StringFromViewStrengthenData:value];
    }
    return noti_titleEvaluateMsg;
}

//: 发来了一个文件
+ (NSString *)appPatrolUrl {
    /* static */ NSString *appPatrolUrl = nil;
    if (!appPatrolUrl) {
        Byte value[] = {21, 66, 11, 20, 128, 113, 134, 163, 76, 13, 197, 163, 77, 79, 164, 91, 99, 162, 120, 68, 162, 118, 62, 162, 118, 104, 164, 84, 69, 162, 121, 116, 165};
        appPatrolUrl = [self StringFromViewStrengthenData:value];
    }
    return appPatrolUrl;
}

//: 发来了猜拳信息
+ (NSString *)showValueTitleId {
    /* static */ NSString *showValueTitleId = nil;
    if (!showValueTitleId) {
        Byte value[] = {21, 39, 9, 253, 197, 29, 28, 53, 38, 190, 104, 106, 191, 118, 126, 189, 147, 95, 192, 101, 117, 191, 100, 140, 189, 152, 122, 191, 90, 136, 212};
        showValueTitleId = [self StringFromViewStrengthenData:value];
    }
    return showValueTitleId;
}

//: 发来了阅后即焚
+ (NSString *)mTerriblyData {
    /* static */ NSString *mTerriblyData = nil;
    if (!mTerriblyData) {
        Byte value[] = {21, 30, 6, 215, 102, 213, 199, 113, 115, 200, 127, 135, 198, 156, 104, 203, 122, 103, 199, 114, 112, 199, 111, 149, 201, 102, 124, 85};
        mTerriblyData = [self StringFromViewStrengthenData:value];
    }
    return mTerriblyData;
}

//: init_manager_nim_status_bar_audio_message
+ (NSString *)appClothPactUrl {
    /* static */ NSString *appClothPactUrl = nil;
    if (!appClothPactUrl) {
        Byte value[] = {41, 11, 5, 239, 52, 94, 99, 94, 105, 84, 98, 86, 99, 86, 92, 90, 103, 84, 99, 94, 98, 84, 104, 105, 86, 105, 106, 104, 84, 87, 86, 103, 84, 86, 106, 89, 94, 100, 84, 98, 90, 104, 104, 86, 92, 90, 49};
        appClothPactUrl = [self StringFromViewStrengthenData:value];
    }
    return appClothPactUrl;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMsgConverter.h"
#import "BackgroundCover.h"
//: #import "NSString+NTES.h"
#import "NSString+Zone.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ObjectAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "InfoMessageBackground.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"

//: @implementation NTESSessionMsgConverter
@implementation BackgroundCover


//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)name:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: textMessage.setting = [[NIMMessageSetting alloc] init];
    textMessage.setting = [[NIMMessageSetting alloc] init];
    //: textMessage.setting.teamReceiptEnabled = YES;
    textMessage.setting.teamReceiptEnabled = YES;

    //: textMessage.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    textMessage.setting.apnsWithPrefix = [[NameTing pin] controlRed];
    //: textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: textMessage.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    textMessage.apnsMemberOption.forcePush = [[NameTing pin] tool];
    //: textMessage.env = [[NTESBundleSetting sharedConfig] messageEnv];
    textMessage.env = [[NameTing pin] from];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)blueImage:(UIImage*)image
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
   //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
   return [BackgroundCover ting:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)path:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
    return [BackgroundCover ting:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)ting:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = [NTESSessionMsgConverter generateUUID];
    imageObject.displayName = [BackgroundCover showWith];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.8;
    option.compressQuality = 0.8;
    //: imageObject.option = option;
    imageObject.option = option;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [WatchLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [PaintedNaturalLanguageTo exhibit:[ViewStrengthenData appCapitalRehabPath]];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    setting.apnsWithPrefix = [[NameTing pin] controlRed];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[NameTing pin] tool];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)state:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.apnsContent = [WatchLanguageManager getTextWithKey:@"init_manager_nim_status_bar_audio_message"];
    message.apnsContent = [PaintedNaturalLanguageTo exhibit:[ViewStrengthenData appClothPactUrl]];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)label:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = [NTESSessionMsgConverter generateUUID];
    videoObject.displayName = [BackgroundCover showWith];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = [WatchLanguageManager getTextWithKey:@"init_manager_nim_status_bar_video_message"];
    message.apnsContent = [PaintedNaturalLanguageTo exhibit:[ViewStrengthenData k_barDuringName]];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment
+ (NIMMessage*)origin:(ObjectAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了猜拳信息".ntes_localized;
    message.apnsContent = [ViewStrengthenData showValueTitleId].textIndex;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[NameTing pin] controlRed];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[NameTing pin] tool];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment
+ (NIMMessage *)white:(KeyAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"share card";
    message.apnsContent = [ViewStrengthenData noti_titleEvaluateMsg];

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.roamingEnabled = NO;
    setting.roamingEnabled = NO;
    //: setting.syncEnabled = NO;
    setting.syncEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];

    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment
+ (NIMMessage*)title:(WeltanschauungAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了阅后即焚".ntes_localized;
    message.apnsContent = [ViewStrengthenData mTerriblyData].textIndex;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.roamingEnabled = NO;
    setting.roamingEnabled = NO;
    //: setting.syncEnabled = NO;
    setting.syncEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];

    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithFilePath:(NSString*)path{
+ (NIMMessage*)down:(NSString*)path{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    //: NSString *displayName = path.lastPathComponent;
    NSString *displayName = path.lastPathComponent;
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = [ViewStrengthenData appPatrolUrl].textIndex;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[NameTing pin] controlRed];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[NameTing pin] tool];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithFileData:(NSData*)data extension:(NSString*)extension{
+ (NIMMessage*)withMetadata:(NSData*)data reach:(NSString*)extension{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    //: NSString *displayName;
    NSString *displayName;
    //: if (extension.length) {
    if (extension.length) {
        //: displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.MD5String,extension];
        displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.image,extension];
    //: }else{
    }else{
        //: displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.MD5String];
        displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.image];
    }
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = [ViewStrengthenData appPatrolUrl].textIndex;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment
+ (NIMMessage*)image:(InfoAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)color:(NSString *)tip
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)my:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              image:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt {
         should:(NSString *)revokeCallbackExt {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
    NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
                                                          //: callbackExt:revokeCallbackExt];
                                                          callbackExt:revokeCallbackExt];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment
+ (NIMMessage *)withChecked:(InfoMessageBackground *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: message.apnsContent = @"发来了一个红包".ntes_localized;
    message.apnsContent = [ViewStrengthenData app_separationIdent].textIndex;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment
+ (NIMMessage *)streetSmartContentBeak:(ReplacementAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];

    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment {
+ (NIMMessage *)surnameArray:(ShowImageEvent *)attachment {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来一段聊天记录".ntes_localized;
    message.apnsContent = [ViewStrengthenData notiMayIsolateCircleFormat].textIndex;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[NameTing pin] controlRed];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[NameTing pin] tool];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[NameTing pin] from];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage
+ (NIMMessage *)gesture:(NIMMessage *)revocationMessage
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.messageSubType = 20;
    message.messageSubType = 20;

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[WatchLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[PaintedNaturalLanguageTo exhibit:[ViewStrengthenData mCartUrl]]];

    //: NIMCustomObject *object = revocationMessage.messageObject;
    NIMCustomObject *object = revocationMessage.messageObject;
    //: if (object)
    if (object)
    {
        //: if ([object isKindOfClass:[NIMVideoObject class]]) {
        if ([object isKindOfClass:[NIMVideoObject class]]) {
            //: NIMVideoObject *obj = (NIMVideoObject *)object;
            NIMVideoObject *obj = (NIMVideoObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".nim_localized, obj.coverUrl];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".messageWith, obj.coverUrl];
        //: } else if ([object isKindOfClass:[NIMImageObject class]]){
        } else if ([object isKindOfClass:[NIMImageObject class]]){
            //: NIMImageObject *obj = (NIMImageObject *)object;
            NIMImageObject *obj = (NIMImageObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".messageWith, obj.url];
        //: } else if ([object isKindOfClass:[NIMAudioObject class]]){
        } else if ([object isKindOfClass:[NIMAudioObject class]]){
            //: NIMAudioObject *obj = (NIMAudioObject *)object;
            NIMAudioObject *obj = (NIMAudioObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".messageWith, obj.url];
        }

    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
        msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
    }

    //: message.text = msg;
    message.text = msg;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = YES;
    setting.historyEnabled = YES;
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: return message;
    return message;
}

//: + (NSString *)generateUUID {
+ (NSString *)showWith {

    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @end
@end
