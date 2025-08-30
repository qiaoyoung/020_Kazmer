
#import <Foundation/Foundation.h>

NSString *StringFromRegulationData(Byte *data);        


//: 邀请成功，等待验证
Byte kNameCombatData[] = {95, 27, 17, 4, 216, 113, 111, 215, 158, 166, 213, 119, 127, 212, 121, 142, 222, 171, 123, 214, 156, 120, 212, 173, 116, 216, 153, 123, 215, 158, 112, 216};

//: 超大群未开放该功能
Byte kTitleDiscriminationText[] = {84, 27, 76, 7, 178, 104, 115, 156, 106, 57, 153, 88, 91, 155, 114, 88, 154, 80, 94, 153, 112, 52, 154, 72, 114, 156, 99, 89, 153, 62, 83, 156, 55, 113, 161};

//: user_info_avtivity_upload_avatar_failed
Byte kTitleSateString[] = {56, 39, 33, 14, 229, 141, 120, 231, 86, 185, 14, 76, 39, 2, 84, 82, 68, 81, 62, 72, 77, 69, 78, 62, 64, 85, 83, 72, 85, 72, 83, 88, 62, 84, 79, 75, 78, 64, 67, 62, 64, 85, 64, 83, 64, 81, 62, 69, 64, 72, 75, 68, 67, 130};

//: modify_activity_modify_success
Byte kTitleSuchString[] = {80, 30, 44, 9, 179, 108, 103, 69, 231, 65, 67, 56, 61, 58, 77, 51, 53, 55, 72, 61, 74, 61, 72, 77, 51, 65, 67, 56, 61, 58, 77, 51, 71, 73, 55, 55, 57, 71, 71, 12};

//: nimkit.teamlist.data
Byte kName_equivalentCreamContent[] = {43, 20, 51, 6, 77, 2, 59, 54, 58, 56, 54, 65, 251, 65, 50, 46, 58, 57, 54, 64, 65, 251, 49, 46, 65, 46, 218};

//: postscript
Byte kNameMatString[] = {53, 10, 55, 13, 130, 30, 127, 79, 229, 50, 211, 24, 29, 57, 56, 60, 61, 60, 44, 59, 50, 57, 61, 66};

//: group_info_activity_op_failed
Byte kContent_beauPlayerValue[] = {55, 29, 13, 14, 234, 70, 113, 102, 167, 85, 193, 67, 247, 67, 90, 101, 98, 104, 99, 82, 92, 97, 89, 98, 82, 84, 86, 103, 92, 105, 92, 103, 108, 82, 98, 99, 82, 89, 84, 92, 95, 88, 87, 235};

//: attach
Byte kText_securityString[] = {24, 6, 10, 12, 31, 214, 40, 197, 66, 229, 159, 88, 87, 106, 106, 87, 89, 94, 224};

//: user_profile_avtivity_user_info_update_failed
Byte kTitle_collegeNimValue[] = {98, 45, 15, 7, 97, 79, 73, 102, 100, 86, 99, 80, 97, 99, 96, 87, 90, 93, 86, 80, 82, 103, 101, 90, 103, 90, 101, 106, 80, 102, 100, 86, 99, 80, 90, 95, 87, 96, 80, 102, 97, 85, 82, 101, 86, 80, 87, 82, 90, 93, 86, 85, 114};

//: 你已经不在群里
Byte kTitleUmString[] = {33, 21, 38, 10, 21, 150, 9, 198, 127, 82, 190, 151, 122, 191, 145, 140, 193, 149, 105, 190, 146, 103, 191, 118, 130, 193, 152, 126, 195, 97, 102, 115};

//: 邀请成功
Byte kText_seldomValue[] = {30, 12, 67, 7, 251, 253, 218, 166, 63, 61, 165, 108, 116, 163, 69, 77, 162, 71, 92, 110};

