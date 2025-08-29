// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "WisecrackViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERContactGroupCell : BaseTableViewCell
@interface MaxViewCell : WisecrackViewCell
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) MemoryImageControl *avatar;
//: @property (nonatomic ,strong) UIImageView *iconImageView;
@property (nonatomic ,strong) UIImageView *iconImageView;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END