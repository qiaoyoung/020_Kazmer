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
//: #import "FFFTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "FFFTeamMemberListDataSource.h"
#import "AccountSource.h"
//: #import "FFFTeamListDataManager.h"
#import "MentionManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol ActionDelegate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(FFFTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)tool:(IndexItem *)member pictureMute:(BOOL)mute;
//: - (void)onTeamMemberKicked:(FFFTeamCardMemberItem *)member;
- (void)mustKicked:(IndexItem *)member;

//: @end
@end

//: @interface FFFTeamMemberCardViewController : UIViewController
@interface RowViewController : UIViewController

//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;

//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;
//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<ActionDelegate> delegate;
//: @property (nonatomic, strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic, strong) MentionManager *teamListManager;

//: @end
@end