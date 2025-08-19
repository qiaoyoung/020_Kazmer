
#import <Foundation/Foundation.h>

typedef struct {
    Byte stalkerDrink;
    Byte *powerLoser;
    unsigned int undergoMuscle;
	int restoreArm;
	int rescueOperationUp;
} StructCowData;

@interface CowData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CowData

+ (instancetype)sharedInstance {
    static CowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CowDataToByte:(StructCowData *)data {
    for (int i = 0; i < data->undergoMuscle; i++) {
        data->powerLoser[i] ^= data->stalkerDrink;
    }
    data->powerLoser[data->undergoMuscle] = 0;
	if (data->undergoMuscle >= 2) {
		data->restoreArm = data->powerLoser[0];
		data->rescueOperationUp = data->powerLoser[1];
	}
    return data->powerLoser;
}

- (NSString *)StringFromCowData:(StructCowData *)data {
    return [NSString stringWithUTF8String:(char *)[self CowDataToByte:data]];
}

//: icon_session_time_bg
- (NSString *)notiHaveIdent {
    /* static */ NSString *notiHaveIdent = nil;
    if (!notiHaveIdent) {
        StructCowData value = (StructCowData){155, (Byte []){242, 248, 244, 245, 196, 232, 254, 232, 232, 242, 244, 245, 196, 239, 242, 246, 254, 196, 249, 252, 57}, 20, 85, 211};
        notiHaveIdent = [self StringFromCowData:&value];
    }
    return notiHaveIdent;
}

//: {8,20,8,20}
- (NSString *)noti_patrolData {
    /* static */ NSString *noti_patrolData = nil;
    if (!noti_patrolData) {
        StructCowData value = (StructCowData){213, (Byte []){174, 237, 249, 231, 229, 249, 237, 249, 231, 229, 168, 23}, 11, 181, 32};
        noti_patrolData = [self StringFromCowData:&value];
    }
    return noti_patrolData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventContentView.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "EventContentView.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface EventContentView()<PlaceMax>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation EventContentView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[QuickNameView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
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
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(afterHolderMessage)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.afterHolderMessage;
        //: [self.label appendText:formatedMessage];
        [self.label format:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".textIndex];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)upPage:(UIControlState)state accountVisualisation:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[[CowData sharedInstance] notiHaveIdent]];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([[CowData sharedInstance] noti_patrolData]);
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


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - PlaceMax
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)image:(QuickNameView *)label
             //: clickedOnLink:(id)linkData
             center:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(modelled:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = mValueDateName;
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