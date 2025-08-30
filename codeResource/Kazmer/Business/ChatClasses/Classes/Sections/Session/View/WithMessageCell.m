
#import <Foundation/Foundation.h>

NSString *StringFromWheatColaData(Byte *data);        


//: 1条回复
Byte kTitle_amberString[] = {39, 10, 53, 11, 169, 197, 29, 64, 224, 50, 97, 252, 177, 104, 108, 176, 102, 105, 176, 111, 88, 117};

//: #999999
Byte kTextHamString[] = {69, 7, 41, 13, 169, 18, 19, 34, 179, 163, 72, 8, 215, 250, 16, 16, 16, 16, 16, 16, 253};

//: #FFEAE0FF
Byte kNameThoughContent[] = {89, 9, 16, 10, 133, 189, 165, 127, 172, 36, 19, 54, 54, 53, 49, 53, 32, 54, 54, 221};

//: ic_praise%@
Byte kNameConfrontString[] = {95, 11, 96, 9, 219, 13, 85, 129, 163, 9, 3, 255, 16, 18, 1, 9, 19, 5, 197, 224, 218};

//: fffDisplay
Byte kName_jobValue[] = {27, 6, 4, 6, 214, 21, 98, 98, 98, 98, 98, 98, 144};

//: #333333
Byte kNameGlanceData[] = {20, 7, 34, 4, 1, 17, 17, 17, 17, 17, 17, 119};

//: icon_pin
Byte kTitle_dozeValue[] = {82, 8, 55, 8, 87, 234, 98, 50, 50, 44, 56, 55, 40, 57, 50, 55, 66};

//: %@标记了这条消息
Byte kTitle_retiredString[] = {37, 23, 35, 7, 119, 220, 75, 2, 29, 195, 125, 100, 197, 139, 141, 193, 151, 99, 197, 156, 118, 195, 122, 126, 195, 147, 101, 195, 94, 140, 129};

//: USERMessageTranslate
Byte kName_topValue[] = {11, 20, 26, 6, 208, 110, 59, 57, 43, 56, 51, 75, 89, 89, 71, 77, 75, 58, 88, 71, 84, 89, 82, 71, 90, 75, 28};

//: %zd条回复
Byte kTextKeyErrorString[] = {50, 12, 57, 10, 246, 239, 134, 92, 112, 52, 236, 65, 43, 173, 100, 104, 172, 98, 101, 172, 107, 84, 30};

//: icon_reply
Byte kTitle_ribbonMeantimeData[] = {96, 10, 60, 10, 221, 37, 68, 231, 201, 112, 45, 39, 51, 50, 35, 54, 41, 52, 48, 61, 252};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithMessageCell.m
// Mortification
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayAdvancedMessageCell.h"
#import "WithMessageCell.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "DisplayQuickCommentCell.h"
#import "TranslateReusableView.h"
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "DisplayKitQuickCommentUtil.h"
#import "ControlInside.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "DisplayCollectionViewLeftAlignedLayout.h"
#import "TagCellViewLayout.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"

//: static NSString * const kNIMListCellReuseID = @"DisplayQuickCommentCell";
static NSString * const kUserFormat = @"TranslateReusableView";
//: static const CGFloat kNIMAdvancedBackgroundPadding = 5;
static const CGFloat app_attributeStr = 5;

//: @interface DisplayAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@interface WithMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

//: @property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSArray *objects;

//: @property (nonatomic,strong) NSMapTable *map;
@property (nonatomic,strong) NSMapTable *map;

//: @end
@end

