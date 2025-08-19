
#import <Foundation/Foundation.h>

@interface PoolData : NSObject

@end

@implementation PoolData

+ (Byte *)PoolDataToCache:(Byte *)data {
    int uglyGiving = data[0];
    Byte pointePool = data[1];
    int may24 = data[2];
    for (int i = may24; i < may24 + uglyGiving; i++) {
        int value = data[i] - pointePool;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[may24 + uglyGiving] = 0;
    return data + may24;
}

+ (NSString *)StringFromPoolData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PoolDataToCache:data]];
}

//: NTESMessageTranslate
+ (NSString *)dreamClubMsg {
    /* static */ NSString *dreamClubMsg = nil;
    if (!dreamClubMsg) {
        Byte value[] = {20, 56, 11, 243, 3, 9, 84, 105, 142, 27, 124, 134, 140, 125, 139, 133, 157, 171, 171, 153, 159, 157, 140, 170, 153, 166, 171, 164, 153, 172, 157, 20};
        dreamClubMsg = [self StringFromPoolData:value];
    }
    return dreamClubMsg;
}

//: defaultCellID
+ (NSString *)show_teamMsg {
    /* static */ NSString *show_teamMsg = nil;
    if (!show_teamMsg) {
        Byte value[] = {13, 44, 10, 149, 23, 214, 192, 86, 6, 45, 144, 145, 146, 141, 161, 152, 160, 111, 145, 152, 152, 117, 112, 37};
        show_teamMsg = [self StringFromPoolData:value];
    }
    return show_teamMsg;
}

//: Unsupported model type: %@
+ (NSString *)app_loserCompanyData {
    /* static */ NSString *app_loserCompanyData = nil;
    if (!app_loserCompanyData) {
        Byte value[] = {26, 10, 12, 12, 18, 138, 226, 11, 148, 117, 238, 210, 95, 120, 125, 127, 122, 122, 121, 124, 126, 111, 110, 42, 119, 121, 110, 111, 118, 42, 126, 131, 122, 111, 68, 42, 47, 74, 12};
        app_loserCompanyData = [self StringFromPoolData:value];
    }
    return app_loserCompanyData;
}

//: not support model
+ (NSString *)userIsolateTitle {
    /* static */ NSString *userIsolateTitle = nil;
    if (!userIsolateTitle) {
        Byte value[] = {17, 90, 8, 5, 223, 9, 218, 251, 200, 201, 206, 122, 205, 207, 202, 202, 201, 204, 206, 122, 199, 201, 190, 191, 198, 102};
        userIsolateTitle = [self StringFromPoolData:value];
    }
    return userIsolateTitle;
}

//: UnsupportedCell
+ (NSString *)appToStr {
    /* static */ NSString *appToStr = nil;
    if (!appToStr) {
        Byte value[] = {15, 57, 10, 3, 239, 70, 248, 85, 69, 129, 142, 167, 172, 174, 169, 169, 168, 171, 173, 158, 157, 124, 158, 165, 165, 81};
        appToStr = [self StringFromPoolData:value];
    }
    return appToStr;
}

//: Unsupported Model
+ (NSString *)userBrokenPath {
    /* static */ NSString *userBrokenPath = nil;
    if (!userBrokenPath) {
        Byte value[] = {17, 78, 7, 15, 26, 143, 156, 163, 188, 193, 195, 190, 190, 189, 192, 194, 179, 178, 110, 155, 189, 178, 179, 186, 62};
        userBrokenPath = [self StringFromPoolData:value];
    }
    return userBrokenPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTableAdapter.h"
#import "QuickHearingArrayAdapter.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFMessageCellFactory.h"
#import "PinFactory.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"

//: @interface FFFSessionTableAdapter()
@interface QuickHearingArrayAdapter()

//: @property (nonatomic,strong) FFFMessageCellFactory *cellFactory;
@property (nonatomic,strong) PinFactory *cellFactory;

//: @end
@end

//: @implementation FFFSessionTableAdapter
@implementation QuickHearingArrayAdapter

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[FFFMessageCellFactory alloc] init];
        _cellFactory = [[PinFactory alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor provider].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor provider] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[FFFMessageModel class]]) {
    if ([model isKindOfClass:[CentralProcessingUnitModel class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory restoreMode:tableView
                                   //: forMessageMode:model];
                                   table:model];
        //: [(FFFMessageCell *)cell setDelegate:self.delegate];
        [(ModelViewCell *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor everyLast:model];
        //: [(FFFMessageCell *)cell refreshData:model];
        [(ModelViewCell *)cell accumulationRestore:model];
    }
    //: else if ([model isKindOfClass:[FFFTimestampModel class]])
    else if ([model isKindOfClass:[EnableName class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory error:tableView
                                     //: forTimeModel:model];
                                     search:model];
    }
    //: else
    else
    {
        // Release 模式下兜底处理
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UnsupportedCell"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[PoolData appToStr]];
        //: cell.textLabel.text = @"Unsupported Model";
        cell.textLabel.text = [PoolData userBrokenPath];

        //: NSAssert(0, @"Unsupported model type: %@", [model class]);
        NSAssert(0, [PoolData app_loserCompanyData], [model class]);

    }
    // 最终检查，确保不会返回 nil
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCellID"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[PoolData show_teamMsg]];
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(pressPath:titleMessage:key:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate pressPath:tableView titleMessage:cell key:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor provider] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[FFFMessageModel class]])
    if ([modelInArray isKindOfClass:[CentralProcessingUnitModel class]])
    {
        //: FFFMessageModel *model = (FFFMessageModel *)modelInArray;
        CentralProcessingUnitModel *model = (CentralProcessingUnitModel *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }
//        if (model.message.messageType == NIMMessageTypeCustom) {
//            return 0.f;
//        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model indicator:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model displayMonitor]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model button:tableView.width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height+20 +
            cellHeight += replySize.height+20 +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:[PoolData dreamClubMsg]])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:[PoolData dreamClubMsg]];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            QuickNameView *labtran = [[QuickNameView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran stay:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model change])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model noneTitle] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[FFFTimestampModel class]])
    else if ([modelInArray isKindOfClass:[EnableName class]])
    {
        //: cellHeight = [(FFFTimestampModel *)modelInArray height];
        cellHeight = [(EnableName *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, [PoolData userIsolateTitle]);
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor on];
    }
}

//: @end
@end