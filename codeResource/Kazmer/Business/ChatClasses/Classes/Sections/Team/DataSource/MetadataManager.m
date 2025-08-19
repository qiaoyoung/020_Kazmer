
#import <Foundation/Foundation.h>

NSString *StringFromPortedData(Byte *data);


//: user_profile_avtivity_user_info_update_failed
Byte user_tablePath[] = {47, 45, 8, 190, 156, 25, 108, 197, 100, 101, 108, 105, 97, 102, 95, 101, 116, 97, 100, 112, 117, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 70};

//: 邀请失败
Byte kSuccessChefId[] = {35, 12, 9, 206, 36, 19, 181, 220, 45, 165, 180, 232, 177, 164, 229, 183, 175, 232, 128, 130, 233, 39};

//: 邀请成功
Byte m_popIdent[] = {51, 12, 5, 156, 134, 159, 138, 229, 144, 136, 230, 183, 175, 232, 128, 130, 233, 97};

//: modify_activity_modify_success
Byte main_outsideDrinkMsg[] = {93, 30, 12, 116, 142, 214, 241, 178, 115, 18, 205, 74, 115, 115, 101, 99, 99, 117, 115, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 121, 102, 105, 100, 111, 109, 148};

//: 邀请成功，等待验证
Byte m_contentMessage[] = {78, 27, 10, 241, 135, 12, 223, 89, 116, 71, 129, 175, 232, 140, 170, 233, 133, 190, 229, 137, 173, 231, 140, 188, 239, 159, 138, 229, 144, 136, 230, 183, 175, 232, 128, 130, 233, 172};

//: postscript
Byte show_containerStr[] = {17, 10, 3, 116, 112, 105, 114, 99, 115, 116, 115, 111, 112, 253};

//: nimkit.teamlist.data
Byte user_differencePath[] = {75, 20, 8, 83, 105, 112, 96, 123, 97, 116, 97, 100, 46, 116, 115, 105, 108, 109, 97, 101, 116, 46, 116, 105, 107, 109, 105, 110, 92};

//: group_info_activity_op_failed
Byte userKeyMsg[] = {97, 29, 11, 77, 102, 251, 40, 229, 252, 118, 53, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 185};

//: user_info_avtivity_upload_avatar_failed
Byte mEffectiveValue[] = {38, 39, 11, 184, 43, 241, 197, 249, 38, 160, 23, 100, 101, 108, 105, 97, 102, 95, 114, 97, 116, 97, 118, 97, 95, 100, 97, 111, 108, 112, 117, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 50};

//: attach
Byte user_trainMsg[] = {33, 6, 4, 134, 104, 99, 97, 116, 116, 97, 35};

//: 你已经不在群里
Byte notiMatteName[] = {19, 21, 13, 25, 61, 180, 235, 40, 250, 176, 192, 112, 149, 140, 135, 233, 164, 190, 231, 168, 156, 229, 141, 184, 228, 143, 187, 231, 178, 183, 229, 160, 189, 228, 48};

//: 超大群未开放该功能
Byte kPlasticKey[] = {18, 27, 9, 192, 101, 61, 21, 65, 188, 189, 131, 232, 159, 138, 229, 165, 175, 232, 190, 148, 230, 128, 188, 229, 170, 156, 230, 164, 190, 231, 167, 164, 229, 133, 182, 232, 121};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MetadataManager.m
// ButtonKit
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamListDataManager.h"
#import "MetadataManager.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: NSString *const kNIMTeamListDataTeamInfoUpdate = @"kNIMTeamListDataTeamInfoUpdate";
NSString *const m_makeStr = @"kNIMTeamListDataTeamInfoUpdate";
//: NSString *const kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
NSString *const app_textKey = @"kNIMTeamListDataTeamMembersChanged";

//: @interface FFFTeamListDataManager ()<NIMTeamManagerDelegate>
@interface MetadataManager ()<NIMTeamManagerDelegate>

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, strong) NSMutableArray <FFFTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray <CoatButtonBar *> *members;

