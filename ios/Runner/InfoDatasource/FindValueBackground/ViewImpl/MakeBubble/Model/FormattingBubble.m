
#import <Foundation/Foundation.h>

NSString *StringFromFishingData(Byte *data);


//: contact_group_header
Byte k_removeTitle[] = {41, 20, 11, 130, 5, 3, 38, 63, 105, 173, 114, 114, 101, 100, 97, 101, 104, 95, 112, 117, 111, 114, 103, 95, 116, 99, 97, 116, 110, 111, 99, 22};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamInfoData.h"
#import "FormattingBubble.h"
//: #import "WatchSpellingCenter.h"
#import "ViewSize.h"

//: @implementation WatchTeamInfoData
@implementation FormattingBubble

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithFileSub:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = StringFromFishingData(k_removeTitle);
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)need{
    //: NSString *title = [[WatchSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[ViewSize stormCenter] atLetter:self.teamName].capitalizedString;
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

//: - (NSString *)memberId{
- (NSString *)dataWith{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)off{
    //: return [[WatchSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[ViewSize stormCenter] format:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)tool{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)containerNick{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)representation{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end

Byte * FishingDataToCache(Byte *data) {
    int brokenStatus = data[0];
    int givingHopping = data[1];
    int tableConduct = data[2];
    if (!brokenStatus) return data + tableConduct;
    for (int i = 0; i < givingHopping / 2; i++) {
        int begin = tableConduct + i;
        int end = tableConduct + givingHopping - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[tableConduct + givingHopping] = 0;
    return data + tableConduct;
}

NSString *StringFromFishingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FishingDataToCache(data)];
}  
