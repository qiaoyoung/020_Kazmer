// __DEBUG__
// __CLOSE_PRINT__
//
//  TableViewCell.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WatchTeamSwitchTableViewCell;
@class TableViewCell;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol FollowProtocol <NSObject>
//: - (void)cell:(WatchTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)find:(TableViewCell *)cell colorWhen:(BOOL)on;
//: @end
@end

//: @interface WatchTeamSwitchTableViewCell : UITableViewCell
@interface TableViewCell : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<FollowProtocol> switchDelegate;

//: @end
@end