//: @property (nonatomic, strong) NIMTeamMember *myTeamInfo;
@property (nonatomic, strong) NIMTeamMember *myTeamInfo;

//: @property (nonatomic, strong) FFFTeamCardMemberItem *myCard;
@property (nonatomic, strong) CoatButtonBar *myCard;

//: @end
@end

//: @implementation FFFTeamListDataManager
@implementation MetadataManager

//: - (void)dealloc {
- (void)dealloc {
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }
}

//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session {
- (instancetype)initWithAboveTingPost:(NIMTeam *)team name:(NIMSession *)session {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _team = team;
        _team = team;
        //: _session = session;
        _session = session;
        //: if (team.type == NIMTeamTypeSuper) {
        if (team.type == NIMTeamTypeSuper) {
            //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
            [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
            [[NIMSDK sharedSDK].teamManager addDelegate:self];
        }
        //: [self reloadMyTeamInfo];
        [self imageInfo];
    }
    //: return self;
    return self;
}

//: - (NSMutableArray *)memberIds {
- (NSMutableArray *)memberIds {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(CoatButtonBar * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (obj.userId) {
        if (obj.userId) {
            //: [ret addObject:obj.userId];
            [ret addObject:obj.userId];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId {
- (CoatButtonBar *)max:(NSString *)userId {
    //: __block FFFTeamCardMemberItem *ret = nil;
    __block CoatButtonBar *ret = nil;
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(CoatButtonBar * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: ret = obj;
            ret = obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: #pragma mark - Function
#pragma mark - Function
//: - (NSString *)myAccount {
- (NSString *)myAccount {
    //: return [[NIMSDK sharedSDK].loginManager currentAccount];
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}

//: - (void)reloadMyTeamInfo {
- (void)imageInfo {
    //: NSString *userId = [self myAccount];
    NSString *userId = [self myAccount];
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: if (self.team.type == NIMTeamTypeSuper) {
    if (self.team.type == NIMTeamTypeSuper) {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                   //: inTeam:teamId];
                                                                   inTeam:teamId];
    //: } else {
    } else {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                          //: inTeam:teamId];
                                                          inTeam:teamId];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addMemberItem:(FFFTeamCardMemberItem *)item {
- (void)modify:(CoatButtonBar *)item {
    //: if (!item) {
    if (!item) {
        //: return;
        return;
    }
    //: switch (item.userType) {
    switch (item.userType) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
        {
            //: [_members insertObject:item atIndex:0];
            [_members insertObject:item atIndex:0];
            //: break;
            break;
        }
        //: default:
        default:
            //: [_members addObject:item];
            [_members addObject:item];
            //: break;
            break;
    }
}

//: - (void)removeMemberItem:(NSString *)userId {
- (void)title:(NSString *)userId {
    //: for (FFFTeamCardMemberItem *obj in _members) {
    for (CoatButtonBar *obj in _members) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: [_members removeObject:obj];
            [_members removeObject:obj];
            //: break;
            break;
        }
    }
}

//: - (void)addMembers:(NSArray <NIMTeamMember *>*)members {
- (void)spectralColour:(NSArray <NIMTeamMember *>*)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: for (NIMTeamMember *member in members) {
    for (NIMTeamMember *member in members) {
        //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
        CoatButtonBar *item = [[CoatButtonBar alloc] initWithDisplay:member
                                                                           //: teamType:_team.type];
                                                                           recordingDownTeamType:_team.type];

        //: [self addMemberItem:item];
        [self modify:item];
    }
}

//: - (void)removeMembers:(NSArray <NSString *> *)userIds {
- (void)cancelShow:(NSArray <NSString *> *)userIds {
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: [self removeMemberItem:userId];
        [self title:userId];
    }
}

//: - (NIMTeamMember*)teamInfo:(NSString*)uid{
- (NIMTeamMember*)view:(NSString*)uid{
    //: for (FFFTeamCardMemberItem *member in _members) {
    for (CoatButtonBar *member in _members) {
        //: if ([member.userId isEqualToString:uid]) {
        if ([member.userId isEqualToString:uid]) {
            //: return member.member;
            return member.member;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
- (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
    //: _myTeamInfo = myTeamInfo;
    _myTeamInfo = myTeamInfo;
    //: _myCard = [[FFFTeamCardMemberItem alloc] initWithMember:myTeamInfo
    _myCard = [[CoatButtonBar alloc] initWithDisplay:myTeamInfo
                                                   //: teamType:_team.type];
                                                   recordingDownTeamType:_team.type];
}


//: - (void)updateMembersWithOption:(FFFMembersFetchOption *)option
- (void)modifyLikeMembers:(ButtonOption *)option
                        //: members:(NSArray <NIMTeamMember *> *)members {
                        doing:(NSArray <NIMTeamMember *> *)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: if (option.isRefresh) {
    if (option.isRefresh) {
        //: [_members removeAllObjects];
        [_members removeAllObjects];

        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            CoatButtonBar *item = [[CoatButtonBar alloc] initWithDisplay:member
                                                                               //: teamType:_team.type];
                                                                               recordingDownTeamType:_team.type];
            //: [self addMemberItem:item];
            [self modify:item];
        }
    //: } else {
    } else {
        //: NSInteger start = _members.count - option.offset;
        NSInteger start = _members.count - option.offset;
        //: for (NSInteger i = start; i < members.count; i++) {
        for (NSInteger i = start; i < members.count; i++) {
            //: NIMTeamMember *member = members[i];
            NIMTeamMember *member = members[i];

            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            CoatButtonBar *item = [[CoatButtonBar alloc] initWithDisplay:member
                                                                               //: teamType:_team.type];
                                                                               recordingDownTeamType:_team.type];
            //: [self addMemberItem:item];
            [self modify:item];
        }
    }
}

//: #pragma mark - Handle
#pragma mark - Handle
//: - (void)handleUnsupport:(NIMTeamListDataBlock)completion {
- (void)nameUnsupport:(NIMTeamListDataBlock)completion {
    //: NSError *error = [NSError errorWithDomain:@"nimkit.teamlist.data"
    NSError *error = [NSError errorWithDomain:StringFromPortedData(user_differencePath)
                                         //: code:0x1000
                                         code:0x1000
                                     //: userInfo:@{NSLocalizedDescriptionKey : @"超大群未开放该功能".nim_localized}];
                                     userInfo:@{NSLocalizedDescriptionKey : StringFromPortedData(kPlasticKey).messageWith}];
    //: if (completion) {
    if (completion) {
        //: completion(error, @"超大群未开放该功能".nim_localized);
        completion(error, StringFromPortedData(kPlasticKey).messageWith);
    }
}


//: - (void)handleAddUsers:(NSError *)error
- (void)frame:(NSError *)error
              //: memebers:(NSArray<NIMTeamMember *> *)members
              addBackground:(NSArray<NIMTeamMember *> *)members
            //: completion:(NIMTeamListDataBlock)completion {
            scaleDoing:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: if (self.team.type == NIMTeamTypeNormal) { 
        if (self.team.type == NIMTeamTypeNormal) { //高级群需要验证，普通群直接进
            //: [self addMembers:members];
            [self spectralColour:members];
            //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
            msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(m_popIdent)];
        //: } else {
        } else {
            //: if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
            if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功，等待验证"];
                msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(m_contentMessage)];
            //: } else {
            } else {
                //: [self addMembers:members];
                [self spectralColour:members];
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
                msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(m_popIdent)];
            }
        }
    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@ :%zd",[FFFLanguageManager getTextWithKey:@"邀请失败"],error.code];
        msg = [NSString stringWithFormat:@"%@ :%zd",[PaintedNaturalLanguageTo exhibit:StringFromPortedData(kSuccessChefId)],error.code];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleKickUsers:(NSArray *)userIds
- (void)showCompletion:(NSArray *)userIds
                  //: error:(NSError *)error
                  add:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             info:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self removeMembers:userIds];
        [self cancelShow:userIds];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAnnouncement:(NSString *)content
- (void)status:(NSString *)content
                               //: error:(NSError *)error
                               index:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          view:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.announcement = content;
        self.team.announcement = content;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAvatar:(NSString *)urlString
- (void)beforeCancel:(NSString *)urlString
                         //: error:(NSError *)error
                         titleOn:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion {
                    withDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(user_tablePath)];
    //: } else {
    } else {
        //: self.team.avatarUrl = urlString;
        self.team.avatarUrl = urlString;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamName:(NSString *)name
- (void)disable:(NSString *)name
                       //: error:(NSError *)error
                       at:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  send:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.teamName = name;
        self.team.teamName = name;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNick:(NSString *)nick
- (void)titleDomain:(NSString *)nick
                       //: error:(NSError *)error
                       title:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  ting:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.myTeamInfo.nickname = nick;
        self.myTeamInfo.nickname = nick;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamIntro:(NSString *)intro
- (void)message:(NSString *)intro
                        //: error:(NSError *)error
                        modifyText:(NSError *)error
                   //: completion:(NIMTeamListDataBlock)completion {
                   handleReplyShow:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.intro = intro;
        self.team.intro = intro;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamMute:(NSError *)error
- (void)immobiliseImage:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  tableDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)from:(NIMTeamJoinMode)mode
                           //: error:(NSError *)error
                           americanism:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      titleDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.joinMode = mode;
        self.team.joinMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)current:(NIMTeamInviteMode)mode
                             //: error:(NSError *)error
                             quick_strong:(NSError *)error
                        //: completion:(NIMTeamListDataBlock)completion {
                        clean:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.inviteMode = mode;
        self.team.inviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)data:(NIMTeamUpdateInfoMode)mode
                           //: error:(NSError *)error
                           lifeStyle:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      takeCareTitleCompletion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.updateInfoMode = mode;
        self.team.updateInfoMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)invite:(NIMTeamBeInviteMode)mode
                               //: error:(NSError *)error
                               tableTing:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          bolusDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.beInviteMode = mode;
        self.team.beInviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNotifyState:(NIMTeamNotifyState)state
