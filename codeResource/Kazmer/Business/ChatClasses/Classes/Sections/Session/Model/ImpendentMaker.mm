
#import <Foundation/Foundation.h>

typedef struct {
    Byte aboveUniversity;
    Byte *nowherePetition;
    unsigned int guidanceMusical;
	int tour;
	int developmental;
	int centerFishingScribe;
} StructSubstanceData;

@interface SubstanceData : NSObject

@end

@implementation SubstanceData

+ (Byte *)SubstanceDataToByte:(StructSubstanceData *)data {
    for (int i = 0; i < data->guidanceMusical; i++) {
        data->nowherePetition[i] ^= data->aboveUniversity;
    }
    data->nowherePetition[data->guidanceMusical] = 0;
	if (data->guidanceMusical >= 3) {
		data->tour = data->nowherePetition[0];
		data->developmental = data->nowherePetition[1];
		data->centerFishingScribe = data->nowherePetition[2];
	}
    return data->nowherePetition;
}

+ (NSString *)StringFromSubstanceData:(StructSubstanceData *)data {
    return [NSString stringWithUTF8String:(char *)[self SubstanceDataToByte:data]];
}

//: 发来了一段视频
+ (NSString *)kTimeAdvanceNeatData {
    /* static */ NSString *kTimeAdvanceNeatData = nil;
    if (!kTimeAdvanceNeatData) {
        StructSubstanceData value = (StructSubstanceData){41, (Byte []){204, 166, 184, 207, 180, 140, 205, 147, 175, 205, 145, 169, 207, 135, 156, 193, 142, 175, 192, 139, 184, 252}, 21, 91, 168, 112};
        kTimeAdvanceNeatData = [self StringFromSubstanceData:&value];
    }
    return kTimeAdvanceNeatData;
}

//: key
+ (NSString *)mainAblyFormat {
    /* static */ NSString *mainAblyFormat = nil;
    if (!mainAblyFormat) {
        StructSubstanceData value = (StructSubstanceData){20, (Byte []){127, 113, 109, 6}, 3, 38, 102, 6};
        mainAblyFormat = [self StringFromSubstanceData:&value];
    }
    return mainAblyFormat;
}

//: nim_test_msg_env
+ (NSString *)m_countIdent {
    /* static */ NSString *m_countIdent = nil;
    if (!m_countIdent) {
        StructSubstanceData value = (StructSubstanceData){89, (Byte []){55, 48, 52, 6, 45, 60, 42, 45, 6, 52, 42, 62, 6, 60, 55, 47, 39}, 16, 100, 245, 87};
        m_countIdent = [self StringFromSubstanceData:&value];
    }
    return m_countIdent;
}

//: value
+ (NSString *)noti_eaterFormat {
    /* static */ NSString *noti_eaterFormat = nil;
    if (!noti_eaterFormat) {
        StructSubstanceData value = (StructSubstanceData){65, (Byte []){55, 32, 45, 52, 36, 96}, 5, 75, 153, 30};
        noti_eaterFormat = [self StringFromSubstanceData:&value];
    }
    return noti_eaterFormat;
}

//: apns-collapse-id
+ (NSString *)main_scribeMessage {
    /* static */ NSString *main_scribeMessage = nil;
    if (!main_scribeMessage) {
        StructSubstanceData value = (StructSubstanceData){71, (Byte []){38, 55, 41, 52, 106, 36, 40, 43, 43, 38, 55, 52, 34, 106, 46, 35, 120}, 16, 53, 76, 83};
        main_scribeMessage = [self StringFromSubstanceData:&value];
    }
    return main_scribeMessage;
}

//: init_manager_nim_status_bar_image_message
+ (NSString *)dreamPreparationMessage {
    /* static */ NSString *dreamPreparationMessage = nil;
    if (!dreamPreparationMessage) {
        StructSubstanceData value = (StructSubstanceData){163, (Byte []){202, 205, 202, 215, 252, 206, 194, 205, 194, 196, 198, 209, 252, 205, 202, 206, 252, 208, 215, 194, 215, 214, 208, 252, 193, 194, 209, 252, 202, 206, 194, 196, 198, 252, 206, 198, 208, 208, 194, 196, 198, 27}, 41, 147, 28, 34};
        dreamPreparationMessage = [self StringFromSubstanceData:&value];
    }
    return dreamPreparationMessage;
}

//: 你收到了一条快捷评论
+ (NSString *)show_virtueUrl {
    /* static */ NSString *show_virtueUrl = nil;
    if (!show_virtueUrl) {
        StructSubstanceData value = (StructSubstanceData){198, (Byte []){34, 123, 102, 32, 82, 112, 35, 78, 118, 34, 124, 64, 34, 126, 70, 32, 91, 103, 35, 121, 109, 32, 75, 113, 46, 105, 66, 46, 104, 124, 203}, 30, 202, 95, 156};
        show_virtueUrl = [self StringFromSubstanceData:&value];
    }
    return show_virtueUrl;
}

//: 发来了一段语音
+ (NSString *)mainAcademicMsg {
    /* static */ NSString *mainAcademicMsg = nil;
    if (!mainAcademicMsg) {
        StructSubstanceData value = (StructSubstanceData){171, (Byte []){78, 36, 58, 77, 54, 14, 79, 17, 45, 79, 19, 43, 77, 5, 30, 67, 4, 6, 66, 52, 24, 100}, 21, 167, 131, 65};
        mainAcademicMsg = [self StringFromSubstanceData:&value];
    }
    return mainAcademicMsg;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageMaker.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageMaker.h"
#import "ImpendentMaker.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFInputAtCache.h"
#import "TimeCache.h"

//: NSString * generateUUID(void) {
NSString * videoName(void) {
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

//: @implementation FFFMessageMaker
@implementation ImpendentMaker

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)colorColumn:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self constituentFilter:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)info:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = [SubstanceData mainAcademicMsg].messageWith;
    //: [self setupMessage:message];
    [self constituentFilter:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)video:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = videoName();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = [SubstanceData kTimeAdvanceNeatData].messageWith;
    //: [self setupMessage:message];
    [self constituentFilter:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)source:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ImpendentMaker broilParent:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)fortSession:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ImpendentMaker broilParent:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)noWill:(NSData *)data model_strong:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ImpendentMaker broilParent:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)broilParent:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = videoName();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [PaintedNaturalLanguageTo exhibit:[SubstanceData dreamPreparationMessage]];
    //: [self setupMessage:message];
    [self constituentFilter:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)constituentFilter:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        [SubstanceData main_scribeMessage]: message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:[SubstanceData m_countIdent]];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation QuickMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)successUserText:(int64_t)type
                             //: content:(NSString *)content
                             valueTingClean:(NSString *)content
                                 //: ext:(NSString *)ext
                                 last:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = [SubstanceData show_virtueUrl];
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        [SubstanceData mainAblyFormat] : [SubstanceData noti_eaterFormat]
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end