//: @implementation DisplayAdvancedMessageCell
@implementation WithMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_replyButton setImage:[UIImage imageNamed:@"icon_reply"] forState:UIControlStateNormal];
        [_replyButton setImage:[UIImage imageNamed:StringFromWheatColaData(kTitle_ribbonMeantimeData)] forState:UIControlStateNormal];
        //: UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        UIColor *titleColor = [UIColor background:0x337EFF status:1];
        //: [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        //: _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_replyButton addTarget:self action:@selector(translates:) forControlEvents:UIControlEventTouchUpInside];
        //: _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: [self.contentView addSubview:_replyButton];
        [self.contentView addSubview:_replyButton];
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;

        //: _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _pinView.enabled = NO;
        _pinView.enabled = NO;
        //: _pinView.adjustsImageWhenDisabled = NO;
        _pinView.adjustsImageWhenDisabled = NO;
        //: [_pinView setImage:[UIImage imageNamed:@"icon_pin"] forState:UIControlStateNormal];
        [_pinView setImage:[UIImage imageNamed:StringFromWheatColaData(kTitle_dozeValue)] forState:UIControlStateNormal];
        //: [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        //: _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        //: _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        //: _pinView.titleLabel.minimumScaleFactor = 0.7;
        _pinView.titleLabel.minimumScaleFactor = 0.7;
        //: [self.contentView addSubview:_pinView];
        [self.contentView addSubview:_pinView];
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;

        //: _translationView = [[UIView alloc]init];
        _translationView = [[UIView alloc]init];
        //: _translationView.backgroundColor = [UIColor colorWithHexString:@"fffDisplay"];
        _translationView.backgroundColor = [UIColor cell:StringFromWheatColaData(kName_jobValue)];
        //: _translationView.layer.cornerRadius = 8;
        _translationView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_translationView];
        [self.contentView addSubview:_translationView];

        //: _praiseView = [[UIView alloc]init];
        _praiseView = [[UIView alloc]init];
        //: _praiseView.backgroundColor = [UIColor colorWithHexString:@"#FFEAE0FF"];
        _praiseView.backgroundColor = [UIColor cell:StringFromWheatColaData(kNameThoughContent)];
        //: _praiseView.layer.cornerRadius = 8;
        _praiseView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_praiseView];
        [self.contentView addSubview:_praiseView];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(DisplayMessageModel *)data
- (void)pin:(CleanDoing *)data
{

    //: [super refreshData:data];
    [super pin:data];
    //: [self refreshPinView:data];
    [self viewReloadItem:data];
//    [self refreshReplyCountView:data];
    //: [self refreshEmoticonsView:data];
    [self mobileView:data];

    //: [self refreshtranslationView:data];
    [self labelClick:data];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
//    [self layoutEmoticonsContainerViewSize];

    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [self layoutPinView];
    [self length];
    //: [self layoutReplyCountView];
    [self sinceShared];
    //: [self layouttranslationView];
    [self iconShare];
    //: [self layoutPraiseView];
    [self team];
}

//: #pragma mark - View
#pragma mark - View
//: - (void)layoutPraiseView
- (void)team
{
    //: if (self.praiseView.hidden)
    if (self.praiseView.hidden)
    {
        //: self.praiseView.frame = CGRectZero;
        self.praiseView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        //: CGFloat width = limiteNum*26 + 10;
        CGFloat width = limiteNum*26 + 10;
        //: self.praiseView.height = 24;
        self.praiseView.height = 24;
        //: self.praiseView.width = width;
        self.praiseView.width = width;


        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
            self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
        }
        //: else
        else
        {
            //: self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
            self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
        }

        //: if (self.replyButton.hidden)
        if (self.replyButton.hidden)
        {
            //: self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
            self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
        }
        //: else
        else
        {
            //: self.praiseView.top = self.replyButton.bottom + 5.f;
            self.praiseView.top = self.replyButton.bottom + 5.f;
        }
//        self.praiseView.left = self.bubbleView.left;
//        self.praiseView.top = self.bubbleView.bottom-5;
    }
}