//: 邀请失败
Byte kTextEyebrowGearName[] = {72, 12, 55, 7, 43, 127, 65, 178, 75, 73, 177, 120, 128, 174, 109, 122, 177, 125, 110, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MentionManager.m
// Mortification
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTeamListDataManager.h"
#import "MentionManager.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: NSString *const kNIMTeamListDataTeamInfoUpdate = @"kNIMTeamListDataTeamInfoUpdate";
NSString *const notiBeginStr = @"kNIMTeamListDataTeamInfoUpdate";
//: NSString *const kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
NSString *const app_contentKey = @"kNIMTeamListDataTeamMembersChanged";

//: @interface DisplayTeamListDataManager ()<NIMTeamManagerDelegate>
@interface MentionManager ()<NIMTeamManagerDelegate>

//: @property (nonatomic, strong) NIMTeamMember *myTeamInfo;
@property (nonatomic, strong) NIMTeamMember *myTeamInfo;

//: @property (nonatomic, strong) NSMutableArray <DisplayTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray <IndexItem *> *members;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @property (nonatomic, strong) DisplayTeamCardMemberItem *myCard;
@property (nonatomic, strong) IndexItem *myCard;

//: @end
@end

//: @implementation DisplayTeamListDataManager
@implementation MentionManager

//: - (void)handleUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)team:(NIMTeamUpdateInfoMode)mode
                           //: error:(NSError *)error
                           objectWith:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      item:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.updateInfoMode = mode;
        self.team.updateInfoMode = mode;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: } else {
    } else {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)element:(NIMTeamJoinMode)mode
                           //: error:(NSError *)error
                           view:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      join:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.joinMode = mode;
        self.team.joinMode = mode;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)removeMembers:(NSArray <NSString *> *)userIds {
- (void)doEnd:(NSArray <NSString *> *)userIds {
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: [self removeMemberItem:userId];
        [self bottom:userId];
    }
}

//: - (void)handleAddUsers:(NSError *)error
- (void)show:(NSError *)error
              //: memebers:(NSArray<NIMTeamMember *> *)members
              conductToCompletion:(NSArray<NIMTeamMember *> *)members
            //: completion:(NIMTeamListDataBlock)completion {
            compartment:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: if (self.team.type == NIMTeamTypeNormal) { 
        if (self.team.type == NIMTeamTypeNormal) { //高级群需要验证，普通群直接进
            //: [self addMembers:members];
            [self teamMembers:members];
            //: msg = [DisplayLanguageManager getTextWithKey:@"邀请成功"];
            msg = [MakeManager cell:StringFromRegulationData(kText_seldomValue)];
        //: } else {
        } else {
            //: if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
            if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
                //: msg = [DisplayLanguageManager getTextWithKey:@"邀请成功，等待验证"];
                msg = [MakeManager cell:StringFromRegulationData(kNameCombatData)];
            //: } else {
            } else {
                //: [self addMembers:members];
                [self teamMembers:members];
                //: msg = [DisplayLanguageManager getTextWithKey:@"邀请成功"];
                msg = [MakeManager cell:StringFromRegulationData(kText_seldomValue)];
            }
        }
    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@ :%zd",[DisplayLanguageManager getTextWithKey:@"邀请失败"],error.code];
        msg = [NSString stringWithFormat:@"%@ :%zd",[MakeManager cell:StringFromRegulationData(kTextEyebrowGearName)],error.code];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)updateUserMuteState:(NSString *)userId
- (void)magnitudelessness:(NSString *)userId
                       //: mute:(BOOL)mute
                       programme:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)block {
                 color:(NIMTeamListDataBlock)block {
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
            [weakSelf mismanage:error
                                    //: completion:block];
                                    ting:block];
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
            [weakSelf mismanage:error
                                    //: completion:block];
                                    ting:block];
         //: }];
         }];
    }
}

//: #pragma mark - Handle
#pragma mark - Handle
//: - (void)handleUnsupport:(NIMTeamListDataBlock)completion {
- (void)comeToGrips:(NIMTeamListDataBlock)completion {
    //: NSError *error = [NSError errorWithDomain:@"nimkit.teamlist.data"
    NSError *error = [NSError errorWithDomain:StringFromRegulationData(kName_equivalentCreamContent)
                                         //: code:0x1000
                                         code:0x1000
                                     //: userInfo:@{NSLocalizedDescriptionKey : @"超大群未开放该功能".nim_localized}];
                                     userInfo:@{NSLocalizedDescriptionKey : StringFromRegulationData(kTitleDiscriminationText).disable}];
    //: if (completion) {
    if (completion) {
        //: completion(error, @"超大群未开放该功能".nim_localized);
        completion(error, StringFromRegulationData(kTitleDiscriminationText).disable);
    }
}

