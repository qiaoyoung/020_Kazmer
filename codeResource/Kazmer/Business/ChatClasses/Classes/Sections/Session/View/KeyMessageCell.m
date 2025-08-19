
#import <Foundation/Foundation.h>

@interface VeteranComfortData : NSObject

+ (instancetype)sharedInstance;

//: ffffff
@property (nonatomic, copy) NSString *k_mayFormat;

//: #333333
@property (nonatomic, copy) NSString *m_seizeMsg;

//: %@标记了这条消息
@property (nonatomic, copy) NSString *notiPainterTitle;

//: %zd条回复
@property (nonatomic, copy) NSString *dream_policeMovieProfessValue;

//: #FFEAE0FF
@property (nonatomic, copy) NSString *showArrestPath;

//: icon_reply
@property (nonatomic, copy) NSString *app_chefId;

//: icon_pin
@property (nonatomic, copy) NSString *mTechnologicValue;

//: 1条回复
@property (nonatomic, copy) NSString *mSurelyName;

//: ic_praise%@
@property (nonatomic, copy) NSString *appAverId;

//: NTESMessageTranslate
@property (nonatomic, copy) NSString *dream_doctrineTitle;

//: #999999
@property (nonatomic, copy) NSString *showPeopleResidencePath;

@end

@implementation VeteranComfortData

+ (instancetype)sharedInstance {
    static VeteranComfortData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VeteranComfortDataToCache:(Byte *)data {
    int unaffiliated = data[0];
    int disregard = data[1];
    for (int i = 0; i < unaffiliated / 2; i++) {
        int begin = disregard + i;
        int end = disregard + unaffiliated - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[disregard + unaffiliated] = 0;
    return data + disregard;
}

- (NSString *)StringFromVeteranComfortData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VeteranComfortDataToCache:data]];
}  

//: icon_reply
- (NSString *)app_chefId {
    if (!_app_chefId) {
        Byte value[] = {10, 2, 121, 108, 112, 101, 114, 95, 110, 111, 99, 105, 159};
        _app_chefId = [self StringFromVeteranComfortData:value];
    }
    return _app_chefId;
}

//: icon_pin
- (NSString *)mTechnologicValue {
    if (!_mTechnologicValue) {
        Byte value[] = {8, 8, 187, 135, 28, 25, 192, 246, 110, 105, 112, 95, 110, 111, 99, 105, 98};
        _mTechnologicValue = [self StringFromVeteranComfortData:value];
    }
    return _mTechnologicValue;
}

//: ic_praise%@
- (NSString *)appAverId {
    if (!_appAverId) {
        Byte value[] = {11, 10, 173, 112, 248, 85, 29, 145, 115, 28, 64, 37, 101, 115, 105, 97, 114, 112, 95, 99, 105, 161};
        _appAverId = [self StringFromVeteranComfortData:value];
    }
    return _appAverId;
}

//: #FFEAE0FF
- (NSString *)showArrestPath {
    if (!_showArrestPath) {
        Byte value[] = {9, 5, 133, 249, 88, 70, 70, 48, 69, 65, 69, 70, 70, 35, 196};
        _showArrestPath = [self StringFromVeteranComfortData:value];
    }
    return _showArrestPath;
}

//: %@标记了这条消息
- (NSString *)notiPainterTitle {
    if (!_notiPainterTitle) {
        Byte value[] = {23, 11, 53, 248, 119, 131, 51, 204, 148, 113, 172, 175, 129, 230, 136, 182, 230, 161, 157, 230, 153, 191, 232, 134, 186, 228, 176, 174, 232, 135, 160, 230, 64, 37, 215};
        _notiPainterTitle = [self StringFromVeteranComfortData:value];
    }
    return _notiPainterTitle;
}

//: NTESMessageTranslate
- (NSString *)dream_doctrineTitle {
    if (!_dream_doctrineTitle) {
        Byte value[] = {20, 2, 101, 116, 97, 108, 115, 110, 97, 114, 84, 101, 103, 97, 115, 115, 101, 77, 83, 69, 84, 78, 37};
        _dream_doctrineTitle = [self StringFromVeteranComfortData:value];
    }
    return _dream_doctrineTitle;
}

