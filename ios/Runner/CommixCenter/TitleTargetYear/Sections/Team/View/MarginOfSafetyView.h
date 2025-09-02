// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginOfSafetyView.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class DisplayTeamSwitchTableViewCell;
@class MarginOfSafetyView;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol MaxReplyProtocol <NSObject>
//: - (void)cell:(DisplayTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)sash:(MarginOfSafetyView *)cell colorLabel:(BOOL)on;
//: @end
@end

//: @interface DisplayTeamSwitchTableViewCell : UITableViewCell
@interface MarginOfSafetyView : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<MaxReplyProtocol> switchDelegate;

//: @end
@end
