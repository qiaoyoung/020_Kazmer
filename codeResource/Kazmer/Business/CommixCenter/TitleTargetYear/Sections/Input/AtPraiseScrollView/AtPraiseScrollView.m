// __DEBUG__
// __CLOSE_PRINT__
//
//  AtPraiseScrollView.m
// Mortification
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayGrowingTextView.h"
#import "AtPraiseScrollView.h"
//: #import "DisplayGrowingInternalTextView.h"
#import "PraiseView.h"

//: @interface DisplayGrowingTextView()<UITextViewDelegate>
@interface AtPraiseScrollView()<UITextViewDelegate>

//: @property (nonatomic,assign) CGFloat maxHeight;
@property (nonatomic,assign) CGFloat maxHeight;

//: @property (nonatomic,assign) double previousTextHeight;
@property (nonatomic,assign) double previousTextHeight;

//: @property (nonatomic,strong) DisplayGrowingInternalTextView *textView;
@property (nonatomic,strong) PraiseView *textView;

//: @property (nonatomic,assign) CGFloat minHeight;
@property (nonatomic,assign) CGFloat minHeight;

//: @property (nonatomic,assign) CGRect previousFrame;
@property (nonatomic,assign) CGRect previousFrame;

//: @end
@end

//: @implementation DisplayGrowingTextView
@implementation AtPraiseScrollView

//: #pragma mark - Override
#pragma mark - Override
//: - (void)textViewDidBeginEditing:(UITextView *)textView
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewDidBeginEditing:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(tidingsed:)]) {
        //: [self.textViewDelegate textViewDidBeginEditing:self];
        [self.textViewDelegate tidingsed:self];
    }
}


//: - (void)textViewDidChangeSelection:(UITextView *)textView
- (void)textViewDidChangeSelection:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewDidChangeSelection:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(barTing:)]) {
        //: [self.textViewDelegate textViewDidChangeSelection:self];
        [self.textViewDelegate barTing:self];
    }
}


//: #pragma mark - Private
#pragma mark - Private

//: - (void)setup
- (void)valueAndOrigin
{
    //: self.textView.delegate = self;
    self.textView.delegate = self;
    //: self.textView.scrollEnabled = NO;
    self.textView.scrollEnabled = NO;
    //: self.textView.font = [UIFont systemFontOfSize:16];
    self.textView.font = [UIFont systemFontOfSize:16];
    //: self.textView.backgroundColor = [UIColor clearColor];
    self.textView.backgroundColor = [UIColor clearColor];
//    self.textView.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: [self addSubview:self.textView];
    [self addSubview:self.textView];
    //: self.minHeight = self.frame.size.height;
    self.minHeight = self.frame.size.height;
    //: self.maxNumberOfLines = 3;
    self.maxNumberOfLines = 3;
    //: [self.textView setScrollEnabled:YES];
    [self.textView setScrollEnabled:YES];
    //: self.textView.userInteractionEnabled = YES;
    self.textView.userInteractionEnabled = YES;
    //: self.textView.showsVerticalScrollIndicator = YES;
    self.textView.showsVerticalScrollIndicator = YES;
}

//: - (void)scrollToBottom{
- (void)scrollOrStackedHeel{
    //: CGPoint offset = self.contentOffset;
    CGPoint offset = self.contentOffset;
    //: self.textView.contentOffset = CGPointMake(offset.x, self.textView.contentSize.height - self.textView.frame.size.height);
    self.textView.contentOffset = CGPointMake(offset.x, self.textView.contentSize.height - self.textView.frame.size.height);
}