//: #333333
- (NSString *)m_seizeMsg {
    if (!_m_seizeMsg) {
        Byte value[] = {7, 5, 246, 254, 120, 51, 51, 51, 51, 51, 51, 35, 35};
        _m_seizeMsg = [self StringFromVeteranComfortData:value];
    }
    return _m_seizeMsg;
}

//: %zd条回复
- (NSString *)dream_policeMovieProfessValue {
    if (!_dream_policeMovieProfessValue) {
        Byte value[] = {12, 10, 92, 1, 170, 42, 79, 58, 117, 142, 141, 164, 229, 158, 155, 229, 161, 157, 230, 100, 122, 37, 37};
        _dream_policeMovieProfessValue = [self StringFromVeteranComfortData:value];
    }
    return _dream_policeMovieProfessValue;
}

//: ffffff
- (NSString *)k_mayFormat {
    if (!_k_mayFormat) {
        Byte value[] = {6, 5, 211, 46, 114, 102, 102, 102, 102, 102, 102, 62};
        _k_mayFormat = [self StringFromVeteranComfortData:value];
    }
    return _k_mayFormat;
}

//: 1条回复
- (NSString *)mSurelyName {
    if (!_mSurelyName) {
        Byte value[] = {10, 11, 149, 255, 89, 115, 32, 12, 111, 119, 149, 141, 164, 229, 158, 155, 229, 161, 157, 230, 49, 155};
        _mSurelyName = [self StringFromVeteranComfortData:value];
    }
    return _mSurelyName;
}

//: #999999
- (NSString *)showPeopleResidencePath {
    if (!_showPeopleResidencePath) {
        Byte value[] = {7, 11, 67, 250, 151, 147, 38, 114, 65, 115, 254, 57, 57, 57, 57, 57, 57, 35, 158};
        _showPeopleResidencePath = [self StringFromVeteranComfortData:value];
    }
    return _showPeopleResidencePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyMessageCell.m
// ButtonKit
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedMessageCell.h"
#import "KeyMessageCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "FFFQuickCommentCell.h"
#import "BarButtonView.h"
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "NameUtilPath.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+ButtonKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFCollectionViewLeftAlignedLayout.h"
#import "ButtonFlowLayout.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"

//: static NSString * const kNIMListCellReuseID = @"FFFQuickCommentCell";
static NSString * const show_blockTopMsg = @"BarButtonView";
//: static const CGFloat kNIMAdvancedBackgroundPadding = 5;
static const CGFloat m_keyMessage = 5;

//: @interface FFFAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@interface KeyMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

//: @property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSArray *objects;

//: @property (nonatomic,strong) NSMapTable *map;
@property (nonatomic,strong) NSMapTable *map;

//: @end
@end

//: @implementation FFFAdvancedMessageCell
@implementation KeyMessageCell

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
        [_replyButton setImage:[UIImage imageNamed:[VeteranComfortData sharedInstance].app_chefId] forState:UIControlStateNormal];
        //: UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        UIColor *titleColor = [UIColor threadColor:0x337EFF sureAcross:1];
        //: [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        //: _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_replyButton addTarget:self action:@selector(doingWith:) forControlEvents:UIControlEventTouchUpInside];
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
        [_pinView setImage:[UIImage imageNamed:[VeteranComfortData sharedInstance].mTechnologicValue] forState:UIControlStateNormal];
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
        //: _translationView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
        _translationView.backgroundColor = [UIColor min:[VeteranComfortData sharedInstance].k_mayFormat];
        //: _translationView.layer.cornerRadius = 8;
        _translationView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_translationView];
        [self.contentView addSubview:_translationView];

        //: _praiseView = [[UIView alloc]init];
        _praiseView = [[UIView alloc]init];
        //: _praiseView.backgroundColor = [UIColor colorWithHexString:@"#FFEAE0FF"];
        _praiseView.backgroundColor = [UIColor min:[VeteranComfortData sharedInstance].showArrestPath];
        //: _praiseView.layer.cornerRadius = 8;
        _praiseView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_praiseView];
        [self.contentView addSubview:_praiseView];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)accumulationRestore:(CentralProcessingUnitModel *)data
{

    //: [super refreshData:data];
    [super accumulationRestore:data];
    //: [self refreshPinView:data];
    [self messageComplete:data];
//    [self refreshReplyCountView:data];
    //: [self refreshEmoticonsView:data];
    [self messageParadigmEmoticons:data];

    //: [self refreshtranslationView:data];
    [self grouping:data];

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
    [self customForWing];
    //: [self layoutReplyCountView];
    [self layout];
    //: [self layouttranslationView];
    [self to];
    //: [self layoutPraiseView];
    [self item];
}

