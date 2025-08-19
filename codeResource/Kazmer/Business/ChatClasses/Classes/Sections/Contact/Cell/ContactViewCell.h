// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchContactDefines.h"
#import "WatchContactDefines.h"
//: #import "WatchKitInfo.h"
#import "TingMessage.h"

//: @protocol WatchContactDataCellDelegate <NSObject>
@protocol ZoneDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)optionLoad:(NSString *)memberId;

//: @end
@end

//: @class WatchAvatarImageView;
@class RecordControl;

//: @interface WatchContactDataCell : UITableViewCell
@interface ContactViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) WatchAvatarImageView * avatarImageView;
@property (nonatomic,strong) RecordControl * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<WatchContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<ZoneDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)range:(id<VarnaSessionProtocolUser>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)flush:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)upgrade:(id<VarnaSessionProtocolUser>)member;

//: @end
@end
