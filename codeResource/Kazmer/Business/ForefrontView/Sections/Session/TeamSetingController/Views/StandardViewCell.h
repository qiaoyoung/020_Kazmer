// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayCardUserDelegate.h"
#import "DisplayCardUserDelegate.h"

//: @class DisplayAvatarImageView;
@class MemoryImageControl;


//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NIMMemberCardCellDelegate <NSObject>
@protocol RotarianPageDelegateView <NSObject>

//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute;
- (void)writtenRecord:(NSString *)uid behindMember:(BOOL)mute;
//: - (void)cellShouldBeRemoved:(NSString *)uid;
- (void)lines:(NSString *)uid;

//: @end
@end


//: @interface DisplayGroupMemberTableViewCell : UITableViewCell
@interface StandardViewCell : UITableViewCell


//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<NIMMemberCardCellDelegate>delegate;
@property (nonatomic,weak) id<RotarianPageDelegateView>delegate;

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;
//: @property (nonatomic,strong) UIButton *muteBtn;
@property (nonatomic,strong) UIButton *muteBtn;


//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: - (void)reloadWithUserId:(NSString *)UserId;
- (void)my:(NSString *)UserId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)along:(UITableView *)tableView;

//: @property (nonatomic,strong) UILabel *subtitleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

//: @end
@end





//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
