// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "WisecrackViewCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERRegistCustomCell : BaseTableViewCell
@interface LabelViewCell : WisecrackViewCell
//: @property (nonatomic, strong) UIImageView *arrowImageView;
@property (nonatomic, strong) UIImageView *arrowImageView;
//: @property (nonatomic, strong) UITextField *contentTextField;
@property (nonatomic, strong) UITextField *contentTextField;
//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;
//: @property (nonatomic, strong) UIImageView *headerImageView;
@property (nonatomic, strong) UIImageView *headerImageView;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END