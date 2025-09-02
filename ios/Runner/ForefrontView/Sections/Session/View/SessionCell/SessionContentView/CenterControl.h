// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"

//: static NSString *const USERShowRedPacketDetailEvent = @"USERShowRedPacketDetailEvent";

static NSString *const dreamVideoPath (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"message"];
    }
    return  @"USERShowRedPacketDetailEvent";
};


//: @interface USERSessionRedPacketTipContentView : DisplaySessionMessageContentView
@interface CenterControl : WithTopView

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) LabelNameScrollView *label;

//: @end
@end