- (void)path:(NIMTeamNotifyState)state
                              //: error:(NSError *)error
                              holder:(NSError *)error
                         //: completion:(NIMTeamListDataBlock)completion {
                         listing:(NIMTeamListDataBlock)completion {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleAddManagers:(NSArray *)userIds
- (void)sizeSession:(NSArray *)userIds
                    //: error:(NSError *)error
                    beyondTitle:(NSError *)error
               //: completion:(NIMTeamListDataBlock)completion {
               highTeam:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: __block BOOL isChanged = NO;
    __block BOOL isChanged = NO;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(CoatButtonBar * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeManager;
                    obj.userType = NIMTeamMemberTypeManager;
                    //: isChanged = YES;
                    isChanged = YES;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }

        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}


//: - (void)handleRemoveManagers:(NSArray *)userIds
- (void)input:(NSArray *)userIds
                       //: error:(NSError *)error
                       location:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  rangeSend:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(CoatButtonBar * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeNormal;
                    obj.userType = NIMTeamMemberTypeNormal;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleTransferOwner:(NSString *)userId
- (void)cityCenter:(NSString *)userId
                      //: leave:(BOOL)leave
                      book:(BOOL)leave
                      //: error:(NSError *)error
                      proprietress:(NSError *)error
                 //: completion:(NIMTeamListDataBlock)completion {
                 relocation:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: NIMTeamMember *memberInfo = [self teamInfo:userId];
        NIMTeamMember *memberInfo = [self view:userId];
        //: memberInfo.type = NIMTeamMemberTypeOwner;
        memberInfo.type = NIMTeamMemberTypeOwner;
        //: if (leave && userId) {
        if (leave && userId) {
            //: [self removeMembers:@[userId]];
            [self cancelShow:@[userId]];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateUserNick:(NSString *)userId
- (void)sessionTap:(NSString *)userId
                        //: nick:(NSString *)nick
                        value:(NSString *)nick
                       //: error:(NSError *)error
                       sound:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  lab:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.members enumerateObjectsUsingBlock:^(CoatButtonBar * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.userId isEqualToString:userId]) {
            if ([obj.userId isEqualToString:userId]) {
                //: obj.member.nickname = nick;
                obj.member.nickname = nick;
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpateUserMuteState:(NSError *)error
- (void)tag:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      firstRed:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(main_outsideDrinkMsg)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)cellImageChange:(NSArray <NIMTeamMember *> *)members
                        //: option:(FFFMembersFetchOption *)option
                        success:(ButtonOption *)option
                         //: error:(NSError *)error
                         offDown:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion{
                    color:(NIMTeamListDataBlock)completion{
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self updateMembersWithOption:option members:members];
        [self modifyLikeMembers:option doing:members];
    //: } else if (error.code == NIMRemoteErrorCodeTeamNotMember
    } else if (error.code == NIMRemoteErrorCodeTeamNotMember
               //: || error.code == NIMRemoteErrorCodeNotInTeam) {
               || error.code == NIMRemoteErrorCodeNotInTeam) {
        //: msg = @"你已经不在群里".nim_localized;
        msg = StringFromPortedData(notiMatteName).messageWith;
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchMuteTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)bar:(NSArray <NIMTeamMember *> *)members
                             //: error:(NSError *)error
                             strippedReload:(NSError *)error
                        //: completion:(NIMTeamMuteListDataBlock)completion {
                        quantity:(NIMTeamMuteListDataBlock)completion {
    //: NSMutableArray *items = nil;
    NSMutableArray *items = nil;
    //: if (!error) {
    if (!error) {
        //: items = [NSMutableArray array];
        items = [NSMutableArray array];
        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            CoatButtonBar *item = [[CoatButtonBar alloc] initWithDisplay:member
                                                                               //: teamType:_team.type];
                                                                               recordingDownTeamType:_team.type];
            //: [items addObject:item];
            [items addObject:item];
        }
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, items);
        completion(error, items);
    }
}