//: - (void)handleUpdateTeamAnnouncement:(NSString *)content
- (void)green:(NSString *)content
                               //: error:(NSError *)error
                               textLink:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          sizeCompletion:(NIMTeamListDataBlock)completion {
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

//: - (void)handleUpdateUserNick:(NSString *)userId
- (void)voiceSize:(NSString *)userId
                        //: nick:(NSString *)nick
                        titleRange:(NSString *)nick
                       //: error:(NSError *)error
                       appear:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  value:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self.members enumerateObjectsUsingBlock:^(DisplayTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.members enumerateObjectsUsingBlock:^(IndexItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.userId isEqualToString:userId]) {
            if ([obj.userId isEqualToString:userId]) {
                //: obj.member.nickname = nick;
                obj.member.nickname = nick;
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)block {
- (void)nowadays:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self comeToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
        [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
            //: [weakSelf handleWithError:error completion:block];
            [weakSelf processToCompletion:error nonachievementDoing:block];
        //: }];
        }];
    }
}

//: - (void)handleUpdateTeamAvatar:(NSString *)urlString
- (void)language:(NSString *)urlString
                         //: error:(NSError *)error
                         infoSelected:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion {
                    search:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kTitle_collegeNimValue)];
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

//: - (NSMutableArray *)memberIds {
- (NSMutableArray *)memberIds {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [_members enumerateObjectsUsingBlock:^(DisplayTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(IndexItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
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

//: - (DisplayTeamCardMemberItem *)memberWithUserId:(NSString *)userId {
- (IndexItem *)memberNameRecessWearer:(NSString *)userId {
    //: __block DisplayTeamCardMemberItem *ret = nil;
    __block IndexItem *ret = nil;
    //: [_members enumerateObjectsUsingBlock:^(DisplayTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(IndexItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
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


//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)touch:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)block {
                   soundChild:(NIMTeamListDataBlock)block {
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
            [weakSelf signItem:state
                                            //: error:error
                                            dayOfTheMonth:error
                                       //: completion:block];
                                       device:block];
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
            [weakSelf signItem:state
                                            //: error:error
                                            dayOfTheMonth:error
                                       //: completion:block];
                                       device:block];
         //: }];
         }];
    }
}

//: - (void)handleKickUsers:(NSArray *)userIds
- (void)at:(NSArray *)userIds
                  //: error:(NSError *)error
                  kick:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             puntAsset:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self removeMembers:userIds];
        [self doEnd:userIds];
    //: } else {
    } else {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}


//: - (void)updateMembersWithOption:(DisplayMembersFetchOption *)option
- (void)language:(LengthOption *)option
                        //: members:(NSArray <NIMTeamMember *> *)members {
                        can:(NSArray <NIMTeamMember *> *)members {
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

            //: DisplayTeamCardMemberItem *item = [[DisplayTeamCardMemberItem alloc] initWithMember:member
            IndexItem *item = [[IndexItem alloc] initWithName:member
                                                                               //: teamType:_team.type];
                                                                               majorLeagueTeam:_team.type];
            //: [self addMemberItem:item];
            [self crySize:item];
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

            //: DisplayTeamCardMemberItem *item = [[DisplayTeamCardMemberItem alloc] initWithMember:member
            IndexItem *item = [[IndexItem alloc] initWithName:member
                                                                               //: teamType:_team.type];
                                                                               majorLeagueTeam:_team.type];
            //: [self addMemberItem:item];
            [self crySize:item];
        }
    }
}

//: - (void)handleUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)with:(NIMTeamBeInviteMode)mode
                               //: error:(NSError *)error
                               foreword:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          way:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.beInviteMode = mode;
        self.team.beInviteMode = mode;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)block {
- (void)placeRed:(NIMTeamListDataBlock)block {
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
            [weakSelf processToCompletion:error
                           //: completion:block];
                           nonachievementDoing:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager quitTeam:teamId
        [[NIMSDK sharedSDK].teamManager quitTeam:teamId
                                      //: completion:^(NSError *error) {
                                      completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf processToCompletion:error
                           //: completion:block];
                           nonachievementDoing:block];
        //: }];
        }];
    }
}

