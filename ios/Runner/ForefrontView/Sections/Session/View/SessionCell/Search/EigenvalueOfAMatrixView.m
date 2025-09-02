// __DEBUG__
// __CLOSE_PRINT__
//
//  EigenvalueOfAMatrixView.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//font

// __M_A_C_R_O__
//: #import "USERSearchMessageContentCell.h"
#import "EigenvalueOfAMatrixView.h"
//: #import "USERSearchLocalHistoryObject.h"
#import "MessageFlipMax.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"

//: CGFloat SearchCellTitleFontSize = 13.f;
CGFloat user_dateIdent = 13.f;
//: CGFloat SearchCellContentFontSize = 12.f;
CGFloat m_byMessage = 12.f;
//: CGFloat SearchCellTimeFontSize = 12.f;
CGFloat userStyleStr = 12.f;

//layout
//: CGFloat SearchCellAvatarLeft = 15.f;
CGFloat dreamKitId = 15.f;
//: CGFloat SearchCellAvatarAndTitleSpacing = 10.f;
CGFloat mDotText = 10.f;
//: CGFloat SearchCellTitleTop = 10.f;
CGFloat notiTableValue = 10.f;
//: CGFloat SearchCellTimeRight = 15.f;
CGFloat appValueBottomName = 15.f;
//: CGFloat SearchCellTimeTop = 10.f;
CGFloat kRefreshTitle = 10.f;
//: CGFloat SearchCellContentTop = 30.f;
CGFloat appTapKey = 30.f;
//: CGFloat SearchCellContentBottom = 8.f;
CGFloat user_maxStr = 8.f;
//: CGFloat SearchCellContentMaxWidth = 260.f;
CGFloat kHighFormat = 260.f;
//: CGFloat SearchCellContentMinHeight = 15.f; 
CGFloat dream_dataFormat = 15.f; //cell的高度是由文本高度决定的。防止没有文本的情况，导致cell的高度过小。

//: @interface USERSearchMessageContentCell()
@interface EigenvalueOfAMatrixView()

//: @property (nonatomic,strong) DisplayAvatarImageView *avatar;
@property (nonatomic,strong) MemoryImageControl *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) UILabel *contentLabel;

//: @property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UILabel *timeLabel;

//: @property (nonatomic,strong) USERSearchLocalHistoryObject *object;
@property (nonatomic,strong) MessageFlipMax *object;

//: @end
@end

//: @implementation USERSearchMessageContentCell
@implementation EigenvalueOfAMatrixView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _avatar = [[DisplayAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        _avatar = [[MemoryImageControl alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];
        //: _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor grayColor];
        _contentLabel.textColor = [UIColor grayColor];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(USERSearchLocalHistoryObject *)object{
- (void)blueDismiss:(MessageFlipMax *)object{
    //: self.object = object;
    self.object = object;
    //: NIMMessage *message = object.message;
    NIMMessage *message = object.message;
    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:message.from keepingOption:nil];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [self.avatar nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [self.avatar past:avatarURL display:info.avatarImage];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: self.contentLabel.text = message.text;
    self.contentLabel.text = message.text;
    //: self.timeLabel.text = [USERSessionUtil showTime:message.timestamp showDetail:YES];
    self.timeLabel.text = [SessionStandard label:message.timestamp image:YES];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(kHighFormat * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: self.contentLabel.height = ((SearchCellContentMinHeight) > (self.contentLabel.height) ? (SearchCellContentMinHeight) : (self.contentLabel.height));
    self.contentLabel.height = ((dream_dataFormat) > (self.contentLabel.height) ? (dream_dataFormat) : (self.contentLabel.height));
    //: [self.timeLabel sizeToFit];
    [self.timeLabel sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.top = SearchCellTitleTop;
    self.avatar.top = notiTableValue;
    //: self.avatar.left = SearchCellAvatarLeft;
    self.avatar.left = dreamKitId;
    //: self.titleLabel.left = self.avatar.right + SearchCellAvatarAndTitleSpacing;
    self.titleLabel.left = self.avatar.right + mDotText;
    //: self.contentLabel.left = self.titleLabel.left;
    self.contentLabel.left = self.titleLabel.left;
    //: self.titleLabel.top = SearchCellTitleTop;
    self.titleLabel.top = notiTableValue;
    //: self.contentLabel.bottom = self.height - SearchCellContentBottom;
    self.contentLabel.bottom = self.height - user_maxStr;
    //: self.timeLabel.right = self.width - SearchCellTimeRight;
    self.timeLabel.right = self.width - appValueBottomName;
    //: self.timeLabel.top = SearchCellTimeTop;
    self.timeLabel.top = kRefreshTitle;
}


//: @end
@end
