// __DEBUG__
// __CLOSE_PRINT__
//
//  USERGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupedUsrInfo.h"
#import "FFFGroupedUsrInfo.h"
//: #import "FFFSpellingCenter.h"
#import "SizeTable.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"

//: @interface NIMGroupUser()
@interface LengthAggregationUser()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) CancelTeamCorner *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation LengthAggregationUser

//: - (NSString *)groupTitle{
- (NSString *)roundPathTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[SizeTable visible] targetAerogramme:self.info.showName].capitalizedString;
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

//: - (UIImage *)avatarImage {
- (UIImage *)visualImage {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)memberId{
- (NSString *)littleLeagueTeam{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)overFindDown{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[SizeTable visible] visualImageName:self.info.showName].shortSpelling;
}

//: - (NSString *)avatarUrlString {
- (NSString *)image {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithStreetSmart:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
        _info = [[Mortification text] tingVoice:userId keepingOption:nil];
    }
    //: return self;
    return self;
}


//: - (NSString *)showName{
- (NSString *)tabTitle{
    //: return self.info.showName;
    return self.info.showName;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface ActionValueMember()

//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) CancelTeamCorner *info;
//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation ActionValueMember

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithDate:(NSString *)userId
                       //: session:(NIMSession *)session {
                       current:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
        _info = [[Mortification text] tingVoice:userId keepingOption:option];
    }
    //: return self;
    return self;
}

//: - (id)sortKey{
- (id)overFindDown{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[SizeTable visible] visualImageName:self.tabTitle].shortSpelling;
}

//: - (NSString *)avatarUrlString {
- (NSString *)image {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)littleLeagueTeam{
    //: return self.userId;
    return self.userId;
}

//: - (NSString *)showName{
- (NSString *)tabTitle{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (UIImage *)avatarImage {
- (UIImage *)visualImage {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)groupTitle{
- (NSString *)roundPathTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[SizeTable visible] targetAerogramme:self.tabTitle].capitalizedString;
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

//: @end
@end

//: @interface NIMGroupTeam()
@interface NameTeam()

//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) CancelTeamCorner *info;
//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation NameTeam

//: - (NSString *)showName{
- (NSString *)tabTitle{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (id)sortKey{
- (id)overFindDown{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[SizeTable visible] visualImageName:[self tabTitle]].shortSpelling;
}

//: - (NSString *)memberId{
- (NSString *)littleLeagueTeam{
    //: return self.teamId;
    return self.teamId;
}

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithValue:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      message:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[Mortification text] ability:teamId naturalEvent_strong:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[Mortification text] cellList:teamId view:nil];
        }
    }
    //: return self;
    return self;
}

//: - (UIImage *)avatarImage {
- (UIImage *)visualImage {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)image {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)groupTitle{
- (NSString *)roundPathTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[SizeTable visible] targetAerogramme:self.tabTitle].capitalizedString;
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

//: @end
@end