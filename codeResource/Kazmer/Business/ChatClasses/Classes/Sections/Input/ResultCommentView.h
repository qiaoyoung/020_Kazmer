// __DEBUG__
// __CLOSE_PRINT__
//
//  ResultCommentView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayGrowingTextView.h"
#import "AtPraiseScrollView.h"

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


//: @protocol DisplayInputToolBarDelegate <NSObject>
@protocol TeamSize <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)powerVoice;

//: - (void)textViewDidEndEditing;
- (void)tableImage;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)sub:(NSRange)range can:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)progressMessage;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)redUser:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)tabled:(CGFloat)height;

//: @end
@end


//: @interface DisplayInputToolBar : UIView
@interface ResultCommentView : UIView

//: @property (nonatomic,strong) DisplayGrowingTextView *inputTextView;
@property (nonatomic,strong) AtPraiseScrollView *inputTextView;
//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;
//@property (nonatomic,strong) UIButton    *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//: @property (nonatomic,weak) id<DisplayInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<TeamSize> delegate;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;

//@property (nonatomic,strong) UIButton    *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//: - (void)update:(NIMInputStatus)status;
- (void)custom:(NIMInputStatus)status;

//: @end
@end

//: @interface DisplayInputToolBar(InputText)
@interface ResultCommentView(InputText)

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)content:(NSString *)text replyEmoji:(BOOL)isEmoji;

//: - (void)deleteText:(NSRange)range;
- (void)sendText:(NSRange)range;
//: - (void)insertText:(NSString *)text;
- (void)distanceLanguage:(NSString *)text;

//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)shootCell:(NSString *)placeHolder color:(UIColor *)placeholderColor;

//: - (NSRange)selectedRange;
- (NSRange)mediaUp;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setSetAndThole:(NSString *)placeHolder;

//: @end
@end
