// __DEBUG__
// __CLOSE_PRINT__
//
//  TradingCardViewController.h
// ButtonKit
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "WatchTeamCardViewController.h"
#import "ChronicleViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface WatchTeamCardViewControllerOption : NSObject
@interface NakedOptionRecent : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface WatchTeamCardOperationViewController : WatchTeamCardViewController
@interface TradingCardViewController : ChronicleViewController

//外部配置
//: @property (nonatomic,strong) WatchTeamCardViewControllerOption *option;
@property (nonatomic,strong) NakedOptionRecent *option;

//群组管理
//: @property (nonatomic,strong) WatchTeamListDataManager *teamListManager;
@property (nonatomic,strong) MetadataManager *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithGlitter:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     withOption:(NIMSession *)session
                      //: option:(WatchTeamCardViewControllerOption * _Nullable)option;
                      tutorial_strong:(NakedOptionRecent * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable WatchMembersFetchOption *)option;
- (void)grayMember:(nullable ButtonOption *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)bar:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            invite:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)willQueryed:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)show:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)enableNick:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)towardScaleTable:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)bottom:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)display:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)uniteSend:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)paletteMode:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)modifyWithoutMode:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)cell:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)can:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)show:(NSString *)userId analogDigitalConverterImage:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)cellCover;

//解散群组
//: - (void)didDismissTeam;
- (void)backgroundSize;

//: - (void)reloadData;
- (void)metadata;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
