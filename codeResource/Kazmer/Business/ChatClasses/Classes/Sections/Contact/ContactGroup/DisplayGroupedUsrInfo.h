// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayContactDefines.h"
#import "DisplayContactDefines.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface LengthAggregationUser:NSObject<DisplayRow>

//: @property (nonatomic,readonly) DisplayKitInfo *info;
@property (nonatomic,readonly) CancelTeamCorner *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithStreetSmart:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface ActionValueMember:NSObject<DisplayRow>

//: @property (nonatomic,readonly) DisplayKitInfo *info;
@property (nonatomic,readonly) CancelTeamCorner *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithDate:(NSString *)userId
                       //: session:(NIMSession *)session;
                       current:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface NameTeam:NSObject<DisplayRow>

//: @property (nonatomic,readonly) DisplayKitInfo *info;
@property (nonatomic,readonly) CancelTeamCorner *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithValue:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      message:(NIMKitTeamType)teamType;

//: @end
@end
