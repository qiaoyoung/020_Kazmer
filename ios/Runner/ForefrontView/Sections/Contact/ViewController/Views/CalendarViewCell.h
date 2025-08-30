// __DEBUG__
// __CLOSE_PRINT__
//
//  CalendarViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayContactDefines.h"
#import "DisplayContactDefines.h"
//: #import "DisplayKitInfo.h"
#import "CancelTeamCorner.h"
//: #import "USERContactDataMember.h"
#import "InformationMember.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol USERUserListCellDelegate <NSObject>
@protocol EasyLayDelegate <NSObject>

//: - (void)didTouchMessageButton:(NSString *)memberId;
- (void)touchTingFastening:(NSString *)memberId;

//: @end
@end

//: @interface USERFriendListTableViewCell : UITableViewCell
@interface CalendarViewCell : UITableViewCell

//: @property(nonatomic, strong) UIImageView *iconImageView;
@property(nonatomic, strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *videoBtn;
@property (nonatomic,strong) UIButton *videoBtn;
//: @property (nonatomic,strong) UIButton *messageBtn;
@property (nonatomic,strong) UIButton *messageBtn;
//: @property (nonatomic,weak) id<USERUserListCellDelegate> delegate;
@property (nonatomic,weak) id<EasyLayDelegate> delegate;

//: @property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *titleLabel;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)numerosity:(id<DisplayRow>)member;

//: - (void)reloadUserItem:(NIMUser *)user;
- (void)usufructuary:(NIMUser *)user;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)tingView:(UITableView *)tableView;

//: + (CGFloat)getCellHeight:(NSDictionary*)information;
+ (CGFloat)imageInput:(NSDictionary*)information;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)member:(NIMTeam *)team;

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
