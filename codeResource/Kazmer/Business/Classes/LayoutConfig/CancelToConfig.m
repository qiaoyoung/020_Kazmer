
#import <Foundation/Foundation.h>

typedef struct {
    Byte edibleSeed;
    Byte *bandSwitcheself;
    unsigned int colaWort;
	int college;
	int consistGrate;
} StructSurvivorData;

@interface SurvivorData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SurvivorData

+ (instancetype)sharedInstance {
    static SurvivorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SurvivorDataToByte:(StructSurvivorData *)data {
    for (int i = 0; i < data->colaWort; i++) {
        data->bandSwitcheself[i] ^= data->edibleSeed;
    }
    data->bandSwitcheself[data->colaWort] = 0;
	if (data->colaWort >= 2) {
		data->college = data->bandSwitcheself[0];
		data->consistGrate = data->bandSwitcheself[1];
	}
    return data->bandSwitcheself;
}

- (NSString *)StringFromSurvivorData:(StructSurvivorData *)data {
    return [NSString stringWithUTF8String:(char *)[self SurvivorDataToByte:data]];
}

//: NTESChatroomTextContentView
- (NSString *)kNameBanDetailTitle {
    /* static */ NSString *kNameBanDetailTitle = nil;
    if (!kNameBanDetailTitle) {
        StructSurvivorData value = (StructSurvivorData){200, (Byte []){134, 156, 141, 155, 139, 160, 169, 188, 186, 167, 167, 165, 156, 173, 176, 188, 139, 167, 166, 188, 173, 166, 188, 158, 161, 173, 191, 104}, 27, 226, 184};
        kNameBanDetailTitle = [self StringFromSurvivorData:&value];
    }
    return kNameBanDetailTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelToConfig.m
//  NIM
//
//  Created by chris on 2017/8/21.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESChatroomRobotContentConfig.h"
#import "CancelToConfig.h"
//: #import "M80AttributedLabel+NIMKit.h"
#import "M80AttributedLabel+NIMKit.h"
//: #import "NTESSessionRobotContentView.h"
#import "RedComment.h"
//: #import "UIView+NIM.h"
#import "UIView+NIM.h"

// __M_A_C_R_O__

//: @interface NTESChatroomRobotContentConfig()
@interface CancelToConfig()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) LabelNameScrollView *label;

//: @property (nonatomic,strong) NTESSessionRobotContentView *robotContentView;
@property (nonatomic,strong) RedComment *robotContentView;

//: @property (nonatomic,strong) NIMMessageModel *robotModel;
@property (nonatomic,strong) NIMMessageModel *robotModel;
//: @end
@end

//: @implementation NTESChatroomRobotContentConfig
@implementation CancelToConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)shadow:(CGFloat)cellWidth name:(NIMMessage *)message
{
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: if ([self isFromRobot:message])
    if ([self quantity:message])
    {
        //: self.robotModel.message = message;
        self.robotModel.message = message;
        //: self.robotContentView.nim_width = msgBubbleMaxWidth;
        self.robotContentView.nim_width = msgBubbleMaxWidth;
        //: [self.robotContentView setupRobot:self.robotModel];
        [self.robotContentView setupRobot:self.robotModel];
        //: [self.robotContentView layoutIfNeeded];
        [self.robotContentView layoutIfNeeded];

        //: CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        //: return size;
        return size;
    }
    //: else
    else
    {
        //: NSString *text = message.text;
        NSString *text = message.text;
        //: [self.label nim_setText:text];
        [self.label nim_setText:text];

        //: CGFloat bubbleLeftToContent = 14;
        CGFloat bubbleLeftToContent = 14;
        //: CGFloat contentRightToBubble = 14;
        CGFloat contentRightToBubble = 14;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)model:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self quantity:message])
    {
        //: return @"NTESSessionRobotContentView";
        return @"RedComment";
    }
    //: else
    else
    {
        //: return @"NTESChatroomTextContentView";
        return [[SurvivorData sharedInstance] kNameBanDetailTitle];
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)tableInsets:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self quantity:message])
    {
        //: return UIEdgeInsetsMake(9,15,10,0);
        return UIEdgeInsetsMake(9,15,10,0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(20,15,10,0);
        return UIEdgeInsetsMake(20,15,10,0);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)isFromRobot:(NIMMessage *)message
- (BOOL)quantity:(NIMMessage *)message
{
    //: NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    //: return object.isFromRobot;
    return object.isFromRobot;
}

//: - (M80AttributedLabel *)label
- (LabelNameScrollView *)label
{
    //: if (_label)
    if (_label)
    {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[LabelNameScrollView alloc] initWithFrame:CGRectZero];
    //: _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    //: return _label;
    return _label;
}

//: - (NTESSessionRobotContentView *)robotContentView
- (RedComment *)robotContentView
{
    //: if (_robotContentView)
    if (_robotContentView)
    {
        //: return _robotContentView;
        return _robotContentView;
    }
    //: _robotContentView = [[NTESSessionRobotContentView alloc] initSessionMessageContentView];
    _robotContentView = [[RedComment alloc] initSessionMessageContentView];
    //: return _robotContentView;
    return _robotContentView;
}

//: - (NIMMessageModel *)robotModel
- (NIMMessageModel *)robotModel
{
    //: if (_robotModel)
    if (_robotModel)
    {
        //: return _robotModel;
        return _robotModel;
    }
    //: _robotModel = [[NIMMessageModel alloc] init];
    _robotModel = [[NIMMessageModel alloc] init];
    //: return _robotModel;
    return _robotModel;
}

//: @end
@end