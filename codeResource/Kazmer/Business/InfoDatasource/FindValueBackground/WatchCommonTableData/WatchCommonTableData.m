
#import <Foundation/Foundation.h>

@interface VitaminPillData : NSObject

@end

@implementation VitaminPillData

+ (Byte *)VitaminPillDataToCache:(Byte *)data {
    int stoneAcid = data[0];
    Byte cooperateTeenage = data[1];
    int addMax = data[2];
    for (int i = addMax; i < addMax + stoneAcid; i++) {
        int value = data[i] - cooperateTeenage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[addMax + stoneAcid] = 0;
    return data + addMax;
}

+ (NSString *)StringFromVitaminPillData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VitaminPillDataToCache:data]];
}

//: headerTitle
+ (NSString *)userManualMessage {
    /* static */ NSString *userManualMessage = nil;
    if (!userManualMessage) {
        Byte value[] = {11, 49, 5, 157, 10, 153, 150, 146, 149, 150, 163, 133, 154, 165, 157, 150, 79};
        userManualMessage = [self StringFromVitaminPillData:value];
    }
    return userManualMessage;
}

//: disableUserInteraction
+ (NSString *)notiPureName {
    /* static */ NSString *notiPureName = nil;
    if (!notiPureName) {
        Byte value[] = {22, 8, 6, 220, 41, 55, 108, 113, 123, 105, 106, 116, 109, 93, 123, 109, 122, 81, 118, 124, 109, 122, 105, 107, 124, 113, 119, 118, 156};
        notiPureName = [self StringFromVitaminPillData:value];
    }
    return notiPureName;
}

//: leftEdge
+ (NSString *)appRagUrl {
    /* static */ NSString *appRagUrl = nil;
    if (!appRagUrl) {
        Byte value[] = {8, 21, 7, 172, 214, 224, 113, 129, 122, 123, 137, 90, 121, 124, 122, 204};
        appRagUrl = [self StringFromVitaminPillData:value];
    }
    return appRagUrl;
}

//: row
+ (NSString *)dreamCommitteeTitle {
    /* static */ NSString *dreamCommitteeTitle = nil;
    if (!dreamCommitteeTitle) {
        Byte value[] = {3, 81, 11, 125, 80, 83, 184, 231, 138, 171, 8, 195, 192, 200, 167};
        dreamCommitteeTitle = [self StringFromVitaminPillData:value];
    }
    return dreamCommitteeTitle;
}

//: forbidSelect
+ (NSString *)notiNeatAddTitle {
    /* static */ NSString *notiNeatAddTitle = nil;
    if (!notiNeatAddTitle) {
        Byte value[] = {12, 78, 13, 59, 246, 20, 125, 196, 41, 87, 38, 196, 202, 180, 189, 192, 176, 183, 178, 161, 179, 186, 179, 177, 194, 138};
        notiNeatAddTitle = [self StringFromVitaminPillData:value];
    }
    return notiNeatAddTitle;
}

//: footerTitle
+ (NSString *)mainHateValue {
    /* static */ NSString *mainHateValue = nil;
    if (!mainHateValue) {
        Byte value[] = {11, 60, 10, 63, 230, 27, 151, 76, 143, 119, 162, 171, 171, 176, 161, 174, 144, 165, 176, 168, 161, 8};
        mainHateValue = [self StringFromVitaminPillData:value];
    }
    return mainHateValue;
}

//: language
+ (NSString *)show_palaceUrl {
    /* static */ NSString *show_palaceUrl = nil;
    if (!show_palaceUrl) {
        Byte value[] = {8, 26, 10, 159, 64, 25, 77, 125, 68, 219, 134, 123, 136, 129, 143, 123, 129, 127, 77};
        show_palaceUrl = [self StringFromVitaminPillData:value];
    }
    return show_palaceUrl;
}

//: title
+ (NSString *)kHateHeroValue {
    /* static */ NSString *kHateHeroValue = nil;
    if (!kHateHeroValue) {
        Byte value[] = {5, 27, 12, 112, 226, 247, 161, 65, 12, 163, 123, 45, 143, 132, 143, 135, 128, 101};
        kHateHeroValue = [self StringFromVitaminPillData:value];
    }
    return kHateHeroValue;
}

//: action
+ (NSString *)app_armId {
    /* static */ NSString *app_armId = nil;
    if (!app_armId) {
        Byte value[] = {6, 45, 6, 145, 120, 99, 142, 144, 161, 150, 156, 155, 101};
        app_armId = [self StringFromVitaminPillData:value];
    }
    return app_armId;
}

