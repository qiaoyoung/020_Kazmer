// __DEBUG__
// __CLOSE_PRINT__
//
//  CorrelationTableButtonViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol MakeTime <NSObject>

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber;
- (void)forks:(TimeMember *)dataMemeber;
//- (void)didTouchUserListAvatar:(NSString *)userId;
//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber;
- (void)paths:(NIMTeamMember *)teamMemeber;

//: @end
@end

//: @interface NTESBlackListTableViewCell : UITableViewCell
@interface CorrelationTableButtonViewCell : UITableViewCell

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)m:(UITableView *)tableView;

//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property (nonatomic,strong) UIImageView * avatarImageView;
@property (nonatomic,strong) UIImageView * avatarImageView;
//: @property (nonatomic,strong) UIButton *cancleBtn;
@property (nonatomic,strong) UIButton *cancleBtn;

//: @property (nonatomic,strong) NTESContactDataMember *member;
@property (nonatomic,strong) TimeMember *member;
//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)itemCan:(TimeMember *)member;
//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<MakeTime> delegate;

//: @property (nonatomic,assign) BOOL isteam;
@property (nonatomic,assign) BOOL isteam;
//: @property (nonatomic,strong) NIMTeamMember *data;
@property (nonatomic,strong) NIMTeamMember *data;
//: - (void)refreshData:(NIMTeamMember *)data;
- (void)addFlush:(NIMTeamMember *)data;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END