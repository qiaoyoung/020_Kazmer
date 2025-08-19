
#import <Foundation/Foundation.h>

@interface HaveData : NSObject

@end

@implementation HaveData

+ (Byte *)HaveDataToCache:(Byte *)data {
    int meaning = data[0];
    Byte freedView = data[1];
    int disk = data[2];
    for (int i = disk; i < disk + meaning; i++) {
        int value = data[i] + freedView;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[disk + meaning] = 0;
    return data + disk;
}

+ (NSString *)StringFromHaveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HaveDataToCache:data]];
}

//: sessionId
+ (NSString *)mainTextData {
    /* static */ NSString *mainTextData = nil;
    if (!mainTextData) {
        Byte value[] = {9, 21, 4, 102, 94, 80, 94, 94, 84, 90, 89, 52, 79, 197};
        mainTextData = [self StringFromHaveData:value];
    }
    return mainTextData;
}

//: 聊天记录
+ (NSString *)dream_hostaMsg {
    /* static */ NSString *dream_hostaMsg = nil;
    if (!dream_hostaMsg) {
        Byte value[] = {12, 24, 6, 35, 69, 170, 208, 105, 114, 205, 140, 145, 208, 150, 152, 205, 165, 125, 38};
        dream_hostaMsg = [self StringFromHaveData:value];
    }
    return dream_hostaMsg;
}

//: data
+ (NSString *)mainEnvelopeFormat {
    /* static */ NSString *mainEnvelopeFormat = nil;
    if (!mainEnvelopeFormat) {
        Byte value[] = {4, 83, 11, 21, 246, 75, 186, 145, 172, 96, 213, 17, 14, 33, 14, 226};
        mainEnvelopeFormat = [self StringFromHaveData:value];
    }
    return mainEnvelopeFormat;
}

//: sender
+ (NSString *)noti_nameValue {
    /* static */ NSString *noti_nameValue = nil;
    if (!noti_nameValue) {
        Byte value[] = {6, 40, 6, 196, 234, 149, 75, 61, 70, 60, 61, 74, 244};
        noti_nameValue = [self StringFromHaveData:value];
    }
    return noti_nameValue;
}

//: password
+ (NSString *)mainPublisherId {
    /* static */ NSString *mainPublisherId = nil;
    if (!mainPublisherId) {
        Byte value[] = {8, 20, 9, 146, 44, 171, 6, 119, 250, 92, 77, 95, 95, 99, 91, 94, 80, 79};
        mainPublisherId = [self StringFromHaveData:value];
    }
    return mainPublisherId;
}

//: sessionName
+ (NSString *)showLoserStr {
    /* static */ NSString *showLoserStr = nil;
    if (!showLoserStr) {
        Byte value[] = {11, 80, 11, 91, 195, 3, 113, 174, 153, 20, 179, 35, 21, 35, 35, 25, 31, 30, 254, 17, 29, 21, 3};
        showLoserStr = [self StringFromHaveData:value];
    }
    return showLoserStr;
}

//: md5
+ (NSString *)m_optHoppingAttendancePath {
    /* static */ NSString *m_optHoppingAttendancePath = nil;
    if (!m_optHoppingAttendancePath) {
        Byte value[] = {3, 37, 9, 99, 71, 108, 41, 83, 158, 72, 63, 16, 32};
        m_optHoppingAttendancePath = [self StringFromHaveData:value];
    }
    return m_optHoppingAttendancePath;
}

//: message
+ (NSString *)notiUserSexyIdent {
    /* static */ NSString *notiUserSexyIdent = nil;
    if (!notiUserSexyIdent) {
        Byte value[] = {7, 15, 4, 173, 94, 86, 100, 100, 82, 88, 86, 86};
        notiUserSexyIdent = [self StringFromHaveData:value];
    }
    return notiUserSexyIdent;
}

//: encrypted
+ (NSString *)show_meaningStr {
    /* static */ NSString *show_meaningStr = nil;
    if (!show_meaningStr) {
        Byte value[] = {9, 11, 12, 24, 231, 96, 234, 124, 182, 38, 13, 82, 90, 99, 88, 103, 110, 101, 105, 90, 89, 63};
        show_meaningStr = [self StringFromHaveData:value];
    }
    return show_meaningStr;
}

