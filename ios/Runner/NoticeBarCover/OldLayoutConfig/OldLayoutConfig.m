
#import <Foundation/Foundation.h>

NSString *StringFromLigationData(Byte *data);


//: chatroom_role_master
Byte mScramData[] = {86, 20, 11, 247, 42, 108, 61, 10, 159, 9, 68, 114, 101, 116, 115, 97, 109, 95, 101, 108, 111, 114, 95, 109, 111, 111, 114, 116, 97, 104, 99, 70};

//: type
Byte app_dancerSurvivalName[] = {59, 4, 6, 111, 117, 34, 101, 112, 121, 116, 179};

//: NTESMessageRefusedTag
Byte appShouldStr[] = {26, 21, 11, 34, 224, 188, 234, 148, 71, 21, 203, 103, 97, 84, 100, 101, 115, 117, 102, 101, 82, 101, 103, 97, 115, 115, 101, 77, 83, 69, 84, 78, 18};

//: chatroom_role_manager
Byte appDateKey[] = {58, 21, 5, 169, 157, 114, 101, 103, 97, 110, 97, 109, 95, 101, 108, 111, 114, 95, 109, 111, 111, 114, 116, 97, 104, 99, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "OldLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "AccountMessageRecent.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "NoticeBarCover.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"

//: @interface NTESCellLayoutConfig ()
@interface OldLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) AccountMessageRecent *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) NoticeBarCover *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation OldLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"ObjectAttachment",
                   //: @"NTESSnapchatAttachment",
                   @"WeltanschauungAttachment",
                   //: @"NTESWhiteboardAttachment",
                   @"InfoAttachment",
                   //: @"NTESRedPacketAttachment",
                   @"InfoMessageBackground",
                   //: @"NTESRedPacketTipAttachment",
                   @"ReplacementAttachment",
                   //: @"NTESMultiRetweetAttachment",
                   @"ShowImageEvent",
                   //: @"NTESShareCardAttachment"
                   @"KeyAttachment"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[AccountMessageRecent alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[NoticeBarCover alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - WatchCellLayoutConfig
#pragma mark - PinFrame
//: - (CGSize)contentSize:(WatchMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)event:(CentralProcessingUnitModel *)model size:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self parentKey:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig year:width table:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self message:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig year:width table:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super event:model
                    //: cellWidth:width];
                    size:width];

}

//: - (NSString *)cellContent:(WatchMessageModel *)model{
- (NSString *)availableName:(CentralProcessingUnitModel *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self parentKey:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig textDistance:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self message:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig textDistance:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super availableName:model];
}

//: - (UIEdgeInsets)contentViewInsets:(WatchMessageModel *)model
- (UIEdgeInsets)media:(CentralProcessingUnitModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self parentKey:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig contentInsets:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self message:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig contentInsets:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super media:model];
}

//: - (UIEdgeInsets)cellInsets:(WatchMessageModel *)model
- (UIEdgeInsets)month:(CentralProcessingUnitModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super month:model];
}




//: - (BOOL)shouldShowAvatar:(WatchMessageModel *)model
- (BOOL)presentActivity:(CentralProcessingUnitModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self contentCount:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self containerMessage:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self pathTip:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super presentActivity:model];
}

//: - (BOOL)shouldShowLeft:(WatchMessageModel *)model{
- (BOOL)statusLeft:(CentralProcessingUnitModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self contentCount:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super statusLeft:model];
}


//: - (BOOL)shouldShowNickName:(WatchMessageModel *)model{
- (BOOL)send:(CentralProcessingUnitModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self contentCount:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self pathTip:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super send:model];
}

//: - (CGPoint)nickNameMargin:(WatchMessageModel *)model{
- (CGPoint)showTotal:(CentralProcessingUnitModel *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self contentCount:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromLigationData(app_dancerSurvivalName)] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super showTotal:model];
}

//: - (NSArray *)customViews:(WatchMessageModel *)model
- (NSArray *)cellViews:(CentralProcessingUnitModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self contentCount:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromLigationData(app_dancerSurvivalName)] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = StringFromLigationData(appDateKey);
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = StringFromLigationData(mScramData);
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super cellViews:model];
}


//: - (BOOL)disableRetryButton:(WatchMessageModel *)model
- (BOOL)emptyPower:(CentralProcessingUnitModel *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:StringFromLigationData(appShouldStr)])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:StringFromLigationData(appShouldStr)] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super emptyPower:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)parentKey:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)contentCount:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self parentKey:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)message:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)containerMessage:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[InfoAttachment class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(InfoAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)pathTip:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[ReplacementAttachment class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(WatchMessageModel *)model
- (BOOL)clickBackground:(CentralProcessingUnitModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self parentKey:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig threadded:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(threadded:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig threadded:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super clickBackground:model];
}
//: @end
@end

Byte * LigationDataToCache(Byte *data) {
    int quantityellectual = data[0];
    int ligationRna = data[1];
    int rugVidNecessary = data[2];
    if (!quantityellectual) return data + rugVidNecessary;
    for (int i = 0; i < ligationRna / 2; i++) {
        int begin = rugVidNecessary + i;
        int end = rugVidNecessary + ligationRna - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[rugVidNecessary + ligationRna] = 0;
    return data + rugVidNecessary;
}

NSString *StringFromLigationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LigationDataToCache(data)];
}  
