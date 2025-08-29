//
//  USERContactUtilCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "USERContactUtilCell.h"
#import "UIView+USER.h"
#import "USERBadgeView.h"

@interface USERContactUtilCell()

@property (nonatomic,strong) USERBadgeView *badgeView;

@property (nonatomic,strong) id<USERContactItem> data;

@end

@implementation USERContactUtilCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _badgeView = [USERBadgeView viewWithBadgeTip:@""];
        [self.contentView addSubview:_badgeView];
    }
    return self;
}

- (void)refreshWithContactItem:(id<USERContactItem>)item{
    self.data = item;
    self.textLabel.text = item.nick;
    self.imageView.image = item.icon;
    self.imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPressUtilImage:)];
    [self.imageView addGestureRecognizer: recognizer];
    [self.textLabel sizeToFit];
    
    NSString *badge  = [item badge];
    self.badgeView.hidden = badge.integerValue == 0;
    self.badgeView.badgeValue = badge;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)onPressUtilImage:(id)sender{
    if ([self.delegate respondsToSelector:@selector(onPressUtilImage:)]) {
        [self.delegate onPressUtilImage:self.data.nick];
    }
}

- (void)addDelegate:(id)delegate{
    self.delegate = delegate;
}

#define BadgeValueRight 50
- (void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.left = USERContactAvatarLeft;
    self.imageView.centerY = self.height * .5f;
    self.badgeView.right = self.width - BadgeValueRight;
    self.badgeView.centerY = self.height * .5f;
}


@end
