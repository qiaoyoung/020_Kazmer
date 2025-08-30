// __DEBUG__
// __CLOSE_PRINT__
//
//  WithControl.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class BubbleNameReload;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol PraiseStandard <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)complete:(BubbleNameReload*)emoticon emoticon_strong:(NSString*)catalogID;

//: @end
@end



//: @interface DisplayInputEmoticonButton : UIButton
@interface WithControl : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) BubbleNameReload *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<PraiseStandard> delegate;

//: + (DisplayInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (WithControl*)duringBottom:(BubbleNameReload*)data with:(NSString*)catalogID center:( id<PraiseStandard>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)doing:(id)sender;

//: @end
@end
