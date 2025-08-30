
#import <Foundation/Foundation.h>
typedef struct {
    Byte amberJust;
    Byte *firmlyMoo;
    unsigned int faceDoing;
    Byte disregard;
	int thoughPorch;
	int counterchange;
} JambonData;

NSString *StringFromJambonData(JambonData *data);


//: {8,20,8,20}
JambonData kTitle_shallowSandContent = (JambonData){245, (Byte []){142, 205, 217, 199, 197, 217, 205, 217, 199, 197, 136, 51}, 11, 248, 211, 81};

//: icon_session_time_bg
JambonData kTitleSafetyDefineValue = (JambonData){141, (Byte []){228, 238, 226, 227, 210, 254, 232, 254, 254, 228, 226, 227, 210, 249, 228, 224, 232, 210, 239, 234, 22}, 20, 230, 177, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionRedPacketTipContentView.h"
#import "CenterControl.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "USERCustomAttachmentDefines.h"
#import "USERCustomAttachmentDefines.h"

//: @interface USERSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface CenterControl()<PagePraiseDelegate>

//: @end
@end

//: @implementation USERSessionRedPacketTipContentView
@implementation CenterControl

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - PagePraiseDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)attributed:(LabelNameScrollView *)label
             //: clickedOnLink:(id)linkData
             clickedLink:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(surprised:)]) {
        //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
        ToiletKitSession *event = [[ToiletKitSession alloc] init];
        //: event.eventName = USERShowRedPacketDetailEvent;
        event.eventName = dreamVideoPath(nil);
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate surprised:event];
    }
}

//: - (void)refresh:(DisplayMessageModel *)model{
- (void)from:(CleanDoing *)model{
    //: [super refresh:model];
    [super from:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<USERCustomAttachmentInfo> attachment = (id<USERCustomAttachmentInfo>)object.attachment;
    id<AdvertizeTarget> attachment = (id<AdvertizeTarget>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(viewStart)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.viewStart;
        //: [self.label appendText:formatedMessage];
        [self.label status:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".user_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".nominate];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
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

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)colorLength:(UIControlState)state label:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromJambonData(&kTitleSafetyDefineValue)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromJambonData(&kTitle_shallowSandContent));
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}


//: - (instancetype)initSessionMessageContentView
- (instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
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


//: @end
@end

Byte *JambonDataToByte(JambonData *data) {
    if (data->disregard < 115) return data->firmlyMoo;
    for (int i = 0; i < data->faceDoing; i++) {
        data->firmlyMoo[i] ^= data->amberJust;
    }
    data->firmlyMoo[data->faceDoing] = 0;
    data->disregard = 85;
	if (data->faceDoing >= 2) {
		data->thoughPorch = data->firmlyMoo[0];
		data->counterchange = data->firmlyMoo[1];
	}
    return data->firmlyMoo;
}

NSString *StringFromJambonData(JambonData *data) {
    return [NSString stringWithUTF8String:(char *)JambonDataToByte(data)];
}
