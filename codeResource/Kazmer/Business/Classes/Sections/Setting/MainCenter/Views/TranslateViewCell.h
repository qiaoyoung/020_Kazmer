// __DEBUG__
// __CLOSE_PRINT__
//
//  TranslateViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "USERContactDataMember.h"
#import "InformationMember.h"
//: #import "DisplayCardDataSourceProtocol.h"
#import "DisplayCardDataSourceProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol USERUserListCellDelegate <NSObject>
@protocol EasyLayDelegate <NSObject>

//: - (void)didTouchCancleButton:(USERContactDataMember *)dataMemeber;
- (void)cancled:(InformationMember *)dataMemeber;
//- (void)didTouchUserListAvatar:(NSString *)userId;
//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber;
- (void)maxButton:(NIMTeamMember *)teamMemeber;

//: @end
@end

//: @interface USERBlackListTableViewCell : UITableViewCell
@interface TranslateViewCell : UITableViewCell

//: - (void)refreshWithMember:(USERContactDataMember *)member;
- (void)show:(InformationMember *)member;

//: @property (nonatomic,strong) UIImageView * avatarImageView;
@property (nonatomic,strong) UIImageView * avatarImageView;
//: @property (nonatomic,strong) NIMTeamMember *data;
@property (nonatomic,strong) NIMTeamMember *data;
//: @property (nonatomic,weak) id<USERUserListCellDelegate> delegate;
@property (nonatomic,weak) id<EasyLayDelegate> delegate;

//: @property (nonatomic,strong) UIButton *cancleBtn;
@property (nonatomic,strong) UIButton *cancleBtn;
//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)red:(UITableView *)tableView;
//: @property (nonatomic,strong) USERContactDataMember *member;
@property (nonatomic,strong) InformationMember *member;

//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property (nonatomic,assign) BOOL isteam;
@property (nonatomic,assign) BOOL isteam;
//: - (void)refreshData:(NIMTeamMember *)data;
- (void)bringUp:(NIMTeamMember *)data;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
