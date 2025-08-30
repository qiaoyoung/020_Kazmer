
#import <Foundation/Foundation.h>

@interface JournalistData : NSObject

@end

@implementation JournalistData

+ (NSData *)JournalistDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)JournalistDataToCache:(Byte *)data {
    int everCombination = data[0];
    Byte defineMated = data[1];
    int beau = data[2];
    for (int i = beau; i < beau + everCombination; i++) {
        int value = data[i] + defineMated;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[beau + everCombination] = 0;
    return data + beau;
}

+ (NSString *)StringFromJournalistData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self JournalistDataToCache:data]];
}

//: chatroom_role_manager
+ (NSString *)kNameProvedString {
    /* static */ NSString *kNameProvedString = nil;
    if (!kNameProvedString) {
		NSArray<NSNumber *> *origin = @[@21, @8, @3, @91, @96, @89, @108, @106, @103, @103, @101, @87, @106, @103, @100, @93, @87, @101, @89, @102, @89, @95, @93, @106, @187];
		NSData *data = [JournalistData JournalistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameProvedString = [self StringFromJournalistData:value];
    }
    return kNameProvedString;
}

//: type
+ (NSString *)kName_lastTitle {
    /* static */ NSString *kName_lastTitle = nil;
    if (!kName_lastTitle) {
		NSArray<NSNumber *> *origin = @[@4, @46, @6, @54, @36, @174, @70, @75, @66, @55, @223];
		NSData *data = [JournalistData JournalistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_lastTitle = [self StringFromJournalistData:value];
    }
    return kName_lastTitle;
}

//: chatroom_role_master
+ (NSString *)kContent_atText {
    /* static */ NSString *kContent_atText = nil;
    if (!kContent_atText) {
		NSArray<NSNumber *> *origin = @[@20, @71, @13, @107, @153, @46, @203, @14, @239, @7, @21, @116, @151, @28, @33, @26, @45, @43, @40, @40, @38, @24, @43, @40, @37, @30, @24, @38, @26, @44, @45, @30, @43, @87];
		NSData *data = [JournalistData JournalistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_atText = [self StringFromJournalistData:value];
    }
    return kContent_atText;
}

//: USERMessageRefusedTag
+ (NSString *)kName_bullChronicValue {
    /* static */ NSString *kName_bullChronicValue = nil;
    if (!kName_bullChronicValue) {
		NSArray<NSNumber *> *origin = @[@21, @78, @5, @51, @56, @7, @5, @247, @4, @255, @23, @37, @37, @19, @25, @23, @4, @23, @24, @39, @37, @23, @22, @6, @19, @25, @159];
		NSData *data = [JournalistData JournalistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_bullChronicValue = [self StringFromJournalistData:value];
    }
    return kName_bullChronicValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERCellLayoutConfig.h"
#import "LabelLayoutConfig.h"
//: #import "USERSessionCustomContentConfig.h"
#import "ColorCancel.h"
//: #import "USERChatroomTextContentConfig.h"
#import "TextRecord.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"

//: @interface USERCellLayoutConfig ()
@interface LabelLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) USERSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) ColorCancel *sessionCustomconfig;
//: @property (nonatomic,strong) USERChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) TextRecord *chatroomTextConfig;
//: @end
@end

//: @implementation USERCellLayoutConfig
@implementation LabelLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"USERJanKenPonAttachment",
                   @"GlossAttachment",
                   //: @"USERSnapchatAttachment",
                   @"DigitizerAttachment",
                   //: @"USERWhiteboardAttachment",
                   @"MessageAttachment",
                   //: @"USERRedPacketAttachment",
                   @"LabelTagContext",
                   //: @"USERRedPacketTipAttachment",
                   @"ContentAttachment",
                   //: @"USERMultiRetweetAttachment",
                   @"SessionWith",
                   //: @"USERShareCardAttachment"
                   @"ProfitsToAttachmentColor"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[USERSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[ColorCancel alloc] init];
        //: _chatroomTextConfig = [[USERChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[TextRecord alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - DisplayCellLayoutConfig
#pragma mark - CellManWith
//: - (CGSize)contentSize:(DisplayMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)viewBar:(CleanDoing *)model tinkle:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self accumulation:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig step:width menu:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self red:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig step:width menu:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super viewBar:model
                    //: cellWidth:width];
                    tinkle:width];

}

//: - (NSString *)cellContent:(DisplayMessageModel *)model{
- (NSString *)compartment:(CleanDoing *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self accumulation:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig viewTing:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self red:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig viewTing:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super compartment:model];
}

//: - (UIEdgeInsets)contentViewInsets:(DisplayMessageModel *)model
- (UIEdgeInsets)old:(CleanDoing *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self accumulation:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig nameSearched:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self red:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig nameSearched:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super old:model];
}

//: - (UIEdgeInsets)cellInsets:(DisplayMessageModel *)model
- (UIEdgeInsets)concealed:(CleanDoing *)model
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
    return [super concealed:model];
}




//: - (BOOL)shouldShowAvatar:(DisplayMessageModel *)model
- (BOOL)back:(CleanDoing *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self shouldAdd:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self color:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self user:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super back:model];
}

//: - (BOOL)shouldShowLeft:(DisplayMessageModel *)model{
- (BOOL)corner:(CleanDoing *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self shouldAdd:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super corner:model];
}


//: - (BOOL)shouldShowNickName:(DisplayMessageModel *)model{
- (BOOL)bar:(CleanDoing *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self shouldAdd:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self user:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super bar:model];
}

//: - (CGPoint)nickNameMargin:(DisplayMessageModel *)model{
- (CGPoint)perimeter:(CleanDoing *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self shouldAdd:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[JournalistData kName_lastTitle]] integerValue];
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
    return [super perimeter:model];
}

//: - (NSArray *)customViews:(DisplayMessageModel *)model
- (NSArray *)margin:(CleanDoing *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self shouldAdd:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[JournalistData kName_lastTitle]] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = [JournalistData kNameProvedString];
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = [JournalistData kContent_atText];
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
    return [super margin:model];
}


//: - (BOOL)disableRetryButton:(DisplayMessageModel *)model
- (BOOL)names:(CleanDoing *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"USERMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:[JournalistData kName_bullChronicValue]])
    {
        //: return [[model.message.localExt objectForKey:@"USERMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:[JournalistData kName_bullChronicValue]] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super names:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)accumulation:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)shouldAdd:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self accumulation:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)red:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)color:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[USERWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[MessageAttachment class]]) {
            //: return [(USERWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(MessageAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)user:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[USERRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[ContentAttachment class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(DisplayMessageModel *)model
- (BOOL)airBubble:(CleanDoing *)model
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
    if ([self accumulation:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig scaling:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(scaling:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig scaling:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super airBubble:model];
}
//: @end
@end
