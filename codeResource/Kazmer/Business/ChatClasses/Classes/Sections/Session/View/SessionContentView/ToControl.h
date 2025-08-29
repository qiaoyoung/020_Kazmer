// __DEBUG__
// __CLOSE_PRINT__
//
//  ToControl.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "WithTopView.h"

//: @class M80AttributedLabel;
@class LabelNameScrollView;

//: @interface FFFSessionTextContentView : FFFSessionMessageContentView
@interface ToControl : WithTopView

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) LabelNameScrollView *textView;

//: @end
@end