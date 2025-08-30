// __DEBUG__
// __CLOSE_PRINT__
//
//  ManView.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactUtilCell.h"
#import "ManView.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERBadgeView.h"
#import "ControlView.h"

//: @interface USERContactUtilCell()
@interface ManView()

//: @property (nonatomic,strong) id<USERContactItem> data;
@property (nonatomic,strong) id<DoingAdd> data;

//: @property (nonatomic,strong) USERBadgeView *badgeView;
@property (nonatomic,strong) ControlView *badgeView;

//: @end
@end

//: @implementation USERContactUtilCell
@implementation ManView

//: - (void)addDelegate:(id)delegate{
- (void)specialSessionDelegate:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated {
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    //: [super setSelected:selected animated:animated];
    [super setSelected:selected animated:animated];
}

//: - (void)refreshWithContactItem:(id<USERContactItem>)item{
- (void)iconItem:(id<DoingAdd>)item{
    //: self.data = item;
    self.data = item;
    //: self.textLabel.text = item.nick;
    self.textLabel.text = item.sessionCenter;
    //: self.imageView.image = item.icon;
    self.imageView.image = item.file;
    //: self.imageView.userInteractionEnabled = YES;
    self.imageView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPressUtilImage:)];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(teamMax:)];
    //: [self.imageView addGestureRecognizer: recognizer];
    [self.imageView addGestureRecognizer: recognizer];
    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];

    //: NSString *badge = [item badge];
    NSString *badge = [item shoot];
    //: self.badgeView.hidden = badge.integerValue == 0;
    self.badgeView.hidden = badge.integerValue == 0;
    //: self.badgeView.badgeValue = badge;
    self.badgeView.badgeValue = badge;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.left = USERContactAvatarLeft;
    self.imageView.left = dream_linkUserFormat;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: self.badgeView.right = self.width - 50;
    self.badgeView.right = self.width - 50;
    //: self.badgeView.centerY = self.height * .5f;
    self.badgeView.centerY = self.height * .5f;
}

//: - (void)onPressUtilImage:(id)sender{
- (void)teamMax:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressUtilImage:)]) {
    if ([self.delegate respondsToSelector:@selector(teamMax:)]) {
        //: [self.delegate onPressUtilImage:self.data.nick];
        [self.delegate teamMax:self.data.sessionCenter];
    }
}


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _badgeView = [USERBadgeView viewWithBadgeTip:@""];
        _badgeView = [ControlView success:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];
    }
    //: return self;
    return self;
}


//: @end
@end