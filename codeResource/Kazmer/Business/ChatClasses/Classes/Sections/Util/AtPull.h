// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.h
// Mortification
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFKitUtil : NSObject
@interface AtPull : NSObject

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member;
+ (BOOL)parameter:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member;
+ (BOOL)color:(NIMTeamMember *)member;

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds;
+ (NSString *)ting:(NSTimeInterval)seconds;

//: + (NSString *)showTime:(NSTimeInterval)msglastTime showDetail:(BOOL)showDetail;
+ (NSString *)account:(NSTimeInterval)msglastTime notice:(BOOL)showDetail;

//: + (NSString *)messageTipContent:(NIMMessage *)message;
+ (NSString *)view:(NIMMessage *)message;

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member;
+ (BOOL)location:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member;
+ (BOOL)scale:(NIMTeamMember *)member;

//: + (NSString *)showNick:(NSString *)uid inSession:(NIMSession *)session;
+ (NSString *)can:(NSString *)uid changeSession:(NIMSession *)session;

//: + (NSString *)showNick:(NSString *)uid inMessage:(NIMMessage *)message;
+ (NSString *)cypher:(NSString *)uid bringHomeLikeCipher:(NIMMessage *)message;

//: @end
@end