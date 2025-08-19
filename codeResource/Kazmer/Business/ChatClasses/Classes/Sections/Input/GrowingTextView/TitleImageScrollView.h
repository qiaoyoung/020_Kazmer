// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleImageScrollView.h
// ButtonKit
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFGrowingTextView;
@class TitleImageScrollView;

//: @protocol FFFGrowingTextViewDelegate <NSObject>
@protocol EmptyMode <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)ting:(NSRange)range down:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)touch:(NSURL *)URL bringHome:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)underName:(NSTextAttachment *)textAttachment searchKey:(NSRange)range;

//: - (void)textViewDidBeginEditing:(FFFGrowingTextView *)growingTextView;
- (void)enabling:(TitleImageScrollView *)growingTextView;

//: - (void)textViewDidChangeSelection:(FFFGrowingTextView *)growingTextView;
- (void)withSelection:(TitleImageScrollView *)growingTextView;

//: - (void)textViewDidEndEditing:(FFFGrowingTextView *)growingTextView;
- (void)cleanBe:(TitleImageScrollView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)sizing:(TitleImageScrollView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)ended:(TitleImageScrollView *)growingTextView;

//: - (void)textViewDidChange:(FFFGrowingTextView *)growingTextView;
- (void)cameraColor:(TitleImageScrollView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)willed:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)valued:(CGFloat)height;

//: @end
@end

//: @interface FFFGrowingTextView : UIScrollView
@interface TitleImageScrollView : UIScrollView

//: @property (nonatomic,weak) id<FFFGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<EmptyMode> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface FFFGrowingTextView(TextView)
@interface TitleImageScrollView(TextView)

//: @property (nonatomic,copy) NSAttributedString *placeholderAttributedText;
@property (nonatomic,copy) NSAttributedString *placeholderAttributedText;

//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;

//: @property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIFont *font;

//: @property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *textColor;

//: @property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) NSTextAlignment textAlignment;

//: @property (nonatomic,assign) NSRange selectedRange;
@property (nonatomic,assign) NSRange selectedRange;

//: @property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;

//: @property (nonatomic,assign) BOOL editable;
@property (nonatomic,assign) BOOL editable;

//: @property (nonatomic,assign) BOOL selectable;
@property (nonatomic,assign) BOOL selectable;

//: @property (nonatomic,assign) BOOL allowsEditingTextAttributes;
@property (nonatomic,assign) BOOL allowsEditingTextAttributes;

//: @property (nonatomic,copy) NSAttributedString *attributedText;
@property (nonatomic,copy) NSAttributedString *attributedText;

//: @property (nonatomic,strong) UIView *textViewInputAccessoryView;
@property (nonatomic,strong) UIView *textViewInputAccessoryView;

//: @property (nonatomic,assign) BOOL clearsOnInsertion;
@property (nonatomic,assign) BOOL clearsOnInsertion;

//: @property (nonatomic,readonly) NSTextContainer *textContainer;
@property (nonatomic,readonly) NSTextContainer *textContainer;

//: @property (nonatomic,assign) UIEdgeInsets textContainerInset;
@property (nonatomic,assign) UIEdgeInsets textContainerInset;

//: @property (nonatomic,readonly) NSLayoutManager *layoutManger;
@property (nonatomic,readonly) NSLayoutManager *layoutManger;

//: @property (nonatomic,readonly) NSTextStorage *textStorage;
@property (nonatomic,readonly) NSTextStorage *textStorage;

//: @property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;

//: @property (nonatomic,assign) UIReturnKeyType returnKeyType;
@property (nonatomic,assign) UIReturnKeyType returnKeyType;

//: - (void)scrollRangeToVisible:(NSRange)range;
- (void)itemDown:(NSRange)range;

//: @end
@end