// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageModeView.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WatchAvatarImageView;
@class RecordControl;
//: @class NTESContactDataMember;
@class TimeMember;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol MakeTime <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)progressAvatar:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface MessageModeView : UITableViewCell

//: @property (nonatomic,strong) WatchAvatarImageView * avatarImageView;
@property (nonatomic,strong) RecordControl * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<MakeTime> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)beyondTimeMember:(TimeMember *)member;

//: @end
@end
