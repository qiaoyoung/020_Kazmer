// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
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
//: #import "WatchTeamMemberListDataSource.h"
#import "EventColor.h"
//: #import "WatchTeamListDataManager.h"
#import "MetadataManager.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface ReplacementViewController : UIViewController

//: @property (nonatomic,strong) WatchTeamListDataManager *teamListManager;
@property (nonatomic,strong) MetadataManager *teamListManager;

//: - (instancetype)initWithDataSource:(WatchTeamListDataManager *)dataSource;
- (instancetype)initWithRecord:(MetadataManager *)dataSource;

//: @end
@end