//: - (void)handleWithError:(NSError *)error
- (void)languageMin:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             completion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [PaintedNaturalLanguageTo exhibit:StringFromPortedData(userKeyMsg)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: #pragma mark - <FFFTeamOperation>
#pragma mark - <RecordOperation>
//: - (void)addUsers:(NSArray *)userIds
- (void)image:(NSArray *)userIds
            //: info:(NSDictionary *)info
            timeSend:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)block {
      blue:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *postscript = info[@"postscript"];
    NSString *postscript = info[StringFromPortedData(show_containerStr)];
    //: NSString *attach = info[@"attach"];
    NSString *attach = info[StringFromPortedData(user_trainMsg)];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
                                               //: toTeam:teamId
                                               toTeam:teamId
                                           //: postscript:postscript
                                           postscript:postscript
                                               //: attach:attach
                                               attach:attach
                                           //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                           completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf frame:error
                            //: memebers:members
                            addBackground:members
                          //: completion:block];
                          scaleDoing:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addUsers:userIds
        [[NIMSDK sharedSDK].teamManager addUsers:userIds
                                          //: toTeam:teamId
                                          toTeam:teamId
                                      //: postscript:postscript
                                      postscript:postscript
                                          //: attach:attach
                                          attach:attach
                                      //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                      completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf frame:error
                            //: memebers:members
                            addBackground:members
                          //: completion:block];
                          scaleDoing:block];
        //: }];
        }];
    }
}

