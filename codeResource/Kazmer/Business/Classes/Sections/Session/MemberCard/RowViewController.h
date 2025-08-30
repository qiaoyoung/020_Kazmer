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
//: #import "DisplayTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "DisplayTeamMemberListDataSource.h"
#import "AccountSource.h"
//: #import "DisplayTeamListDataManager.h"
#import "MentionManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol ActionDelegate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(DisplayTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)tool:(IndexItem *)member pictureMute:(BOOL)mute;
//: - (void)onTeamMemberKicked:(DisplayTeamCardMemberItem *)member;
- (void)mustKicked:(IndexItem *)member;

//: @end
@end

//: @interface DisplayTeamMemberCardViewController : UIViewController
@interface RowViewController : UIViewController

//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;

//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;
//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<ActionDelegate> delegate;
//: @property (nonatomic, strong) DisplayTeamListDataManager *teamListManager;
@property (nonatomic, strong) MentionManager *teamListManager;

//: @end
@end
