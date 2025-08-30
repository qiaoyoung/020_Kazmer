
#import <Foundation/Foundation.h>

NSString *StringFromDraftCopyData(Byte *data);


//: #EEEEEE
Byte kTitleRecommendValue[] = {66, 7, 18, 7, 6, 28, 160, 53, 87, 87, 87, 87, 87, 87, 140};

//: icon_cell_blue_normal
Byte kTitleMysteryData[] = {14, 21, 85, 5, 246, 190, 184, 196, 195, 180, 184, 186, 193, 193, 180, 183, 193, 202, 186, 180, 195, 196, 199, 194, 182, 193, 207};

//: contact_tag_fragment_sure
Byte kTextRelieveValue[] = {93, 25, 66, 13, 83, 95, 104, 83, 129, 70, 36, 126, 57, 165, 177, 176, 182, 163, 165, 182, 161, 182, 163, 169, 161, 168, 180, 163, 169, 175, 167, 176, 182, 161, 181, 183, 180, 167, 221};

//: #fffDisplay
Byte kTitleCuteName[] = {40, 7, 67, 7, 79, 233, 110, 102, 169, 169, 169, 169, 169, 169, 143};

//: #A148FF
Byte kName_shrimpValue[] = {43, 7, 91, 4, 126, 156, 140, 143, 147, 161, 161, 50};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmColorView.m
// Mortification
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayContactSelectTabView.h"
#import "ParadigmColorView.h"
//: #import "DisplayContactPickedView.h"
#import "LittleLeagueTeamView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation DisplayContactSelectTabView
@implementation ParadigmColorView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[DisplayContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[LittleLeagueTeamView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage disable:StringFromDraftCopyData(kTitleMysteryData) image:[UIColor cell:StringFromDraftCopyData(kName_shrimpValue)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage disable:StringFromDraftCopyData(kTitleMysteryData) image:[UIColor cell:StringFromDraftCopyData(kName_shrimpValue)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[MakeManager cell:StringFromDraftCopyData(kTextRelieveValue)] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.device_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.device_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.device_width + 12.0)),
        _doneButton.device_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.device_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.device_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
        self.backgroundColor = [UIColor cell:StringFromDraftCopyData(kTitleCuteName)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.device_height-1, self.device_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.device_height-1, self.device_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor cell:StringFromDraftCopyData(kTitleRecommendValue)];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.device_height = self.device_height;
    _pickedView.device_height = self.device_height;
    //: _pickedView.device_width = self.device_width - _doneButton.device_width - spacing;
    _pickedView.device_width = self.device_width - _doneButton.device_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.device_right = self.device_width - doneButtonRight;
    _doneButton.device_right = self.device_width - doneButtonRight;
    //: _doneButton.device_centerY = self.device_height * .5f;
    _doneButton.device_centerY = self.device_height * .5f;
}

//: @end
@end

Byte * DraftCopyDataToCache(Byte *data) {
    int shooDoing = data[0];
    int perspicacity = data[1];
    Byte relatively = data[2];
    int threadShallow = data[3];
    if (!shooDoing) return data + threadShallow;
    for (int i = threadShallow; i < threadShallow + perspicacity; i++) {
        int value = data[i] - relatively;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[threadShallow + perspicacity] = 0;
    return data + threadShallow;
}

NSString *StringFromDraftCopyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DraftCopyDataToCache(data)];
}
