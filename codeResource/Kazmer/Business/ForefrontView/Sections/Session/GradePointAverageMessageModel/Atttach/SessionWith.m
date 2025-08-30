
#import <Foundation/Foundation.h>
typedef struct {
    Byte imageFrame;
    Byte *grayItem;
    unsigned int quantityactStep;
    Byte meanSun;
	int nonaccomplishment;
	int itemViolence;
} StandardData;

NSString *StringFromStandardData(StandardData *data);


//: type
StandardData kContentDoingData = (StandardData){124, (Byte []){8, 5, 12, 25, 107}, 4, 253, 244, 19};

//: url
StandardData kTitleDateFrameValue = (StandardData){128, (Byte []){245, 242, 236, 110}, 3, 248, 66, 58};

//: sender
StandardData kContentToolValue = (StandardData){172, (Byte []){223, 201, 194, 200, 201, 222, 74}, 6, 207, 84, 122};

//: sessionId
StandardData kTitlePorchData = (StandardData){211, (Byte []){160, 182, 160, 160, 186, 188, 189, 154, 183, 40}, 9, 234, 31, 134};

//: fileName
StandardData kContentKeyValue = (StandardData){4, (Byte []){98, 109, 104, 97, 74, 101, 105, 97, 122}, 8, 224, 234, 16};

//: encrypted
StandardData kContent_wheatString = (StandardData){199, (Byte []){162, 169, 164, 181, 190, 183, 179, 162, 163, 204}, 9, 170, 241, 207};

//: compressed
StandardData kText_nonprofitRawData = (StandardData){235, (Byte []){136, 132, 134, 155, 153, 142, 152, 152, 142, 143, 233}, 10, 177, 14, 209};

//: messageAbstract
StandardData kName_selectedValue = (StandardData){238, (Byte []){131, 139, 157, 157, 143, 137, 139, 175, 140, 157, 154, 156, 143, 141, 154, 205}, 15, 191, 129, 130};

//: 聊天记录
StandardData kNameNimFileData = (StandardData){18, (Byte []){250, 147, 152, 247, 182, 187, 250, 188, 162, 247, 175, 135, 98}, 12, 238, 110, 71};

//: null
StandardData kTitleShowCellString = (StandardData){117, (Byte []){27, 0, 25, 25, 152}, 4, 239, 94, 238};

//: password
StandardData kTitleEverString = (StandardData){222, (Byte []){174, 191, 173, 173, 169, 177, 172, 186, 222}, 8, 250, 67, 177};

//: sessionName
StandardData kName_hideKnowTextData = (StandardData){84, (Byte []){39, 49, 39, 39, 61, 59, 58, 26, 53, 57, 49, 9}, 11, 231, 223, 208};

//: md5
StandardData kTitle_securityValue = (StandardData){80, (Byte []){61, 52, 101, 199}, 3, 177, 13, 245};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionWith.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMultiRetweetAttachment.h"
#import "SessionWith.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "NSDictionary+USERJson.h"
#import "NSDictionary+ControlJson.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "USERMessageUtil.h"
#import "PrimrosePathUtil.h"
//: #import "DisplayInputEmoticonParser.h"
#import "MessageParser.h"

//: @interface USERMultiRetweetAttachment ()
@interface SessionWith ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) LabelNameScrollView *label;

//: @end
@end

//: @implementation USERMultiRetweetAttachment
@implementation SessionWith

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
                //: USERMessageAbstract *abstract = [USERMessageAbstract abstractWithDictionary:obj];
                ReckonAbstract *abstract = [ReckonAbstract date:obj];
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
- (NSString *)lab {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".user_localized];
            StringFromStandardData(&kNameNimFileData).nominate];
}

//: - (M80AttributedLabel *)label {
- (LabelNameScrollView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
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

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)actionRecent:(NIMMessage *)message {
    //: return @"USERSessionMultiRetweetContentView";
    return @"ChangeViewControl";
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

//: - (BOOL)canBeRevoked {
- (BOOL)cover {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)pop {
    //: return YES;
    return YES;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)reply:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (void)setAbstracts:(NSMutableArray<USERMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<ReckonAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (USERMessageAbstract *obj in abstracts) {
    for (ReckonAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj center];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [USERFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [DisplayHelper visualImage:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)formatAbstractMessage:(USERMessageAbstract *)abstract {
- (NSString *)tingTime:(ReckonAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[StringFromStandardData(&kTitleDateFrameValue)] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[StringFromStandardData(&kTitle_securityValue)] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[StringFromStandardData(&kContentKeyValue)] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[StringFromStandardData(&kText_nonprofitRawData)] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[StringFromStandardData(&kContent_wheatString)] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[StringFromStandardData(&kTitleEverString)] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[StringFromStandardData(&kName_selectedValue)] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[StringFromStandardData(&kName_hideKnowTextData)] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[StringFromStandardData(&kTitlePorchData)] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{StringFromStandardData(&kContentDoingData) : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           @"data" : dataDic};
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

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self lab];
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
    //: CGSize subTitleSize = [@"聊天记录".user_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [StringFromStandardData(&kNameNimFileData).nominate boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (USERMessageAbstract *abs in _abstracts) {
    for (ReckonAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label deleteVoice:[self tingTime:abs]];
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

//: @end
@end

//: #pragma mark - USERMessageAbstract
#pragma mark - ReckonAbstract


//: @implementation USERMessageAbstract
@implementation ReckonAbstract

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)digitiser:(NIMMessage *)message {
    //: NSString *msg = [USERMessageUtil messageContent:message];
    NSString *msg = [PrimrosePathUtil status:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[DisplayInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[MessageParser item] show:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (TextPage *token in tokens) { //防止emoji表情被截断
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

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)center {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[StringFromStandardData(&kContentToolValue)] = _sender;
        //: dic[@"message"] = _message;
        dic[@"message"] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)team:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: USERMessageAbstract *ret = [[USERMessageAbstract alloc] init];
    ReckonAbstract *ret = [[ReckonAbstract alloc] init];
    //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: DisplayKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    CancelTeamCorner *info = [[Mortification text].provider tingVoice:message.from keepingOption:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: StringFromStandardData(&kTitleShowCellString);
    //: ret.message = [ret abstract:message];
    ret.message = [ret digitiser:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)date:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: USERMessageAbstract *ret = [[USERMessageAbstract alloc] init];
    ReckonAbstract *ret = [[ReckonAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content changeRange:StringFromStandardData(&kContentToolValue)];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content changeRange:@"message"];
    //: return ret;
    return ret;
}

//: @end
@end
//: __SAVE__ ignore_string [410.4,741.7]

Byte *StandardDataToByte(StandardData *data) {
    if (data->meanSun < 113) return data->grayItem;
    for (int i = 0; i < data->quantityactStep; i++) {
        data->grayItem[i] ^= data->imageFrame;
    }
    data->grayItem[data->quantityactStep] = 0;
    data->meanSun = 75;
	if (data->quantityactStep >= 2) {
		data->nonaccomplishment = data->grayItem[0];
		data->itemViolence = data->grayItem[1];
	}
    return data->grayItem;
}

NSString *StringFromStandardData(StandardData *data) {
    return [NSString stringWithUTF8String:(char *)StandardDataToByte(data)];
}
