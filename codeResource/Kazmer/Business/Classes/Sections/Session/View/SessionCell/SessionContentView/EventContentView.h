// __DEBUG__
// __CLOSE_PRINT__
//
//  EventContentView.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const mValueDateName = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : FFFSessionMessageContentView
@interface EventContentView : ThoughtImageControl

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) QuickNameView *label;

//: @end
@end