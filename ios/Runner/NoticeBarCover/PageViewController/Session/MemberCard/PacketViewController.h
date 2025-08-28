// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketViewController.h
// ButtonKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchTeamMemberListDataSource.h"
#import "EventColor.h"
//: #import "WatchTeamListDataManager.h"
#import "MetadataManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WatchTeamMuteMemberListViewController : UIViewController
@interface PacketViewController : UIViewController

//: @property (nonatomic,strong) WatchTeamListDataManager *teamListManager;
@property (nonatomic,strong) MetadataManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
