// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCardMemberItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface NIMCardMemberItem ()
@interface TitleTimeMessage ()

//: @end
@end

//: @implementation NIMCardMemberItem
@implementation TitleTimeMessage

//: - (NSString *)teamId {
- (NSString *)teamId {
    //: return nil;
    return nil;
}

//: - (NSString *)userId {
- (NSString *)userId {
    //: return _userId;
    return _userId;
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}

//: - (UIImage *)imageNormal{
- (UIImage *)imageNormal{
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.userId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:self.userId skinColour_strong:nil];
    //: return info.avatarImage;
    return info.avatarImage;
}

//: - (NSString *)title {
- (NSString *)title {
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: return [WatchKitUtil showNick:self.userId inSession:session];
    return [ObjectUtil message:self.userId sessionView:session];
}

//: - (NSString *)imageUrl{
- (NSString *)imageUrl{
    //: return [[MyUserKit sharedKit] infoByUser:self.userId option:nil].avatarUrlString;
    return [[ButtonKit sheerOption] past:self.userId skinColour_strong:nil].avatarUrlString;
}

//: - (NSString *)inviterAccid {
- (NSString *)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end

//: @interface WatchTeamCardMemberItem ()
@interface CoatButtonBar ()

//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @property (nonatomic, assign) NIMTeamType teamType;
@property (nonatomic, assign) NIMTeamType teamType;

//: @end
@end

//: @implementation WatchTeamCardMemberItem
@implementation CoatButtonBar

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

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithDisplay:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType {
                      recordingDownTeamType:(NIMTeamType)teamType {
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

//: - (NSUInteger)hash {
- (NSUInteger)hash {
    //: return [self.userId hash];
    return [self.userId hash];
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[WatchTeamCardMemberItem class]]) {
    if (![object isKindOfClass:[CoatButtonBar class]]) {
        //: return NO;
        return NO;
    }
    //: WatchTeamCardMemberItem *obj = (WatchTeamCardMemberItem*)object;
    CoatButtonBar *obj = (CoatButtonBar*)object;
    //: return [obj.userId isEqual:self.userId];
    return [obj.userId isEqual:self.userId];
}

//: #pragma mark - <WatchKitCardHeaderData>
#pragma mark - <WatchKitCardHeaderData>
//: - (NSString *)teamId {
- (NSString *)teamId {
    //: return _member.teamId;
    return _member.teamId;
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

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return _member.type;
    return _member.type;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {
- (void)setUserType:(NIMTeamMemberType)userType {
    //: _member.type = userType;
    _member.type = userType;
}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return _teamType;
    return _teamType;
}

//: - (UIImage *)imageNormal{
- (UIImage *)imageNormal{
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.userId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:self.userId skinColour_strong:nil];
    //: return info.avatarImage;
    return info.avatarImage;
}

//: - (NSString *)title {
- (NSString *)title {
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
            session = [NIMSession session:self.teamId type:NIMSessionTypeSuperTeam];
        //: } else {
        } else {
            //: session = [NIMSession session:self.teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:self.teamId type:NIMSessionTypeTeam];
        }
    }
    //: return [WatchKitUtil showNick:self.userId inSession:session];
    return [ObjectUtil message:self.userId sessionView:session];
}

//: - (NSString *)imageUrl{
- (NSString *)imageUrl{
    //: return [[MyUserKit sharedKit] infoByUser:self.userId option:nil].avatarUrlString;
    return [[ButtonKit sheerOption] past:self.userId skinColour_strong:nil].avatarUrlString;
}

//: - (NSString *)inviterAccid {
- (NSString *)inviterAccid {
    //: return _member.inviterAccid;
    return _member.inviterAccid;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return _member.isMuted;
    return _member.isMuted;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end
