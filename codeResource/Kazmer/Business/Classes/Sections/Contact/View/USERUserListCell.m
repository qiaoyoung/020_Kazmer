//
//  USERUserListCell.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "USERUserListCell.h"
#import "FFFAvatarImageView.h"
#import "UIView+USER.h"
#import "USERContactDataMember.h"
#import "USERSessionUtil.h"

@interface USERUserListCell()

@property (nonatomic,strong) USERContactDataMember *member;

@property (nonatomic,strong) UIView *sep;

@end

@implementation USERUserListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        [_avatarImageView addTarget:self action:@selector(onTouchAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:_avatarImageView];
        _sep = [[UIView alloc] initWithFrame:CGRectZero];
        _sep.backgroundColor = [UIColor lightGrayColor];
        _sep.height = .5f;
        [self.contentView addSubview:_sep];
    }
    return self;
}


- (void)refreshWithMember:(USERContactDataMember *)member{
    self.member = member;
    self.textLabel.text = [USERSessionUtil showNick:member.info.infoId inSession:nil];
    [self.textLabel sizeToFit];
    NSURL *url;
    if (member.info.avatarUrlString.length) {
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    [_avatarImageView nim_setImageWithURL:url placeholderImage:member.info.avatarImage options:SDWebImageRetryFailed];
}


- (void)onTouchAvatar:(id)sender{
    if ([self.delegate respondsToSelector:@selector(didTouchUserListAvatar:)]) {
        [self.delegate didTouchUserListAvatar:self.member.info.infoId];
    }
}


- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    
}


- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat scale = self.width / 320;
    CGFloat maxTextLabelWidth = 210 * scale;
    self.textLabel.width = MIN(self.textLabel.width, maxTextLabelWidth);
    
    static const NSInteger USERContactAccessoryLeft             = 10;//选择框到左边的距离
    static const NSInteger USERContactAvatarAndTitleSpacing     = 20;//头像和文字之间的间距

    CGFloat avatarLeft = 15.f;
    self.avatarImageView.left = avatarLeft;
    self.avatarImageView.centerY = self.height * .5f;
    self.textLabel.left = self.avatarImageView.right + USERContactAvatarAndTitleSpacing;
    self.sep.width = self.width - avatarLeft - self.avatarImageView.width - USERContactAvatarAndTitleSpacing;
    self.sep.left = avatarLeft + USERContactAccessoryLeft + self.avatarImageView.width;
    self.sep.bottom = self.height - self.sep.height;
}

@end