//: - (CGFloat)simulateHeight:(NSInteger)line
- (CGFloat)messageContent:(NSInteger)line
{
    //: NSString *saveText = self.textView.text;
    NSString *saveText = self.textView.text;
    //: NSMutableString *newText = [NSMutableString stringWithString:@"-"];
    NSMutableString *newText = [NSMutableString stringWithString:@"-"];

    //: self.textView.delegate = nil;
    self.textView.delegate = nil;
    //: self.textView.hidden = YES;
    self.textView.hidden = YES;

    //: for (NSInteger index=0; index<line; index++) {
    for (NSInteger index=0; index<line; index++) {
        //: [newText appendString:@"\n|W|"];
        [newText appendString:@"\n|W|"];
    }

    //: self.textView.text = newText;
    self.textView.text = newText;

    //: CGFloat textViewMargin = 16;
    CGFloat textViewMargin = 16;
    //: CGFloat height = self.measureTextViewSize.height - (textViewMargin + self.textView.contentInset.top + self.textView.contentInset.bottom);
    CGFloat height = self.session.height - (textViewMargin + self.textView.contentInset.top + self.textView.contentInset.bottom);

    //: self.textView.text = saveText;
    self.textView.text = saveText;
    //: self.textView.hidden = NO;
    self.textView.hidden = NO;
    //: self.textView.delegate = self;
    self.textView.delegate = self;

    //: return height;
    return height;
}

//: #pragma mark - UITextViewDelegate
#pragma mark - UITextViewDelegate
//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    // 判断用户是否按下了 Return 键
        //: if ([text isEqualToString:@"\n"]) {
        if ([text isEqualToString:@"\n"]) {
            // 执行换行操作
            //: [textView insertText:@"\n"];
            [textView insertText:@"\n"];
            //: return NO; 
            return NO; // 返回 NO，表示不插入换行字符到文本中
        }
    //: if ([self.textViewDelegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(sub:can:)]) {
        //: return [self.textViewDelegate shouldChangeTextInRange:range replacementText:text];
        return [self.textViewDelegate sub:range can:text];
    }
    //: return YES;
    return YES;
}

//: - (void)textViewDidEndEditing:(UITextView *)textView
- (void)textViewDidEndEditing:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewDidEndEditing:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(texts:)]) {
        //: [self.textViewDelegate textViewDidEndEditing:self];
        [self.textViewDelegate texts:self];
    }
}

//: - (BOOL)textViewShouldBeginEditing:(UITextView *)textView
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewShouldBeginEditing:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(onPin:)]) {
       //: return [self.textViewDelegate textViewShouldBeginEditing:self];
       return [self.textViewDelegate onPin:self];
    }
    //: return YES;
    return YES;
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(shouldInteractWithURL:inRange:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(combine:showIn:)]) {
        //: return [self.textViewDelegate shouldInteractWithURL:URL inRange:characterRange];
        return [self.textViewDelegate combine:URL showIn:characterRange];
    }
    //: return YES;
    return YES;
}


