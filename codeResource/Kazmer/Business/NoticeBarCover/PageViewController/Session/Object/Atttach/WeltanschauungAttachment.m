
#import <Foundation/Foundation.h>

@interface EverythingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EverythingData

+ (instancetype)sharedInstance {
    static EverythingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EverythingDataToCache:(Byte *)data {
    int titlePetition = data[0];
    Byte thresh = data[1];
    int diskRna = data[2];
    for (int i = diskRna; i < diskRna + titlePetition; i++) {
        int value = data[i] + thresh;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[diskRna + titlePetition] = 0;
    return data + diskRna;
}

- (NSString *)StringFromEverythingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EverythingDataToCache:data]];
}

//: HEIC
- (NSString *)mEmployGarlicStr {
    /* static */ NSString *mEmployGarlicStr = nil;
    if (!mEmployGarlicStr) {
        Byte value[] = {4, 34, 3, 38, 35, 39, 33, 81};
        mEmployGarlicStr = [self StringFromEverythingData:value];
    }
    return mEmployGarlicStr;
}

//: session_snapchat_other_readed
- (NSString *)dreamHunterStr {
    /* static */ NSString *dreamHunterStr = nil;
    if (!dreamHunterStr) {
        Byte value[] = {29, 73, 8, 6, 192, 128, 230, 134, 42, 28, 42, 42, 32, 38, 37, 22, 42, 37, 24, 39, 26, 31, 24, 43, 22, 38, 43, 31, 28, 41, 22, 41, 28, 24, 27, 28, 27, 100};
        dreamHunterStr = [self StringFromEverythingData:value];
    }
    return dreamHunterStr;
}

//: type
- (NSString *)app_bidScramMsg {
    /* static */ NSString *app_bidScramMsg = nil;
    if (!app_bidScramMsg) {
        Byte value[] = {4, 8, 4, 21, 108, 113, 104, 93, 244};
        app_bidScramMsg = [self StringFromEverythingData:value];
    }
    return app_bidScramMsg;
}

//: session_snapchat_other_unread
- (NSString *)dream_capitalValue {
    /* static */ NSString *dream_capitalValue = nil;
    if (!dream_capitalValue) {
        Byte value[] = {29, 96, 12, 107, 173, 166, 136, 22, 189, 99, 165, 190, 19, 5, 19, 19, 9, 15, 14, 255, 19, 14, 1, 16, 3, 8, 1, 20, 255, 15, 20, 8, 5, 18, 255, 21, 14, 18, 5, 1, 4, 158};
        dream_capitalValue = [self StringFromEverythingData:value];
    }
    return dream_capitalValue;
}

//: md5
- (NSString *)k_barName {
    /* static */ NSString *k_barName = nil;
    if (!k_barName) {
        Byte value[] = {3, 6, 13, 243, 122, 129, 212, 125, 116, 16, 15, 245, 2, 103, 94, 47, 87};
        k_barName = [self StringFromEverythingData:value];
    }
    return k_barName;
}

//: data
- (NSString *)user_nuclearUrl {
    /* static */ NSString *user_nuclearUrl = nil;
    if (!user_nuclearUrl) {
        Byte value[] = {4, 84, 13, 250, 48, 203, 232, 87, 197, 134, 223, 205, 61, 16, 13, 32, 13, 108};
        user_nuclearUrl = [self StringFromEverythingData:value];
    }
    return user_nuclearUrl;
}

//: session_snapchat_self_readed
- (NSString *)dream_endMindTitle {
    /* static */ NSString *dream_endMindTitle = nil;
    if (!dream_endMindTitle) {
        Byte value[] = {28, 14, 9, 234, 239, 107, 218, 163, 8, 101, 87, 101, 101, 91, 97, 96, 81, 101, 96, 83, 98, 85, 90, 83, 102, 81, 101, 87, 94, 88, 81, 100, 87, 83, 86, 87, 86, 194};
        dream_endMindTitle = [self StringFromEverythingData:value];
    }
    return dream_endMindTitle;
}

//: url
- (NSString *)k_conductData {
    /* static */ NSString *k_conductData = nil;
    if (!k_conductData) {
        Byte value[] = {3, 2, 10, 222, 100, 3, 21, 101, 3, 99, 115, 112, 106, 231};
        k_conductData = [self StringFromEverythingData:value];
    }
    return k_conductData;
}

//: session_snapchat_self_unread
- (NSString *)main_twistId {
    /* static */ NSString *main_twistId = nil;
    if (!main_twistId) {
        Byte value[] = {28, 76, 11, 15, 213, 118, 163, 136, 185, 168, 11, 39, 25, 39, 39, 29, 35, 34, 19, 39, 34, 21, 36, 23, 28, 21, 40, 19, 39, 25, 32, 26, 19, 41, 34, 38, 25, 21, 24, 45};
        main_twistId = [self StringFromEverythingData:value];
    }
    return main_twistId;
}

//: fired
- (NSString *)mPotData {
    /* static */ NSString *mPotData = nil;
    if (!mPotData) {
        Byte value[] = {5, 22, 10, 115, 178, 24, 89, 17, 161, 42, 80, 83, 92, 79, 78, 187};
        mPotData = [self StringFromEverythingData:value];
    }
    return mPotData;
}

//: jpg
- (NSString *)appHostaValue {
    /* static */ NSString *appHostaValue = nil;
    if (!appHostaValue) {
        Byte value[] = {3, 43, 13, 151, 255, 62, 87, 3, 28, 63, 152, 32, 179, 63, 69, 60, 89};
        appHostaValue = [self StringFromEverythingData:value];
    }
    return appHostaValue;
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
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import "NSData+NTES.h"
#import "NSData+Zone.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @interface NTESSnapchatAttachment()
@interface WeltanschauungAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation WeltanschauungAttachment

//: - (void)setImage:(UIImage *)image
- (void)setSetBorder:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data flip];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self reply]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setBasic:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:[[EverythingData sharedInstance] mEmployGarlicStr]]) {
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
        self.md5 = [jpgData flip];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self reply]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self clean];
    }
}


//: - (NSString *)filepath
- (NSString *)reply
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",([[EverythingData sharedInstance] appHostaValue])];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [RegisterColor be:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)select:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"MakeNameView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)fingertip:(NIMMessage *)message
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

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self clean];
    }
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
    //: return YES;
    return YES;
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
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:[[EverythingData sharedInstance] app_bidScramMsg]];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:[[EverythingData sharedInstance] k_barName]];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:[[EverythingData sharedInstance] mPotData]];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:[[EverythingData sharedInstance] k_conductData]];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:[[EverythingData sharedInstance] user_nuclearUrl]];

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


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self reply];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)clean{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:[[EverythingData sharedInstance] dreamHunterStr]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:[[EverythingData sharedInstance] dream_capitalValue]];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:[[EverythingData sharedInstance] dream_endMindTitle]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:[[EverythingData sharedInstance] main_twistId]];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self clean];
    }
    //: return _showCoverImage;
    return _showCoverImage;
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

//: @end
@end