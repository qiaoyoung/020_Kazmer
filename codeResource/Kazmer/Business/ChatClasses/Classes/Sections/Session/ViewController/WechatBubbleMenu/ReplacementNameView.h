// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementNameView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTextView : UITextView
@interface ReplacementNameView : UITextView

//: @property (nonatomic, copy)void (^selectBlock)(FFFMediaItem *item);
@property (nonatomic, copy)void (^selectBlock)(InfoMakeBar *item);

//: @property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);
@property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);

//: @property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
//: @property (nonatomic, copy) NSArray *selectedPartRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<MessagePinImage> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<ShowKeyBar> actionDelegate;


//取消文本选中效果
//: - (void)hideTextSelection;
- (void)overUser;

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message;
- (void)image:(NIMMessage *)message;

// 群公告复制
//: - (void)new_genMediaButton;
- (void)ondSession;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END