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
//: #import "FFFTeamMemberListDataSource.h"
#import "EventColor.h"
//: #import "FFFTeamListDataManager.h"
#import "MetadataManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTeamMuteMemberListViewController : UIViewController
@interface PacketViewController : UIViewController

//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) MetadataManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END