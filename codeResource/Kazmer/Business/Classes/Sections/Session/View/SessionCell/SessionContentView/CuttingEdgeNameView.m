
#import <Foundation/Foundation.h>

@interface ConsultantData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ConsultantData

+ (instancetype)sharedInstance {
    static ConsultantData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ConsultantDataToCache:(Byte *)data {
    int cueStone = data[0];
    int assumption = data[1];
    for (int i = 0; i < cueStone / 2; i++) {
        int begin = assumption + i;
        int end = assumption + cueStone - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[assumption + cueStone] = 0;
    return data + assumption;
}

- (NSString *)StringFromConsultantData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConsultantDataToCache:data]];
}  

//: {8,20,8,20}
- (NSString *)m_lagPath {
    /* static */ NSString *m_lagPath = nil;
    if (!m_lagPath) {
        Byte value[] = {11, 7, 48, 253, 117, 67, 54, 125, 48, 50, 44, 56, 44, 48, 50, 44, 56, 123, 157};
        m_lagPath = [self StringFromConsultantData:value];
    }
    return m_lagPath;
}

//: icon_session_time_bg
- (NSString *)dreamGivingValue {
    /* static */ NSString *dreamGivingValue = nil;
    if (!dreamGivingValue) {
        Byte value[] = {20, 5, 173, 167, 227, 103, 98, 95, 101, 109, 105, 116, 95, 110, 111, 105, 115, 115, 101, 115, 95, 110, 111, 99, 105, 204};
        dreamGivingValue = [self StringFromConsultantData:value];
    }
    return dreamGivingValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CuttingEdgeNameView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "CuttingEdgeNameView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @implementation NTESSessionTipContentView
@implementation CuttingEdgeNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
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
- (void)lengthAt:(CentralProcessingUnitModel *)model{
    //: [super refresh:model];
    [super lengthAt:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<TableInfo> attachment = (id<TableInfo>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(afterHolderMessage)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment afterHolderMessage];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)upPage:(UIControlState)state accountVisualisation:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[[ConsultantData sharedInstance] dreamGivingValue]];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([[ConsultantData sharedInstance] m_lagPath]);
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