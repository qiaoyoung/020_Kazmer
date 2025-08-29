
#import <Foundation/Foundation.h>

NSString *StringFromVanguardData(Byte *data);        


//: #4B43DE
Byte kTitle_reputationData[] = {77, 7, 90, 13, 129, 113, 46, 200, 139, 48, 57, 219, 59, 201, 218, 232, 218, 217, 234, 235, 45};

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamSwitchTableViewCell.h"
#import "MarginOfSafetyView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"

//: @implementation FFFTeamSwitchTableViewCell
@implementation MarginOfSafetyView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#4B43DE"];
        _switcher.onTintColor = [UIColor cell:StringFromVanguardData(kTitle_reputationData)];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(lasting:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)lasting:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(sash:colorLabel:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate sash:self colorLabel:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.device_right = self.device_width - right;
    self.switcher.device_right = self.device_width - right;
    //: self.switcher.device_centerY = self.device_height * .5;
    self.switcher.device_centerY = self.device_height * .5;
}


//: @end
@end

Byte * VanguardDataToCache(Byte *data) {
    int reddish = data[0];
    int water = data[1];
    Byte chronicler = data[2];
    int active = data[3];
    if (!reddish) return data + active;
    for (int i = active; i < active + water; i++) {
        int value = data[i] + chronicler;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[active + water] = 0;
    return data + active;
}

NSString *StringFromVanguardData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VanguardDataToCache(data)];
}
