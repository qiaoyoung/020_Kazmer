
#import <Foundation/Foundation.h>

@interface ForeignerData : NSObject

+ (instancetype)sharedInstance;

//: init_manager_nim_status_bar_audio_message
@property (nonatomic, copy) NSString *kTitle_retireData;

//: 发来了一个红包
@property (nonatomic, copy) NSString *kName_addEverString;

//: init_manager_nim_status_bar_video_message
@property (nonatomic, copy) NSString *kTextViewString;

//: share card
@property (nonatomic, copy) NSString *kTextDataName;

//: 发来了猜拳信息
@property (nonatomic, copy) NSString *kNameOnValue;

//: init_manager_nim_status_bar_image_message
@property (nonatomic, copy) NSString *kName_tapTargetString;

//: 发来了阅后即焚
@property (nonatomic, copy) NSString *kContentAtName;

//: retracted_message
@property (nonatomic, copy) NSString *kTextCellData;

//: 发来了一个文件
@property (nonatomic, copy) NSString *kNameTextString;

//: 发来一段聊天记录
@property (nonatomic, copy) NSString *kName_wheatLoopString;

@end

@implementation ForeignerData

//: 发来了一个文件
- (NSString *)kNameTextString {
    if (!_kNameTextString) {
		NSString *origin = @"150704b4ec9698eda4acebc18debbf87ebbfb1ed9d8eebc2bd37";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameTextString = [self StringFromForeignerData:value];
    }
    return _kNameTextString;
}

+ (NSData *)ForeignerDataToData:(NSString *)value {
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

//: 发来一段聊天记录
- (NSString *)kName_wheatLoopString {
    if (!_kName_wheatLoopString) {
		NSString *origin = @"1801066ec7c8e69092e79ea6e5b981e7afb6e9828be6a5aae9afb1e6be966b";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_wheatLoopString = [self StringFromForeignerData:value];
    }
    return _kName_wheatLoopString;
}

+ (instancetype)sharedInstance {
    static ForeignerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: init_manager_nim_status_bar_image_message
- (NSString *)kName_tapTargetString {
    if (!_kName_tapTargetString) {
		NSString *origin = @"294104abaaafaab5a0aea2afa2a8a6b3a0afaaaea0b4b5a2b5b6b4a0a3a2b3a0aaaea2a8a6a0aea6b4b4a2a8a6a1";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_tapTargetString = [self StringFromForeignerData:value];
    }
    return _kName_tapTargetString;
}

//: 发来了阅后即焚
- (NSString *)kContentAtName {
    if (!_kContentAtName) {
		NSString *origin = @"150a0df0276e29d88f573d2a41ef999bf0a7afeec490f3a28fef9a98ef97bdf18ea45c";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentAtName = [self StringFromForeignerData:value];
    }
    return _kContentAtName;
}

//: share card
- (NSString *)kTextDataName {
    if (!_kTextDataName) {
		NSString *origin = @"0a0203756a6374672265637466a3";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextDataName = [self StringFromForeignerData:value];
    }
    return _kTextDataName;
}

//: 发来了一个红包
- (NSString *)kName_addEverString {
    if (!_kName_addEverString) {
		NSString *origin = @"150905b869ee989aefa6aeedc38fedc189edc1b3f0c3abee958e3d";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_addEverString = [self StringFromForeignerData:value];
    }
    return _kName_addEverString;
}

//: 发来了猜拳信息
- (NSString *)kNameOnValue {
    if (!_kNameOnValue) {
		NSString *origin = @"1522069bdf2c07b1b308bfc706dca809aebe08add506e1c308a3d1f2";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameOnValue = [self StringFromForeignerData:value];
    }
    return _kNameOnValue;
}

//: init_manager_nim_status_bar_audio_message
- (NSString *)kTitle_retireData {
    if (!_kTitle_retireData) {
		NSString *origin = @"295d078830691dc6cbc6d1bccabecbbec4c2cfbccbc6cabcd0d1bed1d2d0bcbfbecfbcbed2c1c6ccbccac2d0d0bec4c27f";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_retireData = [self StringFromForeignerData:value];
    }
    return _kTitle_retireData;
}

- (NSString *)StringFromForeignerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ForeignerDataToCache:data]];
}

