//
//  USERRedpackageDetailCell.h
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "BaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface USERRedpackageDetailCell : BaseTableViewCell
@property (nonatomic ,strong) UIButton *backButton;
@property (nonatomic ,strong) UILabel *nickNameLabel;
@property (nonatomic ,strong) UIImageView *headerImage;
@property (nonatomic ,strong) UILabel *wordLabel;
@property (nonatomic ,strong) UILabel *contentLabel;
@end



@interface USERRedpackageDetailListCell : BaseTableViewCell
@property (nonatomic ,strong) UILabel *nickNameLabel;
@property (nonatomic ,strong) UIImageView *headerImage;
@property (nonatomic ,strong) UIImageView *praiseImage;
@property (nonatomic ,strong) UILabel *timeLabel;
@property (nonatomic ,strong) UILabel *redAmountLabel;

@end

NS_ASSUME_NONNULL_END
