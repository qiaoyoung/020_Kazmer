// __DEBUG__
// __CLOSE_PRINT__
//
//  SleepingTabletControl.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFInputEmoticonTabView;
@class SleepingTabletControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol BackgroundButtonDelegate <NSObject>

//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)bolusWithColumnIndex:(SleepingTabletControl *)tabView buttonFollow:(NSInteger) index;

//: @end
@end

//: @interface FFFInputEmoticonTabView : UIControl
@interface SleepingTabletControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<BackgroundButtonDelegate> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)queryInsideIndex:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)loadDownOrigin:(NSArray*)emoticonCatalogs;

//: @end
@end