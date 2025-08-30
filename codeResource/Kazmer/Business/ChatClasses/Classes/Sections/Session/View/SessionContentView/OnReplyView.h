// __DEBUG__
// __CLOSE_PRINT__
//
//  OnReplyView.h
// Mortification
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"

//: @interface DisplaySessionNetChatNotifyContentView : DisplaySessionMessageContentView
@interface OnReplyView : WithTopView

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) LabelNameScrollView *textLabel;

//: @end
@end
