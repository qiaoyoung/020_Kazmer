// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayMessageCellProtocol.h"
#import "DisplayMessageCellProtocol.h"
//: #import "DisplayTimestampModel.h"
#import "WithPage.h"

//: @class DisplaySessionMessageContentView;
@class WithTopView;
//: @class DisplayAvatarImageView;
@class MemoryImageControl;
//: @class DisplayBadgeView;
@class CenterStandardView;

//: @interface DisplayMessageCell : UITableViewCell
@interface IndoorsView : UITableViewCell

//: @property (nonatomic, strong) DisplayAvatarImageView *headImageView;
@property (nonatomic, strong) MemoryImageControl *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView;//气泡背景视图
//: @property (nonatomic, strong) DisplaySessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) WithTopView *replyedBubbleView;//被回复内容区域

//: @property (nonatomic, strong) DisplaySessionMessageContentView *bubbleView;
@property (nonatomic, strong) WithTopView *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator;//发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton;//重试
//: @property (nonatomic, strong) DisplayBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) CenterStandardView *audioPlayedIcon;//语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton;//已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton;//选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask;//选择遮罩

//: @property (nonatomic, readonly) DisplayMessageModel *model;
@property (nonatomic, readonly) CleanDoing *model;

//: @property (nonatomic, weak) id<DisplayMessageCellDelegate> delegate;
@property (nonatomic, weak) id<CompartmentPath> delegate;

//: - (void)refreshData:(DisplayMessageModel *)data;
- (void)pin:(CleanDoing *)data;

//: @end
@end
