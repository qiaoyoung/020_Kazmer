//
//  USERSessionWhiteBoardContentView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "USERSessionWhiteBoardContentView.h"
#import "USERSessionUtil.h"
#import "UIView+USER.h"
#import "M80AttributedLabel.h"
#import "FFFKitUtil.h"
#import "USERWhiteboardAttachment.h"

@interface USERSessionWhiteBoardContentView()

@property (nonatomic,strong) UIImageView *imageView;

@end

@implementation USERSessionWhiteBoardContentView

-(instancetype)initSessionMessageContentView
{
    if (self = [super initSessionMessageContentView]) {
        _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel.autoDetectLinks = NO;
        _textLabel.numberOfLines = 0;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_textLabel];
        
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        [self addSubview:_imageView];
    }
    return self;
}

- (void)refresh:(FFFMessageModel *)data{
    [super refresh:data];
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    USERWhiteboardAttachment *attach = (USERWhiteboardAttachment *)object.attachment;
    NSString *text = attach.formatedMessage;
    
    [_textLabel setText:text];
    if (!data.message.isOutgoingMsg) {
        _textLabel.textColor = [UIColor blackColor];
    }else{
        _textLabel.textColor = [UIColor whiteColor];
    }
    
    self.bubbleImageView.hidden = NO;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    CGFloat tableViewWidth = self.superview.width;
    CGSize contentSize = [self.model contentSize:tableViewWidth];
    self.imageView.left = contentInsets.left;
    self.imageView.centerY = self.height * .5f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    self.textLabel.frame = labelFrame;
}
@end
