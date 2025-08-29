
#import <Foundation/Foundation.h>

NSString *StringFromAttitudeData(Byte *data);


//: defaultCellID
Byte kTitle_satisfyValue[] = {31, 13, 29, 14, 24, 151, 244, 134, 19, 106, 122, 162, 139, 190, 129, 130, 131, 126, 146, 137, 145, 96, 130, 137, 137, 102, 97, 153};

//: Unsupported model type: %@
Byte kContent_silkString[] = {65, 26, 43, 12, 34, 88, 111, 55, 183, 232, 165, 117, 128, 153, 158, 160, 155, 155, 154, 157, 159, 144, 143, 75, 152, 154, 143, 144, 151, 75, 159, 164, 155, 144, 101, 75, 80, 107, 197};

//: UnsupportedCell
Byte kText_pullName[] = {50, 15, 16, 4, 101, 126, 131, 133, 128, 128, 127, 130, 132, 117, 116, 83, 117, 124, 124, 57};

//: not support model
Byte kTitle_etcData[] = {82, 17, 58, 11, 114, 47, 52, 51, 243, 88, 242, 168, 169, 174, 90, 173, 175, 170, 170, 169, 172, 174, 90, 167, 169, 158, 159, 166, 24};

//: Unsupported Model
Byte kTitle_thoughString[] = {97, 17, 16, 12, 56, 254, 103, 167, 31, 182, 77, 147, 101, 126, 131, 133, 128, 128, 127, 130, 132, 117, 116, 48, 93, 127, 116, 117, 124, 49};

//: USERMessageTranslate
Byte kName_dozeAxString[] = {46, 20, 51, 5, 27, 136, 134, 120, 133, 128, 152, 166, 166, 148, 154, 152, 135, 165, 148, 161, 166, 159, 148, 167, 152, 243};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTableAdapter.h"
#import "FinancialCenterAdapter.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFMessageCellFactory.h"
#import "ManFactory.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"

//: @interface FFFSessionTableAdapter()
@interface FinancialCenterAdapter()

//: @property (nonatomic,strong) FFFMessageCellFactory *cellFactory;
@property (nonatomic,strong) ManFactory *cellFactory;

//: @end
@end

//: @implementation FFFSessionTableAdapter
@implementation FinancialCenterAdapter

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[FFFMessageCellFactory alloc] init];
        _cellFactory = [[ManFactory alloc] init];
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
    return [self.interactor textDevice].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor textDevice] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[FFFMessageModel class]]) {
    if ([model isKindOfClass:[CleanDoing class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory dateMode:tableView
                                   //: forMessageMode:model];
                                   paddy:model];
        //: [(FFFMessageCell *)cell setDelegate:self.delegate];
        [(IndoorsView *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor viewWith:model];
        //: [(FFFMessageCell *)cell refreshData:model];
        [(IndoorsView *)cell pin:model];
    }
    //: else if ([model isKindOfClass:[FFFTimestampModel class]])
    else if ([model isKindOfClass:[WithPage class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory day:tableView
                                     //: forTimeModel:model];
                                     button:model];
    }
    //: else
    else
    {
        // Release 模式下兜底处理
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UnsupportedCell"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromAttitudeData(kText_pullName)];
        //: cell.textLabel.text = @"Unsupported Model";
        cell.textLabel.text = StringFromAttitudeData(kTitle_thoughString);

        //: NSAssert(0, @"Unsupported model type: %@", [model class]);
        NSAssert(0, StringFromAttitudeData(kContent_silkString), [model class]);

    }
    // 最终检查，确保不会返回 nil
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCellID"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromAttitudeData(kTitle_satisfyValue)];
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(duringMedia_strong:origin:can:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate duringMedia_strong:tableView origin:cell can:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor textDevice] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[FFFMessageModel class]])
    if ([modelInArray isKindOfClass:[CleanDoing class]])
    {
        //: FFFMessageModel *model = (FFFMessageModel *)modelInArray;
        CleanDoing *model = (CleanDoing *)modelInArray;

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

        //: CGSize size = [model contentSize:tableView.device_width];
        CGSize size = [model size:tableView.device_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model withTitle]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model change:tableView.width];
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

        //: if([model.message.localExt.allKeys containsObject:@"USERMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:StringFromAttitudeData(kName_dozeAxString)])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"USERMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:StringFromAttitudeData(kName_dozeAxString)];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            LabelNameScrollView *labtran = [[LabelNameScrollView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran deleteVoice:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.device_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.device_width - 130);
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
        if ([model need])
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
        if ([model manager] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[FFFTimestampModel class]])
    else if ([modelInArray isKindOfClass:[WithPage class]])
    {
        //: cellHeight = [(FFFTimestampModel *)modelInArray height];
        cellHeight = [(WithPage *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromAttitudeData(kTitle_etcData));
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
        [self.interactor attract];
    }
}

//: @end
@end

Byte * AttitudeDataToCache(Byte *data) {
    int divine = data[0];
    int sand = data[1];
    Byte daughterToll = data[2];
    int cutEasy = data[3];
    if (!divine) return data + cutEasy;
    for (int i = cutEasy; i < cutEasy + sand; i++) {
        int value = data[i] - daughterToll;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cutEasy + sand] = 0;
    return data + cutEasy;
}

NSString *StringFromAttitudeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AttitudeDataToCache(data)];
}
