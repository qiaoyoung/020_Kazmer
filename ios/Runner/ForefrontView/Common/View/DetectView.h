// __DEBUG__
// __CLOSE_PRINT__
//
//  DetectView.h
//  天天网
//
//  Created by zhaoweibing on 14-4-25.
//  Copyright (c) 2014年 Ios. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface ShowNotice : UIView
@interface DetectView : UIView

//: + (ShowNotice *)showNoticeTo:(UIView *)view animated:(BOOL)animated;
+ (DetectView *)full:(UIView *)view ofAnimated:(BOOL)animated;

//: - (void)hideNoticeAnimated:(BOOL)animated;
- (void)color:(BOOL)animated;


//: @end
@end