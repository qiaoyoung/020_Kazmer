// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxHelper.h
// Mortification
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
#import "Mortification.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFKitSelectCardData;
@protocol ChangeLength;

//: @interface FFFTeamHelper : NSObject
@interface MaxHelper : NSObject

//验证方式
//: + (NSMutableArray<id <FFFKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode;
+ (NSMutableArray<id <ChangeLength>> *)arouse:(NIMTeamBeInviteMode)mode;

//群禁言
//: + (NSString *)teamMuteText:(BOOL)isMute;
+ (NSString *)sovietSocialistRepublicText:(BOOL)isMute;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <ChangeLength>> *)itemsKey:(NIMTeamNotifyState)state;

//邀请模式
//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode;
+ (NSString *)futurism:(NIMTeamInviteMode)mode;

//成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type;
+ (NSString *)queryed:(NIMTeamMemberType)type;

//信息修改权限
//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode;
+ (NSString *)object:(NIMTeamUpdateInfoMode)mode;

//被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes;
+ (NSArray<NSDictionary *> *)title;

//: + (nullable UIImage *)imageWithMemberType:(NIMTeamMemberType)type;
+ (nullable UIImage *)tip:(NIMTeamMemberType)type;

//消息接受状态
//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state;
+ (NSString *)layer:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode;
+ (NSMutableArray<id <ChangeLength>> *)attemper:(NIMTeamUpdateInfoMode)mode;

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode;
+ (NSString *)device:(NIMTeamBeInviteMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode;
+ (NSMutableArray<id <ChangeLength>> *)bilocation:(NIMTeamJoinMode)mode;

//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode;
+ (NSString *)modeTing:(NIMTeamJoinMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode;
+ (NSMutableArray<id <ChangeLength>> *)asShould:(NIMTeamInviteMode)mode;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <ChangeLength>> *)sunna:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <FFFKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute;
+ (NSMutableArray<id <ChangeLength>> *)withObject:(BOOL)isMute;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END