- (Byte *)ForeignerDataToCache:(Byte *)data {
    int withTool = data[0];
    Byte errorTotalelligence = data[1];
    int valueAdd = data[2];
    for (int i = valueAdd; i < valueAdd + withTool; i++) {
        int value = data[i] - errorTotalelligence;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[valueAdd + withTool] = 0;
    return data + valueAdd;
}

//: retracted_message
- (NSString *)kTextCellData {
    if (!_kTextCellData) {
		NSString *origin = @"11460929cd3b82aa54b8abbab8a7a9baabaaa5b3abb9b9a7adab67";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextCellData = [self StringFromForeignerData:value];
    }
    return _kTextCellData;
}

//: init_manager_nim_status_bar_video_message
- (NSString *)kTextViewString {
    if (!_kTextViewString) {
		NSString *origin = @"294f0c3ac65734dc67747646b8bdb8c3aebcb0bdb0b6b4c1aebdb8bcaec2c3b0c3c4c2aeb1b0c1aec5b8b3b4beaebcb4c2c2b0b6b40b";
		NSData *data = [ForeignerData ForeignerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextViewString = [self StringFromForeignerData:value];
    }
    return _kTextViewString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionMsgHelper.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"
//: #import "NSString+USER.h"
#import "NSString+Turn.h"
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERMultiRetweetAttachment.h"
#import "SessionWith.h"
//: #import "USERShareCardAttachment.h"
#import "ProfitsToAttachmentColor.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"

//: @implementation USERSessionMsgConverter
@implementation TopConverter


//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)messageFor:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              tipRead:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt {
         sure:(NSString *)revokeCallbackExt {
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
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithFileData:(NSData*)data extension:(NSString*)extension{
+ (NIMMessage*)progress:(NSData*)data streetwise:(NSString*)extension{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    //: NSString *displayName;
    NSString *displayName;
    //: if (extension.length) {
    if (extension.length) {
        //: displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.MD5String,extension];
        displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.pothouse,extension];
    //: }else{
    }else{
        //: displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.MD5String];
        displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.pothouse];
    }
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kNameTextString.nominate;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)messageBar:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_audio_message"];
    message.apnsContent = [MakeManager cell:[ForeignerData sharedInstance].kTitle_retireData];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)view:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = [USERSessionMsgConverter generateUUID];
    imageObject.displayName = [TopConverter channelAlongImageUuid];
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
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [MakeManager cell:[ForeignerData sharedInstance].kName_tapTargetString];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: setting.apnsWithPrefix = [[USERBundleSetting sharedConfig] enableAPNsPrefix];
    setting.apnsWithPrefix = [[UserLabelMan user] month];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[USERBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[UserLabelMan user] titleTag];
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithFilePath:(NSString*)path{
+ (NIMMessage*)primrosePath:(NSString*)path{
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
    //: message.apnsContent = @"发来了一个文件".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kNameTextString.nominate;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.setting.apnsWithPrefix = [[USERBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[UserLabelMan user] month];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[USERBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[UserLabelMan user] titleTag];
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(USERMultiRetweetAttachment *)attachment {
+ (NIMMessage *)data:(SessionWith *)attachment {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来一段聊天记录".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kName_wheatLoopString.nominate;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[USERBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[UserLabelMan user] month];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[USERBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[UserLabelMan user] titleTag];
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage
+ (NIMMessage *)can:(NIMMessage *)revocationMessage
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.messageSubType = 20;
    message.messageSubType = 20;

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[MakeManager cell:[ForeignerData sharedInstance].kTextCellData]];

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
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".disable, obj.coverUrl];
        //: } else if ([object isKindOfClass:[NIMImageObject class]]){
        } else if ([object isKindOfClass:[NIMImageObject class]]){
            //: NIMImageObject *obj = (NIMImageObject *)object;
            NIMImageObject *obj = (NIMImageObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".disable, obj.url];
        //: } else if ([object isKindOfClass:[NIMAudioObject class]]){
        } else if ([object isKindOfClass:[NIMAudioObject class]]){
            //: NIMAudioObject *obj = (NIMAudioObject *)object;
            NIMAudioObject *obj = (NIMAudioObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".disable, obj.url];
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

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)info:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = [USERSessionMsgConverter generateUUID];
    videoObject.displayName = [TopConverter channelAlongImageUuid];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_video_message"];
    message.apnsContent = [MakeManager cell:[ForeignerData sharedInstance].kTextViewString];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithWhiteboardAttachment:(USERWhiteboardAttachment *)attachment
+ (NIMMessage*)streetwise:(MessageAttachment *)attachment
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

    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}


//: + (NSString *)generateUUID {
+ (NSString *)channelAlongImageUuid {

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

//: + (NIMMessage *)msgWithRedPacket:(USERRedPacketAttachment *)attachment
+ (NIMMessage *)red:(LabelTagContext *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: message.apnsContent = @"发来了一个红包".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kName_addEverString.nominate;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)streetSmart:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: textMessage.setting = [[NIMMessageSetting alloc] init];
    textMessage.setting = [[NIMMessageSetting alloc] init];
    //: textMessage.setting.teamReceiptEnabled = YES;
    textMessage.setting.teamReceiptEnabled = YES;

    //: textMessage.setting.apnsWithPrefix = [[USERBundleSetting sharedConfig] enableAPNsPrefix];
    textMessage.setting.apnsWithPrefix = [[UserLabelMan user] month];
    //: textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: textMessage.apnsMemberOption.forcePush = [[USERBundleSetting sharedConfig] enableTeamAPNsForce];
    textMessage.apnsMemberOption.forcePush = [[UserLabelMan user] titleTag];
    //: textMessage.env = [[USERBundleSetting sharedConfig] messageEnv];
    textMessage.env = [[UserLabelMan user] click];
    //: return textMessage;
    return textMessage;
}


//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)at:(UIImage*)image
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
   //: return [USERSessionMsgConverter generateImageMessage:imageObject];
   return [TopConverter view:imageObject];
}

//: + (NIMMessage *)msgWithShareCard:(USERShareCardAttachment *)attachment
+ (NIMMessage *)slice:(ProfitsToAttachmentColor *)attachment
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
    message.apnsContent = [ForeignerData sharedInstance].kTextDataName;

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

    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];

    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithJenKenPon:(USERJanKenPonAttachment *)attachment
+ (NIMMessage*)length:(GlossAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了猜拳信息".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kNameOnValue.nominate;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[USERBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[UserLabelMan user] month];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[USERBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[UserLabelMan user] titleTag];
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)bound:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [USERSessionMsgConverter generateImageMessage:imageObject];
    return [TopConverter view:imageObject];
}

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)content:(NSString *)tip
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
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithSnapchatAttachment:(USERSnapchatAttachment *)attachment
+ (NIMMessage*)teamImage:(DigitizerAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了阅后即焚".user_localized;
    message.apnsContent = [ForeignerData sharedInstance].kContentAtName.nominate;

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

    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];

    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRedPacketTip:(USERRedPacketTipAttachment *)attachment
+ (NIMMessage *)maxTip:(ContentAttachment *)attachment
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
    //: message.env = [[USERBundleSetting sharedConfig] messageEnv];
    message.env = [[UserLabelMan user] click];

    //: return message;
    return message;
}

//: @end
@end