//: - (void)kickUsers:(NSArray *)userIds
- (void)magnitudeerval:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)block {
       completion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
                                              //: fromTeam:teamId
                                              fromTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself showCompletion:userIds
                             //: error:error
                             add:error
                        //: completion:block];
                        info:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager kickUsers:userIds
        [[NIMSDK sharedSDK].teamManager kickUsers:userIds
                                         //: fromTeam:teamId
                                         fromTeam:teamId
                                       //: completion:^(NSError *error) {
                                       completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself showCompletion:userIds
                             //: error:error
                             add:error
                        //: completion:block];
                        info:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)flush:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)block {
                    upwardlyRecord:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *announcement = content ?: @"";
    NSString *announcement = content ?: @"";
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError * _Nullable error) {
                                                         completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf status:announcement
                                             //: error:error
                                             index:error
                                        //: completion:block];
                                        view:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError * _Nullable error) {
                                                    completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf status:announcement
                                             //: error:error
                                             index:error
                                        //: completion:block];
                                        view:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)green:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)block {
              qualifyCompletion:(NIMTeamListDataBlock)block {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
    [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
        //: if (!error && urlString && wself) {
        if (!error && urlString && wself) {

            //: if (wself.team.type == NIMTeamTypeSuper) {
            if (wself.team.type == NIMTeamTypeSuper) {
                    //: [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                    [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                                                                   //: teamId:wself.team.teamId
                                                                   teamId:wself.team.teamId
                                                               //: completion:^(NSError * _Nullable error) {
                                                               completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself beforeCancel:urlString titleOn:error withDataBlock:block];
                //: }];
                }];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                                                          //: teamId:wself.team.teamId
                                                          teamId:wself.team.teamId
                                                      //: completion:^(NSError * _Nullable error) {
                                                      completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself beforeCancel:urlString titleOn:error withDataBlock:block];
                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (block) {
            if (block) {
                //: block(error, [FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]);
                block(error, [PaintedNaturalLanguageTo exhibit:StringFromPortedData(mEffectiveValue)]);
            }
        }
    //: }];
    }];
}