//: - (void)fitToScrollView{
- (void)show{
    //: BOOL scrollToBottom = self.textView.contentOffset.y == self.textView.contentSize.height - self.textView.frame.size.height;
    BOOL scrollToBottom = self.textView.contentOffset.y == self.textView.contentSize.height - self.textView.frame.size.height;
    //: CGSize actualTextViewSize = [self measureTextViewSize];
    CGSize actualTextViewSize = [self session];
    //: CGRect oldScrollViewFrame = self.frame;
    CGRect oldScrollViewFrame = self.frame;
    //: CGRect newScrollViewFrame = [self measureFrame:actualTextViewSize];
    CGRect newScrollViewFrame = [self engorged:actualTextViewSize];

    //: if (newScrollViewFrame.size.height <= self.maxHeight && _previousTextHeight == 0) {
    if (newScrollViewFrame.size.height <= self.maxHeight && _previousTextHeight == 0) {
        //: if(oldScrollViewFrame.size.height != newScrollViewFrame.size.height) {
        if(oldScrollViewFrame.size.height != newScrollViewFrame.size.height) {
            //: if ([self.textViewDelegate respondsToSelector:@selector(willChangeHeight:)]) {
            if ([self.textViewDelegate respondsToSelector:@selector(shoulded:)]) {
                //: [self.textViewDelegate willChangeHeight:newScrollViewFrame.size.height];
                [self.textViewDelegate shoulded:newScrollViewFrame.size.height];
            }
            //: if (newScrollViewFrame.size.height == self.maxHeight) {
            if (newScrollViewFrame.size.height == self.maxHeight) {
                //: _previousTextHeight = newScrollViewFrame.size.height;
                _previousTextHeight = newScrollViewFrame.size.height;
            //: } else {
            } else {
                //: _previousTextHeight = 0;
                _previousTextHeight = 0;
            }
        }
    //: } else {
    } else {
        //: if (_previousTextHeight != _textView.contentSize.height) {
        if (_previousTextHeight != _textView.contentSize.height) {
            //: [self.textView flashScrollIndicators];
            [self.textView flashScrollIndicators];
            //: _previousTextHeight = _textView.contentSize.height;
            _previousTextHeight = _textView.contentSize.height;
        }
    }

    //: self.frame = newScrollViewFrame;
    self.frame = newScrollViewFrame;
    //: self.textView.frame = CGRectMake(0, 0, newScrollViewFrame.size.width, newScrollViewFrame.size.height);
    self.textView.frame = CGRectMake(0, 0, newScrollViewFrame.size.width, newScrollViewFrame.size.height);
    //: self.contentSize = newScrollViewFrame.size;
    self.contentSize = newScrollViewFrame.size;

    //: if(scrollToBottom) {
    if(scrollToBottom) {
        //: [self scrollToBottom];
        [self scrollOrStackedHeel];
    }

    //: if (oldScrollViewFrame.size.height != newScrollViewFrame.size.height && [self.textViewDelegate respondsToSelector:@selector(didChangeHeight:)]) {
    if (oldScrollViewFrame.size.height != newScrollViewFrame.size.height && [self.textViewDelegate respondsToSelector:@selector(tabulations:)]) {
        //: [self.textViewDelegate didChangeHeight:newScrollViewFrame.size.height];
        [self.textViewDelegate tabulations:newScrollViewFrame.size.height];
    }

    //: [self invalidateIntrinsicContentSize];
    [self invalidateIntrinsicContentSize];
}


//: #pragma mark - Set
#pragma mark - Set
//: - (void)setMinNumberOfLines:(NSInteger)minNumberOfLines
- (void)setMinNumberOfLines:(NSInteger)minNumberOfLines
{
    //: if (minNumberOfLines <= 0) {
    if (minNumberOfLines <= 0) {
        //: self.minHeight = 0;
        self.minHeight = 0;
        //: return;
        return;
    }
    //: self.minHeight = [self simulateHeight:minNumberOfLines];
    self.minHeight = [self messageContent:minNumberOfLines];
    //: _minNumberOfLines = minNumberOfLines;
    _minNumberOfLines = minNumberOfLines;
}

//: - (CGRect)measureFrame:(CGSize)contentSize
- (CGRect)engorged:(CGSize)contentSize
{
    //: CGSize selfSize;
    CGSize selfSize;
    //: if (contentSize.height < self.minHeight || !self.textView.hasText) {
    if (contentSize.height < self.minHeight || !self.textView.hasText) {
        //: selfSize = CGSizeMake(contentSize.width, self.minHeight);
        selfSize = CGSizeMake(contentSize.width, self.minHeight);
    //: } else if (self.maxHeight > 0 && contentSize.height > self.maxHeight) {
    } else if (self.maxHeight > 0 && contentSize.height > self.maxHeight) {
        //: selfSize = CGSizeMake(contentSize.width, self.maxHeight);
        selfSize = CGSizeMake(contentSize.width, self.maxHeight);
    //: } else {
    } else {
        //: selfSize = contentSize;
        selfSize = contentSize;
    }
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.height = selfSize.height;
    frame.size.height = selfSize.height;
    //: return frame;
    return frame;
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(shouldInteractWithTextAttachment:inRange:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(ambit:bubbleRange:)]) {
        //: return [self.textViewDelegate shouldInteractWithTextAttachment:textAttachment inRange:characterRange];
        return [self.textViewDelegate ambit:textAttachment bubbleRange:characterRange];
    }
    //: return YES;
    return YES;
}

