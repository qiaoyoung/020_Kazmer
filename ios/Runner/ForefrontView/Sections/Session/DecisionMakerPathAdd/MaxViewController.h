// __DEBUG__
// __CLOSE_PRINT__
//
//  USERTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayTeamMemberListDataSource.h"
#import "AccountSource.h"
//: #import "DisplayTeamListDataManager.h"
#import "MentionManager.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface MaxViewController : UIViewController

//: @property (nonatomic,strong) DisplayTeamListDataManager *teamListManager;
@property (nonatomic,strong) MentionManager *teamListManager;

//: - (instancetype)initWithDataSource:(DisplayTeamListDataManager *)dataSource;
- (instancetype)initWithCellName:(MentionManager *)dataSource;

//: @end
@end