//: - (void)updateTeamName:(NSString *)name
- (void)media:(NSString *)name
            //: completion:(NIMTeamListDataBlock)block {
            translate:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
        [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
                                                     //: teamId:teamId
                                                     teamId:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf disable:name
                                     //: error:error
                                     at:error
                                //: completion:block];
                                send:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamName:name
        [[NIMSDK sharedSDK].teamManager updateTeamName:name
                                                //: teamId:teamId
                                                teamId:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf disable:name
                                     //: error:error
                                     at:error
                                //: completion:block];
                                send:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNick:(NSString *)nick
- (void)image:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            infoTop:(NIMTeamListDataBlock)block {
    //: NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf titleDomain:nick
                                     //: error:error
                                     title:error
                                //: completion:block];
                                ting:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf titleDomain:nick
                                     //: error:error
                                     title:error
                                //: completion:block];
                                ting:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamIntro:(NSString *)intro
- (void)liquidEcstasy:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)block {
             afterDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf message:intro
                                      //: error:error
                                      modifyText:error
                                 //: completion:block];
                                 handleReplyShow:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
                                                 //: teamId:teamId
                                                 teamId:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf message:intro
                                      //: error:error
                                      modifyText:error
                                 //: completion:block];
                                 handleReplyShow:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamMute:(BOOL)mute
- (void)rootName:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)block {
            modifyCompletionMuteTeam:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: inTeam:teamId
                                                      inTeam:teamId
                                                  //: completion:^(NSError * _Nullable error) {
                                                  completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf immobiliseImage:error
                                //: completion:block];
                                tableDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf immobiliseImage:error
                                //: completion:block];
                                tableDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)cypher:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                cut:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
                                                         //: teamId:teamId
                                                         teamId:teamId
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf from:mode
                                         //: error:error
                                         americanism:error
                                    //: completion:block];
                                    titleDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
                                                    //: teamId:teamId
                                                    teamId:teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf from:mode
                                         //: error:error
                                         americanism:error
                                    //: completion:block];
                                    titleDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)session:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)block {
                  response:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self nameUnsupport:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInviteMode:mode
            [weakSelf current:mode
                                           //: error:error
                                           quick_strong:error
                                      //: completion:block];
                                      clean:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)associate:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                info:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self nameUnsupport:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
                                                          //: teamId:teamId
                                                          teamId:teamId
                                                      //: completion:^(NSError *error) {
                                                      completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInfoMode:mode
            [weakSelf data:mode
                                         //: error:error
                                         lifeStyle:error
                                    //: completion:block];
                                    takeCareTitleCompletion:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)my:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)block {
                    onScreenCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf invite:mode
                                             //: error:error
                                             tableTing:error
                                        //: completion:block];
                                        bolusDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf invite:mode
                                             //: error:error
                                             tableTing:error
                                        //: completion:block];
                                        bolusDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)ditheredColor:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)block {
                   showSizeCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
        [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf path:state
                                            //: error:error
                                            holder:error
                                       //: completion:block];
                                       listing:block];
         //: }];
         }];
    //: } else {
    } else {
        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf path:state
                                            //: error:error
                                            holder:error
                                       //: completion:block];
                                       listing:block];
         //: }];
         }];
    }
}

