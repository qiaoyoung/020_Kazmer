
#import <Foundation/Foundation.h>

@interface TroubledData : NSObject

@end

@implementation TroubledData

//: url
+ (NSString *)kTitle_consumptionShallowName {
    /* static */ NSString *kTitle_consumptionShallowName = nil;
    if (!kTitle_consumptionShallowName) {
		NSArray<NSNumber *> *origin = @[@3, @77, @13, @149, @137, @100, @27, @43, @3, @105, @241, @53, @202, @194, @191, @185, @57];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_consumptionShallowName = [self StringFromTroubledData:value];
    }
    return kTitle_consumptionShallowName;
}

//: fired
+ (NSString *)kNameScaleData {
    /* static */ NSString *kNameScaleData = nil;
    if (!kNameScaleData) {
		NSArray<NSNumber *> *origin = @[@5, @25, @6, @245, @223, @68, @127, @130, @139, @126, @125, @210];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScaleData = [self StringFromTroubledData:value];
    }
    return kNameScaleData;
}

//: md5
+ (NSString *)kName_modelCommitData {
    /* static */ NSString *kName_modelCommitData = nil;
    if (!kName_modelCommitData) {
		NSArray<NSNumber *> *origin = @[@3, @10, @11, @40, @93, @132, @221, @205, @3, @226, @20, @119, @110, @63, @17];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_modelCommitData = [self StringFromTroubledData:value];
    }
    return kName_modelCommitData;
}

//: session_snapchat_self_unread
+ (NSString *)kName_intactData {
    /* static */ NSString *kName_intactData = nil;
    if (!kName_intactData) {
		NSArray<NSNumber *> *origin = @[@28, @83, @6, @135, @17, @32, @198, @184, @198, @198, @188, @194, @193, @178, @198, @193, @180, @195, @182, @187, @180, @199, @178, @198, @184, @191, @185, @178, @200, @193, @197, @184, @180, @183, @140];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_intactData = [self StringFromTroubledData:value];
    }
    return kName_intactData;
}

//: jpg
+ (NSString *)kTitleShallowName {
    /* static */ NSString *kTitleShallowName = nil;
    if (!kTitleShallowName) {
		NSArray<NSNumber *> *origin = @[@3, @23, @7, @4, @190, @10, @63, @129, @135, @126, @64];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleShallowName = [self StringFromTroubledData:value];
    }
    return kTitleShallowName;
}

+ (NSString *)StringFromTroubledData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TroubledDataToCache:data]];
}

+ (Byte *)TroubledDataToCache:(Byte *)data {
    int installment = data[0];
    Byte withViolation = data[1];
    int ofAllTime = data[2];
    for (int i = ofAllTime; i < ofAllTime + installment; i++) {
        int value = data[i] - withViolation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ofAllTime + installment] = 0;
    return data + ofAllTime;
}

+ (NSData *)TroubledDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: type
+ (NSString *)kName_toolContent {
    /* static */ NSString *kName_toolContent = nil;
    if (!kName_toolContent) {
		NSArray<NSNumber *> *origin = @[@4, @21, @9, @117, @30, @93, @130, @181, @130, @137, @142, @133, @122, @102];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_toolContent = [self StringFromTroubledData:value];
    }
    return kName_toolContent;
}

//: session_snapchat_self_readed
+ (NSString *)kTitleMoleData {
    /* static */ NSString *kTitleMoleData = nil;
    if (!kTitleMoleData) {
		NSArray<NSNumber *> *origin = @[@28, @43, @7, @87, @168, @1, @233, @158, @144, @158, @158, @148, @154, @153, @138, @158, @153, @140, @155, @142, @147, @140, @159, @138, @158, @144, @151, @145, @138, @157, @144, @140, @143, @144, @143, @70];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMoleData = [self StringFromTroubledData:value];
    }
    return kTitleMoleData;
}

//: session_snapchat_other_readed
+ (NSString *)kTitle_normalFileString {
    /* static */ NSString *kTitle_normalFileString = nil;
    if (!kTitle_normalFileString) {
		NSArray<NSNumber *> *origin = @[@29, @1, @10, @144, @109, @141, @146, @157, @62, @40, @116, @102, @116, @116, @106, @112, @111, @96, @116, @111, @98, @113, @100, @105, @98, @117, @96, @112, @117, @105, @102, @115, @96, @115, @102, @98, @101, @102, @101, @97];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_normalFileString = [self StringFromTroubledData:value];
    }
    return kTitle_normalFileString;
}

//: session_snapchat_other_unread
+ (NSString *)kContentToString {
    /* static */ NSString *kContentToString = nil;
    if (!kContentToString) {
		NSArray<NSNumber *> *origin = @[@29, @26, @13, @102, @169, @225, @197, @27, @248, @23, @52, @53, @30, @141, @127, @141, @141, @131, @137, @136, @121, @141, @136, @123, @138, @125, @130, @123, @142, @121, @137, @142, @130, @127, @140, @121, @143, @136, @140, @127, @123, @126, @224];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentToString = [self StringFromTroubledData:value];
    }
    return kContentToString;
}

//: HEIC
+ (NSString *)kText_seeminglyString {
    /* static */ NSString *kText_seeminglyString = nil;
    if (!kText_seeminglyString) {
		NSArray<NSNumber *> *origin = @[@4, @78, @8, @60, @185, @84, @142, @14, @150, @147, @151, @145, @86];
		NSData *data = [TroubledData TroubledDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_seeminglyString = [self StringFromTroubledData:value];
    }
    return kText_seeminglyString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import "NSData+USER.h"
#import "NSData+Turn.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"

//: @interface USERSnapchatAttachment()
@interface DigitizerAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation USERSnapchatAttachment
@implementation DigitizerAttachment

//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)monthTap{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:[TroubledData kTitle_normalFileString]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:[TroubledData kContentToString]];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:[TroubledData kTitleMoleData]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:[TroubledData kName_intactData]];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self monthTap];
    }
}

//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}


//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self monthTap];
    }
}


//: - (BOOL)canBeForwarded
- (BOOL)pop
{
    //: return NO;
    return NO;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self format];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)reply:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:[TroubledData kName_toolContent]];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:[TroubledData kName_modelCommitData]];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:[TroubledData kNameScaleData]];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:[TroubledData kTitle_consumptionShallowName]];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:@"data"];

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

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self monthTap];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setKind:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:[TroubledData kText_seeminglyString]]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData ticket];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self format]
               //: atomically:YES];
               atomically:YES];
     }
}



//: - (void)setImage:(UIImage *)image
- (void)setMedia:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data ticket];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self format]
           //: atomically:YES];
           atomically:YES];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)actionRecent:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"USERSessionSnapchatContentView";
    return @"RowContentView";
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: - (NSString *)filepath
- (NSString *)format
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",([TroubledData kTitleShallowName])];
    //: return [USERFileLocationHelper filepathForImage:filename];
    return [DisplayHelper checkSumoMessage:filename];
}


//: - (BOOL)canBeRevoked
- (BOOL)cover
{
    //: return YES;
    return YES;
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}

//: @end
@end
//: __SAVE__ ignore_string [410.4]