//: messageAbstract
+ (NSString *)appNameContent {
    /* static */ NSString *appNameContent = nil;
    if (!appNameContent) {
        Byte value[] = {15, 55, 3, 54, 46, 60, 60, 42, 48, 46, 10, 43, 60, 61, 59, 42, 44, 61, 43};
        appNameContent = [self StringFromHaveData:value];
    }
    return appNameContent;
}

//: null
+ (NSString *)userSendMessage {
    /* static */ NSString *userSendMessage = nil;
    if (!userSendMessage) {
        Byte value[] = {4, 90, 12, 71, 89, 81, 252, 76, 102, 248, 218, 39, 20, 27, 18, 18, 158};
        userSendMessage = [self StringFromHaveData:value];
    }
    return userSendMessage;
}

//: type
+ (NSString *)dream_lagData {
    /* static */ NSString *dream_lagData = nil;
    if (!dream_lagData) {
        Byte value[] = {4, 32, 9, 192, 230, 178, 231, 188, 106, 84, 89, 80, 69, 102};
        dream_lagData = [self StringFromHaveData:value];
    }
    return dream_lagData;
}

//: fileName
+ (NSString *)dream_viewMessage {
    /* static */ NSString *dream_viewMessage = nil;
    if (!dream_viewMessage) {
        Byte value[] = {8, 79, 5, 135, 182, 23, 26, 29, 22, 255, 18, 30, 22, 108};
        dream_viewMessage = [self StringFromHaveData:value];
    }
    return dream_viewMessage;
}

//: url
+ (NSString *)app_powerData {
    /* static */ NSString *app_powerData = nil;
    if (!app_powerData) {
        Byte value[] = {3, 29, 10, 97, 254, 154, 253, 106, 217, 56, 88, 85, 79, 178};
        app_powerData = [self StringFromHaveData:value];
    }
    return app_powerData;
}

//: compressed
+ (NSString *)dreamCornerId {
    /* static */ NSString *dreamCornerId = nil;
    if (!dreamCornerId) {
        Byte value[] = {10, 71, 11, 203, 198, 121, 122, 125, 30, 174, 39, 28, 40, 38, 41, 43, 30, 44, 44, 30, 29, 129};
        dreamCornerId = [self StringFromHaveData:value];
    }
    return dreamCornerId;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowImageEvent.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+ValueJson.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "NTESMessageUtil.h"
#import "NonsolidColorView.h"
//: #import "WatchInputEmoticonParser.h"
#import "ImageShowParser.h"

//: @interface NTESMultiRetweetAttachment ()
@interface ShowImageEvent ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) QuickNameView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation ShowImageEvent

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[[HaveData app_powerData]] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[[HaveData m_optHoppingAttendancePath]] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[[HaveData dream_viewMessage]] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[[HaveData dreamCornerId]] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[[HaveData show_meaningStr]] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[[HaveData mainPublisherId]] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[[HaveData appNameContent]] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[[HaveData showLoserStr]] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[[HaveData mainTextData]] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{[HaveData dream_lagData] : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           [HaveData mainEnvelopeFormat] : dataDic};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }


    //: return content;
    return content;
}

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<NameAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (NameAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj name];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                NameAbstract *abstract = [NameAbstract by:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)byPressed {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            [HaveData dream_hostaMsg].textIndex];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)pathView:(NameAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)select:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"TotalerchangeControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self byPressed];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [[HaveData dream_hostaMsg].textIndex boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (NameAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label stay:[self pathView:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)fingertip:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)behindInfo {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)preserve {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [RegisterColor nameFile:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (QuickNameView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[QuickNameView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - NameAbstract


//: @implementation NTESMessageAbstract
@implementation NameAbstract

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)name {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[[HaveData noti_nameValue]] = _sender;
        //: dic[@"message"] = _message;
        dic[[HaveData notiUserSexyIdent]] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)emptyMessage:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    NameAbstract *ret = [[NameAbstract alloc] init];
    //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: WatchKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    TingMessage *info = [[ButtonKit sheerOption].provider past:message.from skinColour_strong:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: [HaveData userSendMessage];
    //: ret.message = [ret abstract:message];
    ret.message = [ret title:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)by:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    NameAbstract *ret = [[NameAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content keyJson:[HaveData noti_nameValue]];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content keyJson:[HaveData notiUserSexyIdent]];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)title:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [NonsolidColorView randomDown:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[WatchInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[ImageShowParser independent] asRangeTokens:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (EdgeModeName *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end
