
#import <Foundation/Foundation.h>

typedef struct {
    Byte discrimination;
    Byte *gender;
    unsigned int darkGreen;
	int sub;
} StructSingUltimateData;

@interface SingUltimateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SingUltimateData

+ (instancetype)sharedInstance {
    static SingUltimateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SingUltimateDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SingUltimateDataToByte:(StructSingUltimateData *)data {
    for (int i = 0; i < data->darkGreen; i++) {
        data->gender[i] ^= data->discrimination;
    }
    data->gender[data->darkGreen] = 0;
	if (data->darkGreen >= 1) {
		data->sub = data->gender[0];
	}
    return data->gender;
}

- (NSString *)StringFromSingUltimateData:(StructSingUltimateData *)data {
    return [NSString stringWithUTF8String:(char *)[self SingUltimateDataToByte:data]];
}

//: NIMDemoEventNameCloseSnapPicture
- (NSString *)kNamePullCellEverString {
    /* static */ NSString *kNamePullCellEverString = nil;
    if (!kNamePullCellEverString) {
		NSString *origin = @"b3b4b0b9989092b88b989389b39c9098be91928e98ae939c8dad949e89888f9875";
		NSData *data = [SingUltimateData SingUltimateDataToData:origin];
        StructSingUltimateData value = (StructSingUltimateData){253, (Byte *)data.bytes, 32, 199};
        kNamePullCellEverString = [self StringFromSingUltimateData:&value];
    }
    return kNamePullCellEverString;
}

//: 按住查看
- (NSString *)kNameDealerPloyString {
    /* static */ NSString *kNameDealerPloyString = nil;
    if (!kNameDealerPloyString) {
		NSString *origin = @"6c06036e37056c152f6d1601e7";
		NSData *data = [SingUltimateData SingUltimateDataToData:origin];
        StructSingUltimateData value = (StructSingUltimateData){138, (Byte *)data.bytes, 12, 237};
        kNameDealerPloyString = [self StringFromSingUltimateData:&value];
    }
    return kNameDealerPloyString;
}

//: NIMDemoEventNameOpenSnapPicture
- (NSString *)kNameSubstantiallyString {
    /* static */ NSString *kNameSubstantiallyString = nil;
    if (!kNameSubstantiallyString) {
		NSString *origin = @"7e797d74555d5f7546555e447e515d557f40555e635e51406059534445425519";
		NSData *data = [SingUltimateData SingUltimateDataToData:origin];
        StructSingUltimateData value = (StructSingUltimateData){48, (Byte *)data.bytes, 31, 71};
        kNameSubstantiallyString = [self StringFromSingUltimateData:&value];
    }
    return kNameSubstantiallyString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowContentView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionSnapchatContentView.h"
#import "RowContentView.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";

NSString *const k_frameMessage (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"next"];
    }
    return  [[SingUltimateData sharedInstance] kNameSubstantiallyString];
};
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";

NSString *const noti_nameEventResponseStr (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"title"];
    }
    return  [[SingUltimateData sharedInstance] kNamePullCellEverString];
};


//: @interface USERSessionSnapchatContentView()
@interface RowContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation USERSessionSnapchatContentView
@implementation RowContentView


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(originAt:)];
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
        //: _label.text = @"按住查看".user_localized;
        _label.text = [[SingUltimateData sharedInstance] kNameDealerPloyString].nominate;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(DisplayMessageModel *)model{
- (void)from:(CleanDoing *)model{
    //: [super refresh:model];
    [super from:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: USERSnapchatAttachment *attachment = (USERSnapchatAttachment *)customObject.attachment;
    DigitizerAttachment *attachment = (DigitizerAttachment *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉DisplayMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self eroticizeBubbleMotility:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)eroticizeBubbleMotility:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(buttonned:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate buttonned:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: USERSnapchatAttachment *attachment = (USERSnapchatAttachment *)customObject.attachment;
    DigitizerAttachment *attachment = (DigitizerAttachment *)customObject.attachment;
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
- (void)originAt:(UILongPressGestureRecognizer *)recognizer
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
    [self unbar];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)labelled:(id)sender{
    //: if (self.presentedView) {
    if (self.styleBy) {
        //: [self goClose];
        [self from];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)cannulised:(id)sender{
    //: if (self.presentedView) {
    if (self.styleBy) {
        //: [self goClose];
        [self from];
    }
}

//: - (void)goOpen{
- (void)unbar{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(surprised:)]) {
        //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
        ToiletKitSession *event = [[ToiletKitSession alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = k_frameMessage(nil);
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate surprised:event];
    }
}

//: - (void)goClose{
- (void)from{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(surprised:)]) {
        //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
        ToiletKitSession *event = [[ToiletKitSession alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = noti_nameEventResponseStr(nil);
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate surprised:event];
    }
}


//: @end
@end
//: __SAVE__ ignore_string [447.4,546.5]
