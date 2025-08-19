
#import <Foundation/Foundation.h>
typedef struct {
    Byte magnitudeerracial;
    Byte *addMidMeal;
    unsigned int ethicAdd;
    Byte pipePremise;
	int hoppingProbably;
	int hour;
} ColorTallyData;

NSString *StringFromColorTallyData(ColorTallyData *data);


//: icon_accessory_selected
ColorTallyData noti_controlKey = (ColorTallyData){189, (Byte []){212, 222, 210, 211, 226, 220, 222, 222, 216, 206, 206, 210, 207, 196, 226, 206, 216, 209, 216, 222, 201, 216, 217, 136}, 23, 188, 153, 122};

//: msg_view_4
ColorTallyData appHormoneHockYaTitle = (ColorTallyData){82, (Byte []){63, 33, 53, 13, 36, 59, 55, 37, 13, 102, 208}, 10, 230, 164, 102};

//: #EA4883
ColorTallyData showCoolRegainPath = (ColorTallyData){154, (Byte []){185, 223, 219, 174, 162, 162, 169, 82}, 7, 248, 252, 202};

//: can not init content view
ColorTallyData dreamSeizeText = (ColorTallyData){200, (Byte []){171, 169, 166, 232, 166, 167, 188, 232, 161, 166, 161, 188, 232, 171, 167, 166, 188, 173, 166, 188, 232, 190, 161, 173, 191, 206}, 25, 194, 100, 216};

//: message_read_no
ColorTallyData k_cutAcademicPath = (ColorTallyData){65, (Byte []){44, 36, 50, 50, 32, 38, 36, 30, 51, 36, 32, 37, 30, 47, 46, 56}, 15, 198, 19, 139};

//: #FF8C37
ColorTallyData mainMaxBarIdent = (ColorTallyData){5, (Byte []){38, 67, 67, 61, 70, 54, 50, 168}, 7, 178, 59, 119};

//: %zd人未读
ColorTallyData userJarStr = (ColorTallyData){235, (Byte []){206, 145, 143, 15, 81, 81, 13, 119, 65, 3, 68, 80, 241}, 12, 167, 144, 134};

//: ffffff
ColorTallyData mainNameHoppingData = (ColorTallyData){139, (Byte []){237, 237, 237, 237, 237, 237, 253}, 6, 255, 231, 41};

//: icon_accessory_normal
ColorTallyData dreamSeizeContent = (ColorTallyData){155, (Byte []){242, 248, 244, 245, 196, 250, 248, 248, 254, 232, 232, 244, 233, 226, 196, 245, 244, 233, 246, 250, 247, 51}, 21, 238, 37, 27};

//: #1EABF4
ColorTallyData noti_pdaName = (ColorTallyData){6, (Byte []){37, 55, 67, 71, 68, 64, 50, 25}, 7, 220, 153, 138};

//: message_read_yes
ColorTallyData k_bidValueAdditionalFormat = (ColorTallyData){247, (Byte []){154, 146, 132, 132, 150, 144, 146, 168, 133, 146, 150, 147, 168, 142, 146, 132, 101}, 16, 230, 17, 119};

//: F0E8FF
ColorTallyData mCoveMessage = (ColorTallyData){14, (Byte []){72, 62, 75, 54, 72, 72, 122}, 6, 234, 130, 93};

//: #AC45FF
ColorTallyData user_establishmentStr = (ColorTallyData){73, (Byte []){106, 8, 10, 125, 124, 15, 15, 63}, 7, 189, 40, 251};

//: should offer cell content class name
ColorTallyData mExpressionUrl = (ColorTallyData){26, (Byte []){105, 114, 117, 111, 118, 126, 58, 117, 124, 124, 127, 104, 58, 121, 127, 118, 118, 58, 121, 117, 116, 110, 127, 116, 110, 58, 121, 118, 123, 105, 105, 58, 116, 123, 119, 127, 164}, 36, 197, 64, 123};

//: icon_message_cell_error
ColorTallyData dreamRacyTitle = (ColorTallyData){236, (Byte []){133, 143, 131, 130, 179, 129, 137, 159, 159, 141, 139, 137, 179, 143, 137, 128, 128, 179, 137, 158, 158, 131, 158, 165}, 23, 154, 35, 146};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelViewCell.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCell.h"
#import "ModelViewCell.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "FFFBadgeView.h"
#import "NameSessionView.h"
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "FFFSessionAudioContentView.h"
#import "ColorControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFSessionUnknowContentView.h"
#import "MasterControl.h"
//: #import "FFFKitConfig.h"
#import "ShowConfig.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFSessionTextContentView.h"
#import "InfoControl.h"

//: @interface FFFMessageCell()<NIMPlayAudioUIDelegate,NIMMessageContentViewDelegate>
@interface ModelViewCell()<PlayUidelegate,CypherOption>
{
    //: UILongPressGestureRecognizer *_longPressGesture;
    UILongPressGestureRecognizer *_longPressGesture;
    //: UIMenuController *_menuController;
    UIMenuController *_menuController;
}

//: @property (nonatomic,strong) FFFMessageModel *model;
@property (nonatomic,strong) CentralProcessingUnitModel *model;

//: @property (nonatomic,copy) NSArray *customViews;
@property (nonatomic,copy) NSArray *customViews;

