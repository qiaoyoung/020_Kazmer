// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageControl.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFInputEmoticonTabView;
@class MessageControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol RecordControl <NSObject>

//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)stem:(MessageControl *)tabView app:(NSInteger) index;

//: @end
@end

//: @interface FFFInputEmoticonTabView : UIControl
@interface MessageControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<RecordControl> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)recordingSession:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)item:(NSArray*)emoticonCatalogs;

//: @end
@end