//: #pragma mark - <DisplayTeamOperation>
#pragma mark - <ActivityImage>
//: - (void)addUsers:(NSArray *)userIds
- (void)length:(NSArray *)userIds
            //: info:(NSDictionary *)info
            exceptName:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)block {
      step:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *postscript = info[@"postscript"];
    NSString *postscript = info[StringFromRegulationData(kNameMatString)];
    //: NSString *attach = info[@"attach"];
    NSString *attach = info[StringFromRegulationData(kText_securityString)];
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
            [weakSelf show:error
                            //: memebers:members
                            conductToCompletion:members
                          //: completion:block];
                          compartment:block];
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
            [weakSelf show:error
                            //: memebers:members
                            conductToCompletion:members
                          //: completion:block];
                          compartment:block];
        //: }];
        }];
    }
}

//: - (void)handleWithError:(NSError *)error
- (void)processToCompletion:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             nonachievementDoing:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)needCompletion:(NIMTeamInviteMode)mode
                             //: error:(NSError *)error
                             image:(NSError *)error
                        //: completion:(NIMTeamListDataBlock)completion {
                        checked:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.inviteMode = mode;
        self.team.inviteMode = mode;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: } else {
    } else {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)updateTeamIntro:(NSString *)intro
- (void)magnitude:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)block {
             endue:(NIMTeamListDataBlock)block {
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
            [weakSelf fromBottom:intro
                                      //: error:error
                                      cell_strong:error
                                 //: completion:block];
                                 keyForRestore:block];
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
            [weakSelf fromBottom:intro
                                      //: error:error
                                      cell_strong:error
                                 //: completion:block];
                                 keyForRestore:block];
        //: }];
        }];
    }
}

//: - (void)addManagers:(NSArray *)userIds
- (void)title:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)block {
         viewCompletion:(NIMTeamListDataBlock)block {
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
            [weakSelf key:userIds
                                  //: error:error
                                  safetyMargin:error
                             //: completion:block];
                             selectTo:block];
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
            [weakSelf key:userIds
                                  //: error:error
                                  safetyMargin:error
                             //: completion:block];
                             selectTo:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)magnitude:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                nutsAndBolts:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self comeToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
                                                          //: teamId:teamId
                                                          teamId:teamId
                                                      //: completion:^(NSError *error) {
                                                      completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInfoMode:mode
            [weakSelf team:mode
                                         //: error:error
                                         objectWith:error
                                    //: completion:block];
                                    item:block];
        //: }];
        }];
    }
}

//: - (void)transferOwnerWithUserId:(NSString *)userId
- (void)cellBefore:(NSString *)userId
                          //: leave:(BOOL)leave
                          can:(BOOL)leave
                     //: completion:(NIMTeamListDataBlock)block {
                     person:(NIMTeamListDataBlock)block {
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
            [weakSelf recording:userId
                                    //: leave:leave
                                    origin:leave
                                    //: error:error
                                    scaleValueCompletion:error
                               //: completion:block];
                               message:block];
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
            [weakSelf recording:userId
                                    //: leave:leave
                                    origin:leave
                                    //: error:error
                                    scaleValueCompletion:error
                               //: completion:block];
                               message:block];
        //: }];
        }];
    }
}

//: - (void)handleUpdateTeamNick:(NSString *)nick
- (void)info:(NSString *)nick
                       //: error:(NSError *)error
                       color_strong:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  modifyDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.myTeamInfo.nickname = nick;
        self.myTeamInfo.nickname = nick;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)removeManagers:(NSArray *)userIds
- (void)with:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)block {
            underRemove:(NIMTeamListDataBlock)block {
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
            [weakSelf information:userIds
                                     //: error:error
                                     practice:error
                                //: completion:block];
                                view:block];
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
            [weakSelf information:userIds
                                     //: error:error
                                     practice:error
                                //: completion:block];
                                view:block];
        //: }];
        }];
    }
}

//: - (NIMTeamMember*)teamInfo:(NSString*)uid{
- (NIMTeamMember*)substanceInfo:(NSString*)uid{
    //: for (DisplayTeamCardMemberItem *member in _members) {
    for (IndexItem *member in _members) {
        //: if ([member.userId isEqualToString:uid]) {
        if ([member.userId isEqualToString:uid]) {
            //: return member.member;
            return member.member;
        }
    }
    //: return nil;
    return nil;
}