//: @end
@end



//: @implementation FFFMessageCell
@implementation ModelViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: [self makeComponents];
        [self name];
        //: [self makeGesture];
        [self fewness];

    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeGestureRecognizer:_longPressGesture];
    [self removeGestureRecognizer:_longPressGesture];
}

//: - (void)makeComponents
- (void)name
{
    //: static UIImage *NIMRetryButtonImage;
    static UIImage *NIMRetryButtonImage;
    //: static UIImage *NIMSelectButtonNormalImage;
    static UIImage *NIMSelectButtonNormalImage;
    //: static UIImage *NIMSelectButtonHighImage;
    static UIImage *NIMSelectButtonHighImage;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NIMRetryButtonImage = [UIImage imageNamed:@"icon_message_cell_error"];
        NIMRetryButtonImage = [UIImage imageNamed:StringFromColorTallyData(&dreamRacyTitle)];
        //: NIMSelectButtonNormalImage = [UIImage imageNamed:@"icon_accessory_normal"];
        NIMSelectButtonNormalImage = [UIImage imageNamed:StringFromColorTallyData(&dreamSeizeContent)];
        //: NIMSelectButtonHighImage = [UIImage imageNamed:@"icon_accessory_selected"];
        NIMSelectButtonHighImage = [UIImage imageNamed:StringFromColorTallyData(&noti_controlKey)];
    //: });
    });
    //retyrBtn
    //: _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    //: [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    //: [_retryButton addTarget:self action:@selector(onRetryMessage:) forControlEvents:UIControlEventTouchUpInside];
    [_retryButton addTarget:self action:@selector(belowStandard:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_retryButton];
    [self.contentView addSubview:_retryButton];

    //audioPlayedIcon
    //: _audioPlayedIcon = [FFFBadgeView viewWithBadgeTip:@""];
    _audioPlayedIcon = [NameSessionView title:@""];
//    _audioPlayedIcon.badgeBackgroundColor = RGB_COLOR_String(@"#612CF9");
//    [self.contentView addSubview:_audioPlayedIcon];

    //traningActivityIndicator
    //: _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    //: [self.contentView addSubview:_traningActivityIndicator];
    [self.contentView addSubview:_traningActivityIndicator];

    //headerView
    //: _headImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    _headImageView = [[RecordControl alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    //: [_headImageView addTarget:self action:@selector(onTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
    [_headImageView addTarget:self action:@selector(centersed:) forControlEvents:UIControlEventTouchUpInside];
    //: UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressAvatar:)];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(showAvatar:)];
    //: [_headImageView addGestureRecognizer:gesture];
    [_headImageView addGestureRecognizer:gesture];
    //: [self.contentView addSubview:_headImageView];
    [self.contentView addSubview:_headImageView];

    //nicknamel
    //: _nameLabel = [[UILabel alloc] init];
    _nameLabel = [[UILabel alloc] init];
    //: _nameLabel.backgroundColor = [UIColor clearColor];
    _nameLabel.backgroundColor = [UIColor clearColor];
    //: _nameLabel.opaque = YES;
    _nameLabel.opaque = YES;
    //: _nameLabel.font = [MyUserKit sharedKit].config.nickFont;
    _nameLabel.font = [ButtonKit sheerOption].config.nickFont;
    //: _nameLabel.textColor = [MyUserKit sharedKit].config.nickColor;
    _nameLabel.textColor = [ButtonKit sheerOption].config.nickColor;
    //: [_nameLabel setHidden:YES];
    [_nameLabel setHidden:YES];
    //: [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_nameLabel];

    //readlabel
    //: _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _readButton.opaque = YES;
    _readButton.opaque = YES;
    //: _readButton.titleLabel.font = [MyUserKit sharedKit].config.receiptFont;
    _readButton.titleLabel.font = [ButtonKit sheerOption].config.receiptFont;
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateNormal];
    [_readButton setTitleColor:[ButtonKit sheerOption].config.receiptColor forState:UIControlStateNormal];
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateHighlighted];
    [_readButton setTitleColor:[ButtonKit sheerOption].config.receiptColor forState:UIControlStateHighlighted];
    //: [_readButton setHidden:YES];
    [_readButton setHidden:YES];
    //: [_readButton addTarget:self action:@selector(onPressReadButton:) forControlEvents:UIControlEventTouchUpInside];
    [_readButton addTarget:self action:@selector(agendaItem:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_readButton];
    [self.contentView addSubview:_readButton];

    //selectButton
    //: _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    //: [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    //: [_selectButton sizeToFit];
    [_selectButton sizeToFit];
    //: [self.contentView addSubview:_selectButton];
    [self.contentView addSubview:_selectButton];
    //: _selectButton.hidden = YES;
    _selectButton.hidden = YES;

    //bubblesBackgroundView
    //: _bubblesBackgroundView = [[UIView alloc] init];
    _bubblesBackgroundView = [[UIView alloc] init];
    //: _bubblesBackgroundView.layer.cornerRadius = 8;
    _bubblesBackgroundView.layer.cornerRadius = 8;
    //: _bubblesBackgroundView.layer.masksToBounds = YES;
    _bubblesBackgroundView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:_bubblesBackgroundView];
    [self.contentView addSubview:_bubblesBackgroundView];

    //selectButtonMask
    //: _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    //: [_selectButtonMask addTarget:self action:@selector(onTapSelectedButton:) forControlEvents:UIControlEventTouchUpInside];
    [_selectButtonMask addTarget:self action:@selector(labels:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_selectButtonMask];
    [self.contentView addSubview:_selectButtonMask];
    //: _selectButtonMask.hidden = YES;
    _selectButtonMask.hidden = YES;


}