//: - (void)addManagers:(NSArray *)userIds
- (void)add:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)block {
         info:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf sizeSession:userIds
                                  //: error:error
                                  beyondTitle:error
                             //: completion:block];
                             highTeam:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
                                                    //: users:userIds
                                                    users:userIds
                                               //: completion:^(NSError *error) {
                                               completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf sizeSession:userIds
                                  //: error:error
                                  beyondTitle:error
                             //: completion:block];
                             highTeam:block];
        //: }];
        }];
    }
}

//: - (void)removeManagers:(NSArray *)userIds
- (void)refresh:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)block {
            progress:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
                                                              //: users:userIds
                                                              users:userIds
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf input:userIds
                                     //: error:error
                                     location:error
                                //: completion:block];
                                rangeSend:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf input:userIds
                                     //: error:error
                                     location:error
                                //: completion:block];
                                rangeSend:block];
        //: }];
        }];
    }
}

//: - (void)transferOwnerWithUserId:(NSString *)userId
- (void)clear:(NSString *)userId
                          //: leave:(BOOL)leave
                          refer:(BOOL)leave
                     //: completion:(NIMTeamListDataBlock)block {
                     imageCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
                                                          //: newOwnerId:userId
                                                          newOwnerId:userId
                                                             //: isLeave:leave
                                                             isLeave:leave
                                                          //: completion:^(NSError *error) {
                                                          completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf cityCenter:userId
                                    //: leave:leave
                                    book:leave
                                    //: error:error
                                    proprietress:error
                               //: completion:block];
                               relocation:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
                                                     //: newOwnerId:userId
                                                     newOwnerId:userId
                                                        //: isLeave:leave
                                                        isLeave:leave
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf cityCenter:userId
                                    //: leave:leave
                                    book:leave
                                    //: error:error
                                    proprietress:error
                               //: completion:block];
                               relocation:block];
        //: }];
        }];
    }
}



//: - (void)updateUserNick:(NSString *)userId
- (void)content:(NSString *)userId
                  //: nick:(NSString *)nick
                  to:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            formatCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf sessionTap:userId
                                      //: nick:nick
                                      value:nick
                                     //: error:error
                                     sound:error
                                //: completion:block];
                                lab:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:userId
        [[NIMSDK sharedSDK].teamManager updateUserNick:userId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf sessionTap:userId
                                      //: nick:nick
                                      value:nick
                                     //: error:error
                                     sound:error
                                //: completion:block];
                                lab:block];
        //: }];
        }];
    }
}

