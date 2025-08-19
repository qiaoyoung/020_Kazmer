
#import <Foundation/Foundation.h>

typedef struct {
    Byte imagePremise;
    Byte *upPatrol;
    unsigned int advect;
	int membership;
	int mark;
} StructCartData;

@interface CartData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CartData

+ (instancetype)sharedInstance {
    static CartData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CartDataToByte:(StructCartData *)data {
    for (int i = 0; i < data->advect; i++) {
        data->upPatrol[i] ^= data->imagePremise;
    }
    data->upPatrol[data->advect] = 0;
	if (data->advect >= 2) {
		data->membership = data->upPatrol[0];
		data->mark = data->upPatrol[1];
	}
    return data->upPatrol;
}

- (NSString *)StringFromCartData:(StructCartData *)data {
    return [NSString stringWithUTF8String:(char *)[self CartDataToByte:data]];
}

//: message_helper_refuse_group
- (NSString *)dreamAdmitStr {
    /* static */ NSString *dreamAdmitStr = nil;
    if (!dreamAdmitStr) {
        StructCartData value = (StructCartData){99, (Byte []){14, 6, 16, 16, 2, 4, 6, 60, 11, 6, 15, 19, 6, 17, 60, 17, 6, 5, 22, 16, 6, 60, 4, 17, 12, 22, 19, 188}, 27, 190, 238};
        dreamAdmitStr = [self StringFromCartData:&value];
    }
    return dreamAdmitStr;
}

//: message_helper_invite
- (NSString *)showLoserData {
    /* static */ NSString *showLoserData = nil;
    if (!showLoserData) {
        StructCartData value = (StructCartData){254, (Byte []){147, 155, 141, 141, 159, 153, 155, 161, 150, 155, 146, 142, 155, 140, 161, 151, 144, 136, 151, 138, 155, 96}, 21, 168, 170};
        showLoserData = [self StringFromCartData:&value];
    }
    return showLoserData;
}

//: #4B43DE
- (NSString *)dream_destinationValue {
    /* static */ NSString *dream_destinationValue = nil;
    if (!dream_destinationValue) {
        StructCartData value = (StructCartData){255, (Byte []){220, 203, 189, 203, 204, 187, 186, 112}, 7, 52, 251};
        dream_destinationValue = [self StringFromCartData:&value];
    }
    return dream_destinationValue;
}

//: %@ attach:%@
- (NSString *)k_deerTitle {
    /* static */ NSString *k_deerTitle = nil;
    if (!k_deerTitle) {
        StructCartData value = (StructCartData){248, (Byte []){221, 184, 216, 153, 140, 140, 153, 155, 144, 194, 221, 184, 218}, 12, 7, 133};
        k_deerTitle = [self StringFromCartData:&value];
    }
    return k_deerTitle;
}

//: message_helper_refuse_you_apply
- (NSString *)dreamIsolateFormat {
    /* static */ NSString *dreamIsolateFormat = nil;
    if (!dreamIsolateFormat) {
        StructCartData value = (StructCartData){144, (Byte []){253, 245, 227, 227, 241, 247, 245, 207, 248, 245, 252, 224, 245, 226, 207, 226, 245, 246, 229, 227, 245, 207, 233, 255, 229, 207, 241, 224, 224, 252, 233, 199}, 31, 214, 23};
        dreamIsolateFormat = [self StringFromCartData:&value];
    }
    return dreamIsolateFormat;
}

//: message_helper_allow_you_apply
- (NSString *)m_threshKey {
    /* static */ NSString *m_threshKey = nil;
    if (!m_threshKey) {
        StructCartData value = (StructCartData){162, (Byte []){207, 199, 209, 209, 195, 197, 199, 253, 202, 199, 206, 210, 199, 208, 253, 195, 206, 206, 205, 213, 253, 219, 205, 215, 253, 195, 210, 210, 206, 219, 98}, 30, 19, 226};
        m_threshKey = [self StringFromCartData:&value];
    }
    return m_threshKey;
}

//: message_helper_already_ok
- (NSString *)m_manUrl {
    /* static */ NSString *m_manUrl = nil;
    if (!m_manUrl) {
        StructCartData value = (StructCartData){14, (Byte []){99, 107, 125, 125, 111, 105, 107, 81, 102, 107, 98, 126, 107, 124, 81, 111, 98, 124, 107, 111, 106, 119, 81, 97, 101, 255}, 25, 31, 133};
        m_manUrl = [self StringFromCartData:&value];
    }
    return m_manUrl;
}

//: message_helper_apply_to_group
- (NSString *)main_riotPath {
    /* static */ NSString *main_riotPath = nil;
    if (!main_riotPath) {
        StructCartData value = (StructCartData){235, (Byte []){134, 142, 152, 152, 138, 140, 142, 180, 131, 142, 135, 155, 142, 153, 180, 138, 155, 155, 135, 146, 180, 159, 132, 180, 140, 153, 132, 158, 155, 103}, 29, 192, 25};
        main_riotPath = [self StringFromCartData:&value];
    }
    return main_riotPath;
}

//: message_helper_already_time
- (NSString *)appNowhereText {
    /* static */ NSString *appNowhereText = nil;
    if (!appNowhereText) {
        StructCartData value = (StructCartData){231, (Byte []){138, 130, 148, 148, 134, 128, 130, 184, 143, 130, 139, 151, 130, 149, 184, 134, 139, 149, 130, 134, 131, 158, 184, 147, 142, 138, 130, 211}, 27, 229, 223};
        appNowhereText = [self StringFromCartData:&value];
    }
    return appNowhereText;
}

//: 000000
- (NSString *)mToKey {
    /* static */ NSString *mToKey = nil;
    if (!mToKey) {
        StructCartData value = (StructCartData){79, (Byte []){127, 127, 127, 127, 127, 127, 76}, 6, 133, 5};
        mToKey = [self StringFromCartData:&value];
    }
    return mToKey;
}

//: rejected_group_invitation
- (NSString *)dreamShirtNuclearMessage {
    /* static */ NSString *dreamShirtNuclearMessage = nil;
    if (!dreamShirtNuclearMessage) {
        StructCartData value = (StructCartData){117, (Byte []){7, 16, 31, 16, 22, 1, 16, 17, 42, 18, 7, 26, 0, 5, 42, 28, 27, 3, 28, 1, 20, 1, 28, 26, 27, 20}, 25, 223, 15};
        dreamShirtNuclearMessage = [self StringFromCartData:&value];
    }
    return dreamShirtNuclearMessage;
}

//: apply_join_supergroup
- (NSString *)app_viewFiftyMessage {
    /* static */ NSString *app_viewFiftyMessage = nil;
    if (!app_viewFiftyMessage) {
        StructCartData value = (StructCartData){229, (Byte []){132, 149, 149, 137, 156, 186, 143, 138, 140, 139, 186, 150, 144, 149, 128, 151, 130, 151, 138, 144, 149, 231}, 21, 216, 211};
        app_viewFiftyMessage = [self StringFromCartData:&value];
    }
    return app_viewFiftyMessage;
}

//: message_helper_already_no
- (NSString *)main_pipeTitle {
    /* static */ NSString *main_pipeTitle = nil;
    if (!main_pipeTitle) {
        StructCartData value = (StructCartData){32, (Byte []){77, 69, 83, 83, 65, 71, 69, 127, 72, 69, 76, 80, 69, 82, 127, 65, 76, 82, 69, 65, 68, 89, 127, 78, 79, 249}, 25, 63, 111};
        main_pipeTitle = [self StringFromCartData:&value];
    }
    return main_pipeTitle;
}

//: invite_you_join_us
- (NSString *)mNowhereItemId {
    /* static */ NSString *mNowhereItemId = nil;
    if (!mNowhereItemId) {
        StructCartData value = (StructCartData){94, (Byte []){55, 48, 40, 55, 42, 59, 1, 39, 49, 43, 1, 52, 49, 55, 48, 1, 43, 45, 223}, 18, 72, 115};
        mNowhereItemId = [self StringFromCartData:&value];
    }
    return mNowhereItemId;
}

//: contact_fragment_group
- (NSString *)main_scramIdent {
    /* static */ NSString *main_scramIdent = nil;
    if (!main_scramIdent) {
        StructCartData value = (StructCartData){234, (Byte []){137, 133, 132, 158, 139, 137, 158, 181, 140, 152, 139, 141, 135, 143, 132, 158, 181, 141, 152, 133, 159, 154, 212}, 22, 251, 112};
        main_scramIdent = [self StringFromCartData:&value];
    }
    return main_scramIdent;
}

//: message_helper_refuse_you
- (NSString *)showTwistHoppingData {
    /* static */ NSString *showTwistHoppingData = nil;
    if (!showTwistHoppingData) {
        StructCartData value = (StructCartData){169, (Byte []){196, 204, 218, 218, 200, 206, 204, 246, 193, 204, 197, 217, 204, 219, 246, 219, 204, 207, 220, 218, 204, 246, 208, 198, 220, 102}, 25, 133, 247};
        showTwistHoppingData = [self StringFromCartData:&value];
    }
    return showTwistHoppingData;
}

//: 未知请求
- (NSString *)user_quickTitle {
    /* static */ NSString *user_quickTitle = nil;
    if (!user_quickTitle) {
        StructCartData value = (StructCartData){37, (Byte []){195, 185, 143, 194, 186, 128, 205, 138, 146, 195, 148, 167, 72}, 12, 238, 137};
        user_quickTitle = [self StringFromCartData:&value];
    }
    return user_quickTitle;
}

//: request_add_you_as_a_friend
- (NSString *)k_heavilyUrl {
    /* static */ NSString *k_heavilyUrl = nil;
    if (!k_heavilyUrl) {
        StructCartData value = (StructCartData){36, (Byte []){86, 65, 85, 81, 65, 87, 80, 123, 69, 64, 64, 123, 93, 75, 81, 123, 69, 87, 123, 69, 123, 66, 86, 77, 65, 74, 64, 21}, 27, 155, 5};
        k_heavilyUrl = [self StringFromCartData:&value];
    }
    return k_heavilyUrl;
}

//: message_helper_already_add
- (NSString *)appMedalIdent {
    /* static */ NSString *appMedalIdent = nil;
    if (!appMedalIdent) {
        StructCartData value = (StructCartData){195, (Byte []){174, 166, 176, 176, 162, 164, 166, 156, 171, 166, 175, 179, 166, 177, 156, 162, 175, 177, 166, 162, 167, 186, 156, 162, 167, 167, 184}, 26, 56, 37};
        appMedalIdent = [self StringFromCartData:&value];
    }
    return appMedalIdent;
}

//: large_group
- (NSString *)userCartTitle {
    /* static */ NSString *userCartTitle = nil;
    if (!userCartTitle) {
        StructCartData value = (StructCartData){164, (Byte []){200, 197, 214, 195, 193, 251, 195, 214, 203, 209, 212, 58}, 11, 230, 118};
        userCartTitle = [self StringFromCartData:&value];
    }
    return userCartTitle;
}

//: to_deny_entry
- (NSString *)dream_valueUrl {
    /* static */ NSString *dream_valueUrl = nil;
    if (!dream_valueUrl) {
        StructCartData value = (StructCartData){62, (Byte []){74, 81, 97, 90, 91, 80, 71, 97, 91, 80, 74, 76, 71, 152}, 13, 65, 31};
        dream_valueUrl = [self StringFromCartData:&value];
    }
    return dream_valueUrl;
}

//: #999999
- (NSString *)userQuickKey {
    /* static */ NSString *userQuickKey = nil;
    if (!userQuickKey) {
        StructCartData value = (StructCartData){248, (Byte []){219, 193, 193, 193, 193, 193, 193, 169}, 7, 162, 252};
        userQuickKey = [self StringFromCartData:&value];
    }
    return userQuickKey;
}

//: is_read
- (NSString *)main_simplyImagePath {
    /* static */ NSString *main_simplyImagePath = nil;
    if (!main_simplyImagePath) {
        StructCartData value = (StructCartData){109, (Byte []){4, 30, 50, 31, 8, 12, 9, 171}, 7, 105, 71};
        main_simplyImagePath = [self StringFromCartData:&value];
    }
    return main_simplyImagePath;
}

//: ic_btn_accept
- (NSString *)kShirtMessage {
    /* static */ NSString *kShirtMessage = nil;
    if (!kShirtMessage) {
        StructCartData value = (StructCartData){180, (Byte []){221, 215, 235, 214, 192, 218, 235, 213, 215, 215, 209, 196, 192, 194}, 13, 67, 190};
        kShirtMessage = [self StringFromCartData:&value];
    }
    return kShirtMessage;
}

//: #F6F6F6
- (NSString *)noti_formatId {
    /* static */ NSString *noti_formatId = nil;
    if (!noti_formatId) {
        StructCartData value = (StructCartData){237, (Byte []){206, 171, 219, 171, 219, 171, 219, 204}, 7, 61, 14};
        noti_formatId = [self StringFromCartData:&value];
    }
    return noti_formatId;
}

//: invite_you_group
- (NSString *)notiStatusTitle {
    /* static */ NSString *notiStatusTitle = nil;
    if (!notiStatusTitle) {
        StructCartData value = (StructCartData){183, (Byte []){222, 217, 193, 222, 195, 210, 232, 206, 216, 194, 232, 208, 197, 216, 194, 199, 29}, 16, 169, 253};
        notiStatusTitle = [self StringFromCartData:&value];
    }
    return notiStatusTitle;
}

//: ic_btn_disaccept
- (NSString *)user_accentExtraStr {
    /* static */ NSString *user_accentExtraStr = nil;
    if (!user_accentExtraStr) {
        StructCartData value = (StructCartData){141, (Byte []){228, 238, 210, 239, 249, 227, 210, 233, 228, 254, 236, 238, 238, 232, 253, 249, 59}, 16, 48, 154};
        user_accentExtraStr = [self StringFromCartData:&value];
    }
    return user_accentExtraStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckRecentView.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationCell.h"
#import "CheckRecentView.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"

//: @interface NTESSystemNotificationCell ()
@interface CheckRecentView ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet RecordControl *avatarImageView;
//: @end
@end

//: @implementation NTESSystemNotificationCell
@implementation CheckRecentView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.avatarImageView];
        //: [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.titleLabel];
        //: [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.timeLabel];
        //: [self.contentView addSubview:self.messageLabel];
        [self.contentView addSubview:self.messageLabel];
        //: [self.contentView addSubview:self.handleInfoLabel];
        [self.contentView addSubview:self.handleInfoLabel];
        //: [self.contentView addSubview:self.acceptButton];
        [self.contentView addSubview:self.acceptButton];
        //: [self.contentView addSubview:self.refuseButton];
        [self.contentView addSubview:self.refuseButton];
//        [self.contentView addSubview:self.handleInfoLabel];

        //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        self.backgroundColor = [UIColor min:[[CartData sharedInstance] noti_formatId]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
    }
    //: return self;
    return self;
}