//: #pragma mark - UIResponder
#pragma mark - UIResponder

//: - (UIView *)inputView
- (UIView *)inputView
{
    //: return self.textView.inputView;
    return self.textView.inputView;
}



//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: CGRect rect = CGRectMake(0, 0, frame.size.width, frame.size.height);
        CGRect rect = CGRectMake(0, 0, frame.size.width, frame.size.height);
        //: DisplayGrowingInternalTextView *textView = [[DisplayGrowingInternalTextView alloc] initWithFrame:rect];
        PraiseView *textView = [[PraiseView alloc] initWithFrame:rect];
        //: self.textView = textView;
        self.textView = textView;
        //: self.previousFrame = frame;
        self.previousFrame = frame;
        //: [self setup];
        [self valueAndOrigin];
    }
    //: return self;
    return self;
}

//: - (BOOL)becomeFirstResponder
- (BOOL)becomeFirstResponder
{
    //: return [self.textView becomeFirstResponder];
    return [self.textView becomeFirstResponder];
}

//: - (BOOL)isFirstResponder
- (BOOL)isFirstResponder
{
    //: return self.textView.isFirstResponder;
    return self.textView.isFirstResponder;
}


//: - (CGSize)intrinsicContentSize
- (CGSize)intrinsicContentSize
{
    //: return [self measureFrame:self.measureTextViewSize].size;
    return [self engorged:self.session].size;
}

//: - (void)textViewDidChange:(UITextView *)textView
- (void)textViewDidChange:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewDidChange:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(aspected:)]) {
        //: [self.textViewDelegate textViewDidChange:self];
        [self.textViewDelegate aspected:self];
    }
    //: [self fitToScrollView];
    [self show];
}

//: - (void)setInputView:(UIView *)inputView
- (void)setInputView:(UIView *)inputView
{
    //: self.textView.inputView = inputView;
    self.textView.inputView = inputView;
}

//: - (BOOL)resignFirstResponder
- (BOOL)resignFirstResponder
{
    //: [super resignFirstResponder];
    [super resignFirstResponder];
    //: return [self.textView resignFirstResponder];
    return [self.textView resignFirstResponder];
}

//: - (BOOL)textViewShouldEndEditing:(UITextView *)textView
- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    //: if ([self.textViewDelegate respondsToSelector:@selector(textViewShouldEndEditing:)]) {
    if ([self.textViewDelegate respondsToSelector:@selector(pushUpThan:)]) {
        //: return [self.textViewDelegate textViewShouldEndEditing:self];
        return [self.textViewDelegate pushUpThan:self];
    }
    //: return YES;
    return YES;
}

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: DisplayGrowingInternalTextView *textView = [[DisplayGrowingInternalTextView alloc] initWithFrame:CGRectZero];
        PraiseView *textView = [[PraiseView alloc] initWithFrame:CGRectZero];
        //: self.textView = textView;
        self.textView = textView;
        //: self.previousFrame = CGRectZero;
        self.previousFrame = CGRectZero;
        //: [self setup];
        [self valueAndOrigin];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: if (self.previousFrame.size.width != self.bounds.size.width) {
    if (self.previousFrame.size.width != self.bounds.size.width) {
        //: self.previousFrame = self.frame;
        self.previousFrame = self.frame;
        //: [self fitToScrollView];
        [self show];
    }
}


//: - (void)setMaxNumberOfLines:(NSInteger)maxNumberOfLines
- (void)setMaxNumberOfLines:(NSInteger)maxNumberOfLines
{
    //: if (maxNumberOfLines <= 0) {
    if (maxNumberOfLines <= 0) {
        //: self.maxHeight = 0;
        self.maxHeight = 0;
        //: return;
        return;
    }
    //: self.maxHeight = [self simulateHeight:maxNumberOfLines];
    self.maxHeight = [self messageContent:maxNumberOfLines];
    //: _maxNumberOfLines = maxNumberOfLines;
    _maxNumberOfLines = maxNumberOfLines;
}

