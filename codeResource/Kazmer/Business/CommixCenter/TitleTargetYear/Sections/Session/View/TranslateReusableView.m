// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.m
// Mortification
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayQuickCommentCell.h"
#import "TranslateReusableView.h"
//: #import "DisplayKitQuickCommentUtil.h"
#import "ControlInside.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Mortification.h"

//: @interface DisplayQuickCommentCell ()
@interface TranslateReusableView ()

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) LabelNameScrollView *textLabel;
//: @property (nonatomic, strong) UIView *divider;
@property (nonatomic, strong) UIView *divider;

//: @end
@end

//: @implementation DisplayQuickCommentCell
@implementation TranslateReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _textLabel = [DisplayKitQuickCommentUtil newCommentLabel];
        _textLabel = [ControlInside label];
        //: [self.contentView addSubview:_textLabel];
        [self.contentView addSubview:_textLabel];
        //: self.layer.cornerRadius = 12.0;
        self.layer.cornerRadius = 12.0;
        //: self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];

        //: _divider = [[UIView alloc] initWithFrame:CGRectZero];
        _divider = [[UIView alloc] initWithFrame:CGRectZero];
        //: _divider.backgroundColor = UIColor.lightGrayColor;
        _divider.backgroundColor = UIColor.lightGrayColor;
        //: [self.contentView addSubview:_divider];
        [self.contentView addSubview:_divider];

    }
    //: return self;
    return self;
}

//: - (void)refreshWithData:(NSArray *)comments model:(DisplayMessageModel *)data
- (void)showContent:(NSArray *)comments bar:(CleanDoing *)data
{
    //: self.textLabel.textColor = data.shouldShowLeft ? [UIColor colorWithHex:0x000000 alpha:1] : [UIColor colorWithHex:0xFFFFFF alpha:1];
    self.textLabel.textColor = data.shouldShowLeft ? [UIColor background:0x000000 status:1] : [UIColor background:0xFFFFFF status:1];
    //: [self.textLabel nim_setText:[FFFKitQuickCommentUtil commentsContent:comments]];
    [self.textLabel deleteVoice:[ControlInside date:comments]];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.textLabel.device_width = self.device_width - NIMKitCommentUtilCellContentPadding * 2;
    self.textLabel.device_width = self.device_width - main_hiddenTitle * 2;
    //: self.textLabel.device_height = self.textLabel.intrinsicContentSize.height;
    self.textLabel.device_height = self.textLabel.intrinsicContentSize.height;
    //: self.textLabel.device_centerY = self.device_height * .5f;
    self.textLabel.device_centerY = self.device_height * .5f;
    //: self.textLabel.nim_left = NIMKitCommentUtilCellPadding;
    self.textLabel.nim_left = mOwnerIdent;

    //: self.divider.device_width = 0.5;
    self.divider.device_width = 0.5;
    //: self.divider.device_height = self.contentView.device_height - 8;
    self.divider.device_height = self.contentView.device_height - 8;
    //: self.divider.device_centerY = self.contentView.device_height * 0.5;
    self.divider.device_centerY = self.contentView.device_height * 0.5;
    //: self.divider.nim_left = 22;
    self.divider.nim_left = 22;
}

//: @end
@end