//: - (void)makeGesture{
- (void)fewness{
    //: _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGesturePress:)];
    _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(labelWith:)];
    //: [self addGestureRecognizer:_longPressGesture];
    [self addGestureRecognizer:_longPressGesture];
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)accumulationRestore:(CentralProcessingUnitModel *)data
{
    //: self.model = data;
    self.model = data;
    //: if ([self checkData])
    if ([self goOver])
    {
        //: [self.model updateLayoutConfig];
        [self.model data];
        //: [self refresh];
        [self thanText];
    }
}

//: - (BOOL)checkData{
- (BOOL)goOver{
    //: return [self.model isKindOfClass:[FFFMessageModel class]];
    return [self.model isKindOfClass:[CentralProcessingUnitModel class]];
}

//: - (void)refresh
- (void)thanText
{
    //: self.contentView.hidden = NO;
    self.contentView.hidden = NO;

    // 撤回的消息 发送自定义消息
    //: if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
    if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }
//    // 撤回的消息 发送自定义消息
//    if (self.model.message.messageType == NIMMessageTypeCustom) {
//        self.contentView.hidden = YES;
//    }

    //: NIMNotificationObject *object = self.model.message.messageObject;
    NIMNotificationObject *object = self.model.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }

//    if(!self.model.shouldShowLeft){
//        self.model.shouldShowAvatar = NO;
//    }else{
//        self.model.shouldShowAvatar = YES;
//    }


    //: [self refreshBubblesBackgroundView];
    [self recording];
    //: [self addReplyedContentViewIfNotExist];
    [self scale];
    //: [self addContentViewIfNotExist];
    [self reply];
    //: [self addUserCustomViews];
    [self viewViews];

//    self.backgroundColor = [ButtonKit sharedKit].config.cellBackgroundColor;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: if ([self needShowSelectButton]) {
    if ([self menu]) {
        //: _selectButton.selected = self.model.selected;
        _selectButton.selected = self.model.selected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
    }
    //: if ([self needShowAvatar])
    if ([self m])
    {
        //: [_headImageView setAvatarByMessage:self.model.message];
        [_headImageView setStyleMessage:self.model.message];
    }

    //: if([self needShowNickName])
    if([self exist])
    {
        //: NSString *nick = [FFFKitUtil showNick:self.model.message.from inMessage:self.model.message];
        NSString *nick = [ObjectUtil withTitle:self.model.message.from session:self.model.message];
        //: [self.nameLabel setText:nick];
        [self.nameLabel setText:nick];
        //: NSArray *colorList = [[NSArray alloc]initWithObjects:@"#EA4883",@"#FF8C37",@"#1EABF4",@"#AC45FF", nil];
        NSArray *colorList = [[NSArray alloc]initWithObjects:StringFromColorTallyData(&showCoolRegainPath),StringFromColorTallyData(&mainMaxBarIdent),StringFromColorTallyData(&noti_pdaName),StringFromColorTallyData(&user_establishmentStr), nil];
        //: NSInteger index = self.model.message.from.integerValue%4;
        NSInteger index = self.model.message.from.integerValue%4;
        //: self.nameLabel.textColor = [UIColor colorWithHexString:colorList[index]];
        self.nameLabel.textColor = [UIColor min:colorList[index]];
    }
    //: [_nameLabel setHidden:![self needShowNickName]];
    [_nameLabel setHidden:![self exist]];


    //: BOOL isActivityIndicatorHidden = [self activityIndicatorHidden];
    BOOL isActivityIndicatorHidden = [self thread];
    //: if (isActivityIndicatorHidden)
    if (isActivityIndicatorHidden)
    {
        //: [_traningActivityIndicator stopAnimating];
        [_traningActivityIndicator stopAnimating];
    }
    //: else
    else
    {
        //: [_traningActivityIndicator startAnimating];
        [_traningActivityIndicator startAnimating];
    }
//    [_traningActivityIndicator setHidden:isActivityIndicatorHidden];
    //: [_traningActivityIndicator setHidden:YES];
    [_traningActivityIndicator setHidden:YES];
    //: [_retryButton setHidden:[self retryButtonHidden]];
    [_retryButton setHidden:[self fastener]];
    //: [_audioPlayedIcon setHidden:[self unreadHidden]];
    [_audioPlayedIcon setHidden:[self infoMessage]];

    //: [self refreshReadButton];
    [self iconRecordShow];

    //: if ([_bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([_bubbleView isKindOfClass:[InfoControl class]]) {
        //: [self disableLongPress:YES];
        [self contenting:YES];
    //: } else {
    } else {
        //: [self disableLongPress:NO];
        [self contenting:NO];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)refreshBubblesBackgroundView
