
#import <Foundation/Foundation.h>

typedef struct {
    Byte showTop;
    Byte *twistMeaning;
    unsigned int finSuggest;
	int visibleMilk;
	int whereasDeserve;
	int halfPound;
} StructWaistData;

@interface WaistData : NSObject

+ (instancetype)sharedInstance;

//: reply
@property (nonatomic, copy) NSString *kContent_colorValue;

@end

@implementation WaistData

+ (instancetype)sharedInstance {
    static WaistData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WaistDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)WaistDataToByte:(StructWaistData *)data {
    for (int i = 0; i < data->finSuggest; i++) {
        data->twistMeaning[i] ^= data->showTop;
    }
    data->twistMeaning[data->finSuggest] = 0;
	if (data->finSuggest >= 3) {
		data->visibleMilk = data->twistMeaning[0];
		data->whereasDeserve = data->twistMeaning[1];
		data->halfPound = data->twistMeaning[2];
	}
    return data->twistMeaning;
}

- (NSString *)StringFromWaistData:(StructWaistData *)data {
    return [NSString stringWithUTF8String:(char *)[self WaistDataToByte:data]];
}

//: reply
- (NSString *)kContent_colorValue {
    if (!_kContent_colorValue) {
		NSString *origin = @"091E0B1702E5";
		NSData *data = [WaistData WaistDataToData:origin];
        StructWaistData value = (StructWaistData){123, (Byte *)data.bytes, 5, 10, 216, 165};
        _kContent_colorValue = [self StringFromWaistData:&value];
    }
    return _kContent_colorValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanDoing.m
// Mortification
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayKitQuickCommentUtil.h"
#import "ControlInside.h"

//: @interface DisplayMessageModel()
@interface CleanDoing()

//: @property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;
//: @property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;

//: @end
@end

//: @implementation DisplayMessageModel
@implementation CleanDoing

//: @synthesize contentViewInsets = _contentViewInsets;
@synthesize contentViewInsets = _contentViewInsets;
//: @synthesize bubbleViewInsets = _bubbleViewInsets;
@synthesize bubbleViewInsets = _bubbleViewInsets;
//: @synthesize replyContentViewInsets = _replyContentViewInsets;
@synthesize replyContentViewInsets = _replyContentViewInsets;
//: @synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
@synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
//: @synthesize shouldShowAvatar = _shouldShowAvatar;
@synthesize shouldShowAvatar = _shouldShowAvatar;
//: @synthesize shouldShowNickName = _shouldShowNickName;
@synthesize shouldShowNickName = _shouldShowNickName;
//: @synthesize shouldShowLeft = _shouldShowLeft;
@synthesize shouldShowLeft = _shouldShowLeft;
//: @synthesize avatarMargin = _avatarMargin;
@synthesize avatarMargin = _avatarMargin;
//: @synthesize nickNameMargin = _nickNameMargin;
@synthesize nickNameMargin = _nickNameMargin;
//: @synthesize avatarSize = _avatarSize;
@synthesize avatarSize = _avatarSize;
//: @synthesize repliedMessage = _repliedMessage;
@synthesize repliedMessage = _repliedMessage;
//: @synthesize parentMessage = _parentMessage;
@synthesize parentMessage = _parentMessage;

//: - (void)updateLayoutConfig
- (void)image
{
    //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];

    //: _shouldShowAvatar = [layoutConfig shouldShowAvatar:self];
    _shouldShowAvatar = [layoutConfig back:self];
    //: _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig shouldShowNickName:self];
    _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig bar:self];
    //: _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig shouldShowLeft:self];
    _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig corner:self];
    //: _avatarMargin = [layoutConfig avatarMargin:self];
    _avatarMargin = [layoutConfig sizeSend:self];
    //: _nickNameMargin = [layoutConfig nickNameMargin:self];
    _nickNameMargin = [layoutConfig perimeter:self];
    //: _avatarSize = [layoutConfig avatarSize:self];
    _avatarSize = [layoutConfig message:self];
}

//: - (instancetype)initWithMessage:(NIMMessage*)message
- (instancetype)initWithLayer:(NIMMessage*)message
{
    //: if (self = [self init])
    if (self = [self init])
    {
        //: _message = message;
        _message = message;
        //: _messageTime = message.timestamp;
        _messageTime = message.timestamp;
        //: _contentSizeInfo = [[NSMutableDictionary alloc] init];
        _contentSizeInfo = [[NSMutableDictionary alloc] init];
        //: _replyContentSizeInfo = [NSMutableDictionary dictionary];
        _replyContentSizeInfo = [NSMutableDictionary dictionary];
        //: _enableRepliedContent = YES;
        _enableRepliedContent = YES;
        //: _enableQuickComments = YES;
        _enableQuickComments = YES;
        //: _shouldShowPinContent = YES;
        _shouldShowPinContent = YES;
        //: _enableSubMessages = YES;
        _enableSubMessages = YES;
    }
    //: return self;
    return self;
}

