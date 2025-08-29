// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTopViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class MemoryImageControl;
//: @class USERContactDataMember;
@class InformationMember;


//: @protocol USERUserListCellDelegate <NSObject>
@protocol EasyLayDelegate <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)jostleDownwardsLoadUp:(NSString *)userId;

//: @end
@end

//: @interface USERUserListCell : UITableViewCell
@interface CommentTopViewCell : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) MemoryImageControl * avatarImageView;

//: @property (nonatomic,weak) id<USERUserListCellDelegate> delegate;
@property (nonatomic,weak) id<EasyLayDelegate> delegate;

//: - (void)refreshWithMember:(USERContactDataMember *)member;
- (void)barLabel:(InformationMember *)member;

//: @end
@end