//: disable
+ (NSString *)noti_effectiveIdent {
    /* static */ NSString *noti_effectiveIdent = nil;
    if (!noti_effectiveIdent) {
        Byte value[] = {7, 49, 11, 28, 17, 134, 103, 90, 115, 210, 31, 149, 154, 164, 146, 147, 157, 150, 211};
        noti_effectiveIdent = [self StringFromVitaminPillData:value];
    }
    return noti_effectiveIdent;
}

//: headerHeight
+ (NSString *)dream_insistValue {
    /* static */ NSString *dream_insistValue = nil;
    if (!dream_insistValue) {
        Byte value[] = {12, 65, 13, 162, 140, 53, 68, 149, 183, 78, 228, 155, 189, 169, 166, 162, 165, 166, 179, 137, 166, 170, 168, 169, 181, 52};
        dream_insistValue = [self StringFromVitaminPillData:value];
    }
    return dream_insistValue;
}

//: cellClass
+ (NSString *)appRepresentativeUrl {
    /* static */ NSString *appRepresentativeUrl = nil;
    if (!appRepresentativeUrl) {
        Byte value[] = {9, 41, 8, 212, 195, 12, 34, 152, 140, 142, 149, 149, 108, 149, 138, 156, 156, 130};
        appRepresentativeUrl = [self StringFromVitaminPillData:value];
    }
    return appRepresentativeUrl;
}

//: accessory
+ (NSString *)mQuarterbackIdent {
    /* static */ NSString *mQuarterbackIdent = nil;
    if (!mQuarterbackIdent) {
        Byte value[] = {9, 21, 12, 213, 96, 123, 2, 94, 164, 5, 133, 17, 118, 120, 120, 122, 136, 136, 132, 135, 142, 42};
        mQuarterbackIdent = [self StringFromVitaminPillData:value];
    }
    return mQuarterbackIdent;
}

//: footerHeight
+ (NSString *)dream_scatterNowhereLegalText {
    /* static */ NSString *dream_scatterNowhereLegalText = nil;
    if (!dream_scatterNowhereLegalText) {
        Byte value[] = {12, 89, 6, 234, 190, 161, 191, 200, 200, 205, 190, 203, 161, 190, 194, 192, 193, 205, 220};
        dream_scatterNowhereLegalText = [self StringFromVitaminPillData:value];
    }
    return dream_scatterNowhereLegalText;
}

//: extraInfo
+ (NSString *)notiHugeValue {
    /* static */ NSString *notiHugeValue = nil;
    if (!notiHugeValue) {
        Byte value[] = {9, 80, 7, 26, 161, 85, 233, 181, 200, 196, 194, 177, 153, 190, 182, 191, 158};
        notiHugeValue = [self StringFromVitaminPillData:value];
    }
    return notiHugeValue;
}

//: detailTitle
+ (NSString *)user_treatChangeIdent {
    /* static */ NSString *user_treatChangeIdent = nil;
    if (!user_treatChangeIdent) {
        Byte value[] = {11, 34, 7, 36, 64, 245, 20, 134, 135, 150, 131, 139, 142, 118, 139, 150, 142, 135, 59};
        user_treatChangeIdent = [self StringFromVitaminPillData:value];
    }
    return user_treatChangeIdent;
}

//: rowHeight
+ (NSString *)showPainterTitle {
    /* static */ NSString *showPainterTitle = nil;
    if (!showPainterTitle) {
        Byte value[] = {9, 40, 11, 196, 11, 133, 231, 4, 158, 90, 174, 154, 151, 159, 112, 141, 145, 143, 144, 156, 137};
        showPainterTitle = [self StringFromVitaminPillData:value];
    }
    return showPainterTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation StatuteNameSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithBeyondBackground:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[VitaminPillData noti_effectiveIdent]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[VitaminPillData userManualMessage]];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[VitaminPillData mainHateValue]];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[VitaminPillData dream_scatterNowhereLegalText]] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[VitaminPillData dream_insistValue]] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [CommonRow equal:dict[[VitaminPillData dreamCommitteeTitle]]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)sectionsData:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            StatuteNameSection * section = [[StatuteNameSection alloc] initWithBeyondBackground:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation CommonRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithMessage:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[VitaminPillData noti_effectiveIdent]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[[VitaminPillData kHateHeroValue]];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[VitaminPillData user_treatChangeIdent]];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[VitaminPillData appRepresentativeUrl]];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[[VitaminPillData app_armId]];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[VitaminPillData showPainterTitle]] ? [dict[[VitaminPillData showPainterTitle]] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[VitaminPillData notiHugeValue]];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[VitaminPillData appRagUrl]] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[VitaminPillData mQuarterbackIdent]] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[VitaminPillData notiNeatAddTitle]] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[VitaminPillData notiPureName]] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[VitaminPillData show_palaceUrl]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)equal:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            CommonRow * row = [[CommonRow alloc] initWithMessage:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end
