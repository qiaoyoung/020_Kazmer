
#import <Foundation/Foundation.h>

@interface DenseData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DenseData

//: personCardId
- (NSString *)kText_scienceValue {
    /* static */ NSString *kText_scienceValue = nil;
    if (!kText_scienceValue) {
		NSString *origin = @"0C030514B86D626F706C6B405E6F614661F0";
		NSData *data = [DenseData DenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_scienceValue = [self StringFromDenseData:value];
    }
    return kText_scienceValue;
}

+ (NSData *)DenseDataToData:(NSString *)value {
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

- (NSString *)StringFromDenseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DenseDataToCache:data]];
}

//: type
- (NSString *)kNameDetailColorAtString {
    /* static */ NSString *kNameDetailColorAtString = nil;
    if (!kNameDetailColorAtString) {
		NSString *origin = @"040C05CA5C686D6459C8";
		NSData *data = [DenseData DenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDetailColorAtString = [self StringFromDenseData:value];
    }
    return kNameDetailColorAtString;
}

- (Byte *)DenseDataToCache:(Byte *)data {
    int coloured = data[0];
    Byte joint = data[1];
    int rangePlace = data[2];
    for (int i = rangePlace; i < rangePlace + coloured; i++) {
        int value = data[i] + joint;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[rangePlace + coloured] = 0;
    return data + rangePlace;
}

+ (instancetype)sharedInstance {
    static DenseData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProfitsToAttachmentColor.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERShareCardAttachment.h"
#import "ProfitsToAttachmentColor.h"

//: @implementation USERShareCardAttachment
@implementation ProfitsToAttachmentColor

//: - (BOOL)canBeRevoked
- (BOOL)cover
{
    //: return NO;
    return NO;
}


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)max:(CGFloat)cellWidth text:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)ting:(NIMMessage *)message pastCell:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        @"title" : self.title?:@"",
        //: @"content" : self.content?:@"",
        @"content" : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        [[DenseData sharedInstance] kText_scienceValue] : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        [[DenseData sharedInstance] kNameDetailColorAtString] : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{[[DenseData sharedInstance] kNameDetailColorAtString]: @(CustomMessageTypeCard), @"data": dictContent};
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

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)reply:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)actionRecent:(NIMMessage *)message
{
    //: return @"FFFSessionShareCardContentView";
    return @"ValueControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)pop
{
    //: return NO;
    return NO;
}


//: @end
@end
//: __SAVE__ ignore_string [763.7,546.5,410.4]