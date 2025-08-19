
#import <Foundation/Foundation.h>

@interface LegalEvolveData : NSObject

@end

@implementation LegalEvolveData

+ (Byte *)LegalEvolveDataToCache:(Byte *)data {
    int sexyMental = data[0];
    Byte ay = data[1];
    int oval = data[2];
    for (int i = oval; i < oval + sexyMental; i++) {
        int value = data[i] - ay;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[oval + sexyMental] = 0;
    return data + oval;
}

+ (NSString *)StringFromLegalEvolveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LegalEvolveDataToCache:data]];
}

//: NTESMessageTranslate
+ (NSString *)dream_pictureName {
    /* static */ NSString *dream_pictureName = nil;
    if (!dream_pictureName) {
        Byte value[] = {20, 41, 10, 25, 111, 13, 119, 200, 1, 166, 119, 125, 110, 124, 118, 142, 156, 156, 138, 144, 142, 125, 155, 138, 151, 156, 149, 138, 157, 142, 133};
        dream_pictureName = [self StringFromLegalEvolveData:value];
    }
    return dream_pictureName;
}

//: invalid item selector!
+ (NSString *)dreamMountRegimeKey {
    /* static */ NSString *dreamMountRegimeKey = nil;
    if (!dreamMountRegimeKey) {
        Byte value[] = {22, 2, 11, 24, 234, 13, 122, 28, 148, 157, 121, 107, 112, 120, 99, 110, 107, 102, 34, 107, 118, 103, 111, 34, 117, 103, 110, 103, 101, 118, 113, 116, 35, 172};
        dreamMountRegimeKey = [self StringFromLegalEvolveData:value];
    }
    return dreamMountRegimeKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoControl.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTextContentView.h"
#import "InfoControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFTextView.h"
#import "ReplacementNameView.h"
//: #import "FFFSessionConfig.h"
#import "MessagePinImage.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+SumrinsicIdentifier.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const showButtonName = @"NIMTextMessageLabelLinkData";

//: @interface FFFSessionTextContentView()<M80AttributedLabelDelegate>
@interface InfoControl()<PlaceMax>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation FFFSessionTextContentView
@implementation InfoControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[QuickNameView alloc] initWithFrame:CGRectZero];
        //: _textView.M80delegate = self;
        _textView.M80delegate = self;
        //: _textView.numberOfLines = 0;
        _textView.numberOfLines = 0;
        //: _textView.autoDetectLinks = YES;
        _textView.autoDetectLinks = YES;
        //: _textView.underLineForLink = YES;
        _textView.underLineForLink = YES;
        //: _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textView.backgroundColor = [UIColor clearColor];
        _textView.backgroundColor = [UIColor clearColor];
        //: _textView.isShowTextSelection = YES;
        _textView.isShowTextSelection = YES;
        //        _textView.selectable = YES;


        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _textView.selectBlock = ^(FFFMediaItem *item) {
        _textView.selectBlock = ^(InfoMakeBar *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(bubbles:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.SumrinsicIdentifier = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate bubbles:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(colorBlueItem:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate colorBlueItem:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, [LegalEvolveData dreamMountRegimeKey]);
                    }
                }
            }
        //: };
        };
        //: _textView.praiseSelectBlock = ^(NSInteger tag){
        _textView.praiseSelectBlock = ^(NSInteger tag){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapPraiseItem: withMessage:)]) {
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(value: user:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate value:tag user:self.model.message];
                }
        //: };
        };

        //: [self addSubview:_textView];
        [self addSubview:_textView];
    }
    //: return self;
    return self;
}

//: -(void)gotoUrl
-(void)withFrom
{
    //: if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        //: [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        //: }];
        }];
    }
}

//: - (BOOL)checkUrlWithString:(NSString *)str
- (BOOL)show:(NSString *)str
{
    //: __block BOOL isUrl = NO;
    __block BOOL isUrl = NO;
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDataDetector *detector = [NSDataDetector
    NSDataDetector *detector = [NSDataDetector
                                //: dataDetectorWithTypes:NSTextCheckingTypeLink
                                dataDetectorWithTypes:NSTextCheckingTypeLink
                                //: error:&error];
                                error:&error];

    //: [detector enumerateMatchesInString:str
    [detector enumerateMatchesInString:str
                               //: options:0
                               options:0
                                 //: range:NSMakeRange(0, str.length)
                                 range:NSMakeRange(0, str.length)
                            //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        //: if (result.resultType == NSTextCheckingTypeLink) {
        if (result.resultType == NSTextCheckingTypeLink) {
            //: isUrl = YES;
            isUrl = YES;
            //: self.url = result.URL;
            self.url = result.URL;
        }
    //: }];
    }];

    //: return isUrl;
    return isUrl;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)lengthAt:(CentralProcessingUnitModel *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super lengthAt:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView stay:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(viewLength:container:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate viewLength:data.message container:^(id data) {
            //: if ([data isKindOfClass:[NTESSessionViewController class]]) {
            if ([data isKindOfClass:[BroadcastViewController class]]) {
                //: NTESSessionViewController *vc = (NTESSessionViewController *)data;
                BroadcastViewController *vc = (BroadcastViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.produceConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView image:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self show:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(withFrom)];
            //: [_textView addGestureRecognizer:singleTap];
            [_textView addGestureRecognizer:singleTap];
        }
    //: }else{
    }else{
        //: NSLog(@"xiaoxiID:%@",self.model.message.messageId);
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model indicator:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)atMyInfo:(CGFloat)cellWidth sort:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if ([message.localExt.allKeys containsObject:[LegalEvolveData dream_pictureName]])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:[LegalEvolveData dream_pictureName]]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[ButtonKit sheerOption].config date:message].font;
    //: [self.textView nim_setText:text];
    [self.textView stay:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - PlaceMax
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)image:(QuickNameView *)label
             //: clickedOnLink:(id)linkData{
             center:(id)linkData{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    CoverShowEvent *event = [[CoverShowEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapLabelLink;
    event.eventName = dream_topMessage;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate modelled:event];
}

//: @end
@end