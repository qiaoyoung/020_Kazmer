// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.h
// Mortification
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionUnknowContentView.h"
#import "ViewControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"

//: @interface DisplaySessionUnknowContentView()
@interface ViewControl()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation DisplaySessionUnknowContentView
@implementation ViewControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.userInteractionEnabled = NO;
        _label.userInteractionEnabled = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(DisplayMessageModel *)data{
- (void)from:(CleanDoing *)data{
    //: [super refresh:data];
    [super from:data];
    //: NSString *text = @"";
    NSString *text = @"";
//    NSString *text = @"未知类型消息".nim_localized;
    //: DisplayKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ManPull *setting = [[Mortification text].config toWith:data.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: [self.label setText:text];
    [self.label setText:text];
    //: [self.label sizeToFit];
    [self.label sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _label.device_centerX = self.device_width * .5f;
    _label.device_centerX = self.device_width * .5f;
    //: _label.device_centerY = self.device_height * .5f;
    _label.device_centerY = self.device_height * .5f;
}

//: @end
@end
