//
//  USERNetStatusHeaderView.h
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "USERListHeader.h"

@interface USERTextHeaderView : UIButton<USERListHeaderView>

@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIImageView *img;

@end
