
#import <Foundation/Foundation.h>

@interface LapData : NSObject

@end

@implementation LapData

+ (NSData *)LapDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)LapDataToCache:(Byte *)data {
    int affirmative = data[0];
    Byte cation = data[1];
    int colaScale = data[2];
    for (int i = colaScale; i < colaScale + affirmative; i++) {
        int value = data[i] - cation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[colaScale + affirmative] = 0;
    return data + colaScale;
}

+ (NSString *)StringFromLapData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LapDataToCache:data]];
}

//: select_contact
+ (NSString *)kNameCharityData {
    /* static */ NSString *kNameCharityData = nil;
    if (!kNameCharityData) {
		NSArray<NSNumber *> *origin = @[@14, @49, @6, @136, @222, @166, @164, @150, @157, @150, @148, @165, @144, @148, @160, @159, @165, @146, @148, @165, @31];
		NSData *data = [LapData LapDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCharityData = [self StringFromLapData:value];
    }
    return kNameCharityData;
}

//: 选择超限
+ (NSString *)kName_ridiculousString {
    /* static */ NSString *kName_ridiculousString = nil;
    if (!kName_ridiculousString) {
		NSArray<NSNumber *> *origin = @[@12, @42, @9, @129, @29, @254, @235, @20, @255, @19, @170, @179, @16, @181, @211, @18, @224, @175, @19, @195, @186, @97];
		NSData *data = [LapData LapDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_ridiculousString = [self StringFromLapData:value];
    }
    return kName_ridiculousString;
}

//: 选择群组
+ (NSString *)kTitle_poetContent {
    /* static */ NSString *kTitle_poetContent = nil;
    if (!kTitle_poetContent) {
		NSArray<NSNumber *> *origin = @[@12, @87, @9, @137, @114, @190, @87, @156, @182, @64, @215, @224, @61, @226, @0, @62, @21, @251, @62, @18, @219, @125];
		NSData *data = [LapData LapDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_poetContent = [self StringFromLapData:value];
    }
    return kTitle_poetContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryConfig.m
// Mortification
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayContactSelectConfig.h"
#import "QueryConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "UserGroupedData.h"
#import "UserRecord.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "DisplayKitInfo.h"
#import "CancelTeamCorner.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation MakeAction : NSObject

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)linkData:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    UserRecord *groupedData = [[UserRecord alloc] init];
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
    NSArray *friend_uids = [self buttonDelete:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        LengthAggregationUser *user = [[LengthAggregationUser alloc] initWithStreetSmart:uid];
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

//: - (NSInteger)maxSelectedNum{
- (NSInteger)checkedNum{
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
- (NSString *)societyWithBeak{
    //: return @"选择超限".nim_localized;
    return [LapData kName_ridiculousString].disable;
}

//: - (BOOL)isMutiSelected{
- (BOOL)fileView{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)languageKit{
    //: return [DisplayLanguageManager getTextWithKey:@"select_contact"];
    return [MakeManager cell:[LapData kNameCharityData]];
}

//: - (DisplayKitInfo *)getInfoById:(NSString *)selectedId {
- (CancelTeamCorner *)frame:(NSString *)selectedId {
    //: DisplayKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[Mortification text] tingVoice:selectedId keepingOption:nil];
    //: return info;
    return info;
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)buttonDelete:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(startAnd)]) {
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

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation MessageConfig : NSObject

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)outIndex:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    canCalculation:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 blue:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    UserRecord *groupedData = [[UserRecord alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self separate:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        ActionValueMember *user = [[ActionValueMember alloc] initWithDate:uid
                                                                       //: session:_session];
                                                                       current:_session];
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

//: - (DisplayKitInfo *)getInfoById:(NSString *)selectedId {
- (CancelTeamCorner *)frame:(NSString *)selectedId {
    //: DisplayKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[Mortification text] tingVoice:selectedId keepingOption:option];
    //: return info;
    return info;
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)societyWithBeak{
    //: return @"选择超限".nim_localized;
    return [LapData kName_ridiculousString].disable;
}

//: - (NSString *)title{
- (NSString *)languageKit{
    //: return [DisplayLanguageManager getTextWithKey:@"select_contact"];
    return [MakeManager cell:[LapData kNameCharityData]];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)separate:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(startAnd)]) {
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

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)doing:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            switchense:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            noColor:(NIMContactDataProviderHandler)handler {
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
                [weakSelf outIndex:teamID
                                      //: uids:uids
                                      canCalculation:uids
                                   //: handler:handler];
                                   blue:handler];
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
                [weakSelf outIndex:teamID
                                      //: uids:uids
                                      canCalculation:uids
                                   //: handler:handler];
                                   blue:handler];
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

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)linkData:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self doing:_teamId
                              //: teamType:_teamType
                              switchense:_teamType
                               //: handler:handler];
                               noColor:handler];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)checkedNum{
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

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation LabelTarget : NSObject

//: - (NSString *)title{
- (NSString *)languageKit{
    //: return @"选择群组".nim_localized;
    return [LapData kTitle_poetContent].disable;
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)societyWithBeak{
    //: return @"选择超限".nim_localized;
    return [LapData kName_ridiculousString].disable;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)shared:(NIMKitTeamType)teamType {
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
    return [self sendHighlight:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)linkData:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self shared:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    UserRecord *groupedData = [[UserRecord alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <DisplayRow>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        NameTeam *team = [[NameTeam alloc] initWithValue:tid message:_teamType];
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

//: - (DisplayKitInfo *)getInfoById:(NSString *)selectedId {
- (CancelTeamCorner *)frame:(NSString *)selectedId {
    //: DisplayKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[Mortification text] ability:selectedId naturalEvent_strong:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[Mortification text] cellList:selectedId view:nil];
    }
    //: return info;
    return info;
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)sendHighlight:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(startAnd)]) {
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

//: - (NSInteger)maxSelectedNum{
- (NSInteger)checkedNum{
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

//: @end
@end
