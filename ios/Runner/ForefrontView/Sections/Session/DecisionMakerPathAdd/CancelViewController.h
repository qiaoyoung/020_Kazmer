// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelViewController.h
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
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

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface TeamMemberNormalViewController : UIViewController
@interface CancelViewController : UIViewController

//: @property (nonatomic,strong) DisplayTeamListDataManager *teamListManager;
@property (nonatomic,strong) MentionManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