//: #pragma mark - <DisplayTeamMemberListDataSource>
#pragma mark - <AccountSource>
//: - (NSInteger)memberNumber {
- (NSInteger)digitizerTap {
    //: return [_team memberNumber];
    return [_team memberNumber];
}


//: - (void)handleFetchTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)highlight:(NSArray <NIMTeamMember *> *)members
                        //: option:(DisplayMembersFetchOption *)option
                        length:(LengthOption *)option
                         //: error:(NSError *)error
                         ting:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion{
                    appearAcross:(NIMTeamListDataBlock)completion{
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self updateMembersWithOption:option members:members];
        [self language:option can:members];
    //: } else if (error.code == NIMRemoteErrorCodeTeamNotMember
    } else if (error.code == NIMRemoteErrorCodeTeamNotMember
               //: || error.code == NIMRemoteErrorCodeNotInTeam) {
               || error.code == NIMRemoteErrorCodeNotInTeam) {
        //: msg = @"你已经不在群里".nim_localized;
        msg = StringFromRegulationData(kTitleUmString).disable;
    //: } else {
    } else {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)updateTeamNick:(NSString *)nick
- (void)inputName:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            will:(NIMTeamListDataBlock)block {
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
            [weakSelf info:nick
                                     //: error:error
                                     color_strong:error
                                //: completion:block];
                                modifyDataBlock:block];
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
            [weakSelf info:nick
                                     //: error:error
                                     color_strong:error
                                //: completion:block];
                                modifyDataBlock:block];
        //: }];
        }];
    }
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
    [[NSNotificationCenter defaultCenter] postNotificationName:notiBeginStr object:nil];
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
    //: DisplayMembersFetchOption *option = [[DisplayMembersFetchOption alloc] init];
    LengthOption *option = [[LengthOption alloc] init];
    //: option.count = _members.count + 50;
    option.count = _members.count + 50;
    //: option.offset = 0;
    option.offset = 0;
    //: [self fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
    [self atTitle:option seatCompletion:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: if (error) {
        if (error) {
            //: NSLog(@"warning: teamupdate user failed because userid is empty");
        //: } else {
        } else {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamMembersChanged object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:app_contentKey object:nil];
        }
    //: }];
    }];
}

//: - (void)handleUpdateTeamMute:(NSError *)error
- (void)comment:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  on:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpateUserMuteState:(NSError *)error
- (void)mismanage:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      ting:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)kickUsers:(NSArray *)userIds
- (void)moveCompletion:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)block {
       holder:(NIMTeamListDataBlock)block {
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
            [wself at:userIds
                             //: error:error
                             kick:error
                        //: completion:block];
                        puntAsset:block];
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
            [wself at:userIds
                             //: error:error
                             kick:error
                        //: completion:block];
                        puntAsset:block];
        //: }];
        }];
    }
}

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

//: - (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
- (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
    //: _myTeamInfo = myTeamInfo;
    _myTeamInfo = myTeamInfo;
    //: _myCard = [[DisplayTeamCardMemberItem alloc] initWithMember:myTeamInfo
    _myCard = [[IndexItem alloc] initWithName:myTeamInfo
                                                   //: teamType:_team.type];
                                                   majorLeagueTeam:_team.type];
}

//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)with:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)block {
                    permit:(NIMTeamListDataBlock)block {
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
            [weakSelf with:mode
                                             //: error:error
                                             foreword:error
                                        //: completion:block];
                                        way:block];
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
            [weakSelf with:mode
                                             //: error:error
                                             foreword:error
                                        //: completion:block];
                                        way:block];
        //: }];
        }];
    }
}

//: - (void)reloadMyTeamInfo {
- (void)tag {
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

//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session {
- (instancetype)initWithSizeSession:(NIMTeam *)team exceptRecord:(NIMSession *)session {
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
        [self tag];
    }
    //: return self;
    return self;
}

//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)block {
- (void)nim:(NIMTeamMuteListDataBlock)block {
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
            [weakSelf background:members
                                           //: error:error
                                           lyric:error
                                      //: completion:block];
                                      messageCompletion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf background:members
                                           //: error:error
                                           lyric:error
                                      //: completion:block];
                                      messageCompletion:block];
        //: }];
        }];
    }
}