- (void)recording
{
    //: if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
    if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
        //: _bubblesBackgroundView.hidden = YES;
        _bubblesBackgroundView.hidden = YES;
    //: }else{
    }else{
        //: _bubblesBackgroundView.hidden = ![[MyUserKit sharedKit].layoutConfig shouldDisplayBubbleBackground:self.model];
        _bubblesBackgroundView.hidden = ![[ButtonKit sheerOption].layoutConfig clickBackground:self.model];
        //: if (self.model.shouldShowLeft){
        if (self.model.shouldShowLeft){
            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
            _bubblesBackgroundView.backgroundColor = [UIColor min:StringFromColorTallyData(&mainNameHoppingData)];
        //: }else{
        }else{
//            _bubblesBackgroundView.backgroundColor = [UIColor colorWithRed:227/255.0 green:219/255.0 blue:250/255.0 alpha:1];

            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"F0E8FF"];
            _bubblesBackgroundView.backgroundColor = [UIColor min:StringFromColorTallyData(&mCoveMessage)];
        }
    }
}


//: -(void)refreshReadButton{
-(void)iconRecordShow{
    //: BOOL isreade = self.model.message.isRemoteRead;
    BOOL isreade = self.model.message.isRemoteRead;
    //: BOOL showMessageRead = [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue];
    BOOL showMessageRead = [[OnName user].showMessageRead boolValue];
    //: if (self.model.message.isOutgoingMsg && showMessageRead) {
    if (self.model.message.isOutgoingMsg && showMessageRead) {
//        if (self.model.message.isOutgoingMsg) {
        //: [_readButton setHidden:NO];
        [_readButton setHidden:NO];
        //: [_readButton setImage:[UIImage imageNamed:@"message_read_yes"] forState:UIControlStateNormal];
        [_readButton setImage:[UIImage imageNamed:StringFromColorTallyData(&k_bidValueAdditionalFormat)] forState:UIControlStateNormal];

        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: if (isreade == NO) {
            if (isreade == NO) {
                //: [_readButton setImage:[UIImage imageNamed:@"message_read_no"] forState:UIControlStateNormal];
                [_readButton setImage:[UIImage imageNamed:StringFromColorTallyData(&k_cutAcademicPath)] forState:UIControlStateNormal];//@"已读".nim_localized
            }
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[FFFLanguageManager getTextWithKey:@"msg_view_4"]] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[PaintedNaturalLanguageTo exhibit:StringFromColorTallyData(&appHormoneHockYaTitle)]] forState:UIControlStateNormal];//人未读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
            //: [_readButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:3];
            [_readButton title:(MKButtonEdgeInsetsStyleLeft) tillVideo:3];
            //: [_readButton setHidden:YES];
            [_readButton setHidden:YES];
        }
    //: }else{
    }else{
        //: [_readButton setHidden:YES];
        [_readButton setHidden:YES];
    }
}

//: - (void)refreshReadButton_2
- (void)restore
{
    //: BOOL hidden = [self readLabelHidden];
    BOOL hidden = [self minorLeagueClub];
    //: [_readButton setHidden:hidden];
    [_readButton setHidden:hidden];
    //: if (!hidden)
    if (!hidden)
    {
        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: [_readButton setTitle:@"已读" forState:UIControlStateNormal];
            [_readButton setTitle:@"已读" forState:UIControlStateNormal];//@"已读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd人未读".nim_localized,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:StringFromColorTallyData(&userJarStr).messageWith,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
    }
}

//: - (void)addReplyedContentViewIfNotExist
- (void)scale
{
//    if ([self.model needShowRepliedContent])
//    {
//        if (!_replyedBubbleView)
//        {
//            id<PinFrame> layoutConfig = [[ButtonKit sharedKit] layoutConfig];
//            NSString *contentStr = [layoutConfig replyContent:self.model];
//            NSAssert([contentStr length] > 0, @"should offer cell content class name");
//            Class clazz = NSClassFromString(contentStr);
//            ThoughtImageControl *contentView =  [[clazz alloc] initSessionMessageContentView];
//            NSAssert(contentView, @"can not init content view");
//            _replyedBubbleView = contentView;
//            _replyedBubbleView.delegate = self;
//            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
//        }
//        [_replyedBubbleView refresh:self.model];
//        [_replyedBubbleView setNeedsLayout];
//    }
//    else if (_replyedBubbleView)
//    {
//        [_replyedBubbleView removeFromSuperview];
//        _replyedBubbleView = nil;
//    }

    //: if ([self.model needShowRepliedContent])
    if ([self.model displayMonitor])
    {
        //: if (!_replyedBubbleView)
        if (!_replyedBubbleView)
        {
            //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
            id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
            //: NSString *contentStr = [layoutConfig replyContent:self.model];
            NSString *contentStr = [layoutConfig with:self.model];
            //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
            NSAssert([contentStr length] > 0, StringFromColorTallyData(&mExpressionUrl));
            //: Class clazz = NSClassFromString(contentStr);
            Class clazz = NSClassFromString(contentStr);
            //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
            ThoughtImageControl *contentView = [[clazz alloc] initSumView];
            //: NSAssert(contentView, @"can not init content view");
            NSAssert(contentView, StringFromColorTallyData(&dreamSeizeText));
            //: _replyedBubbleView = contentView;
            _replyedBubbleView = contentView;

            //: _replyedBubbleView.delegate = self;
            _replyedBubbleView.delegate = self;
            //: [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
        }
        //: [_replyedBubbleView refresh:self.model];
        [_replyedBubbleView lengthAt:self.model];
        //: [_replyedBubbleView setNeedsLayout];
        [_replyedBubbleView setNeedsLayout];
    }
    //: else if (_replyedBubbleView)
    else if (_replyedBubbleView)
    {
        //: [_replyedBubbleView removeFromSuperview];
        [_replyedBubbleView removeFromSuperview];
        //: _replyedBubbleView = nil;
        _replyedBubbleView = nil;
    }
}

