// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchGroupedUsrInfo.h"
#import "WatchGroupedUsrInfo.h"
//: #import "WatchSpellingCenter.h"
#import "ViewSize.h"
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"

//: @interface NIMGroupUser()
@interface RecordUser()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) WatchKitInfo *info;
@property (nonatomic,strong) TingMessage *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation RecordUser

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithItemMenu:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
        _info = [[ButtonKit sheerOption] past:userId skinColour_strong:nil];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)need{
    //: NSString *title = [[WatchSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ViewSize stormCenter] atLetter:self.info.showName].capitalizedString;
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

//: - (NSString *)showName{
- (NSString *)representation{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)dataWith{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)off{
    //: return [[WatchSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ViewSize stormCenter] format:self.info.showName].shortSpelling;
}

//: - (UIImage *)avatarImage {
- (UIImage *)objectBlock {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}


//: - (NSString *)avatarUrlString {
- (NSString *)pathTitle {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface ImageInfo()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) WatchKitInfo *info;
@property (nonatomic,strong) TingMessage *info;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation ImageInfo

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithBarroom:(NSString *)userId
                       //: session:(NIMSession *)session {
                       end:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
        _info = [[ButtonKit sheerOption] past:userId skinColour_strong:option];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)need{
    //: NSString *title = [[WatchSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[ViewSize stormCenter] atLetter:self.representation].capitalizedString;
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

//: - (id)sortKey{
- (id)off{
    //: return [[WatchSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[ViewSize stormCenter] format:self.representation].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)representation{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)dataWith{
    //: return self.userId;
    return self.userId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)objectBlock {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)pathTitle {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end

//: @interface NIMGroupTeam()
@interface CellBottom()

//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;
//: @property (nonatomic,strong) WatchKitInfo *info;
@property (nonatomic,strong) TingMessage *info;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation CellBottom

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithGegenschein:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      globule:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[ButtonKit sheerOption] pressMedia:teamId sizeOption:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[ButtonKit sheerOption] tiddler:teamId ting:nil];
        }
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)need{
    //: NSString *title = [[WatchSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[ViewSize stormCenter] atLetter:self.representation].capitalizedString;
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

//: - (id)sortKey{
- (id)off{
    //: return [[WatchSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[ViewSize stormCenter] format:[self representation]].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)representation{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)dataWith{
    //: return self.teamId;
    return self.teamId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)objectBlock {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)pathTitle {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end
