
#import <Foundation/Foundation.h>

typedef struct {
    Byte basket;
    Byte *coach;
    unsigned int sultan;
	int pop;
	int expression;
	int crisis;
} StructSubscribeData;

@interface SubscribeData : NSObject

+ (instancetype)sharedInstance;

//: 选择群组
@property (nonatomic, copy) NSString *main_dominateValue;

//: 选择超限
@property (nonatomic, copy) NSString *main_survivalName;

//: select_contact
@property (nonatomic, copy) NSString *kCircleTitle;

@end

@implementation SubscribeData

+ (instancetype)sharedInstance {
    static SubscribeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SubscribeDataToByte:(StructSubscribeData *)data {
    for (int i = 0; i < data->sultan; i++) {
        data->coach[i] ^= data->basket;
    }
    data->coach[data->sultan] = 0;
	if (data->sultan >= 3) {
		data->pop = data->coach[0];
		data->expression = data->coach[1];
		data->crisis = data->coach[2];
	}
    return data->coach;
}

- (NSString *)StringFromSubscribeData:(StructSubscribeData *)data {
    return [NSString stringWithUTF8String:(char *)[self SubscribeDataToByte:data]];
}

//: 选择群组
- (NSString *)main_dominateValue {
    if (!_main_dominateValue) {
        StructSubscribeData value = (StructSubscribeData){57, (Byte []){208, 185, 176, 223, 178, 144, 222, 135, 157, 222, 130, 189, 149}, 12, 183, 123, 9};
        _main_dominateValue = [self StringFromSubscribeData:&value];
    }
    return _main_dominateValue;
}

//: 选择超限
- (NSString *)main_survivalName {
    if (!_main_survivalName) {
        StructSubscribeData value = (StructSubscribeData){135, (Byte []){110, 7, 14, 97, 12, 46, 111, 49, 2, 110, 30, 23, 92}, 12, 254, 102, 118};
        _main_survivalName = [self StringFromSubscribeData:&value];
    }
    return _main_survivalName;
}

//: select_contact
- (NSString *)kCircleTitle {
    if (!_kCircleTitle) {
        StructSubscribeData value = (StructSubscribeData){71, (Byte []){52, 34, 43, 34, 36, 51, 24, 36, 40, 41, 51, 38, 36, 51, 91}, 14, 246, 236, 160};
        _kCircleTitle = [self StringFromSubscribeData:&value];
    }
    return _kCircleTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindRecent.m
// ButtonKit
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectConfig.h"
#import "FindRecent.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "ObjectImage.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "FFFKitInfo.h"
#import "TingMessage.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation OldPin : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)window{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)record{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [PaintedNaturalLanguageTo exhibit:[SubscribeData sharedInstance].kCircleTitle];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)imageInput{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)terminateName{
    //: return @"选择超限".nim_localized;
    return [SubscribeData sharedInstance].main_survivalName.messageWith;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)electModel:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ObjectImage *groupedData = [[ObjectImage alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self manager:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        RecordUser *user = [[RecordUser alloc] initWithItemMenu:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)manager:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(magnitudeUp)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (TingMessage *)random:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[ButtonKit sheerOption] past:selectedId skinColour_strong:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation ProgressConfig : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)imageInput{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)record{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [PaintedNaturalLanguageTo exhibit:[SubscribeData sharedInstance].kCircleTitle];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)terminateName{
    //: return @"选择超限".nim_localized;
    return [SubscribeData sharedInstance].main_survivalName.messageWith;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)contentMessage:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            movingFiringSquadHandler:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            length:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf objectFullHandler:teamID
                                      //: uids:uids
                                      corona:uids
                                   //: handler:handler];
                                   activity:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf objectFullHandler:teamID
                                      //: uids:uids
                                      corona:uids
                                   //: handler:handler];
                                   activity:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)objectFullHandler:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    corona:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 activity:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ObjectImage *groupedData = [[ObjectImage alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self green:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        ImageInfo *user = [[ImageInfo alloc] initWithBarroom:uid
                                                                       //: session:_session];
                                                                       end:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)electModel:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self contentMessage:_teamId
                              //: teamType:_teamType
                              movingFiringSquadHandler:_teamType
                               //: handler:handler];
                               length:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)green:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(magnitudeUp)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (TingMessage *)random:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[ButtonKit sheerOption] past:selectedId skinColour_strong:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation OptionSession : NSObject

//: - (NSString *)title{
- (NSString *)record{
    //: return @"选择群组".nim_localized;
    return [SubscribeData sharedInstance].main_dominateValue.messageWith;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)imageInput{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)terminateName{
    //: return @"选择超限".nim_localized;
    return [SubscribeData sharedInstance].main_survivalName.messageWith;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)team:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self action:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)electModel:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self team:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ObjectImage *groupedData = [[ObjectImage alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <VarnaSessionProtocolUser>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        CellBottom *team = [[CellBottom alloc] initWithGegenschein:tid globule:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)action:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(magnitudeUp)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (TingMessage *)random:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[ButtonKit sheerOption] pressMedia:selectedId sizeOption:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[ButtonKit sheerOption] tiddler:selectedId ting:nil];
    }
    //: return info;
    return info;
}

//: @end
@end