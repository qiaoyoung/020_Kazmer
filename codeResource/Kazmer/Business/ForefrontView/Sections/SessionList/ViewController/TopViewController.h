// __DEBUG__
// __CLOSE_PRINT__
//
//  TopViewController.h
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface USERSessionListViewController : DisplaySessionListViewController
@interface TopViewController : PullViewController

//: @property (nonatomic,strong) UIButton *addBtn;
@property (nonatomic,strong) UIButton *addBtn;

//: @property (nonatomic,strong) UILabel *emptyTipLabel;
@property (nonatomic,strong) UILabel *emptyTipLabel;

//: @property (nonatomic,strong) UIImageView *emptyImageView;
@property (nonatomic,strong) UIImageView *emptyImageView;

//: - (void)setUpNavItem;
- (void)hide;

//: @end
@end