//: #pragma mark - View
#pragma mark - View
//: - (void)layoutPraiseView
- (void)item
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
- (void)to
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

        //: NSString *aString = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
        NSString *aString = [self.model.message.localExt objectForKey:[VeteranComfortData sharedInstance].dream_doctrineTitle];
        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        QuickNameView *labtran = [[QuickNameView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:aString];
        [labtran stay:aString];
        //: labtran.textColor = [UIColor colorWithHexString:@"#999999"];
        labtran.textColor = [UIColor min:[VeteranComfortData sharedInstance].showPeopleResidencePath];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];

//        CGFloat msgBubbleMaxWidth    = self.bubbleView.nim_width;
        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
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
            //: self.translationView.nim_right = self.bubbleView.nim_right;
            self.translationView.nim_right = self.bubbleView.nim_right;
//            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }



//        self.translationView.left = self.bubbleView.left;

    }
}
//: - (void)refreshtranslationView:(FFFMessageModel *)data
- (void)grouping:(CentralProcessingUnitModel *)data
{
    //: if([data.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if([data.message.localExt.allKeys containsObject:[VeteranComfortData sharedInstance].dream_doctrineTitle])
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
        QuickNameView *labtran = [[QuickNameView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:[self.model.message.localExt objectForKey:@"NTESMessageTranslate"]];
        [labtran stay:[self.model.message.localExt objectForKey:[VeteranComfortData sharedInstance].dream_doctrineTitle]];
        //: labtran.textColor = [UIColor colorWithHexString:@"#333333"];
        labtran.textColor = [UIColor min:[VeteranComfortData sharedInstance].m_seizeMsg];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];
        //: labtran.numberOfLines = 0;
        labtran.numberOfLines = 0;
        //: [_translationView addSubview:labtran];
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
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
//        labtran.text = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
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



//: - (void)refreshEmoticonsView:(FFFMessageModel *)data
- (void)messageParadigmEmoticons:(CentralProcessingUnitModel *)data
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
    //: self.objects = [FFFKitQuickCommentUtil sortedKeys:result];
    self.objects = [NameUtilPath status:result];

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
            UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:[VeteranComfortData sharedInstance].appAverId,self.objects[i]]]];
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

