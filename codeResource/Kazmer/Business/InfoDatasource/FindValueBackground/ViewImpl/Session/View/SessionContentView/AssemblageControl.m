// __DEBUG__
// __CLOSE_PRINT__
//
//  AssemblageControl.m
// ButtonKit
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionNotificationContentView.h"
#import "AssemblageControl.h"
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation WatchSessionNotificationContentView
@implementation AssemblageControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(WatchMessageModel *)model
- (void)lengthAt:(CentralProcessingUnitModel *)model
{
    //: [super refresh:model];
    [super lengthAt:model];
    //: self.label.text = [WatchKitUtil messageTipContent:model.message];
    self.label.text = [ObjectUtil complete:model.message];
    //: WatchKitSetting *setting = [[MyUserKit sharedKit].config setting:model.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:model.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;

//    self.label.hidden = YES;
//    self.bubbleImageView.hidden = YES;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [ButtonKit sheerOption].config.origin;
    //: self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.nim_centerX = self.nim_width * .5f;
    self.label.nim_centerX = self.nim_width * .5f;
    //: self.label.nim_centerY = self.nim_height * .5f;
    self.label.nim_centerY = self.nim_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end
