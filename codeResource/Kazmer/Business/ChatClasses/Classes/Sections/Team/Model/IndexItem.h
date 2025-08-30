// __DEBUG__
// __CLOSE_PRINT__
//
//  USERTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayCardDataSourceProtocol.h"
#import "DisplayCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<DisplayKitCardHeaderData>
@interface FellowMemberItem : NSObject<HalogenComment>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface DisplayTeamCardMemberItem : NSObject<DisplayKitCardHeaderData>
@interface IndexItem : NSObject<HalogenComment>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithName:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      majorLeagueTeam:(NIMTeamType)teamType;

//: @end
@end
