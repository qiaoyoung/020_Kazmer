// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeBubble.h
// ButtonKit
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFKitSelectCardData;
@protocol FFFKitSelectCardData;

//: @interface FFFTeamHelper : NSObject
@interface MakeBubble : NSObject

//验证方式
//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode;
+ (NSString *)title:(NIMTeamJoinMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)bottom:(NIMTeamJoinMode)mode;

//邀请模式
//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode;
+ (NSString *)with:(NIMTeamInviteMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)pastSeleced:(NIMTeamInviteMode)mode;

//被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes;
+ (NSArray<NSDictionary *> *)betweenMaxModes;

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode;
+ (NSString *)property:(NIMTeamBeInviteMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)name:(NIMTeamBeInviteMode)mode;

//信息修改权限
//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode;
+ (NSString *)message:(NIMTeamUpdateInfoMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)signalSeleced:(NIMTeamUpdateInfoMode)mode;

//消息接受状态
//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state;
+ (NSString *)findFrame:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)tingViewSeleced:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)label:(NIMTeamNotifyState)state;

//成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type;
+ (NSString *)kind:(NIMTeamMemberType)type;

//: + (nullable UIImage *)imageWithMemberType:(NIMTeamMemberType)type;
+ (nullable UIImage *)streetwiseType:(NIMTeamMemberType)type;

//群禁言
//: + (NSString *)teamMuteText:(BOOL)isMute;
+ (NSString *)text:(BOOL)isMute;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute;
+ (NSMutableArray<id <FFFKitSelectCardData>> *)max:(BOOL)isMute;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END