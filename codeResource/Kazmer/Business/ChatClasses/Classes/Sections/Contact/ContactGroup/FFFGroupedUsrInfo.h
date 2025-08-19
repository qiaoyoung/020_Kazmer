// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface RecordUser:NSObject<VarnaSessionProtocolUser>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) TingMessage *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithItemMenu:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface ImageInfo:NSObject<VarnaSessionProtocolUser>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) TingMessage *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithBarroom:(NSString *)userId
                       //: session:(NIMSession *)session;
                       end:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface CellBottom:NSObject<VarnaSessionProtocolUser>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) TingMessage *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithGegenschein:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      globule:(NIMKitTeamType)teamType;

//: @end
@end