// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NameLoginOptionProtocol.h"
#import "NameLoginOptionProtocol.h"

//: @interface NIMCardMemberItem : NSObject<WatchKitCardHeaderData>
@interface TitleTimeMessage : NSObject<WatchKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface WatchTeamCardMemberItem : NSObject<WatchKitCardHeaderData>
@interface CoatButtonBar : NSObject<WatchKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithDisplay:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      recordingDownTeamType:(NIMTeamType)teamType;

//: @end
@end
