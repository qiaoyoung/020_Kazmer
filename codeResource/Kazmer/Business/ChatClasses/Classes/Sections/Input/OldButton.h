// __DEBUG__
// __CLOSE_PRINT__
//
//  OldButton.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class ButtonTableEmoticon;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol OnDelegate <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)startProspectus:(ButtonTableEmoticon*)emoticon disable:(NSString*)catalogID;

//: @end
@end



//: @interface WatchInputEmoticonButton : UIButton
@interface OldButton : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) ButtonTableEmoticon *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<OnDelegate> delegate;

//: + (WatchInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (OldButton*)conference:(ButtonTableEmoticon*)data delegateBe:(NSString*)catalogID glitter:( id<OnDelegate>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)lipograming:(id)sender;

//: @end
@end