//: - (CGSize)measureTextViewSize
- (CGSize)session
{
    //: return [self.textView sizeThatFits:CGSizeMake(self.bounds.size.width, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(self.bounds.size.width, 1.7976931348623157e+308)];
}

//: @end
@end




//: @implementation DisplayGrowingTextView(TextView)
@implementation AtPraiseScrollView(TextView)

//: - (NSRange)selectedRange
- (NSRange)selectedRange
{
    //: return self.textView.selectedRange;
    return self.textView.selectedRange;
}

//: - (UIDataDetectorTypes)dataDetectorTypes
- (UIDataDetectorTypes)dataDetectorTypes
{
    //: return self.textView.dataDetectorTypes;
    return self.textView.dataDetectorTypes;
}


//: - (UIView *)textViewInputAccessoryView
- (UIView *)textViewInputAccessoryView
{
    //: return self.textView.inputAccessoryView;
    return self.textView.inputAccessoryView;
}

//: - (void)setSelectable:(BOOL)selectable
- (void)setSelectable:(BOOL)selectable
{
    //: self.textView.selectable = selectable;
    self.textView.selectable = selectable;
}

//: - (UIReturnKeyType)returnKeyType
- (UIReturnKeyType)returnKeyType
{
    //: return self.textView.returnKeyType;
    return self.textView.returnKeyType;
}

//: - (void)setClearsOnInsertion:(BOOL)clearsOnInsertion
- (void)setClearsOnInsertion:(BOOL)clearsOnInsertion
{
    //: self.textView.clearsOnInsertion = clearsOnInsertion;
    self.textView.clearsOnInsertion = clearsOnInsertion;
}

//: - (NSTextContainer *)textContainer
- (NSTextContainer *)textContainer
{
    //: return self.textView.textContainer;
    return self.textView.textContainer;
}

//: - (NSLayoutManager *)layoutManger
- (NSLayoutManager *)layoutManger
{
    //: return self.textView.layoutManager;
    return self.textView.layoutManager;
}

//: - (NSDictionary<NSString *,id> *)linkTextAttributes
- (NSDictionary<NSString *,id> *)linkTextAttributes
{
    //: return self.textView.linkTextAttributes;
    return self.textView.linkTextAttributes;
}

//: - (void)setEditable:(BOOL)editable
- (void)setEditable:(BOOL)editable
{
    //: self.textView.editable = editable;
    self.textView.editable = editable;
}

//: - (NSAttributedString *)placeholderAttributedText
- (NSAttributedString *)placeholderAttributedText
{
    //: return self.textView.placeholderAttributedText;
    return self.textView.placeholderAttributedText;
}

//: - (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes
- (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes
{
    //: self.textView.dataDetectorTypes = dataDetectorTypes;
    self.textView.dataDetectorTypes = dataDetectorTypes;
}

//: - (UIFont *)font
- (UIFont *)font
{
    //: return self.textView.font;
    return self.textView.font;
}

//: - (BOOL)selectable
- (BOOL)selectable
{
    //: return self.textView.selectable;
    return self.textView.selectable;
}


//: - (BOOL)allowsEditingTextAttributes
- (BOOL)allowsEditingTextAttributes
{
    //: return self.allowsEditingTextAttributes;
    return self.allowsEditingTextAttributes;
}

//: - (void)setSelectedRange:(NSRange)selectedRange
- (void)setSelectedRange:(NSRange)selectedRange
{
    //: self.textView.selectedRange = selectedRange;
    self.textView.selectedRange = selectedRange;
}

//: - (void)setTextAlignment:(NSTextAlignment)textAlignment
- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    //: self.textView.textAlignment = textAlignment;
    self.textView.textAlignment = textAlignment;
}