//: - (UIImageView *)avatarImageView {
- (UIImageView *)avatarImageView {
    //: if (!_avatarImageView) {
    if (!_avatarImageView) {
        //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        //: _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        //: _avatarImageView.layer.cornerRadius = 25;
        _avatarImageView.layer.cornerRadius = 25;
        //: _avatarImageView.layer.masksToBounds = YES;
        _avatarImageView.layer.masksToBounds = YES;

//        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//        [_avatarImageView addGestureRecognizer:panGesture];
    }
    //: return _avatarImageView;
    return _avatarImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"000000"];
        _titleLabel.textColor = [UIColor min:[[CartData sharedInstance] mToKey]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)timeLabel {
- (UILabel *)timeLabel {
    //: if (!_timeLabel) {
    if (!_timeLabel) {
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.textColor = [UIColor min:[[CartData sharedInstance] userQuickKey]];
        //: _timeLabel.textAlignment = NSTextAlignmentLeft;
        _timeLabel.textAlignment = NSTextAlignmentLeft;
        //: _timeLabel.numberOfLines = 1;
        _timeLabel.numberOfLines = 1;
        //: _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _timeLabel;
    return _timeLabel;
}

//: - (YYLabel *)messageLabel {
- (YYLabel *)messageLabel {
    //: if (!_messageLabel) {
    if (!_messageLabel) {
        //: _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        //: _messageLabel.font = [UIFont systemFontOfSize:12.f];
        _messageLabel.font = [UIFont systemFontOfSize:12.f];
//        _messageLabel.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5);
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _messageLabel.textColor = [UIColor min:[[CartData sharedInstance] userQuickKey]];
        //: _messageLabel.textAlignment = NSTextAlignmentLeft;
        _messageLabel.textAlignment = NSTextAlignmentLeft;
//        _messageLabel.numberOfLines = 3;
//        _messageLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//        _messageLabel.layer.cornerRadius = 6;
//        _messageLabel.layer.borderColor = TextColor_Subtitle.CGColor;
//        _messageLabel.layer.borderWidth = 1.f/[UIScreen mainScreen].scale;
//        _messageLabel.layer.masksToBounds = YES;
    }
    //: return _messageLabel;
    return _messageLabel;
}

//: - (UILabel *)handleInfoLabel {
- (UILabel *)handleInfoLabel {
    //: if (!_handleInfoLabel) {
    if (!_handleInfoLabel) {
        //: _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        //: _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        //: _handleInfoLabel.centerY = self.avatarImageView.centerY;
        _handleInfoLabel.centerY = self.avatarImageView.centerY;
        //: _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        //: _handleInfoLabel.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _handleInfoLabel.textColor = [UIColor min:[[CartData sharedInstance] dream_destinationValue]];
        //: _handleInfoLabel.textAlignment = NSTextAlignmentRight;
        _handleInfoLabel.textAlignment = NSTextAlignmentRight;
//        _handleInfoLabel.numberOfLines = 1;
//        _handleInfoLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _handleInfoLabel;
    return _handleInfoLabel;
}

//: - (UIButton *)acceptButton {
- (UIButton *)acceptButton {
    //: if (!_acceptButton) {
    if (!_acceptButton) {
        //: _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
        _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
//        _acceptButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_acceptButton setTitle:LangKey(@"request_add_accept") forState:(UIControlStateNormal)];
        //: [_acceptButton addTarget:self action:@selector(onAcceptBtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_acceptButton addTarget:self action:@selector(atNamePin) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffWatch")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[[CartData sharedInstance] kShirtMessage]] forState:UIControlStateNormal];
//        _acceptButton.layer.cornerRadius = 16;
//        _acceptButton.layer.masksToBounds = YES;
    }
    //: return _acceptButton;
    return _acceptButton;
}

//: - (UIButton *)refuseButton {
- (UIButton *)refuseButton {
    //: if (!_refuseButton) {
    if (!_refuseButton) {
        //: _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        //: _refuseButton.right = self.acceptButton.left - 10;
        _refuseButton.right = self.acceptButton.left - 10;
        //: _refuseButton.top = self.acceptButton.top;
        _refuseButton.top = self.acceptButton.top;
//        _refuseButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_refuseButton setTitle:LangKey(@"request_add_reject") forState:(UIControlStateNormal)];
        //: [_refuseButton addTarget:self action:@selector(onRefusebtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_refuseButton addTarget:self action:@selector(messageMenu) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffWatch")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[[CartData sharedInstance] user_accentExtraStr]] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}


//: - (void)update:(NIMSystemNotification *)notification{
- (void)crop:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self version];
}

//: - (void)updateUI{
- (void)version{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self courseOfAction];

    //: [self.acceptButton setHidden:hideActionButton];
    [self.acceptButton setHidden:hideActionButton];
    //: [self.refuseButton setHidden:hideActionButton];
    [self.refuseButton setHidden:hideActionButton];
    //: if(hideActionButton) {
    if(hideActionButton) {
        //: self.handleInfoLabel.hidden = NO;
        self.handleInfoLabel.hidden = NO;
        //: switch (self.notification.handleStatus) {
        switch (self.notification.handleStatus) {
            //: case NotificationHandleTypeOk:
            case NotificationHandleTypeOk:
                //: self.handleInfoLabel.text = [WatchLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] m_manUrl]];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [WatchLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] main_pipeTitle]];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [WatchLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] appNowhereText]];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [WatchLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] main_simplyImagePath]];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [WatchKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [ObjectUtil pinTextDetail:self.notification.timestamp keyDoing:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: WatchKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    TingMessage *sourceMember = [[ButtonKit sheerOption] past:sourceID skinColour_strong:nil];
    //: [self updateSourceMember:sourceMember];
    [self device:sourceMember];
}

//: - (void)updateSourceMember:(WatchKitInfo *)sourceMember{
- (void)device:(TingMessage *)sourceMember{

    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: NSString *avatarUrlString = sourceMember.avatarUrlString;
    NSString *avatarUrlString = sourceMember.avatarUrlString;
    //: NSURL *url;
    NSURL *url;
    //: if (avatarUrlString.length) {
    if (avatarUrlString.length) {
        //: url = [NSURL URLWithString:avatarUrlString];
        url = [NSURL URLWithString:avatarUrlString];
    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
    //: [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    //: self.titleLabel.text = sourceMember.showName;
    self.titleLabel.text = sourceMember.showName;
    //: switch (type) {
    switch (type) {
        //: case NIMSystemNotificationTypeTeamApply:
        case NIMSystemNotificationTypeTeamApply:
        {
            //: NSString *message_helper_apply_to_group = [WatchLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] main_riotPath]];//@"申请加入群".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamApplyReject:
        case NIMSystemNotificationTypeTeamApplyReject:
        {
            //: NSString *contact_fragment_group = [WatchLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] main_scramIdent]];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [WatchLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] showTwistHoppingData]];//@"拒绝你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_refuse_you];
                                         message_helper_refuse_you];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamInvite:
        case NIMSystemNotificationTypeTeamInvite:
        {
            //: NSString *contact_fragment_group = [WatchLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] main_scramIdent]];//@"群".nim_localized
            //: NSString *invite_you_group = [WatchLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] notiStatusTitle]];//@"邀请你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];

            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: invite_you_group];
                                         invite_you_group];

            //: if (self.notification.notifyExt.length>0) {
            if (self.notification.notifyExt.length>0) {
                //: self.messageLabel.text = [NSString stringWithFormat:@"%@ attach:%@",self.messageLabel.text , self.notification.notifyExt?:@""];
                self.messageLabel.text = [NSString stringWithFormat:[[CartData sharedInstance] k_deerTitle],self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [WatchLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] dreamAdmitStr]];
            //: NSString *message_helper_invite = [WatchLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] showLoserData]];//@"邀请".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: message_helper_refuse_group,
                                         message_helper_refuse_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_invite];
                                         message_helper_invite];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamApply:
        case NIMSystemNotificationTypeSuperTeamApply:
        {
            //: NSString *apply_join_supergroup = [WatchLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] app_viewFiftyMessage]];//@"申请加入超大群 %@".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApplyReject:
        case NIMSystemNotificationTypeSuperTeamApplyReject:
        {
            //: NSString *large_group = [WatchLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] userCartTitle]];//超大群
            //: NSString *to_deny_entry = [WatchLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] dream_valueUrl]];//拒绝你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: NSString *large_group = [WatchLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] userCartTitle]];//超大群
            //: NSString *invite_you_join_us = [WatchLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] mNowhereItemId]];//邀请你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamIviteReject:
        case NIMSystemNotificationTypeSuperTeamIviteReject:
        {
            //: NSString *rejected_group_invitation = [WatchLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] dreamShirtNuclearMessage]];
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NSString *text = @"未知请求".nim_localized;
            NSString *text = [[CartData sharedInstance] user_quickTitle].messageWith;
            //: id object = self.notification.attachment;
            id object = self.notification.attachment;
            //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
                //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                //: NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];

                //: switch (operation) {
                switch (operation) {
                    //: case NIMUserOperationAdd:
                    case NIMUserOperationAdd:
                        //: text = [WatchLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] appMedalIdent]];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [WatchLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] k_heavilyUrl]];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [WatchLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] m_threshKey]];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [WatchLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [PaintedNaturalLanguageTo exhibit:[[CartData sharedInstance] dreamIsolateFormat]];//@"拒绝了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (serverExt && [serverExt length]) {
                if (serverExt && [serverExt length]) {
                    //: text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                }
            }

            //: self.messageLabel.text = text;
            self.messageLabel.text = text;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (self.notification.postscript.length > 0) {
//        self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",self.notification.postscript, self.messageLabel.text];
//    }

//    CGSize contentSize = [self.messageLabel.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-48-15-12-15, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil].size;
//
//    self.messageLabel.height = contentSize.height + 10;

//    _refuseButton.top = _handleInfoLabel.top = _acceptButton.top = self.messageLabel.bottom + 8;
}

//: - (void)onAcceptBtn{
- (void)atNamePin{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(lyricced:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate lyricced:self.notification];
    }
}
//: - (void)onRefusebtn {
- (void)messageMenu {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(refuses:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate refuses:self.notification];
    }
}

//: - (BOOL)shouldHideActionButton
- (BOOL)courseOfAction
{
    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: BOOL handled = self.notification.handleStatus != 0;
    BOOL handled = self.notification.handleStatus != 0;
    //: BOOL needHandle = NO;
    BOOL needHandle = NO;
    //: if (type == NIMSystemNotificationTypeTeamApply ||
    if (type == NIMSystemNotificationTypeTeamApply ||
        //: type == NIMSystemNotificationTypeTeamInvite ||
        type == NIMSystemNotificationTypeTeamInvite ||
        //: type == NIMSystemNotificationTypeSuperTeamApply ||
        type == NIMSystemNotificationTypeSuperTeamApply ||
        //: type == NIMSystemNotificationTypeSuperTeamInvite) {
        type == NIMSystemNotificationTypeSuperTeamInvite) {
        //: needHandle = YES;
        needHandle = YES;
    }
    //: if (type == NIMSystemNotificationTypeFriendAdd) {
    if (type == NIMSystemNotificationTypeFriendAdd) {
        //: id object = self.notification.attachment;
        id object = self.notification.attachment;
        //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            //: needHandle = operation == NIMUserOperationRequest;
            needHandle = operation == NIMUserOperationRequest;
        }
    }
    //: return !(!handled && needHandle);
    return !(!handled && needHandle);

}
//- (void)awakeFromNib{
//    [super awakeFromNib];
//    self.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.detailTextLabel.backgroundColor = [UIColor clearColor];
//    self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.avatarImageView = [[RecordControl alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [self.contentView addSubview:self.avatarImageView];
//
////    UIButton *a = (UIButton *)self.acceptButton;
////    UIButton *b = (UIButton *)self.refuseButton;
////    [a setTitle:LangKey(@"request_add_accept") forState:UIControlStateNormal];
////    [b setTitle:LangKey(@"request_add_reject") forState:UIControlStateNormal];
//
//}
//
//- (void)update:(NIMSystemNotification *)notification{
//    self.notification = notification;
//    [self updateUI];
//}
//
//- (void)updateUI{
//    BOOL hideActionButton = [self shouldHideActionButton];
//
//    [self.acceptButton setHidden:hideActionButton];
//    [self.refuseButton setHidden:hideActionButton];
//    if(hideActionButton) {
//        self.handleInfoLabel.hidden = NO;
//        switch (self.notification.handleStatus) {
//            case NotificationHandleTypeOk:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_ok");//@"已同意".ntes_localized;
//                break;
//            case NotificationHandleTypeNo:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_no");//@"已拒绝".ntes_localized;
//                break;
//            case NotificationHandleTypeOutOfDate:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_time");//@"已过期".ntes_localized;
//                break;
//            default:
//                self.handleInfoLabel.text = nil;
//                break;
//        }
//    } else {
//        self.handleInfoLabel.hidden = YES;
//    }
//
//
//    NSString *sourceID = self.notification.sourceID;
//    TingMessage *sourceMember = [[ButtonKit sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(TingMessage *)sourceMember{
//    NIMSystemNotificationType type = self.notification.type;
//    NSString *avatarUrlString = sourceMember.avatarUrlString;
//    NSURL *url;
//    if (avatarUrlString.length) {
//        url = [NSURL URLWithString:avatarUrlString];
//    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
//    self.textLabel.text        = sourceMember.showName;
//    [self.textLabel sizeToFit];
//    switch (type) {
//        case NIMSystemNotificationTypeTeamApply:
//        {
//            NSString *message_helper_apply_to_group = LangKey(@"message_helper_apply_to_group");//@"申请加入群".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamApplyReject:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *message_helper_refuse_you = LangKey(@"message_helper_refuse_you");//@"拒绝你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         message_helper_refuse_you];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamInvite:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *invite_you_group = LangKey(@"invite_you_group");//@"邀请你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ attach:%@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         invite_you_group,
//                                         self.notification.notifyExt ? : @""];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamIviteReject:
//        {
//            NSString *message_helper_refuse_group = LangKey(@"message_helper_refuse_group");
//            NSString *message_helper_invite = LangKey(@"message_helper_invite");//@"邀请".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         message_helper_refuse_group,
//                                         team.teamName,
//                                         message_helper_invite];
//        }
//            break;
//        case NIMSystemNotificationTypeSuperTeamApply:
//        {
//            NSString *apply_join_supergroup = LangKey(@"apply_join_supergroup");//@"申请加入超大群 %@".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamApplyReject:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *to_deny_entry = LangKey(@"to_deny_entry");//拒绝你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamInvite:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *invite_you_join_us = LangKey(@"invite_you_join_us");//邀请你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamIviteReject:
//        {
//            NSString *rejected_group_invitation = LangKey(@"rejected_group_invitation");
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NSString *text = @"未知请求".ntes_localized;
//            id object = self.notification.attachment;
//            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
//
//                switch (operation) {
//                    case NIMUserOperationAdd:
//                        text = LangKey(@"message_helper_already_add");//@"已添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationRequest:
//                        text = LangKey(@"request_add_you_as_a_friend");//@"请求添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationVerify:
//                        text = LangKey(@"message_helper_allow_you_apply");//@"通过了你的好友请求".ntes_localized;
//                        break;
//                    case NIMUserOperationReject:
//                        text = LangKey(@"message_helper_refuse_you_apply");//@"拒绝了你的好友请求".ntes_localized;
//                        break;
//                    default:
//                        break;
//                }
//
//                if (serverExt && [serverExt length]) {
//                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
//                }
//            }
//
//            self.detailTextLabel.text = text;
//        }
//            break;
//        default:
//            break;
//    }
//    [self.detailTextLabel sizeToFit];
//    self.messageLabel.text = self.notification.postscript;
//    [self.messageLabel sizeToFit];
//    [self setNeedsLayout];
//}
//
//- (IBAction)onAccept:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
//        [_actionDelegate onAccept:self.notification];
//    }
//}
//- (IBAction)onRefuse:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
//        [_actionDelegate onRefuse:self.notification];
//    }
//}
//
//- (BOOL)shouldHideActionButton
//{
//    NIMSystemNotificationType type = self.notification.type;
//    BOOL handled = self.notification.handleStatus != 0;
//    BOOL needHandle = NO;
//    if (type == NIMSystemNotificationTypeTeamApply ||
//        type == NIMSystemNotificationTypeTeamInvite ||
//        type == NIMSystemNotificationTypeSuperTeamApply ||
//        type == NIMSystemNotificationTypeSuperTeamInvite) {
//        needHandle = YES;
//    }
//    if (type == NIMSystemNotificationTypeFriendAdd) {
//        id object = self.notification.attachment;
//        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//            needHandle = operation == NIMUserOperationRequest;
//        }
//    }
//    return !(!handled && needHandle);
//
//}
//
//#define MaxTextLabelWidth 120.0 * UISreenWidthScale
//#define MaxDetailLabelWidth 160.0 * UISreenWidthScale
//#define MaxMessageLabelWidth 150.0 * UISreenWidthScale
//#define TextLabelAndMessageLabelSpacing 20.f
//#define AvatarImageViewLeft 15.f
//#define MessageAndAvatarSpacing 15.f
//- (void)layoutSubviews{
//    [super layoutSubviews];
//    self.avatarImageView.centerY = self.height * .5f;
//    self.avatarImageView.left = AvatarImageViewLeft;
//    if (self.textLabel.width > MaxTextLabelWidth) {
//        self.textLabel.width = MaxTextLabelWidth;
//    }
//    if (self.detailTextLabel.width > MaxDetailLabelWidth) {
//        self.detailTextLabel.width = MaxDetailLabelWidth;
//    }
//    self.textLabel.left = self.avatarImageView.right + MessageAndAvatarSpacing;
//    self.detailTextLabel.left = self.textLabel.left;
//    self.detailTextLabel.bottom = self.avatarImageView.bottom;
//
////    if (self.messageLabel.width > MaxMessageLabelWidth) {
////        self.messageLabel.width = MaxMessageLabelWidth;
////    }
////    self.messageLabel.left = self.textLabel.right + TextLabelAndMessageLabelSpacing;
//
//}

//: @end
@end
