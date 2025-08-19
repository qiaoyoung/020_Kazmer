
#import <Foundation/Foundation.h>

NSString *StringFromBoomPatrolData(Byte *data);        


//: icon_whiteboard_session_msg
Byte showDeadlineIdent[] = {64, 27, 15, 11, 135, 125, 83, 140, 145, 129, 83, 90, 84, 96, 95, 80, 104, 89, 90, 101, 86, 83, 96, 82, 99, 85, 80, 100, 86, 100, 100, 90, 96, 95, 80, 94, 100, 88, 222};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageReplacementView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "ImageReplacementView.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface ImageReplacementView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation ImageReplacementView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[QuickNameView alloc] initWithFrame:CGRectZero];
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
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromBoomPatrolData(showDeadlineIdent)]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)lengthAt:(CentralProcessingUnitModel *)data{
    //: [super refresh:data];
    [super lengthAt:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    InfoAttachment *attach = (InfoAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.afterHolderMessage;

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
    CGSize contentSize = [self.model indicator:tableViewWidth];
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

Byte * BoomPatrolDataToCache(Byte *data) {
    int barUgly = data[0];
    int population = data[1];
    Byte isolation = data[2];
    int pointTeam = data[3];
    if (!barUgly) return data + pointTeam;
    for (int i = pointTeam; i < pointTeam + population; i++) {
        int value = data[i] + isolation;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pointTeam + population] = 0;
    return data + pointTeam;
}

NSString *StringFromBoomPatrolData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BoomPatrolDataToCache(data)];
}
