//
//  USERUserListCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFFAvatarImageView;
@class USERContactDataMember;


@protocol USERUserListCellDelegate <NSObject>

- (void)didTouchUserListAvatar:(NSString *)userId;

@end

@interface USERUserListCell : UITableViewCell

@property (nonatomic,strong) FFFAvatarImageView * avatarImageView;

@property (nonatomic,weak) id<USERUserListCellDelegate> delegate;

- (void)refreshWithMember:(USERContactDataMember *)member;

@end
