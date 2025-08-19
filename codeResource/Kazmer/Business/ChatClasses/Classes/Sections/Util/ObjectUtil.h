// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.h
// ButtonKit
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"

//: @interface WatchKitUtil : NSObject
@interface ObjectUtil : NSObject

//: + (NSString *)showNick:(NSString *)uid inMessage:(NIMMessage *)message;
+ (NSString *)withTitle:(NSString *)uid session:(NIMMessage *)message;

//: + (NSString *)showNick:(NSString *)uid inSession:(NIMSession *)session;
+ (NSString *)message:(NSString *)uid sessionView:(NIMSession *)session;

//: + (NSString *)showTime:(NSTimeInterval)msglastTime showDetail:(BOOL)showDetail;
+ (NSString *)pinTextDetail:(NSTimeInterval)msglastTime keyDoing:(BOOL)showDetail;

//: + (NSString *)messageTipContent:(NIMMessage *)message;
+ (NSString *)complete:(NIMMessage *)message;

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds;
+ (NSString *)textLabel:(NSTimeInterval)seconds;

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member;
+ (BOOL)window:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member;
+ (BOOL)showShould:(NIMTeamMember *)member;

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member;
+ (BOOL)input:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member;
+ (BOOL)memberTeam:(NIMTeamMember *)member;

//: @end
@end
