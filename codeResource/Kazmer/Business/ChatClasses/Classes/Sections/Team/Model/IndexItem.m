// __DEBUG__
// __CLOSE_PRINT__
//
//  USERCardMemberItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface NIMCardMemberItem ()
@interface FellowMemberItem ()

//: @end
@end

//: @implementation NIMCardMemberItem
@implementation FellowMemberItem

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)underSession {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUnderSession:(NIMTeamMemberType)userType {}


//: - (NIMTeamType)teamType {
- (NIMTeamType)key {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}

//: - (NSString *)imageUrl{
- (NSString *)texts{
    //: return [[MyUserKit sharedKit] infoByUser:self.userId option:nil].avatarUrlString;
    return [[Mortification text] tingVoice:self.userId keepingOption:nil].avatarUrlString;
}
//: - (NSString *)title {
- (NSString *)secret {
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: return [FFFKitUtil showNick:self.userId inSession:session];
    return [AtPull can:self.userId changeSession:session];
}

//: - (NSString *)teamId {
- (NSString *)add {
    //: return nil;
    return nil;
}

//: - (UIImage *)imageNormal{
- (UIImage *)theoreticalAccount{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.userId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:self.userId keepingOption:nil];
    //: return info.avatarImage;
    return info.avatarImage;
}

//: - (BOOL)isMuted {
- (BOOL)cellMuted {
    //: return NO;
    return NO;
}

//: - (NSString *)userId {
- (NSString *)userId {
    //: return _userId;
    return _userId;
}

//: - (BOOL)isMyUserId {
- (BOOL)inputId {
    //: return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: - (NSString *)inviterAccid {
- (NSString *)pressed {
    //: return nil;
    return nil;
}

//: @end
@end

//: @interface FFFTeamCardMemberItem ()
@interface IndexItem ()

//: @property (nonatomic, assign) NIMTeamType teamType;
@property (nonatomic, assign) NIMTeamType teamType;

//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end

//: @implementation FFFTeamCardMemberItem
@implementation IndexItem

//: - (NSString *)title {
- (NSString *)secret {
    //: NIMSession *session = nil;
    NIMSession *session = nil;
    //: if (!self.member) {
    if (!self.member) {
        //: session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: } else {
    } else {
        //: if (self.teamType == NIMTeamTypeSuper) {
        if (self.teamType == NIMTeamTypeSuper) {
            //: session = [NIMSession session:self.teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:self.add type:NIMSessionTypeSuperTeam];
        //: } else {
        } else {
            //: session = [NIMSession session:self.teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:self.add type:NIMSessionTypeTeam];
        }
    }
    //: return [FFFKitUtil showNick:self.userId inSession:session];
    return [AtPull can:self.userId changeSession:session];
}

//: - (NSString *)inviterAccid {
- (NSString *)pressed {
    //: return _member.inviterAccid;
    return _member.inviterAccid;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _opeator = CardHeaderOpeatorNone;
        _opeator = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return _teamType;
    return _teamType;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {
- (void)setUnderSession:(NIMTeamMemberType)userType {
    //: _member.type = userType;
    _member.type = userType;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[FFFTeamCardMemberItem class]]) {
    if (![object isKindOfClass:[IndexItem class]]) {
        //: return NO;
        return NO;
    }
    //: FFFTeamCardMemberItem *obj = (FFFTeamCardMemberItem*)object;
    IndexItem *obj = (IndexItem*)object;
    //: return [obj.userId isEqual:self.userId];
    return [obj.userId isEqual:self.userId];
}

//: - (BOOL)isMyUserId {
- (BOOL)inputId {
    //: return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: - (NSString *)imageUrl{
- (NSString *)texts{
    //: return [[MyUserKit sharedKit] infoByUser:self.userId option:nil].avatarUrlString;
    return [[Mortification text] tingVoice:self.userId keepingOption:nil].avatarUrlString;
}

//: - (BOOL)isMuted {
- (BOOL)cellMuted {
    //: return _member.isMuted;
    return _member.isMuted;
}

//: #pragma mark - <FFFKitCardHeaderData>
#pragma mark - <HalogenComment>
//: - (NSString *)teamId {
- (NSString *)add {
    //: return _member.teamId;
    return _member.teamId;
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)underSession {
    //: return _member.type;
    return _member.type;
}

//: - (NSString *)userId {
- (NSString *)userId {
    //: if (_member) {
    if (_member) {
        //: return _member.userId;
        return _member.userId;
    //: } else {
    } else {
        //: return _userId;
        return _userId;
    }
}

//: - (NSUInteger)hash {
- (NSUInteger)hash {
    //: return [self.userId hash];
    return [self.userId hash];
}

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithName:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType {
                      majorLeagueTeam:(NIMTeamType)teamType {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _member = member;
        _member = member;
        //: _teamType = teamType;
        _teamType = teamType;
        //: _userId = member.userId;
        _userId = member.userId;
        //: _opeator = CardHeaderOpeatorNone;
        _opeator = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (UIImage *)imageNormal{
- (UIImage *)theoreticalAccount{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.userId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:self.userId keepingOption:nil];
    //: return info.avatarImage;
    return info.avatarImage;
}

//: @end
@end