//: - (void)addContentViewIfNotExist
- (void)reply
{
    //: if (_bubbleView == nil)
    if (_bubbleView == nil)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
        //: NSString *contentStr = [layoutConfig cellContent:self.model];
        NSString *contentStr = [layoutConfig availableName:self.model];
        //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
        NSAssert([contentStr length] > 0, StringFromColorTallyData(&mExpressionUrl));
        //: Class clazz = NSClassFromString(contentStr);
        Class clazz = NSClassFromString(contentStr);
        //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
        ThoughtImageControl *contentView = [[clazz alloc] initSumView];
        //: NSAssert(contentView, @"can not init content view");
        NSAssert(contentView, StringFromColorTallyData(&dreamSeizeText));
        //: _bubbleView = contentView;
        _bubbleView = contentView;
        //: _bubbleView.delegate = self;
        _bubbleView.delegate = self;
        //: NIMMessageType messageType = self.model.message.messageType;
        NIMMessageType messageType = self.model.message.messageType;
        //: if (messageType == NIMMessageTypeAudio) {
        if (messageType == NIMMessageTypeAudio) {
            //: ((FFFSessionAudioContentView *)_bubbleView).audioUIDelegate = self;
            ((ColorControl *)_bubbleView).audioUIDelegate = self;
        }
        //: [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
        [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
    }

    //: [_bubbleView refresh:self.model];
    [_bubbleView lengthAt:self.model];
    //: [_bubbleView setNeedsLayout];
    [_bubbleView setNeedsLayout];
}

//: - (void)addUserCustomViews
- (void)viewViews
{
    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
    //: self.customViews = [layoutConfig customViews:self.model];
    self.customViews = [layoutConfig cellViews:self.model];

    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self layoutSelectButton];
    [self labelName];
    //: [self layoutAvatar];
    [self my];
    //: [self layoutNameLabel];
    [self praise];
    //: [self layoutReplyBubbleView];
    [self tip];
    //: [self layoutBubbleView];
    [self voice];
    //: [self fixReplyBubbleAndBubbleLeft];
    [self full];
    //: [self layoutBubblesBackgroundView];
    [self visualImage];
    //: [self layoutRetryButton];
    [self presentAt];
    //: [self layoutAudioPlayedIcon];
    [self send];
    //: [self layoutActivityIndicator];
    [self examineed];
    //: [self layoutReadButton];
    [self borderButton];
}

//: - (void)layoutSelectButton {
- (void)labelName {
    //: BOOL needShow = [self needShowSelectButton];
    BOOL needShow = [self menu];
    //: if (needShow) {
    if (needShow) {
        //: _selectButton.hidden = self.model.disableSelected;
        _selectButton.hidden = self.model.disableSelected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
        //: _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        //: _selectButton.frame = [self selectButtonRect];
        _selectButton.frame = [self by];
        //: _selectButtonMask.frame = self.contentView.bounds;
        _selectButtonMask.frame = self.contentView.bounds;
    //: } else {
    } else {
        //: _selectButton.hidden = YES;
        _selectButton.hidden = YES;
        //: _selectButtonMask.hidden = YES;
        _selectButtonMask.hidden = YES;
    }
}

//: - (void)layoutAvatar
- (void)my
{
    //: BOOL needShow = [self needShowAvatar];
    BOOL needShow = [self m];
    //: _headImageView.hidden = !needShow;
    _headImageView.hidden = !needShow;
    //: if (needShow) {
    if (needShow) {
        //: _headImageView.frame = [self avatarViewRect];
        _headImageView.frame = [self endCell];
    }
}

//: - (void)layoutNameLabel
- (void)praise
{
    //: if ([self needShowNickName]) {
    if ([self exist]) {
        //: CGFloat otherBubbleOriginX = ![self needShowSelectButton] ? self.cellPaddingToNick.x : _selectButton.nim_right + self.cellPaddingToNick.x;
        CGFloat otherBubbleOriginX = ![self menu] ? self.pin.x : _selectButton.nim_right + self.pin.x;
        //: CGFloat otherBubbleOriginy = self.cellPaddingToNick.y;
        CGFloat otherBubbleOriginy = self.pin.y;
        //: CGFloat otherNickNameWidth = 200.f;
        CGFloat otherNickNameWidth = 200.f;
        //: CGFloat otherNickNameHeight = 20.f;
        CGFloat otherNickNameHeight = 20.f;
        //: CGFloat cellPaddingToProtrait = self.cellPaddingToAvatar.x;
        CGFloat cellPaddingToProtrait = self.blindfold.x;
        //: CGFloat avatarWidth = self.headImageView.nim_width;
        CGFloat avatarWidth = self.headImageView.nim_width;
        //: CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.cellPaddingToNick.x;
        CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.pin.x;
        //: _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
        _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
                                                                  //: otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
                                                                  otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
    }
}