//: - (void)refreshCollection:(FFFMessageModel *)data
- (void)reload:(CentralProcessingUnitModel *)data
{
    //: if ([data needShowEmoticonsView])
    if ([data change])
    {
        //: UICollectionView *collectionView = self.emoticonsContainerView;
        UICollectionView *collectionView = self.emoticonsContainerView;
        //: if (!collectionView)
        if (!collectionView)
        {
            //: UICollectionViewFlowLayout *flowLayout = [[FFFCollectionViewLeftAlignedLayout alloc] init];
            UICollectionViewFlowLayout *flowLayout = [[ButtonFlowLayout alloc] init];
            //: flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumLineSpacing = notiUnitCommentIdent;
            //: flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = notiUnitCommentIdent;
            //: collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                //: collectionViewLayout:flowLayout];
                                                collectionViewLayout:flowLayout];
            //: [collectionView registerClass:[FFFQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            [collectionView registerClass:[BarButtonView class] forCellWithReuseIdentifier:show_blockTopMsg];
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

//: - (void)refreshPinView:(FFFMessageModel *)data
- (void)messageComplete:(CentralProcessingUnitModel *)data
{
    //: if (data.pinUserName.length && data.shouldShowPinContent)
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        //: [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        [_pinView setTitle:[NSString stringWithFormat:[VeteranComfortData sharedInstance].notiPainterTitle.messageWith, data.pinUserName] forState:UIControlStateNormal];
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

//: - (void)refreshReplyCountView:(FFFMessageModel *)data
- (void)parameter:(CentralProcessingUnitModel *)data
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
            [_replyButton setTitle:[VeteranComfortData sharedInstance].mSurelyName.messageWith forState:UIControlStateNormal];
        }
        //: else
        else
        {
            //: [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
            [_replyButton setTitle:[NSString stringWithFormat:[VeteranComfortData sharedInstance].dream_policeMovieProfessValue.messageWith, count]
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
- (void)customForWing
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
        //: self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        //: self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        //: self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
            //: self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            //: self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: } else {
        } else {
            //: self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            //: self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

//: - (void)layoutReplyCountView
- (void)layout
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
        //: self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        //: self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        //: else
        else
        {
            //: self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
            self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
        }

        //: if (self.pinView.hidden)
        if (self.pinView.hidden)
        {
            //: self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        }
        //: else
        else
        {
            //: self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
        }
    }
}

//: - (void)layoutEmoticonsContainerViewSize
- (void)colorDistance
{
    //: if ([self.model needShowEmoticonsView])
    if ([self.model change])
    {
        //: CGSize size = self.model.emoticonsContainerSize;
        CGSize size = self.model.emoticonsContainerSize;
        //: self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
        self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
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
- (void)path
{
    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
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
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
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
    self.emoticonsContainerView.nim_left = left + m_keyMessage;
    //: self.bubblesBackgroundView.nim_left = left;
    self.bubblesBackgroundView.nim_left = left;

    //: self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
    self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
}

//: - (void)layoutBubblesBackgroundView
- (void)visualImage
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: height += self.emoticonsContainerView.nim_height;
    height += self.emoticonsContainerView.nim_height;

    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kNIMAdvancedBackgroundPadding * 2;
    CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + m_keyMessage * 2;
    //: width = width > emoticonsWidth ? width : emoticonsWidth;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: [self fixPositions];
    [self path];
}

//: - (void)layoutReadButton{
- (void)borderButton{

    //: if (!self.readButton.isHidden) {
    if (!self.readButton.isHidden) {

        //: CGFloat left = self.bubbleView.nim_left;
        CGFloat left = self.bubbleView.nim_left;
        //: CGFloat bottom = self.bubbleView.nim_bottom;
        CGFloat bottom = self.bubbleView.nim_bottom;

        //: self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.nim_bottom = bottom;
        //: self.readButton.nim_centerY = self.bubbleView.nim_centerY;
        self.readButton.nim_centerY = self.bubbleView.nim_centerY;
    }
}

//: #pragma mark - Action
#pragma mark - Action

//: - (void)onReplyClicked:(id)sender
- (void)doingWith:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    if ([self.delegate respondsToSelector:@selector(valueing:)])
    {
        //: [self.delegate onClickReplyButton:self.model.message];
        [self.delegate valueing:self.model.message];
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
    //: FFFQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    BarButtonView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:show_blockTopMsg forIndexPath:indexPath];
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: [cell refreshWithData:comments model:self.model];
    [cell beyondQuantity:comments image:self.model];
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
    //: CGSize size = [FFFKitQuickCommentUtil itemSizeWithComments:comments];
    CGSize size = [NameUtilPath record:comments];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    //: return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
    return UIEdgeInsetsMake(0, notiUnitCommentIdent, 0, notiUnitCommentIdent);
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NIMQuickComment *comment = [FFFKitQuickCommentUtil myCommentFromComments:indexPath.item
    NIMQuickComment *comment = [NameUtilPath necessary:indexPath.item
                                                                 //: keys:self.objects
                                                                 saloon:self.objects
                                                             //: comments:self.map];
                                                             title:self.map];
    //: if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    if ([self.delegate respondsToSelector:@selector(fileElect:alongPage:languageSection:)])
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
        [self.delegate fileElect:self.model.message
                               //: comment:comment
                               alongPage:comment
                              //: selected:hasCommentThisEmoticon];
                              languageSection:hasCommentThisEmoticon];
    }
}





//: @end
@end