//: - (void)layouttranslationView
- (void)iconShare
{
    //: if (self.translationView.hidden)
    if (self.translationView.hidden)
    {
        //: self.translationView.frame = CGRectZero;
        self.translationView.frame = CGRectZero;
    }
    //: else
    else
    {

        //: NSString *aString = [self.model.message.localExt objectForKey:@"USERMessageTranslate"];
        NSString *aString = [self.model.message.localExt objectForKey:StringFromWheatColaData(kName_topValue)];
        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        LabelNameScrollView *labtran = [[LabelNameScrollView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:aString];
        [labtran deleteVoice:aString];
        //: labtran.textColor = [UIColor colorWithHexString:@"#999999"];
        labtran.textColor = [UIColor cell:StringFromWheatColaData(kTextHamString)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];

//        CGFloat msgBubbleMaxWidth    = self.bubbleView.device_width;
        //: CGFloat msgBubbleMaxWidth = (self.device_width - 130);
        CGFloat msgBubbleMaxWidth = (self.device_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

        //: self.translationView.height = replySize.height;
        self.translationView.height = replySize.height;
        //: self.translationView.width = replySize.width+10;
        self.translationView.width = replySize.width+10;
        //: self.translationView.top = self.bubbleView.bottom+5;
        self.translationView.top = self.bubbleView.bottom+5;

        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
//            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            //: self.translationView.left = self.bubbleView.left;
            self.translationView.left = self.bubbleView.left;
        //: } else {
        } else {
            //: self.translationView.device_right = self.bubbleView.device_right;
            self.translationView.device_right = self.bubbleView.device_right;
//            self.pinView.device_right = self.bubblesBackgroundView.device_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }



//        self.translationView.left = self.bubbleView.left;

    }
}
//: - (void)refreshtranslationView:(DisplayMessageModel *)data
- (void)labelClick:(CleanDoing *)data
{
    //: if([data.message.localExt.allKeys containsObject:@"USERMessageTranslate"])
    if([data.message.localExt.allKeys containsObject:StringFromWheatColaData(kName_topValue)])
    {
        //: NSArray *viewsArray = self.translationView.subviews;
        NSArray *viewsArray = self.translationView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }

        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        LabelNameScrollView *labtran = [[LabelNameScrollView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:[self.model.message.localExt objectForKey:@"USERMessageTranslate"]];
        [labtran deleteVoice:[self.model.message.localExt objectForKey:StringFromWheatColaData(kName_topValue)]];
        //: labtran.textColor = [UIColor colorWithHexString:@"#333333"];
        labtran.textColor = [UIColor cell:StringFromWheatColaData(kNameGlanceData)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];
        //: labtran.numberOfLines = 0;
        labtran.numberOfLines = 0;
        //: [_translationView addSubview:labtran];
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: CGFloat msgBubbleMaxWidth = (self.device_width - 130);
        CGFloat msgBubbleMaxWidth = (self.device_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);
        labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);

//        UILabel *labtran = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 0, 0)];
//        labtran.text = [self.model.message.localExt objectForKey:@"USERMessageTranslate"];
//        labtran.numberOfLines = 0;
//        labtran.font = [UIFont systemFontOfSize:12];
//        labtran.textColor = TextColor_4;
//        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: _translationView.hidden = NO;
        _translationView.hidden = NO;
    }
    //: else
    else
    {
        //: _translationView.hidden = YES;
        _translationView.hidden = YES;
    }
}



//: - (void)refreshEmoticonsView:(DisplayMessageModel *)data
- (void)mobileView:(CleanDoing *)data
{
    //: self.objects = nil;
    self.objects = nil;
    //: self.map = nil;
    self.map = nil;

    //: NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    //: self.map = result;
    self.map = result;
    // 按最近评论优先排序
    //: self.objects = [DisplayKitQuickCommentUtil sortedKeys:result];
    self.objects = [ControlInside thread:result];

    //: if (self.objects.count > 0)
    if (self.objects.count > 0)
    {
        //: NSLog(@"self.objects--%@",self.objects);

        //: NSArray *viewsArray = self.praiseView.subviews;
        NSArray *viewsArray = self.praiseView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }


        //: self.praiseView.hidden = NO;
        self.praiseView.hidden = NO;


        //: for (int i = 0; i < self.objects.count; i++) {
        for (int i = 0; i < self.objects.count; i++) {
            //: CGFloat x = 10 + i*(16+10);
            CGFloat x = 10 + i*(16+10);
            //: UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%@",self.objects[i]]]];
            UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:StringFromWheatColaData(kNameConfrontString),self.objects[i]]]];
            //: emotion.frame = CGRectMake(x, 4, 16, 16);
            emotion.frame = CGRectMake(x, 4, 16, 16);
            //: [self.praiseView addSubview:emotion];
            [self.praiseView addSubview:emotion];

            //: if(i == 6){
            if(i == 6){
                //: return;
                return;
            }
        }
    }
    //: else
    else
    {
        //: self.praiseView.hidden = YES;
        self.praiseView.hidden = YES;
    }

}

