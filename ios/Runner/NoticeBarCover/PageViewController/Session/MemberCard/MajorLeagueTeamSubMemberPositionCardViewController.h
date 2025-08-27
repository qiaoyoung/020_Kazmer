// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchTeamCardMemberItem.h"
#import "CoatButtonBar.h"
//: #import "WatchTeamMemberListDataSource.h"
#import "EventColor.h"
//: #import "WatchTeamListDataManager.h"
#import "MetadataManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol ToDelegate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(WatchTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)mute:(CoatButtonBar *)member be:(BOOL)mute;
//: - (void)onTeamMemberKicked:(WatchTeamCardMemberItem *)member;
- (void)onRandomLiquidEcstasy:(CoatButtonBar *)member;

//: @end
@end

//: @interface WatchTeamMemberCardViewController : UIViewController
@interface MajorLeagueTeamSubMemberPositionCardViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<ToDelegate> delegate;

//: @property (nonatomic, strong) WatchTeamListDataManager *teamListManager;
@property (nonatomic, strong) MetadataManager *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end
