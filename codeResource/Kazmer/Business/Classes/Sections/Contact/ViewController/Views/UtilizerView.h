// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilizerView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "TingMessage.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESUserListCellDelegate <NSObject>
@protocol MakeTime <NSObject>

//: - (void)didTouchMessageButton:(NSString *)memberId;
- (void)fastening:(NSString *)memberId;

//: @end
@end

//: @interface NTESFriendListTableViewCell : UITableViewCell
@interface UtilizerView : UITableViewCell

//: @property(nonatomic, strong) UIImageView *iconImageView;
@property(nonatomic, strong) UIImageView *iconImageView;
//: @property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *messageBtn;
@property (nonatomic,strong) UIButton *messageBtn;
//: @property (nonatomic,strong) UIButton *videoBtn;
@property (nonatomic,strong) UIButton *videoBtn;

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)ting:(UITableView *)tableView;

//: + (CGFloat)getCellHeight:(NSDictionary*)information;
+ (CGFloat)team:(NSDictionary*)information;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)onBarUser:(id<VarnaSessionProtocolUser>)member;

//: - (void)reloadUserItem:(NIMUser *)user;
- (void)dayStandard:(NIMUser *)user;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)visualization:(NIMTeam *)team;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<MakeTime> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END