//: - (void)refreshCollection:(DisplayMessageModel *)data
- (void)dark:(CleanDoing *)data
{
    //: if ([data needShowEmoticonsView])
    if ([data need])
    {
        //: UICollectionView *collectionView = self.emoticonsContainerView;
        UICollectionView *collectionView = self.emoticonsContainerView;
        //: if (!collectionView)
        if (!collectionView)
        {
            //: UICollectionViewFlowLayout *flowLayout = [[DisplayCollectionViewLeftAlignedLayout alloc] init];
            UICollectionViewFlowLayout *flowLayout = [[TagCellViewLayout alloc] init];
            //: flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumLineSpacing = mOwnerIdent;
            //: flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = mOwnerIdent;
            //: collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                //: collectionViewLayout:flowLayout];
                                                collectionViewLayout:flowLayout];
            //: [collectionView registerClass:[DisplayQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            [collectionView registerClass:[TranslateReusableView class] forCellWithReuseIdentifier:kUserFormat];
            //: self.emoticonsContainerView = collectionView;
            self.emoticonsContainerView = collectionView;
            //: [self.contentView addSubview:collectionView];
            [self.contentView addSubview:collectionView];
        }

        //: self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        //: collectionView.dataSource = self;
        collectionView.dataSource = self;
        //: collectionView.delegate = self;
        collectionView.delegate = self;
        //: collectionView.hidden = NO;
        collectionView.hidden = NO;
    }
}

//: - (void)refreshPinView:(DisplayMessageModel *)data
- (void)viewReloadItem:(CleanDoing *)data
{
    //: if (data.pinUserName.length && data.shouldShowPinContent)
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        //: [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        [_pinView setTitle:[NSString stringWithFormat:StringFromWheatColaData(kTitle_retiredString).disable, data.pinUserName] forState:UIControlStateNormal];
        //: _pinView.hidden = NO;
        _pinView.hidden = NO;
    }
    //: else
    else
    {
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;
    }
}

//: - (void)refreshReplyCountView:(DisplayMessageModel *)data
- (void)secret:(CleanDoing *)data
{
    //: NSInteger count = data.childMessagesCount;
    NSInteger count = data.childMessagesCount;
    //: if (count > 0)
    if (count > 0)
    {
        //: if (count == 1)
        if (count == 1)
        {
            //: [_replyButton setTitle:@"1条回复".nim_localized forState:UIControlStateNormal];
            [_replyButton setTitle:StringFromWheatColaData(kTitle_amberString).disable forState:UIControlStateNormal];
        }
        //: else
        else
        {
            //: [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
            [_replyButton setTitle:[NSString stringWithFormat:StringFromWheatColaData(kTextKeyErrorString).disable, count]
                          //: forState:UIControlStateNormal];
                          forState:UIControlStateNormal];
        }

        //: _replyButton.hidden = NO;
        _replyButton.hidden = NO;
    }
    //: else
    else
    {
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;
    }
}