//: - (void)layoutReplyBubbleView
- (void)tip
{
    //: if (!_replyedBubbleView)
    if (!_replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGSize size = [self.model replyContentSize:self.nim_width];
    CGSize size = [self.model button:self.nim_width];
    //: UIEdgeInsets insets = self.model.replyContentViewInsets;
    UIEdgeInsets insets = self.model.replyContentViewInsets;
    //: size.width = size.width;
    size.width = size.width;
    //: size.height = size.height + insets.top + insets.bottom + 12;
    size.height = size.height + insets.top + insets.bottom + 12;
    //: _replyedBubbleView.nim_size = size;
    _replyedBubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
        left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self menu]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _replyedBubbleView.nim_left = left+5;
    _replyedBubbleView.nim_left = left+5;
    //: _replyedBubbleView.nim_top = contentInsets.top;
    _replyedBubbleView.nim_top = contentInsets.top;
}

//: - (void)layoutBubbleView
- (void)voice
{
    //: CGSize size = [self.model contentSize:self.nim_width];
    CGSize size = [self.model indicator:self.nim_width];
    //: UIEdgeInsets insets = self.model.contentViewInsets;
    UIEdgeInsets insets = self.model.contentViewInsets;
    //: size.width = size.width + insets.left + insets.right;
    size.width = size.width + insets.left + insets.right;
    //: size.height = size.height + insets.top + insets.bottom;
    size.height = size.height + insets.top + insets.bottom;
    //: _bubbleView.nim_size = size;
    _bubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubbleView.bounds);
        left = right - CGRectGetWidth(self.bubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self menu]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _bubbleView.nim_left = left;
    _bubbleView.nim_left = left;
    //: if (_replyedBubbleView)
    if (_replyedBubbleView)
    {
        //: _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
        _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
    }
    //: else
    else
    {
        //: _bubbleView.nim_top = contentInsets.top;
        _bubbleView.nim_top = contentInsets.top;
    }

}

//: - (void)fixReplyBubbleAndBubbleLeft
- (void)full
{
    //: if (!self.replyedBubbleView)
    if (!self.replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {

        //: left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }
    //: else
    else
    {
        //: left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.bubblesBackgroundView.left = left;
    self.bubblesBackgroundView.left = left;
}

//: - (void)layoutBubblesBackgroundView
- (void)visualImage
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
//    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
//    self.replyedBubbleView.left = self.bubblesBackgroundView.left;
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
}


//: - (void)layoutActivityIndicator
- (void)examineed
{
    //: if (_traningActivityIndicator.isAnimating) {
    if (_traningActivityIndicator.isAnimating) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (!self.model.shouldShowLeft)
        if (!self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self domainLink] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self domainLink] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
        }
        //: self.traningActivityIndicator.center = CGPointMake(centerX,
        self.traningActivityIndicator.center = CGPointMake(centerX,
                                                           //: _bubblesBackgroundView.center.y);
                                                           _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutRetryButton
- (void)presentAt
{
    //: if (!_retryButton.isHidden) {
    if (!_retryButton.isHidden) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] +CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self domainLink] +CGRectGetWidth(_retryButton.bounds)/2;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self domainLink] - CGRectGetWidth(_retryButton.bounds)/2;
        }

        //: _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
        _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutAudioPlayedIcon{
- (void)send{
    //: if (!_audioPlayedIcon.hidden) {
    if (!_audioPlayedIcon.hidden) {
        //: CGFloat padding = [self audioPlayedIconBubblePadding];
        CGFloat padding = [self green];
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
            _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
        }
        //: else
        else
        {
            //: _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
            _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
        }
//        _audioPlayedIcon.nim_top = _bubblesBackgroundView.nim_top;
        //: _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
    }
}

//: - (void)layoutReadButton{
- (void)borderButton{

    //: if (!_readButton.isHidden) {
    if (!_readButton.isHidden) {

        //: CGFloat left = _bubblesBackgroundView.nim_left;
        CGFloat left = _bubblesBackgroundView.nim_left;
        //: CGFloat bottom = _bubblesBackgroundView.nim_bottom;
        CGFloat bottom = _bubblesBackgroundView.nim_bottom;

        //: _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self readButtonBubblePadding];
        _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self imagePadding];
//        _readButton.nim_bottom = bottom;
        //: _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;

    }
}

//: #pragma mark - NIMMessageContentViewDelegate
#pragma mark - CypherOption
//: - (void)onCatchEvent:(FFFKitEvent *)event{
- (void)modelled:(CoverShowEvent *)event{
    //: if ([self.delegate respondsToSelector:@selector(onTapCell:)]) {
    if ([self.delegate respondsToSelector:@selector(hides:)]) {
        //: [self.delegate onTapCell:event];
        [self.delegate hides:event];
    }
}

//: - (void)disableLongPress:(BOOL)disable {
- (void)contenting:(BOOL)disable {
    //: _longPressGesture.enabled = !disable;
    _longPressGesture.enabled = !disable;
}

