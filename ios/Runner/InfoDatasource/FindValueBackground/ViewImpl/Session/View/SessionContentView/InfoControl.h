// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoControl.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionMessageContentView.h"
#import "ThoughtImageControl.h"

//: @class M80AttributedLabel;
@class QuickNameView;

//: @interface WatchSessionTextContentView : WatchSessionMessageContentView
@interface InfoControl : ThoughtImageControl

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) QuickNameView *textView;

//: @end
@end