//: #pragma mark - Layout
#pragma mark - Layout
//: - (void)layoutPinView
- (void)length
{
    //: if (self.pinView.hidden)
    if (self.pinView.hidden)
    {
        //: self.pinView.frame = CGRectZero;
        self.pinView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.pinView.device_height = self.pinView.intrinsicContentSize.height;
        self.pinView.device_height = self.pinView.intrinsicContentSize.height;
        //: self.pinView.device_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.device_width = self.pinView.intrinsicContentSize.width + 8;
        //: self.pinView.device_top = self.bubblesBackgroundView.device_bottom + 5.f;
        self.pinView.device_top = self.bubblesBackgroundView.device_bottom + 5.f;
        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
            //: self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            //: self.pinView.device_width = self.contentView.device_width - self.pinView.nim_left - 8;
            self.pinView.device_width = self.contentView.device_width - self.pinView.nim_left - 8;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: } else {
        } else {
            //: self.pinView.device_width = self.bubblesBackgroundView.device_right - 8;
            self.pinView.device_width = self.bubblesBackgroundView.device_right - 8;
            //: self.pinView.device_right = self.bubblesBackgroundView.device_right;
            self.pinView.device_right = self.bubblesBackgroundView.device_right;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

//: - (void)layoutReplyCountView
- (void)sinceShared
{
    //: if (self.replyButton.hidden)
    if (self.replyButton.hidden)
    {
        //: self.replyButton.frame = CGRectZero;
        self.replyButton.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.replyButton.device_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.device_height = self.replyButton.intrinsicContentSize.height;
        //: self.replyButton.device_width = self.replyButton.intrinsicContentSize.width + 8;
        self.replyButton.device_width = self.replyButton.intrinsicContentSize.width + 8;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        //: else
        else
        {
            //: self.replyButton.device_right = self.pinView.hidden ? self.bubblesBackgroundView.device_right : self.pinView.device_right;
            self.replyButton.device_right = self.pinView.hidden ? self.bubblesBackgroundView.device_right : self.pinView.device_right;
        }

        //: if (self.pinView.hidden)
        if (self.pinView.hidden)
        {
            //: self.replyButton.device_top = self.bubblesBackgroundView.device_bottom + 5.f;
            self.replyButton.device_top = self.bubblesBackgroundView.device_bottom + 5.f;
        }
        //: else
        else
        {
            //: self.replyButton.device_top = self.pinView.device_bottom + 5.f;
            self.replyButton.device_top = self.pinView.device_bottom + 5.f;
        }
    }
}

//: - (void)layoutEmoticonsContainerViewSize
- (void)littleAt
{
    //: if ([self.model needShowEmoticonsView])
    if ([self.model need])
    {
        //: CGSize size = self.model.emoticonsContainerSize;
        CGSize size = self.model.emoticonsContainerSize;
        //: self.emoticonsContainerView.device_size = CGSizeMake(size.width + 2, size.height);
        self.emoticonsContainerView.device_size = CGSizeMake(size.width + 2, size.height);
    }
    //: else
    else
    {
        //: self.emoticonsContainerView.frame = CGRectZero;
        self.emoticonsContainerView.frame = CGRectZero;
        //: self.emoticonsContainerView = nil;
        self.emoticonsContainerView = nil;
    }
}

//: - (void)fixPositions
- (void)consumer
{
    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.device_top = self.replyedBubbleView.device_top-5;
        self.bubblesBackgroundView.device_top = self.replyedBubbleView.device_top-5;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.device_top = self.bubbleView.device_top;
        self.bubblesBackgroundView.device_top = self.bubbleView.device_top;
    }

    //: if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.device_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.device_width;
        //: left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
        left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
    //: } else {
    } else {
        //: left = self.bubbleView.nim_left;
        left = self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.emoticonsContainerView.nim_left = left + kNIMAdvancedBackgroundPadding;
    self.emoticonsContainerView.nim_left = left + app_attributeStr;
    //: self.bubblesBackgroundView.nim_left = left;
    self.bubblesBackgroundView.nim_left = left;

    //: self.emoticonsContainerView.device_top = ((UIView *)self.bubbleView).device_bottom;
    self.emoticonsContainerView.device_top = ((UIView *)self.bubbleView).device_bottom;
}

//: - (void)layoutBubblesBackgroundView
- (void)lengthSession
{
    //: CGFloat height = self.replyedBubbleView.device_height + self.bubbleView.device_height;
    CGFloat height = self.replyedBubbleView.device_height + self.bubbleView.device_height;
    //: height += self.emoticonsContainerView.device_height;
    height += self.emoticonsContainerView.device_height;

    //: CGFloat width = self.replyedBubbleView.device_width > self.bubbleView.device_width ? self.replyedBubbleView.device_width : self.bubbleView.device_width;
    CGFloat width = self.replyedBubbleView.device_width > self.bubbleView.device_width ? self.replyedBubbleView.device_width : self.bubbleView.device_width;
    //: CGFloat emoticonsWidth = self.emoticonsContainerView.device_width + kNIMAdvancedBackgroundPadding * 2;
    CGFloat emoticonsWidth = self.emoticonsContainerView.device_width + app_attributeStr * 2;
    //: width = width > emoticonsWidth ? width : emoticonsWidth;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    //: self.bubblesBackgroundView.device_size = CGSizeMake(width+10, height);
    self.bubblesBackgroundView.device_size = CGSizeMake(width+10, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: [self fixPositions];
    [self consumer];
}

//: - (void)layoutReadButton{
- (void)accountButton{

    //: if (!self.readButton.isHidden) {
    if (!self.readButton.isHidden) {

        //: CGFloat left = self.bubbleView.nim_left;
        CGFloat left = self.bubbleView.nim_left;
        //: CGFloat bottom = self.bubbleView.device_bottom;
        CGFloat bottom = self.bubbleView.device_bottom;

        //: self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.device_bottom = bottom;
        //: self.readButton.device_centerY = self.bubbleView.device_centerY;
        self.readButton.device_centerY = self.bubbleView.device_centerY;
    }
}

//: #pragma mark - Action
#pragma mark - Action

//: - (void)onReplyClicked:(id)sender
- (void)translates:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    if ([self.delegate respondsToSelector:@selector(withing:)])
    {
        //: [self.delegate onClickReplyButton:self.model.message];
        [self.delegate withing:self.model.message];
    }
}


//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //: return self.objects.count;
    return self.objects.count;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: DisplayQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    TranslateReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kUserFormat forIndexPath:indexPath];
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: [cell refreshWithData:comments model:self.model];
    [cell showContent:comments bar:self.model];
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: CGSize size = [DisplayKitQuickCommentUtil itemSizeWithComments:comments];
    CGSize size = [ControlInside overItem:comments];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    //: return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
    return UIEdgeInsetsMake(0, mOwnerIdent, 0, mOwnerIdent);
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NIMQuickComment *comment = [DisplayKitQuickCommentUtil myCommentFromComments:indexPath.item
    NIMQuickComment *comment = [ControlInside pinComments:indexPath.item
                                                                 //: keys:self.objects
                                                                 by:self.objects
                                                             //: comments:self.map];
                                                             vanguard:self.map];
    //: if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    if ([self.delegate respondsToSelector:@selector(infoSelected:device:viewQueryed:)])
    {
        //: BOOL hasCommentThisEmoticon = comment ? YES : NO;
        BOOL hasCommentThisEmoticon = comment ? YES : NO;
        //: if (!comment)
        if (!comment)
        {
            //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            //: NSArray *comments = [self.map objectForKey:number];
            NSArray *comments = [self.map objectForKey:number];
            //: comment = [comments firstObject];
            comment = [comments firstObject];
        }
        //: [self.delegate onClickEmoticon:self.model.message
        [self.delegate infoSelected:self.model.message
                               //: comment:comment
                               device:comment
                              //: selected:hasCommentThisEmoticon];
                              viewQueryed:hasCommentThisEmoticon];
    }
}





//: @end
@end

Byte * WheatColaDataToCache(Byte *data) {
    int residential = data[0];
    int climateConsist = data[1];
    Byte ness = data[2];
    int mysteryCome = data[3];
    if (!residential) return data + mysteryCome;
    for (int i = mysteryCome; i < mysteryCome + climateConsist; i++) {
        int value = data[i] + ness;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mysteryCome + climateConsist] = 0;
    return data + mysteryCome;
}

NSString *StringFromWheatColaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WheatColaDataToCache(data)];
}
