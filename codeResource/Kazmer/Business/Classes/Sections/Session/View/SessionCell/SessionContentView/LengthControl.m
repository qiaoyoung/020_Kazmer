
#import <Foundation/Foundation.h>

@interface BasketballData : NSObject

+ (instancetype)sharedInstance;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *kText_wordName;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *kTitleSureString;

@end

@implementation BasketballData

+ (instancetype)sharedInstance {
    static BasketballData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BasketballDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BasketballDataToCache:(Byte *)data {
    int countryStyle = data[0];
    Byte pork = data[1];
    int headRegulator = data[2];
    for (int i = headRegulator; i < headRegulator + countryStyle; i++) {
        int value = data[i] + pork;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[headRegulator + countryStyle] = 0;
    return data + headRegulator;
}

- (NSString *)StringFromBasketballData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BasketballDataToCache:data]];
}

//: icon_session_time_bg
- (NSString *)kTitleSureString {
    if (!_kTitleSureString) {
		NSArray<NSNumber *> *origin = @[@20, @37, @9, @201, @206, @195, @182, @7, @132, @68, @62, @74, @73, @58, @78, @64, @78, @78, @68, @74, @73, @58, @79, @68, @72, @64, @58, @61, @66, @22];
		NSData *data = [BasketballData BasketballDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSureString = [self StringFromBasketballData:value];
    }
    return _kTitleSureString;
}

//: {8,20,8,20}
- (NSString *)kText_wordName {
    if (!_kText_wordName) {
		NSArray<NSNumber *> *origin = @[@11, @27, @11, @155, @192, @183, @75, @236, @158, @21, @10, @96, @29, @17, @23, @21, @17, @29, @17, @23, @21, @98, @119];
		NSData *data = [BasketballData BasketballDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_wordName = [self StringFromBasketballData:value];
    }
    return _kText_wordName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthControl.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionTipContentView.h"
#import "LengthControl.h"
//: #import "USERCustomAttachmentDefines.h"
#import "USERCustomAttachmentDefines.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @implementation USERSessionTipContentView
@implementation LengthControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)from:(CleanDoing *)model{
    //: [super refresh:model];
    [super from:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<USERCustomAttachmentInfo> attachment = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> attachment = (id<AdvertizeTarget>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(viewStart)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment viewStart];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)colorLength:(UIControlState)state label:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[BasketballData sharedInstance].kTitleSureString];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([BasketballData sharedInstance].kText_wordName);
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: @end
@end