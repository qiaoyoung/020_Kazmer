
#import <Foundation/Foundation.h>

@interface JewelData : NSObject

+ (instancetype)sharedInstance;

//: USERMessageTranslate
@property (nonatomic, copy) NSString *kNameStandardString;

//: invalid item selector!
@property (nonatomic, copy) NSString *kTitleOoSoulData;

@end

@implementation JewelData

+ (instancetype)sharedInstance {
    static JewelData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)JewelDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)JewelDataToCache:(Byte *)data {
    int stepAllotTow = data[0];
    Byte mottle = data[1];
    int importee = data[2];
    for (int i = importee; i < importee + stepAllotTow; i++) {
        int value = data[i] + mottle;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[importee + stepAllotTow] = 0;
    return data + importee;
}

- (NSString *)StringFromJewelData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self JewelDataToCache:data]];
}

//: invalid item selector!
- (NSString *)kTitleOoSoulData {
    if (!_kTitleOoSoulData) {
		NSArray<NSString *> *origin = @[@"22", @"7", @"13", @"53", @"65", @"96", @"67", @"159", @"34", @"148", @"36", @"31", @"173", @"98", @"103", @"111", @"90", @"101", @"98", @"93", @"25", @"98", @"109", @"94", @"102", @"25", @"108", @"94", @"101", @"94", @"92", @"109", @"104", @"107", @"26", @"157"];
		NSData *data = [JewelData JewelDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleOoSoulData = [self StringFromJewelData:value];
    }
    return _kTitleOoSoulData;
}

//: USERMessageTranslate
- (NSString *)kNameStandardString {
    if (!_kNameStandardString) {
		NSArray<NSString *> *origin = @[@"20", @"25", @"10", @"186", @"117", @"144", @"152", @"141", @"245", @"142", @"60", @"58", @"44", @"57", @"52", @"76", @"90", @"90", @"72", @"78", @"76", @"59", @"89", @"72", @"85", @"90", @"83", @"72", @"91", @"76", @"197"];
		NSData *data = [JewelData JewelDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameStandardString = [self StringFromJewelData:value];
    }
    return _kNameStandardString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToControl.m
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionTextContentView.h"
#import "ToControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayTextView.h"
#import "TitleScrollView.h"
//: #import "DisplaySessionConfig.h"
#import "ColorConfig.h"
//: #import "USERSessionViewController.h"
#import "WayOfLifeViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+TelegramContext.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const noti_redUrl = @"NIMTextMessageLabelLinkData";

//: @interface DisplaySessionTextContentView()<M80AttributedLabelDelegate>
@interface ToControl()<PagePraiseDelegate>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation DisplaySessionTextContentView
@implementation ToControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
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
        //: _textView.selectBlock = ^(DisplayMediaItem *item) {
        _textView.selectBlock = ^(CommingleItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(cut:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.TelegramContext = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate cut:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(messageTable:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate messageTable:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, [JewelData sharedInstance].kTitleOoSoulData);
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
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(clickMessage: doStandardMessage:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate clickMessage:tag doStandardMessage:self.model.message];
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
-(void)dotInsert
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
- (BOOL)messageClean:(NSString *)str
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

//: - (void)refresh:(DisplayMessageModel *)data
- (void)from:(CleanDoing *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super from:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: DisplayKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ManPull *setting = [[Mortification text].config toWith:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView deleteVoice:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(with:view:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate with:data.message view:^(id data) {
            //: if ([data isKindOfClass:[USERSessionViewController class]]) {
            if ([data isKindOfClass:[WayOfLifeViewController class]]) {
                //: USERSessionViewController *vc = (USERSessionViewController *)data;
                WayOfLifeViewController *vc = (WayOfLifeViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.sessionConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView present:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self messageClean:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dotInsert)];
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
    //: CGFloat tableViewWidth = self.superview.device_width;
    CGFloat tableViewWidth = self.superview.device_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model size:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)should:(CGFloat)cellWidth addLittleness:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"USERMessageTranslate"])
    if ([message.localExt.allKeys containsObject:[JewelData sharedInstance].kNameStandardString])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"USERMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:[JewelData sharedInstance].kNameStandardString]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[Mortification text].config toWith:message].font;
    //: [self.textView nim_setText:text];
    [self.textView deleteVoice:text];
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
#pragma mark - PagePraiseDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)attributed:(LabelNameScrollView *)label
             //: clickedOnLink:(id)linkData{
             clickedLink:(id)linkData{
    //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
    ToiletKitSession *event = [[ToiletKitSession alloc] init];
    //: event.eventName = DisplayKitEventNameTapLabelLink;
    event.eventName = show_contentData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate surprised:event];
}

//: @end
@end
