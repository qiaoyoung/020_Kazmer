
#import <Foundation/Foundation.h>

@interface DeliverData : NSObject

+ (instancetype)sharedInstance;

//: 按住查看
@property (nonatomic, copy) NSString *k_threshHeavyTitle;

@end

@implementation DeliverData

+ (instancetype)sharedInstance {
    static DeliverData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DeliverDataToCache:(Byte *)data {
    int typical = data[0];
    int potInfo = data[1];
    for (int i = 0; i < typical / 2; i++) {
        int begin = potInfo + i;
        int end = potInfo + typical - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[potInfo + typical] = 0;
    return data + potInfo;
}

- (NSString *)StringFromDeliverData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DeliverDataToCache:data]];
}  

//: 按住查看
- (NSString *)k_threshHeavyTitle {
    if (!_k_threshHeavyTitle) {
        Byte value[] = {12, 12, 68, 175, 93, 117, 188, 136, 83, 176, 156, 89, 139, 156, 231, 165, 159, 230, 143, 189, 228, 137, 140, 230, 117};
        _k_threshHeavyTitle = [self StringFromDeliverData:value];
    }
    return _k_threshHeavyTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeNameView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "MakeNameView.h"
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const mGestureStr = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const mainMessageUrl = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface MakeNameView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation MakeNameView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(withIndex:)];
        //: [self addGestureRecognizer:_longpressGesture];
        [self addGestureRecognizer:_longpressGesture];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;//图片背景自带气泡。。

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:13.f];
        _label.font = [UIFont systemFontOfSize:13.f];
        //: _label.textColor = [UIColor grayColor];
        _label.textColor = [UIColor grayColor];
        //: _label.text = @"按住查看".ntes_localized;
        _label.text = [DeliverData sharedInstance].k_threshHeavyTitle.textIndex;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(WatchMessageModel *)model{
- (void)lengthAt:(CentralProcessingUnitModel *)model{
    //: [super refresh:model];
    [super lengthAt:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    WeltanschauungAttachment *attachment = (WeltanschauungAttachment *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉WatchMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self date:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)date:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(contenting:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate contenting:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    WeltanschauungAttachment *attachment = (WeltanschauungAttachment *)customObject.attachment;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: UIImage *showCoverImage = attachment.showCoverImage;
    UIImage *showCoverImage = attachment.showCoverImage;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CGFloat customSnapMessageImageRightToText = 5.f;
    CGFloat customSnapMessageImageRightToText = 5.f;
    //: CGFloat customSnapMessageTextBottom = 20.f;
    CGFloat customSnapMessageTextBottom = 20.f;
    //: self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    //: self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
    self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
}



//: - (void)onLongPressDown:(UILongPressGestureRecognizer *)recognizer
- (void)withIndex:(UILongPressGestureRecognizer *)recognizer
{
    //: NIMMessage *message = self.model.message;
    NIMMessage *message = self.model.message;
    //: if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
    if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
        //: return;
        return;
    }
    //: if (recognizer.state != UIGestureRecognizerStateBegan) {
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        //: return;
        return;
    }
    //: recognizer.enabled = NO;
    recognizer.enabled = NO;
    //: [self goOpen];
    [self prise];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)searched:(id)sender{
    //: if (self.presentedView) {
    if (self.titleColor) {
        //: [self goClose];
        [self redInput];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)events:(id)sender{
    //: if (self.presentedView) {
    if (self.titleColor) {
        //: [self goClose];
        [self redInput];
    }
}

//: - (void)goOpen{
- (void)prise{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(modelled:)]) {
        //: WatchKitEvent *event = [[WatchKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = mGestureStr;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate modelled:event];
    }
}

//: - (void)goClose{
- (void)redInput{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(modelled:)]) {
        //: WatchKitEvent *event = [[WatchKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = mainMessageUrl;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate modelled:event];
    }
}


//: @end
@end
