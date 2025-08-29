//
//  USERBlackListTableViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USERContactDataMember.h"
#import "FFFCardDataSourceProtocol.h"

NS_ASSUME_NONNULL_BEGIN


@protocol USERUserListCellDelegate <NSObject>

- (void)didTouchCancleButton:(USERContactDataMember *)dataMemeber;
//- (void)didTouchUserListAvatar:(NSString *)userId;
- (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber;

@end

@interface USERBlackListTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property(nonatomic, strong) UILabel *labName;
@property (nonatomic,strong) UIImageView * avatarImageView;
@property (nonatomic,strong) UIButton *cancleBtn;

@property (nonatomic,strong) USERContactDataMember *member;
- (void)refreshWithMember:(USERContactDataMember *)member;
@property (nonatomic,weak) id<USERUserListCellDelegate> delegate;

@property (nonatomic,assign) BOOL isteam;
@property (nonatomic,strong) NIMTeamMember *data;
- (void)refreshData:(NIMTeamMember *)data;


@end

NS_ASSUME_NONNULL_END
