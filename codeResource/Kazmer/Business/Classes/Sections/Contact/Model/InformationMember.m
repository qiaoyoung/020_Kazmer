
#import <Foundation/Foundation.h>

@interface KeyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation KeyData

+ (instancetype)sharedInstance {
    static KeyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)KeyDataToData:(NSString *)value {
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

- (Byte *)KeyDataToCache:(Byte *)data {
    int top = data[0];
    Byte title = data[1];
    int nim = data[2];
    for (int i = nim; i < nim + top; i++) {
        int value = data[i] - title;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[nim + top] = 0;
    return data + nim;
}

//: USERContactDataItem
- (NSString *)kNameCropItemFrameValue {
    /* static */ NSString *kNameCropItemFrameValue = nil;
    if (!kNameCropItemFrameValue) {
		NSString *origin = @"135A0B634C8E2F32A30696AFAD9FAC9DC9C8CEBBBDCE9EBBCEBBA3CEBFC722";
		NSData *data = [KeyData KeyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCropItemFrameValue = [self StringFromKeyData:value];
    }
    return kNameCropItemFrameValue;
}

- (NSString *)StringFromKeyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self KeyDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InformationMember.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactDataMember.h"
#import "InformationMember.h"
//: #import "USERSpellingCenter.h"
#import "AddOnCenter.h"

//: @implementation USERContactDataMember
@implementation InformationMember

//: - (BOOL)showAccessoryView{
- (BOOL)customBlue{
    //: return NO;
    return NO;
}

//: - (UIImage *)icon{
- (UIImage *)disableIcon{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (CGFloat)uiHeight{
- (CGFloat)session{
    //: return 60;
    return 60;
}

//: - (NSString *)reuseId{
- (NSString *)deviceClean{
    //: return @"USERContactDataItem";
    return [[KeyData sharedInstance] kNameCropItemFrameValue];
}

//: - (NSString *)showName{
- (NSString *)tabTitle{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)cellName{
- (NSString *)edge{
    //: return @"USERContactDataCell";
    return @"StandardContactDataCell";
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)vcName{
    //: return nil;
    return nil;
}

//: - (NSString *)userId{
- (NSString *)userId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)avatarUrl{
- (NSString *)showName{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)littleLeagueTeam{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)groupTitle {
- (NSString *)roundPathTitle {
    //: NSString *title = [[USERSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[AddOnCenter representation] filterLetter:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}

//: - (NSString *)badge{
- (NSString *)jointBadge{
    //: return @"";
    return @"";
}

//: - (id)sortKey {
- (id)overFindDown {
    //: return [[USERSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[AddOnCenter representation] formatTitle:self.info.showName].shortSpelling;
}


//: @end
@end