//: - (void)handleFetchMuteTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)background:(NSArray <NIMTeamMember *> *)members
                             //: error:(NSError *)error
                             lyric:(NSError *)error
                        //: completion:(NIMTeamMuteListDataBlock)completion {
                        messageCompletion:(NIMTeamMuteListDataBlock)completion {
    //: NSMutableArray *items = nil;
    NSMutableArray *items = nil;
    //: if (!error) {
    if (!error) {
        //: items = [NSMutableArray array];
        items = [NSMutableArray array];
        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: DisplayTeamCardMemberItem *item = [[DisplayTeamCardMemberItem alloc] initWithMember:member
            IndexItem *item = [[IndexItem alloc] initWithName:member
                                                                               //: teamType:_team.type];
                                                                               majorLeagueTeam:_team.type];
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

//: - (void)updateTeamName:(NSString *)name
- (void)fromQuantity:(NSString *)name
            //: completion:(NIMTeamListDataBlock)block {
            alter:(NIMTeamListDataBlock)block {
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
            [weakSelf comment:name
                                     //: error:error
                                     member:error
                                //: completion:block];
                                administer:block];
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
            [weakSelf comment:name
                                     //: error:error
                                     member:error
                                //: completion:block];
                                administer:block];
        //: }];
        }];
    }
}

//: #pragma mark - Function
#pragma mark - Function
//: - (NSString *)myAccount {
- (NSString *)myAccount {
    //: return [[NIMSDK sharedSDK].loginManager currentAccount];
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}

//: - (void)handleUpdateTeamNotifyState:(NIMTeamNotifyState)state
- (void)signItem:(NIMTeamNotifyState)state
                              //: error:(NSError *)error
                              dayOfTheMonth:(NSError *)error
                         //: completion:(NIMTeamListDataBlock)completion {
                         device:(NIMTeamListDataBlock)completion {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamName:(NSString *)name
- (void)comment:(NSString *)name
                       //: error:(NSError *)error
                       member:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  administer:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.teamName = name;
        self.team.teamName = name;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleAddManagers:(NSArray *)userIds
- (void)key:(NSArray *)userIds
                    //: error:(NSError *)error
                    safetyMargin:(NSError *)error
               //: completion:(NIMTeamListDataBlock)completion {
               selectTo:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: __block BOOL isChanged = NO;
    __block BOOL isChanged = NO;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(DisplayTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(IndexItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeManager;
                    obj.underSession = NIMTeamMemberTypeManager;
                    //: isChanged = YES;
                    isChanged = YES;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }

        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)inputBeMessage:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)block {
                  image:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self comeToGrips:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInviteMode:mode
            [weakSelf needCompletion:mode
                                           //: error:error
                                           image:error
                                      //: completion:block];
                                      checked:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)keep:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                frame:(NIMTeamListDataBlock)block {
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
            [weakSelf element:mode
                                         //: error:error
                                         view:error
                                    //: completion:block];
                                    join:block];
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
            [weakSelf element:mode
                                         //: error:error
                                         view:error
                                    //: completion:block];
                                    join:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamMute:(BOOL)mute
- (void)messageSize:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)block {
            save:(NIMTeamListDataBlock)block {
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
            [weakSelf comment:error
                                //: completion:block];
                                on:block];
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
            [weakSelf comment:error
                                //: completion:block];
                                on:block];
        //: }];
        }];
    }
}

//: - (void)updateUserNick:(NSString *)userId
- (void)text:(NSString *)userId
                  //: nick:(NSString *)nick
                  showName:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            frame:(NIMTeamListDataBlock)block {
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
            [weakSelf voiceSize:userId
                                      //: nick:nick
                                      titleRange:nick
                                     //: error:error
                                     appear:error
                                //: completion:block];
                                value:block];
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
            [weakSelf voiceSize:userId
                                      //: nick:nick
                                      titleRange:nick
                                     //: error:error
                                     appear:error
                                //: completion:block];
                                value:block];
        //: }];
        }];
    }
}