//: - (void)updateUserMuteState:(NSString *)userId
- (void)modifyCan:(NSString *)userId
                       //: mute:(BOOL)mute
                       modifyFromCompletion:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)block {
                 mute:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (userId) {
        if (userId) {
            //: [users addObject:userId];
            [users addObject:userId];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf tag:error
                                    //: completion:block];
                                    firstRed:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: userId:userId
                                                 userId:userId
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf tag:error
                                    //: completion:block];
                                    firstRed:block];
         //: }];
         }];
    }
}

//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption *)option
- (void)frameCompletion:(ButtonOption *)option
                        //: completion:(NIMTeamListDataBlock)block {
                        event:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        //: sdkOption.offset = option.offset;
        sdkOption.offset = option.offset;
        //: sdkOption.count = option.count;
        sdkOption.count = option.count;
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
                                                       //: option:sdkOption
                                                       option:sdkOption
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf cellImageChange:members
                          //: option:option
                          success:option
                           //: error:error
                           offDown:error
                      //: completion:block];
                      color:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: option.isRefresh = YES; 
            option.isRefresh = YES; //高级群全更新
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf cellImageChange:members
                                      //: option:option
                                      success:option
                                       //: error:error
                                       offDown:error
                                  //: completion:block];
                                  color:block];
        //: }];
        }];
    }
}

//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)block {
- (void)label:(NIMTeamMuteListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
                                                        //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                        completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf bar:members
                                           //: error:error
                                           strippedReload:error
                                      //: completion:block];
                                      quantity:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf bar:members
                                           //: error:error
                                           strippedReload:error
                                      //: completion:block];
                                      quantity:block];
        //: }];
        }];
    }
}

//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)block {
- (void)rubricSuccess:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
                                           //: completion:^(NSError *error) {
                                           completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf languageMin:error
                           //: completion:block];
                           completion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager quitTeam:teamId
        [[NIMSDK sharedSDK].teamManager quitTeam:teamId
                                      //: completion:^(NSError *error) {
                                      completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf languageMin:error
                           //: completion:block];
                           completion:block];
        //: }];
        }];
    }
}

//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)block {
- (void)pinCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self nameUnsupport:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
        [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
            //: [weakSelf handleWithError:error completion:block];
            [weakSelf languageMin:error completion:block];
        //: }];
        }];
    }
}

//: #pragma mark - <FFFTeamMemberListDataSource>
#pragma mark - <EventColor>
//: - (NSInteger)memberNumber {
- (NSInteger)table {
    //: return [_team memberNumber];
    return [_team memberNumber];
}

//: #pragma mark - <NIMTeamManagerDelegate>
#pragma mark - <NIMTeamManagerDelegate>
//: - (void)onTeamUpdated:(NIMTeam *)team {
- (void)onTeamUpdated:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamInfoUpdate object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:m_makeStr object:nil];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team {
- (void)onTeamMemberChanged:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    ButtonOption *option = [[ButtonOption alloc] init];
    //: option.count = _members.count + 50;
    option.count = _members.count + 50;
    //: option.offset = 0;
    option.offset = 0;
    //: [self fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
    [self frameCompletion:option event:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: if (error) {
        if (error) {
            //: NSLog(@"warning: teamupdate user failed because userid is empty");
        //: } else {
        } else {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamMembersChanged object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:app_textKey object:nil];
        }
    //: }];
    }];
}

//: @end
@end

Byte * PortedDataToCache(Byte *data) {
    int differenceChange = data[0];
    int quarantine = data[1];
    int riotAmendment = data[2];
    if (!differenceChange) return data + riotAmendment;
    for (int i = 0; i < quarantine / 2; i++) {
        int begin = riotAmendment + i;
        int end = riotAmendment + quarantine - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[riotAmendment + quarantine] = 0;
    return data + riotAmendment;
}

NSString *StringFromPortedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PortedDataToCache(data)];
}  
