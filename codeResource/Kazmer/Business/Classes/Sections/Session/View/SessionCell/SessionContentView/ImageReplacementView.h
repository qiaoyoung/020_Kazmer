// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageReplacementView.h
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"

//: @class M80AttributedLabel;
@class QuickNameView;




//: @interface NTESSessionWhiteBoardContentView : FFFSessionMessageContentView
@interface ImageReplacementView : ThoughtImageControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) QuickNameView *textLabel;

//: @end
@end