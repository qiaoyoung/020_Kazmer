
#import <Foundation/Foundation.h>

@interface HistoryConventData : NSObject

@end

@implementation HistoryConventData

+ (Byte *)HistoryConventDataToCache:(Byte *)data {
    int snowyHeron = data[0];
    int informative = data[1];
    for (int i = 0; i < snowyHeron / 2; i++) {
        int begin = informative + i;
        int end = informative + snowyHeron - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[informative + snowyHeron] = 0;
    return data + informative;
}

+ (NSString *)StringFromHistoryConventData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HistoryConventDataToCache:data]];
}  

//: title
+ (NSString *)m_colorImageFormat {
    /* static */ NSString *m_colorImageFormat = nil;
    if (!m_colorImageFormat) {
        Byte value[] = {5, 8, 102, 53, 155, 221, 93, 2, 101, 108, 116, 105, 116, 38};
        m_colorImageFormat = [self StringFromHistoryConventData:value];
    }
    return m_colorImageFormat;
}

//: data
+ (NSString *)dreamDestinationData {
    /* static */ NSString *dreamDestinationData = nil;
    if (!dreamDestinationData) {
        Byte value[] = {4, 6, 50, 101, 203, 15, 97, 116, 97, 100, 72};
        dreamDestinationData = [self StringFromHistoryConventData:value];
    }
    return dreamDestinationData;
}

//: content
+ (NSString *)userCollectorData {
    /* static */ NSString *userCollectorData = nil;
    if (!userCollectorData) {
        Byte value[] = {7, 12, 107, 136, 188, 134, 174, 136, 67, 56, 59, 229, 116, 110, 101, 116, 110, 111, 99, 44};
        userCollectorData = [self StringFromHistoryConventData:value];
    }
    return userCollectorData;
}

//: personCardId
+ (NSString *)dreamTableTitle {
    /* static */ NSString *dreamTableTitle = nil;
    if (!dreamTableTitle) {
        Byte value[] = {12, 7, 150, 142, 81, 203, 201, 100, 73, 100, 114, 97, 67, 110, 111, 115, 114, 101, 112, 238};
        dreamTableTitle = [self StringFromHistoryConventData:value];
    }
    return dreamTableTitle;
}

//: type
+ (NSString *)mMonthValue {
    /* static */ NSString *mMonthValue = nil;
    if (!mMonthValue) {
        Byte value[] = {4, 8, 133, 51, 253, 112, 114, 243, 101, 112, 121, 116, 38};
        mMonthValue = [self StringFromHistoryConventData:value];
    }
    return mMonthValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyAttachment.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"

//: @implementation NTESShareCardAttachment
@implementation KeyAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        [HistoryConventData m_colorImageFormat] : self.title?:@"",
        //: @"content" : self.content?:@"",
        [HistoryConventData userCollectorData] : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        [HistoryConventData dreamTableTitle] : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        [HistoryConventData mMonthValue] : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{[HistoryConventData mMonthValue]: @(CustomMessageTypeCard), [HistoryConventData dreamDestinationData]: dictContent};
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


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)clean:(CGFloat)cellWidth session:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)locationWidth:(NIMMessage *)message stochasticProcess:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)select:(NIMMessage *)message
{
    //: return @"WatchSessionShareCardContentView";
    return @"AccountControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)fingertip:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[ButtonKit sheerOption].config date:message].contentInsets;
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