//: - (NSString*)description{
- (NSString*)description{
    //: return self.message.text;
    return self.message.text;
}

//: - (BOOL)shouldShowReadLabel
- (BOOL)shouldShowReadLabel
{
    //: if (self.message.session.sessionType == NIMSessionTypeP2P)
    if (self.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: return _shouldShowReadLabel && self.message.isRemoteRead;
        return _shouldShowReadLabel && self.message.isRemoteRead;
    }
    //: else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { 
    else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { //超大群这个功能还没做
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: return _shouldShowReadLabel;
        return _shouldShowReadLabel;
    }

}

//: - (UIEdgeInsets)replyContentViewInsets{
- (UIEdgeInsets)replyContentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    {
        //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: _replyContentViewInsets = [layoutConfig replyContentViewInsets:self];
        _replyContentViewInsets = [layoutConfig notLine:self];
    }
    //: return _replyContentViewInsets;
    return _replyContentViewInsets;
}


//: - (UIEdgeInsets)contentViewInsets{
- (UIEdgeInsets)contentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    {
        //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: _contentViewInsets = [layoutConfig contentViewInsets:self];
        _contentViewInsets = [layoutConfig old:self];
    }
    //: return _contentViewInsets;
    return _contentViewInsets;
}

//: - (BOOL)needShowReplyCountContent
- (BOOL)manager
{
    //: return self.enableSubMessages;
    return self.enableSubMessages;
}

//: - (CGSize)replyContentSize:(CGFloat)width
- (CGSize)change:(CGFloat)width
{
    //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
    //: CGSize size = [layoutConfig replyContentSize:self cellWidth:width];
    CGSize size = [layoutConfig nameWidth:self aggregationFloat:width];
    //: return size;
    return size;
}

//: - (BOOL)needShowEmoticonsView
- (BOOL)need
{
    //: return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
    return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
}

//: - (void)quickComments:(NIMMessage *)message
- (void)with:(NIMMessage *)message
           //: completion:(void(^)(NSMapTable *))completion
           add:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: _emoticonsContainerSize = [DisplayKitQuickCommentUtil containerSizeWithComments:result];
                _emoticonsContainerSize = [ControlInside size:result];
            }
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}


//: - (UIEdgeInsets)bubbleViewInsets{
- (UIEdgeInsets)bubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: _bubbleViewInsets = [layoutConfig cellInsets:self];
        _bubbleViewInsets = [layoutConfig concealed:self];
    }
    //: return _bubbleViewInsets;
    return _bubbleViewInsets;
}


//: - (BOOL)isEqual:(id)object
- (BOOL)isEqual:(id)object
{
    //: if (![object isKindOfClass:[DisplayMessageModel class]])
    if (![object isKindOfClass:[CleanDoing class]])
    {
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: DisplayMessageModel *model = object;
        CleanDoing *model = object;
        //: return [self.message isEqual:model.message];
        return [self.message isEqual:model.message];
    }
}

//: - (UIEdgeInsets)replyBubbleViewInsets{
- (UIEdgeInsets)replyBubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: _replyBubbleViewInsets = [layoutConfig replyCellInsets:self];
        _replyBubbleViewInsets = [layoutConfig title:self];
    }
    //: return _replyBubbleViewInsets;
    return _replyBubbleViewInsets;
}

//: - (CGSize)contentSize:(CGFloat)width
- (CGSize)size:(CGFloat)width
{
    //: CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    //: if (__CGSizeEqualToSize(size, CGSizeZero))
    if (__CGSizeEqualToSize(size, CGSizeZero))
    {
        //: [self updateLayoutConfig];
        [self image];
        //: id<DisplayCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<CellManWith> layoutConfig = [[Mortification text] layoutConfig];
        //: size = [layoutConfig contentSize:self cellWidth:width];
        size = [layoutConfig viewBar:self tinkle:width];
        //: [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
        [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
    }
    //: return size;
    return size;
}

//: - (BOOL)needShowRepliedContent
- (BOOL)withTitle
{
//    BOOL should = self.message.messageType == NIMMessageTypeTip;
//    return !should && self.enableRepliedContent &&
//    self.message.repliedMessageId.length > 0;

    //: return [self.message.remoteExt.allKeys containsObject:@"reply"];
    return [self.message.remoteExt.allKeys containsObject:[WaistData sharedInstance].kContent_colorValue];
}

//: - (void)cleanCache
- (void)session
{
    //: [_contentSizeInfo removeAllObjects];
    [_contentSizeInfo removeAllObjects];
    //: _contentViewInsets = UIEdgeInsetsZero;
    _contentViewInsets = UIEdgeInsetsZero;
    //: _bubbleViewInsets = UIEdgeInsetsZero;
    _bubbleViewInsets = UIEdgeInsetsZero;
    //: _replyContentViewInsets = UIEdgeInsetsZero;
    _replyContentViewInsets = UIEdgeInsetsZero;
    //: _replyBubbleViewInsets = UIEdgeInsetsZero;
    _replyBubbleViewInsets = UIEdgeInsetsZero;
}

//: @end
@end