//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)viewLength:(NIMMessage *)message container:(void(^)(id data))complete; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(headspringCell:smallness:)]) {
        //: return [self.delegate onLongPressCell:message complete:complete];
        return [self.delegate headspringCell:message smallness:complete];
    }
    //: return NO;
    return NO;
}

//: - (BOOL)onLongTap:(NIMMessage *)message; {
- (BOOL)bubbles:(NIMMessage *)message; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:)]) {
    if ([self.delegate respondsToSelector:@selector(unders:)]) {
        //: return [self.delegate onLongPressCell:message];
        return [self.delegate unders:message];
    }
    //: return NO;
    return NO;
}



//: #pragma mark - Action
#pragma mark - Action
//: - (void)onRetryMessage:(id)sender
- (void)belowStandard:(id)sender
{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(onRetryMessage:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(belowStandard:)]) {
        //: [self.delegate onRetryMessage:self.model.message];
        [self.delegate belowStandard:self.model.message];
    }
}

//: - (void)longGesturePress:(UIGestureRecognizer *)gestureRecognizer
- (void)labelWith:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongPressCell:inView:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(inwardView:leftHandedness:)]) {
            //: [self.delegate onLongPressCell:self.model.message
            [self.delegate inwardView:self.model.message
                                       //: inView:_bubbleView];
                                       leftHandedness:_bubbleView];
        }
    }
}

//: #pragma mark - NIMPlayAudioUIDelegate
#pragma mark - PlayUidelegate
//: - (void)startPlayingAudioUI
- (void)titleName
{
    //: [self refreshData:self.model];
    [self accumulationRestore:self.model];
}

//: - (void)retryDownloadMsg
- (void)quick
{
    //: [self onRetryMessage:nil];
    [self belowStandard:nil];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state
- (UIImage *)rangeFor:(UIControlState)state
{

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:self.model.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:self.model.message];
    //: if (state == UIControlStateNormal)
    if (state == UIControlStateNormal)
    {
        //: return setting.normalBackgroundImage;
        return setting.normalBackgroundImage;
    }
    //: else
    else
    {
        //: return setting.highLightBackgroundImage;
        return setting.highLightBackgroundImage;
    }
}

//: - (CGRect)selectButtonRect {
- (CGRect)by {
    //: CGSize size = _selectButton.nim_size;
    CGSize size = _selectButton.nim_size;
    //: CGRect avatarRect = [self avatarViewRect];
    CGRect avatarRect = [self endCell];
    //: CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    //: CGFloat x = [self selectButtonPadding];
    CGFloat x = [self buttonSearchPage];
    //: return CGRectMake(x, y, size.width, size.height);
    return CGRectMake(x, y, size.width, size.height);
}

//: - (CGRect)avatarViewRect
- (CGRect)endCell
{
    //: CGFloat cellWidth = self.bounds.size.width;
    CGFloat cellWidth = self.bounds.size.width;
    //: CGFloat protraitImageWidth = [self avatarSize].width;
    CGFloat protraitImageWidth = [self receiverTab].width;
    //: CGFloat protraitImageHeight = [self avatarSize].height;
    CGFloat protraitImageHeight = [self receiverTab].height;
    //: CGFloat selfProtraitOriginX = 0;
    CGFloat selfProtraitOriginX = 0;

    //: if (self.model.shouldShowLeft) {
    if (self.model.shouldShowLeft) {
        //: if (![self needShowSelectButton]) {
        if (![self menu]) {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x;
            selfProtraitOriginX = self.blindfold.x;
        //: } else {
        } else {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x + _selectButton.nim_right;
            selfProtraitOriginX = self.blindfold.x + _selectButton.nim_right;
        }
    //: } else {
    } else {
        //: selfProtraitOriginX = cellWidth - self.cellPaddingToAvatar.x - protraitImageWidth;
        selfProtraitOriginX = cellWidth - self.blindfold.x - protraitImageWidth;
    }
    //: return CGRectMake(selfProtraitOriginX, self.cellPaddingToAvatar.y,protraitImageWidth,protraitImageHeight);
    return CGRectMake(selfProtraitOriginX, self.blindfold.y,protraitImageWidth,protraitImageHeight);
}

//: - (BOOL)needShowSelectButton {
- (BOOL)menu {
    //: return self.model.shouldShowSelect;
    return self.model.shouldShowSelect;
}

//: - (BOOL)needShowAvatar
- (BOOL)m
{
    //: return self.model.shouldShowAvatar;
    return self.model.shouldShowAvatar;
}

//: - (BOOL)needShowNickName
- (BOOL)exist
{
    //: return self.model.shouldShowNickName;
    return self.model.shouldShowNickName;
}


//: - (BOOL)retryButtonHidden
- (BOOL)fastener
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([layoutConfig respondsToSelector:@selector(disableRetryButton:)])
    if ([layoutConfig respondsToSelector:@selector(emptyPower:)])
    {
        //: disable = [layoutConfig disableRetryButton:self.model];
        disable = [layoutConfig emptyPower:self.model];
    }
    //: return disable;
    return disable;
}

