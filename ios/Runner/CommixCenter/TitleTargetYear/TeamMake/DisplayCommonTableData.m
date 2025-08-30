
#import <Foundation/Foundation.h>

@interface ReceptionData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ReceptionData

+ (instancetype)sharedInstance {
    static ReceptionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ReceptionDataToData:(NSString *)value {
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

- (Byte *)ReceptionDataToCache:(Byte *)data {
    int area = data[0];
    Byte cream = data[1];
    int bronzeMovie = data[2];
    for (int i = bronzeMovie; i < bronzeMovie + area; i++) {
        int value = data[i] + cream;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bronzeMovie + area] = 0;
    return data + bronzeMovie;
}

- (NSString *)StringFromReceptionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ReceptionDataToCache:data]];
}

//: disable
- (NSString *)kNameHistorianString {
    /* static */ NSString *kNameHistorianString = nil;
    if (!kNameHistorianString) {
		NSString *origin = @"0756041E0E131D0B0C160FF8";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameHistorianString = [self StringFromReceptionData:value];
    }
    return kNameHistorianString;
}

//: headerHeight
- (NSString *)kText_eyebrowAgileData {
    /* static */ NSString *kText_eyebrowAgileData = nil;
    if (!kText_eyebrowAgileData) {
		NSString *origin = @"0C380935FD367AD1C4302D292C2D3A102D312F303C68";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_eyebrowAgileData = [self StringFromReceptionData:value];
    }
    return kText_eyebrowAgileData;
}

//: rowHeight
- (NSString *)kText_ilkData {
    /* static */ NSString *kText_ilkData = nil;
    if (!kText_ilkData) {
		NSString *origin = @"095B0B9C542FE48FF5446F17141CED0A0E0C0D19F2";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_ilkData = [self StringFromReceptionData:value];
    }
    return kText_ilkData;
}

//: cellClass
- (NSString *)kText_easilyString {
    /* static */ NSString *kText_easilyString = nil;
    if (!kText_easilyString) {
		NSString *origin = @"093C0A252D2F4662D74827293030073025373716";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_easilyString = [self StringFromReceptionData:value];
    }
    return kText_easilyString;
}

//: disableUserInteraction
- (NSString *)kText_flyingData {
    /* static */ NSString *kText_flyingData = nil;
    if (!kText_flyingData) {
		NSString *origin = @"16100C7E8C532FE32AACE22254596351525C5545635562395E645562515364595F5E07";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_flyingData = [self StringFromReceptionData:value];
    }
    return kText_flyingData;
}

//: headerTitle
- (NSString *)kTitlePackValue {
    /* static */ NSString *kTitlePackValue = nil;
    if (!kTitlePackValue) {
		NSString *origin = @"0B4008971641D3882825212425321429342C2507";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePackValue = [self StringFromReceptionData:value];
    }
    return kTitlePackValue;
}

//: extraInfo
- (NSString *)kContentPopularityData {
    /* static */ NSString *kContentPopularityData = nil;
    if (!kContentPopularityData) {
		NSString *origin = @"09380A681BBE82EF44422D403C3A2911362E37AA";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPopularityData = [self StringFromReceptionData:value];
    }
    return kContentPopularityData;
}

//: forbidSelect
- (NSString *)kTitle_itemText {
    /* static */ NSString *kTitle_itemText = nil;
    if (!kTitle_itemText) {
		NSString *origin = @"0C1B04F34B5457474E49384A514A48598A";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_itemText = [self StringFromReceptionData:value];
    }
    return kTitle_itemText;
}

//: footerTitle
- (NSString *)kTitleVarietyData {
    /* static */ NSString *kTitleVarietyData = nil;
    if (!kTitleVarietyData) {
		NSString *origin = @"0B2A0C7DAEEFE6153C5156023C45454A3B482A3F4A423BA4";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleVarietyData = [self StringFromReceptionData:value];
    }
    return kTitleVarietyData;
}

//: row
- (NSString *)kTitleMatContent {
    /* static */ NSString *kTitleMatContent = nil;
    if (!kTitleMatContent) {
		NSString *origin = @"035C0753E9C9B516131B7C";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleMatContent = [self StringFromReceptionData:value];
    }
    return kTitleMatContent;
}

//: leftEdge
- (NSString *)kTitleCriticismContent {
    /* static */ NSString *kTitleCriticismContent = nil;
    if (!kTitleCriticismContent) {
		NSString *origin = @"084C0DC46E43379A785FCEE7B620191A28F9181B1929";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCriticismContent = [self StringFromReceptionData:value];
    }
    return kTitleCriticismContent;
}

//: footerHeight
- (NSString *)kName_wrapString {
    /* static */ NSString *kName_wrapString = nil;
    if (!kName_wrapString) {
		NSString *origin = @"0C380CE442E00A21AFB3FAC92E37373C2D3A102D312F303CD3";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_wrapString = [self StringFromReceptionData:value];
    }
    return kName_wrapString;
}

//: language
- (NSString *)kName_stagString {
    /* static */ NSString *kName_stagString = nil;
    if (!kName_stagString) {
		NSString *origin = @"08320AFF02D5CC3B38653A2F3C35432F3533B7";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_stagString = [self StringFromReceptionData:value];
    }
    return kName_stagString;
}

//: detailTitle
- (NSString *)kName_posterBeauData {
    /* static */ NSString *kName_posterBeauData = nil;
    if (!kName_posterBeauData) {
		NSString *origin = @"0B2A0DB9C98D226959D40C7C1A3A3B4A373F422A3F4A423BE5";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_posterBeauData = [self StringFromReceptionData:value];
    }
    return kName_posterBeauData;
}

//: accessory
- (NSString *)kTextLegationName {
    /* static */ NSString *kTextLegationName = nil;
    if (!kTextLegationName) {
		NSString *origin = @"090A059B0C5759595B696965686FD0";
		NSData *data = [ReceptionData ReceptionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextLegationName = [self StringFromReceptionData:value];
    }
    return kTextLegationName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayCommonTableData.h"
#import "DisplayCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation CuttingEdgeSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithToAGreaterExtentDict:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[[ReceptionData sharedInstance] kNameHistorianString]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[[ReceptionData sharedInstance] kTitlePackValue]];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[[ReceptionData sharedInstance] kTitleVarietyData]];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[[ReceptionData sharedInstance] kName_wrapString]] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[[ReceptionData sharedInstance] kText_eyebrowAgileData]] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [IndexTargetRow showData:dict[[[ReceptionData sharedInstance] kTitleMatContent]]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)status:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            CuttingEdgeSection * section = [[CuttingEdgeSection alloc] initWithToAGreaterExtentDict:dict];
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
@implementation IndexTargetRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithBackground:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[[ReceptionData sharedInstance] kNameHistorianString]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[@"title"];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[[ReceptionData sharedInstance] kName_posterBeauData]];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[[ReceptionData sharedInstance] kText_easilyString]];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[@"action"];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[[ReceptionData sharedInstance] kText_ilkData]] ? [dict[[[ReceptionData sharedInstance] kText_ilkData]] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[[ReceptionData sharedInstance] kContentPopularityData]];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[[ReceptionData sharedInstance] kTitleCriticismContent]] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[[ReceptionData sharedInstance] kTextLegationName]] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[[ReceptionData sharedInstance] kTitle_itemText]] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[[ReceptionData sharedInstance] kText_flyingData]] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[[ReceptionData sharedInstance] kName_stagString]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)showData:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            IndexTargetRow * row = [[IndexTargetRow alloc] initWithBackground:dict];
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
//: __SAVE__ ignore_string [638.6,546.5]
