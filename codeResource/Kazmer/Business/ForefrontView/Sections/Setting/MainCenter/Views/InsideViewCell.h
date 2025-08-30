// __DEBUG__
// __CLOSE_PRINT__
//
//  InsideViewCell.h
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "WisecrackViewCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERRedpackageDetailCell : BaseTableViewCell
@interface InsideViewCell : WisecrackViewCell
//: @property (nonatomic ,strong) UIImageView *headerImage;
@property (nonatomic ,strong) UIImageView *headerImage;
//: @property (nonatomic ,strong) UILabel *nickNameLabel;
@property (nonatomic ,strong) UILabel *nickNameLabel;
//: @property (nonatomic ,strong) UILabel *contentLabel;
@property (nonatomic ,strong) UILabel *contentLabel;
//: @property (nonatomic ,strong) UIButton *backButton;
@property (nonatomic ,strong) UIButton *backButton;
//: @property (nonatomic ,strong) UILabel *wordLabel;
@property (nonatomic ,strong) UILabel *wordLabel;
//: @end
@end



//: @interface USERRedpackageDetailListCell : BaseTableViewCell
@interface ShouldViewCell : WisecrackViewCell
//: @property (nonatomic ,strong) UILabel *timeLabel;
@property (nonatomic ,strong) UILabel *timeLabel;
//: @property (nonatomic ,strong) UIImageView *praiseImage;
@property (nonatomic ,strong) UIImageView *praiseImage;
//: @property (nonatomic ,strong) UILabel *nickNameLabel;
@property (nonatomic ,strong) UILabel *nickNameLabel;
//: @property (nonatomic ,strong) UILabel *redAmountLabel;
@property (nonatomic ,strong) UILabel *redAmountLabel;
//: @property (nonatomic ,strong) UIImageView *headerImage;
@property (nonatomic ,strong) UIImageView *headerImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END