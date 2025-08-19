// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchUsrInfoData.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchContactDefines.h"
#import "WatchContactDefines.h"

//: @class WatchKitInfo;
@class TingMessage;

//: @interface RiverlaUsrInfo : NSObject <NIMGroupMemberProtocol>
@interface FrameOld : NSObject <VarnaSessionProtocolUser>

//: @property (nonatomic,strong) WatchKitInfo *info;
@property (nonatomic,strong) TingMessage *info;

//: - (BOOL)isFriend;
- (BOOL)memberInFriend;

//: @end
@end
