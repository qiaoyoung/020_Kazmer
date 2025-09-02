// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionTipCell.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "CompartmentPathDelegate.h"
#import "CompartmentPathDelegate.h"

//: @class DisplayTimestampModel;
@class WithPage;

//: @interface DisplaySessionTimestampCell : UITableViewCell
@interface TeamViewCell : UITableViewCell

//: @property (strong, nonatomic) UIImageView *timeBGView;
@property (strong, nonatomic) UIImageView *timeBGView;

//: @property (strong, nonatomic) UILabel *timeLabel;
@property (strong, nonatomic) UILabel *timeLabel;

//: - (void)refreshData:(DisplayTimestampModel *)data;
- (void)count:(WithPage *)data;

//: @end
@end
