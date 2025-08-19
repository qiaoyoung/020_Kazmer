
#import <Foundation/Foundation.h>

@interface StateExtraData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation StateExtraData

+ (instancetype)sharedInstance {
    static StateExtraData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StateExtraDataToCache:(Byte *)data {
    int success = data[0];
    int aggregation = data[1];
    for (int i = 0; i < success / 2; i++) {
        int begin = aggregation + i;
        int end = aggregation + success - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[aggregation + success] = 0;
    return data + aggregation;
}

- (NSString *)StringFromStateExtraData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StateExtraDataToCache:data]];
}  

//: NTESContactDataItem
- (NSString *)m_tableStr {
    /* static */ NSString *m_tableStr = nil;
    if (!m_tableStr) {
        Byte value[] = {19, 12, 95, 177, 232, 47, 232, 150, 205, 227, 121, 98, 109, 101, 116, 73, 97, 116, 97, 68, 116, 99, 97, 116, 110, 111, 67, 83, 69, 84, 78, 55};
        m_tableStr = [self StringFromStateExtraData:value];
    }
    return m_tableStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TimeMember.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "NTESSpellingCenter.h"
#import "KeyCenter.h"

//: @implementation NTESContactDataMember
@implementation TimeMember

//: - (CGFloat)uiHeight{
- (CGFloat)text{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)vcName{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)signaling{
    //: return @"NTESContactDataItem";
    return [[StateExtraData sharedInstance] m_tableStr];
}

//: - (NSString *)cellName{
- (NSString *)under{
    //: return @"NTESContactDataCell";
    return @"PlacementToCompartmentView";
}

//: - (NSString *)badge{
- (NSString *)originButtonBadge{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)dataName {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[KeyCenter max] time:self.info.showName].capitalizedString;
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

//: - (NSString *)userId{
- (NSString *)userId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)byUser{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)touch{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)needId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)sound{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)beginView{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)elect {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[KeyCenter max] torso:self.info.showName].shortSpelling;
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


//: @end
@end
