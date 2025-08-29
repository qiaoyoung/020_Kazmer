// __DEBUG__
// __CLOSE_PRINT__
//
//  USERContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "CancelTeamCorner.h"

//: @protocol FFFContactDataCellDelegate <NSObject>
@protocol DenominateDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)instanceAvatar:(NSString *)memberId;

//: @end
@end

//: @class FFFAvatarImageView;
@class MemoryImageControl;

//: @interface FFFContactDataCell : UITableViewCell
@interface ContactViewCell : UITableViewCell

//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) MemoryImageControl * avatarImageView;
//: @property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<DenominateDelegate> delegate;
//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)temp:(id<DisplayRow>)member;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)pathColor:(id<DisplayRow>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)progressTeam:(NIMTeam *)team;

//: @end
@end