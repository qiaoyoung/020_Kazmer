// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountSource.h
// Mortification
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "DisplayMembersFetchOption.h"
#import "LengthOption.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<DisplayTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<IndexItem *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol DisplayTeamOperation <NSObject>
@protocol ActivityImage <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)length:(NSArray *)userIds
            //: info:(NSDictionary *)info
            exceptName:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      step:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)moveCompletion:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       holder:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)play:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    quickDataBlock:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)centerTo:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              wordPainting:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)fromQuantity:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            alter:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)inputName:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            will:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)magnitude:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             endue:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)messageSize:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            save:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)keep:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                frame:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)inputBeMessage:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  image:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)magnitude:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                nutsAndBolts:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)touch:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   soundChild:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)with:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    permit:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)title:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         viewCompletion:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)with:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            underRemove:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)cellBefore:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           can:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      person:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)text:(NSString *)userId
                  //: nick:(NSString *)nick
                  showName:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            frame:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)magnitudelessness:(NSString *)userId
                       //: mute:(BOOL)mute
                       programme:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 color:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(DisplayMembersFetchOption * _Nullable )option
- (void)atTitle:(LengthOption * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        seatCompletion:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)nim:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)placeRed:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)nowadays:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol DisplayTeamMemberListDataSource <DisplayTeamOperation>
@protocol AccountSource <ActivityImage>

//: - (NIMTeam *)team;
- (NIMTeam *)telephoneMessage;

//: - (NIMSession *)session;
- (NIMSession *)session;

//: - (NSInteger)memberNumber;
- (NSInteger)digitizerTap;

//: - (NSMutableArray <DisplayTeamCardMemberItem *> *)members;
- (NSMutableArray <IndexItem *> *)tableMessage;

//: - (DisplayTeamCardMemberItem *)myCard;
- (IndexItem *)doing;

//: - (DisplayTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (IndexItem *)memberNameRecessWearer:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