//: - (void)setPlaceholderAttributedText:(NSAttributedString *)placeholderAttributedText
- (void)setPlaceholderAttributedText:(NSAttributedString *)placeholderAttributedText
{
    //: [self.textView setPlaceholderAttributedText:placeholderAttributedText];
    [self.textView setPlaceholderAttributedText:placeholderAttributedText];
}

//: - (void)setTextColor:(UIColor *)textColor
- (void)setTextColor:(UIColor *)textColor
{
    //: self.textView.textColor = textColor;
    self.textView.textColor = textColor;
}

//: - (UIColor *)textColor
- (UIColor *)textColor
{
    //: return self.textView.textColor;
    return self.textView.textColor;
}

//: - (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes
- (void)setAllowsEditingTextAttributes:(BOOL)allowsEditingTextAttributes
{
    //: self.textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
    self.textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
}

//: - (void)setText:(NSString *)text
- (void)setText:(NSString *)text
{
    //: self.textView.text = text;
    self.textView.text = text;
    //: [self fitToScrollView];
    [self show];
}

//: - (void)setAttributedText:(NSAttributedString *)attributedText
- (void)setAttributedText:(NSAttributedString *)attributedText
{
    //: self.textView.attributedText = attributedText;
    self.textView.attributedText = attributedText;
    //: [self fitToScrollView];
    [self show];
}


//: - (BOOL)editable
- (BOOL)editable
{
    //: return self.textView.editable;
    return self.textView.editable;
}

//: - (void)setTextContainerInset:(UIEdgeInsets)textContainerInset
- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset
{
    //: self.textView.textContainerInset = textContainerInset;
    self.textView.textContainerInset = textContainerInset;
}

//: - (void)setTextViewInputAccessoryView:(UIView *)textViewInputAccessoryView
- (void)setTextViewInputAccessoryView:(UIView *)textViewInputAccessoryView
{
    //: self.textView.inputAccessoryView = textViewInputAccessoryView;
    self.textView.inputAccessoryView = textViewInputAccessoryView;
}

//: - (void)setLinkTextAttributes:(NSDictionary<NSString *,id> *)linkTextAttributes
- (void)setLinkTextAttributes:(NSDictionary<NSString *,id> *)linkTextAttributes
{
    //: self.textView.linkTextAttributes = linkTextAttributes;
    self.textView.linkTextAttributes = linkTextAttributes;
}

//: - (void)scrollRangeToVisible:(NSRange)range
- (void)change:(NSRange)range
{
    //: [self.textView scrollRangeToVisible:range];
    [self.textView scrollRangeToVisible:range];
}


//: - (NSTextStorage *)textStorage
- (NSTextStorage *)textStorage
{
    //: return self.textView.textStorage;
    return self.textView.textStorage;
}

//: - (BOOL)clearsOnInsertion
- (BOOL)clearsOnInsertion
{
    //: return self.textView.clearsOnInsertion;
    return self.textView.clearsOnInsertion;
}

//: - (NSTextAlignment)textAlignment
- (NSTextAlignment)textAlignment
{
    //: return self.textView.textAlignment;
    return self.textView.textAlignment;
}

//: - (void)setReturnKeyType:(UIReturnKeyType)returnKeyType
- (void)setReturnKeyType:(UIReturnKeyType)returnKeyType
{
    //: [self.textView setReturnKeyType:returnKeyType];
    [self.textView setReturnKeyType:returnKeyType];
}

// MARK: TextView
//: - (NSString *)text
- (NSString *)text
{
    //: return self.textView.text;
    return self.textView.text;
}

//: - (void)setFont:(UIFont *)font
- (void)setFont:(UIFont *)font
{
    //: self.textView.font = font;
    self.textView.font = font;
}

//: - (NSAttributedString *)attributedText
- (NSAttributedString *)attributedText
{
    //: return self.textView.attributedText;
    return self.textView.attributedText;
}

//: - (UIEdgeInsets)textContainerInset
- (UIEdgeInsets)textContainerInset
{
    //: return self.textView.textContainerInset;
    return self.textView.textContainerInset;
}



//: @end
@end
