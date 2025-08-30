
#import <Foundation/Foundation.h>

NSString *StringFromHateData(Byte *data);


//: icon_whiteboard_session_msg
Byte kTextClerkThoughString[] = {26, 27, 71, 9, 68, 241, 71, 68, 118, 176, 170, 182, 181, 166, 190, 175, 176, 187, 172, 169, 182, 168, 185, 171, 166, 186, 172, 186, 186, 176, 182, 181, 166, 180, 186, 174, 251};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextShouldControl.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionWhiteBoardContentView.h"
#import "TextShouldControl.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"

//: @interface USERSessionWhiteBoardContentView()
@interface TextShouldControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation USERSessionWhiteBoardContentView
@implementation TextShouldControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromHateData(kTextClerkThoughString)]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(DisplayMessageModel *)data{
- (void)from:(CleanDoing *)data{
    //: [super refresh:data];
    [super from:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: USERWhiteboardAttachment *attach = (USERWhiteboardAttachment *)object.attachment;
    MessageAttachment *attach = (MessageAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.viewStart;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model size:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end

Byte * HateDataToCache(Byte *data) {
    int seldom = data[0];
    int houseTap = data[1];
    Byte fatismSeal = data[2];
    int snap = data[3];
    if (!seldom) return data + snap;
    for (int i = snap; i < snap + houseTap; i++) {
        int value = data[i] - fatismSeal;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[snap + houseTap] = 0;
    return data + snap;
}

NSString *StringFromHateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HateDataToCache(data)];
}
