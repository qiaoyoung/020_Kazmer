// __DEBUG__
// __CLOSE_PRINT__
//
//  VanguardNameView.m
// Mortification
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionNotificationContentView.h"
#import "VanguardNameView.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation FFFSessionNotificationContentView
@implementation VanguardNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
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

//: - (void)refresh:(FFFMessageModel *)model
- (void)from:(CleanDoing *)model
{
    //: [super refresh:model];
    [super from:model];
    //: self.label.text = [FFFKitUtil messageTipContent:model.message];
    self.label.text = [AtPull view:model.message];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:model.message];
    ManPull *setting = [[Mortification text].config toWith:model.message];

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
    CGFloat padding = [Mortification text].config.alongSelected;
    //: self.label.device_size = [self.label sizeThatFits:CGSizeMake(self.device_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.device_size = [self.label sizeThatFits:CGSizeMake(self.device_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.device_centerX = self.device_width * .5f;
    self.label.device_centerX = self.device_width * .5f;
    //: self.label.device_centerY = self.device_height * .5f;
    self.label.device_centerY = self.device_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end