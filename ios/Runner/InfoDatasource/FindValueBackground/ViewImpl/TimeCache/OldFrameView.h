// __DEBUG__
// __CLOSE_PRINT__
//
//  OldFrameView.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchGrowingTextView.h"
#import "TitleImageScrollView.h"

//: typedef NS_ENUM(NSInteger,NIMInputStatus)
typedef NS_ENUM(NSInteger,NIMInputStatus)
{
    //: NIMInputStatusText,
    NIMInputStatusText,
    //: NIMInputStatusAudio,
    NIMInputStatusAudio,
    //: NIMInputStatusEmoticon,
    NIMInputStatusEmoticon,
    //: NIMInputStatusMore
    NIMInputStatusMore
//: };
};


//: @protocol WatchInputToolBarDelegate <NSObject>
@protocol FindImage <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)getHeight;

//: - (void)textViewDidEndEditing;
- (void)showEditing;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)ting:(NSRange)range down:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)shouldGreen;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)musicalInstrumentHeight:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)backgroundTitle:(CGFloat)height;

//: @end
@end


//: @interface WatchInputToolBar : UIView
@interface OldFrameView : UIView

//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;
//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;
//@property (nonatomic,strong) UIButton    *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//@property (nonatomic,strong) UIButton    *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,weak) id<WatchInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<FindImage> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) WatchGrowingTextView *inputTextView;
@property (nonatomic,strong) TitleImageScrollView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)earlier:(NIMInputStatus)status;

//: @end
@end

//: @interface WatchInputToolBar(InputText)
@interface OldFrameView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)selectedRange;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setUtiliser:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)icon:(NSString *)placeHolder image:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)manager:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)cipher:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)activity:(NSString *)text session:(BOOL)isEmoji;

//: @end
@end
