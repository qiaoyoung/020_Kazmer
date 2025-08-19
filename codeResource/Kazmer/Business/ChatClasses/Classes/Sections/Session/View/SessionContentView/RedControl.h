// __DEBUG__
// __CLOSE_PRINT__
//
//  RedControl.h
// ButtonKit
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"

//: @interface FFFSessionNetChatNotifyContentView : FFFSessionMessageContentView
@interface RedControl : ThoughtImageControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) QuickNameView *textLabel;

//: @end
@end