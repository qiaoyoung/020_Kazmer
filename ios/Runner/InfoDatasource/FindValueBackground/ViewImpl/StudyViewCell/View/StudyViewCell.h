// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.h
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WatchAvatarImageView;
@class RecordControl;
//: @class NIMRecentSession;
@class NIMRecentSession;
//: @class NTESBadgeView;
@class PinBadgeView;

//: @interface WatchSessionListCell : UITableViewCell
@interface StudyViewCell : UITableViewCell

//: @property (nonatomic,strong) WatchAvatarImageView *avatarImageView;
@property (nonatomic,strong) RecordControl *avatarImageView;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *messageLabel;
@property (nonatomic,strong) UILabel *messageLabel;

//: @property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UILabel *timeLabel;

//: @property (nonatomic,strong) NTESBadgeView *badgeView;
@property (nonatomic,strong) PinBadgeView *badgeView;

//: @property (nonatomic,strong) UIImageView *disnodistrubImg;
@property (nonatomic,strong) UIImageView *disnodistrubImg;

//: - (void)refresh:(NIMRecentSession*)recent;
- (void)child:(NIMRecentSession*)recent;

//: @end
@end
