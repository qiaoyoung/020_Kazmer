// __DEBUG__
// __CLOSE_PRINT__
//
//  TextEnableViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "NameLoginOptionProtocol.h"
#import "NameLoginOptionProtocol.h"

//: @class WatchAvatarImageView;
@class RecordControl;


//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NIMMemberCardCellDelegate <NSObject>
@protocol SpecsDelegate <NSObject>

//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute;
- (void)content:(NSString *)uid colorText:(BOOL)mute;
//: - (void)cellShouldBeRemoved:(NSString *)uid;
- (void)willed:(NSString *)uid;

//: @end
@end


//: @interface WatchGroupMemberTableViewCell : UITableViewCell
@interface TextEnableViewCell : UITableViewCell


//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subtitleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;
//: @property (nonatomic,strong) UIButton *muteBtn;
@property (nonatomic,strong) UIButton *muteBtn;


//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: - (void)reloadWithUserId:(NSString *)UserId;
- (void)barId:(NSString *)UserId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)read:(UITableView *)tableView;

//: @property (nonatomic,weak) id<NIMMemberCardCellDelegate>delegate;
@property (nonatomic,weak) id<SpecsDelegate>delegate;

//: @end
@end





//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