//: - (void)handleRemoveManagers:(NSArray *)userIds
- (void)information:(NSArray *)userIds
                       //: error:(NSError *)error
                       practice:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  view:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(DisplayTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(IndexItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeNormal;
                    obj.underSession = NIMTeamMemberTypeNormal;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)addMembers:(NSArray <NIMTeamMember *>*)members {
- (void)teamMembers:(NSArray <NIMTeamMember *>*)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: for (NIMTeamMember *member in members) {
    for (NIMTeamMember *member in members) {
        //: DisplayTeamCardMemberItem *item = [[DisplayTeamCardMemberItem alloc] initWithMember:member
        IndexItem *item = [[IndexItem alloc] initWithName:member
                                                                           //: teamType:_team.type];
                                                                           majorLeagueTeam:_team.type];

        //: [self addMemberItem:item];
        [self crySize:item];
    }
}

//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)play:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)block {
                    quickDataBlock:(NIMTeamListDataBlock)block {
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
            [weakSelf green:announcement
                                             //: error:error
                                             textLink:error
                                        //: completion:block];
                                        sizeCompletion:block];
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
            [weakSelf green:announcement
                                             //: error:error
                                             textLink:error
                                        //: completion:block];
                                        sizeCompletion:block];
        //: }];
        }];
    }
}

//: - (void)removeMemberItem:(NSString *)userId {
- (void)bottom:(NSString *)userId {
    //: for (DisplayTeamCardMemberItem *obj in _members) {
    for (IndexItem *obj in _members) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: [_members removeObject:obj];
            [_members removeObject:obj];
            //: break;
            break;
        }
    }
}

//: - (void)handleUpdateTeamIntro:(NSString *)intro
- (void)fromBottom:(NSString *)intro
                        //: error:(NSError *)error
                        cell_strong:(NSError *)error
                   //: completion:(NIMTeamListDataBlock)completion {
                   keyForRestore:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.intro = intro;
        self.team.intro = intro;
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleTransferOwner:(NSString *)userId
- (void)recording:(NSString *)userId
                      //: leave:(BOOL)leave
                      origin:(BOOL)leave
                      //: error:(NSError *)error
                      scaleValueCompletion:(NSError *)error
                 //: completion:(NIMTeamListDataBlock)completion {
                 message:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: NIMTeamMember *memberInfo = [self teamInfo:userId];
        NIMTeamMember *memberInfo = [self substanceInfo:userId];
        //: memberInfo.type = NIMTeamMemberTypeOwner;
        memberInfo.type = NIMTeamMemberTypeOwner;
        //: if (leave && userId) {
        if (leave && userId) {
            //: [self removeMembers:@[userId]];
            [self doEnd:@[userId]];
        }
        //: msg = [DisplayLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [MakeManager cell:StringFromRegulationData(kTitleSuchString)];
    //: }else{
    }else{
        //: msg = [DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [MakeManager cell:StringFromRegulationData(kContent_beauPlayerValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addMemberItem:(DisplayTeamCardMemberItem *)item {
- (void)crySize:(IndexItem *)item {
    //: if (!item) {
    if (!item) {
        //: return;
        return;
    }
    //: switch (item.userType) {
    switch (item.underSession) {
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

//: - (void)fetchTeamMembersWithOption:(DisplayMembersFetchOption *)option
- (void)atTitle:(LengthOption *)option
                        //: completion:(NIMTeamListDataBlock)block {
                        seatCompletion:(NIMTeamListDataBlock)block {
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
            [weakSelf highlight:members
                          //: option:option
                          length:option
                           //: error:error
                           ting:error
                      //: completion:block];
                      appearAcross:block];
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
            [weakSelf highlight:members
                                      //: option:option
                                      length:option
                                       //: error:error
                                       ting:error
                                  //: completion:block];
                                  appearAcross:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)centerTo:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)block {
              wordPainting:(NIMTeamListDataBlock)block {
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
                    [wself language:urlString infoSelected:error search:block];
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
                    [wself language:urlString infoSelected:error search:block];
                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (block) {
            if (block) {
                //: block(error, [DisplayLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]);
                block(error, [MakeManager cell:StringFromRegulationData(kTitleSateString)]);
            }
        }
    //: }];
    }];
}

//: @end
@end

Byte * RegulationDataToCache(Byte *data) {
    int quick = data[0];
    int symbolVolunteer = data[1];
    Byte standardPlay = data[2];
    int sportswriter = data[3];
    if (!quick) return data + sportswriter;
    for (int i = sportswriter; i < sportswriter + symbolVolunteer; i++) {
        int value = data[i] + standardPlay;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sportswriter + symbolVolunteer] = 0;
    return data + sportswriter;
}

NSString *StringFromRegulationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RegulationDataToCache(data)];
}
