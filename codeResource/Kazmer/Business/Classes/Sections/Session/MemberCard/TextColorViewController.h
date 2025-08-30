// __DEBUG__
// __CLOSE_PRINT__
//
//  TextColorViewController.h
// Mortification
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayTeamMemberListDataSource.h"
#import "AccountSource.h"
//: #import "DisplayTeamListDataManager.h"
#import "MentionManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface DisplayTeamMuteMemberListViewController : UIViewController
@interface TextColorViewController : UIViewController

//: @property (nonatomic,strong) DisplayTeamListDataManager *teamListManager;
@property (nonatomic,strong) MentionManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