//: - (CGFloat)retryButtonBubblePadding {
- (CGFloat)domainLink {
    //: BOOL isFromMe = !self.model.shouldShowLeft;
    BOOL isFromMe = !self.model.shouldShowLeft;
    //: if (self.model.message.messageType == NIMMessageTypeAudio) {
    if (self.model.message.messageType == NIMMessageTypeAudio) {
        //: return isFromMe ? 15 : 13;
        return isFromMe ? 15 : 13;
    }
    //: return isFromMe ? 8 : 10;
    return isFromMe ? 8 : 10;
}

//: - (BOOL)activityIndicatorHidden
- (BOOL)thread
{
    //: if (!self.model.message.isReceivedMsg)
    if (!self.model.message.isReceivedMsg)
    {
        //: return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
        return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
    }
    //: else
    else
    {
        //: return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
        return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
    }
}


//: - (BOOL)unreadHidden {
- (BOOL)infoMessage {
    //: if (self.model.message.messageType == NIMMessageTypeAudio)
    if (self.model.message.messageType == NIMMessageTypeAudio)
    //: { 
    { //音频
        //: BOOL disable = NO;
        BOOL disable = NO;
        //: if ([self.delegate respondsToSelector:@selector(disableAudioPlayedStatusIcon:)]) {
        if ([self.delegate respondsToSelector:@selector(atBottom:)]) {
            //: disable = [self.delegate disableAudioPlayedStatusIcon:self.model.message];
            disable = [self.delegate atBottom:self.model.message];
        }

        //BOOL hideIcon = self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloaded || disable;

        //: return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
        return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
    }
    //: return YES;
    return YES;
}

//: - (BOOL)readLabelHidden
- (BOOL)minorLeagueClub
{
    //: if (self.model.shouldShowReadLabel &&
    if (self.model.shouldShowReadLabel &&
        //: [self activityIndicatorHidden] &&
        [self thread] &&
        //: [self retryButtonHidden] &&
        [self fastener] &&
        //: [self unreadHidden] &&
        [self infoMessage] &&
        //: [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue])
        [[OnName user].showMessageRead boolValue])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (CGFloat)audioPlayedIconBubblePadding{
- (CGFloat)green{
    //: return 10.0;
    return 10.0;
}

//: - (CGFloat)readButtonBubblePadding{
- (CGFloat)imagePadding{
    //: return 2.0;
    return 2.0;
}

//: - (CGFloat)selectButtonPadding{
- (CGFloat)buttonSearchPage{
    //: return 8.0;
    return 8.0;
}

//: - (CGPoint)cellPaddingToAvatar
- (CGPoint)blindfold
{
    //: return self.model.avatarMargin;
    return self.model.avatarMargin;
}

//: - (CGPoint)cellPaddingToNick
- (CGPoint)pin
{
    //: return self.model.nickNameMargin;
    return self.model.nickNameMargin;
}

//: - (CGSize)avatarSize {
- (CGSize)receiverTab {
    //: return self.model.avatarSize;
    return self.model.avatarSize;
}

//: - (void)onTapAvatar:(id)sender{
- (void)centersed:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onTapAvatar:)])
    if ([self.delegate respondsToSelector:@selector(centersed:)])
    {
        //: [self.delegate onTapAvatar:self.model.message];
        [self.delegate centersed:self.model.message];
    }
}

//: - (void)onLongPressAvatar:(UIGestureRecognizer *)gestureRecognizer
- (void)showAvatar:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan)
        gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        //: if ([self.delegate respondsToSelector:@selector(onLongPressAvatar:)])
        if ([self.delegate respondsToSelector:@selector(showAvatar:)])
        {
            //: [self.delegate onLongPressAvatar:self.model.message];
            [self.delegate showAvatar:self.model.message];
        }
    }
}

//: - (void)onPressReadButton:(id)sender
- (void)agendaItem:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onPressReadLabel:)])
    if ([self.delegate respondsToSelector:@selector(timed:)])
    {
        //: [self.delegate onPressReadLabel:self.model.message];
        [self.delegate timed:self.model.message];
    }
}

//: - (void)onTapSelectedButton:(id)sender
- (void)labels:(id)sender
{
    //: _selectButton.selected = !_selectButton.selected;
    _selectButton.selected = !_selectButton.selected;
    //: self.model.selected = _selectButton.selected;
    self.model.selected = _selectButton.selected;
    //: if ([self.delegate respondsToSelector:@selector(onSelectedMessage:message:)]) {
    if ([self.delegate respondsToSelector:@selector(user:quantityernalRepresentation_strong:)]) {
        //: [self.delegate onSelectedMessage:self.model.selected message:self.model.message];
        [self.delegate user:self.model.selected quantityernalRepresentation_strong:self.model.message];
    }
}


//: @end
@end

Byte *ColorTallyDataToByte(ColorTallyData *data) {
    if (data->pipePremise < 141) return data->addMidMeal;
    for (int i = 0; i < data->ethicAdd; i++) {
        data->addMidMeal[i] ^= data->magnitudeerracial;
    }
    data->addMidMeal[data->ethicAdd] = 0;
    data->pipePremise = 54;
	if (data->ethicAdd >= 2) {
		data->hoppingProbably = data->addMidMeal[0];
		data->hour = data->addMidMeal[1];
	}
    return data->addMidMeal;
}

NSString *StringFromColorTallyData(ColorTallyData *data) {
    return [NSString stringWithUTF8String:(char *)ColorTallyDataToByte(data)];
}
