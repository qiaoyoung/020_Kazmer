
#import <Foundation/Foundation.h>

NSString *StringFromBeautyData(Byte *data);


//: init_manager_nim_status_bar_image_message
Byte kNameSkirtDistributeValue[] = {78, 41, 96, 13, 16, 191, 168, 76, 202, 20, 133, 152, 253, 201, 206, 201, 212, 191, 205, 193, 206, 193, 199, 197, 210, 191, 206, 201, 205, 191, 211, 212, 193, 212, 213, 211, 191, 194, 193, 210, 191, 201, 205, 193, 199, 197, 191, 205, 197, 211, 211, 193, 199, 197, 167};

//: 你收到了一条快捷评论
Byte kTitleTeamOriginallyString[] = {70, 30, 7, 10, 132, 151, 65, 67, 80, 247, 235, 196, 167, 237, 155, 189, 236, 143, 183, 235, 193, 141, 235, 191, 135, 237, 164, 168, 236, 198, 178, 237, 148, 190, 239, 182, 139, 239, 181, 193, 129};

//: 发来了一段语音
Byte kTitle_lastSwitchusName[] = {58, 21, 26, 6, 161, 20, 255, 169, 171, 0, 183, 191, 254, 212, 160, 254, 210, 154, 0, 200, 207, 2, 201, 199, 3, 185, 205, 190};

//: 发来了一段视频
Byte kTitle_ratherData[] = {13, 21, 76, 10, 14, 109, 27, 127, 196, 80, 49, 219, 221, 50, 233, 241, 48, 6, 210, 48, 4, 204, 50, 250, 1, 52, 243, 210, 53, 238, 221, 176};

//: nim_test_msg_env
Byte kContent_commandString[] = {65, 16, 49, 6, 214, 13, 159, 154, 158, 144, 165, 150, 164, 165, 144, 158, 164, 152, 144, 150, 159, 167, 233};

//: apns-collapse-id
Byte kTextBronzeData[] = {8, 16, 74, 8, 46, 20, 68, 192, 171, 186, 184, 189, 119, 173, 185, 182, 182, 171, 186, 189, 175, 119, 179, 174, 89};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayMessageMaker.m
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayMessageMaker.h"
#import "ShouldMaker.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayInputAtCache.h"
#import "LabelSizeImage.h"

//: NSString * generateUUID(void) {
NSString * dataDocument(void) {
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

//: @implementation DisplayMessageMaker
@implementation ShouldMaker

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)file:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self womanizer:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)data:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = StringFromBeautyData(kTitle_lastSwitchusName).disable;
    //: [self setupMessage:message];
    [self womanizer:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)line:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = dataDocument();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = StringFromBeautyData(kTitle_ratherData).disable;
    //: [self setupMessage:message];
    [self womanizer:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)select:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [DisplayMessageMaker generateImageMessage:imageObject];
    return [ShouldMaker bottom:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)pin:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [DisplayMessageMaker generateImageMessage:imageObject];
    return [ShouldMaker bottom:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)naturalLanguageTing:(NSData *)data simulationExtension:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [DisplayMessageMaker generateImageMessage:imageObject];
    return [ShouldMaker bottom:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)bottom:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = dataDocument();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [DisplayLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [MakeManager cell:StringFromBeautyData(kNameSkirtDistributeValue)];
    //: [self setupMessage:message];
    [self womanizer:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)womanizer:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        StringFromBeautyData(kTextBronzeData): message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromBeautyData(kContent_commandString)];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation GrowingColor

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)scale:(int64_t)type
                             //: content:(NSString *)content
                             top:(NSString *)content
                                 //: ext:(NSString *)ext
                                 noticeParentName:(NSString *)ext
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
    setting.pushTitle = StringFromBeautyData(kTitleTeamOriginallyString);
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        @"key" : @"value"
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
//: __SAVE__ ignore_string [541.5,329.3]

Byte * BeautyDataToCache(Byte *data) {
    int retiredClimate = data[0];
    int genialTeach = data[1];
    Byte satisfy = data[2];
    int sight = data[3];
    if (!retiredClimate) return data + sight;
    for (int i = sight; i < sight + genialTeach; i++) {
        int value = data[i] - satisfy;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sight + genialTeach] = 0;
    return data + sight;
}

NSString *StringFromBeautyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BeautyDataToCache(data)];
}
