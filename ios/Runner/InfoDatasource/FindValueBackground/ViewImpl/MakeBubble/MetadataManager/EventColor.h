// __DEBUG__
// __CLOSE_PRINT__
//
//  EventColor.h
// ButtonKit
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "WatchMembersFetchOption.h"
#import "ButtonOption.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<WatchTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<CoatButtonBar *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol WatchTeamOperation <NSObject>
@protocol RecordOperation <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)image:(NSArray *)userIds
            //: info:(NSDictionary *)info
            timeSend:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      blue:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)magnitudeerval:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       completion:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)flush:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    upwardlyRecord:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)green:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              qualifyCompletion:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)media:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            translate:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)image:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            infoTop:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)liquidEcstasy:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             afterDataBlock:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)rootName:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            modifyCompletionMuteTeam:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)cypher:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                cut:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)session:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  response:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)associate:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                info:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)ditheredColor:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   showSizeCompletion:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)my:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    onScreenCompletion:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)add:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         info:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)refresh:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            progress:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)clear:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           refer:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      imageCompletion:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)content:(NSString *)userId
                  //: nick:(NSString *)nick
                  to:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            formatCompletion:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)modifyCan:(NSString *)userId
                       //: mute:(BOOL)mute
                       modifyFromCompletion:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 mute:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(WatchMembersFetchOption * _Nullable )option
- (void)frameCompletion:(ButtonOption * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        event:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)label:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)rubricSuccess:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)pinCompletion:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol WatchTeamMemberListDataSource <WatchTeamOperation>
@protocol EventColor <RecordOperation>

//: - (NIMTeam *)team;
- (NIMTeam *)center;

//: - (NIMSession *)session;
- (NIMSession *)session;

//: - (NSInteger)memberNumber;
- (NSInteger)table;

//: - (NSMutableArray <WatchTeamCardMemberItem *> *)members;
- (NSMutableArray <CoatButtonBar *> *)doingArray;

//: - (WatchTeamCardMemberItem *)myCard;
- (CoatButtonBar *)thinkOf;

//: - (WatchTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (CoatButtonBar *)max:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
