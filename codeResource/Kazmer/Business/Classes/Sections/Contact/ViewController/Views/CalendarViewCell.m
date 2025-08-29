
#import <Foundation/Foundation.h>

@interface ColorData : NSObject

+ (instancetype)sharedInstance;

//: btn_video
@property (nonatomic, copy) NSString *kNameProgressItemText;

//: _UITableViewCellSeparatorView
@property (nonatomic, copy) NSString *kTitle_currentValue;

//: #2C3042
@property (nonatomic, copy) NSString *kText_pinTopViewValue;

//: f6f6f6
@property (nonatomic, copy) NSString *kTitleSharedString;

//: head_default_group
@property (nonatomic, copy) NSString *kTitle_imageData;

//: head_default
@property (nonatomic, copy) NSString *kTitle_keyContent;

//: btn_message
@property (nonatomic, copy) NSString *kName_messageString;

@end

@implementation ColorData

//: head_default
- (NSString *)kTitle_keyContent {
    if (!_kTitle_keyContent) {
		NSArray<NSNumber *> *origin = @[@12, @43, @11, @246, @252, @248, @202, @251, @57, @57, @184, @61, @58, @54, @57, @52, @57, @58, @59, @54, @74, @65, @73, @101];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_keyContent = [self StringFromColorData:value];
    }
    return _kTitle_keyContent;
}

//: _UITableViewCellSeparatorView
- (NSString *)kTitle_currentValue {
    if (!_kTitle_currentValue) {
		NSArray<NSNumber *> *origin = @[@29, @52, @10, @171, @175, @247, @135, @114, @132, @50, @43, @33, @21, @32, @45, @46, @56, @49, @34, @53, @49, @67, @15, @49, @56, @56, @31, @49, @60, @45, @62, @45, @64, @59, @62, @34, @53, @49, @67, @99];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_currentValue = [self StringFromColorData:value];
    }
    return _kTitle_currentValue;
}

- (Byte *)ColorDataToCache:(Byte *)data {
    int loop = data[0];
    Byte birthday = data[1];
    int contentMainEnd = data[2];
    for (int i = contentMainEnd; i < contentMainEnd + loop; i++) {
        int value = data[i] + birthday;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[contentMainEnd + loop] = 0;
    return data + contentMainEnd;
}

+ (NSData *)ColorDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (NSString *)StringFromColorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorDataToCache:data]];
}

//: #2C3042
- (NSString *)kText_pinTopViewValue {
    if (!_kText_pinTopViewValue) {
		NSArray<NSNumber *> *origin = @[@7, @71, @5, @139, @59, @220, @235, @252, @236, @233, @237, @235, @68];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_pinTopViewValue = [self StringFromColorData:value];
    }
    return _kText_pinTopViewValue;
}

//: head_default_group
- (NSString *)kTitle_imageData {
    if (!_kTitle_imageData) {
		NSArray<NSNumber *> *origin = @[@18, @36, @11, @102, @246, @177, @15, @188, @145, @59, @228, @68, @65, @61, @64, @59, @64, @65, @66, @61, @81, @72, @80, @59, @67, @78, @75, @81, @76, @203];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_imageData = [self StringFromColorData:value];
    }
    return _kTitle_imageData;
}

//: f6f6f6
- (NSString *)kTitleSharedString {
    if (!_kTitleSharedString) {
		NSArray<NSNumber *> *origin = @[@6, @13, @9, @73, @11, @253, @151, @25, @147, @89, @41, @89, @41, @89, @41, @225];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSharedString = [self StringFromColorData:value];
    }
    return _kTitleSharedString;
}

+ (instancetype)sharedInstance {
    static ColorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: btn_message
- (NSString *)kName_messageString {
    if (!_kName_messageString) {
		NSArray<NSNumber *> *origin = @[@11, @51, @7, @96, @254, @29, @249, @47, @65, @59, @44, @58, @50, @64, @64, @46, @52, @50, @144];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_messageString = [self StringFromColorData:value];
    }
    return _kName_messageString;
}

//: btn_video
- (NSString *)kNameProgressItemText {
    if (!_kNameProgressItemText) {
		NSArray<NSNumber *> *origin = @[@9, @61, @11, @140, @242, @24, @130, @219, @129, @232, @182, @37, @55, @49, @34, @57, @44, @39, @40, @50, @46];
		NSData *data = [ColorData ColorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameProgressItemText = [self StringFromColorData:value];
    }
    return _kNameProgressItemText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CalendarViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERFriendListTableViewCell.h"
#import "CalendarViewCell.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @implementation USERFriendListTableViewCell
@implementation CalendarViewCell


//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor cell:[ColorData sharedInstance].kText_pinTopViewValue];
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

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)tingView:(UITableView *)tableView
{
    //: static NSString *identifier = @"USERFriendListTableViewCell";
    static NSString *identifier = @"CalendarViewCell";
    //: USERFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    CalendarViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[USERFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[CalendarViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(closedSession) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[ColorData sharedInstance].kName_messageString] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initPressedIn];
    }
    //: return self;
    return self;
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)imageInput:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)usufructuary:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)member:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    CancelTeamCorner *info = [[Mortification text] ability:self.memberId naturalEvent_strong:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[ColorData sharedInstance].kTitle_imageData]];
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([ColorData sharedInstance].kTitle_currentValue) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)closedSession {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(touchTingFastening:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate touchTingFastening:self.memberId];
    }
}


//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:[ColorData sharedInstance].kNameProgressItemText] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}

//: - (void)initSubviews {
- (void)initPressedIn {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor cell:[ColorData sharedInstance].kTitleSharedString];
    //: bgView.layer.cornerRadius = 12;
    bgView.layer.cornerRadius = 12;
    //: [self.contentView addSubview:bgView];
    [self.contentView addSubview:bgView];

    //: [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.iconImageView];
    //: [bgView addSubview:self.titleLabel];
    [bgView addSubview:self.titleLabel];

    //: self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    //: self.titleLabel.frame = CGRectMake(70, 0, 230, 56);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);

}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)numerosity:(id<DisplayRow>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.tabTitle;
    //: self.memberId = [member memberId];
    self.memberId = [member littleLeagueTeam];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:self.memberId keepingOption:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[ColorData sharedInstance].kTitle_keyContent]];
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 20;
        _iconImageView.layer.cornerRadius = 20;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}


//: @end
@end