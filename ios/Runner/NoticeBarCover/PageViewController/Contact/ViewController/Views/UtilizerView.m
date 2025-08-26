
#import <Foundation/Foundation.h>

typedef struct {
    Byte imageBar;
    Byte *powerMy;
    unsigned int orientation;
	int messageMonth;
	int allKey;
} StructTapAddData;

@interface TapAddData : NSObject

@end

@implementation TapAddData

+ (Byte *)TapAddDataToByte:(StructTapAddData *)data {
    for (int i = 0; i < data->orientation; i++) {
        data->powerMy[i] ^= data->imageBar;
    }
    data->powerMy[data->orientation] = 0;
	if (data->orientation >= 2) {
		data->messageMonth = data->powerMy[0];
		data->allKey = data->powerMy[1];
	}
    return data->powerMy;
}

+ (NSString *)StringFromTapAddData:(StructTapAddData *)data {
    return [NSString stringWithUTF8String:(char *)[self TapAddDataToByte:data]];
}

//: #2C3042
+ (NSString *)show_curFormat {
    /* static */ NSString *show_curFormat = nil;
    if (!show_curFormat) {
        StructTapAddData value = (StructTapAddData){26, (Byte []){57, 40, 89, 41, 42, 46, 40, 28}, 7, 17, 47};
        show_curFormat = [self StringFromTapAddData:&value];
    }
    return show_curFormat;
}

//: btn_video
+ (NSString *)main_successMsg {
    /* static */ NSString *main_successMsg = nil;
    if (!main_successMsg) {
        StructTapAddData value = (StructTapAddData){115, (Byte []){17, 7, 29, 44, 5, 26, 23, 22, 28, 154}, 9, 140, 189};
        main_successMsg = [self StringFromTapAddData:&value];
    }
    return main_successMsg;
}

//: f6f6f6
+ (NSString *)kNameValue {
    /* static */ NSString *kNameValue = nil;
    if (!kNameValue) {
        StructTapAddData value = (StructTapAddData){249, (Byte []){159, 207, 159, 207, 159, 207, 8}, 6, 51, 211};
        kNameValue = [self StringFromTapAddData:&value];
    }
    return kNameValue;
}

//: head_default
+ (NSString *)show_shouldTitle {
    /* static */ NSString *show_shouldTitle = nil;
    if (!show_shouldTitle) {
        StructTapAddData value = (StructTapAddData){170, (Byte []){194, 207, 203, 206, 245, 206, 207, 204, 203, 223, 198, 222, 129}, 12, 64, 103};
        show_shouldTitle = [self StringFromTapAddData:&value];
    }
    return show_shouldTitle;
}

//: head_default_group
+ (NSString *)appDateText {
    /* static */ NSString *appDateText = nil;
    if (!appDateText) {
        StructTapAddData value = (StructTapAddData){138, (Byte []){226, 239, 235, 238, 213, 238, 239, 236, 235, 255, 230, 254, 213, 237, 248, 229, 255, 250, 175}, 18, 132, 93};
        appDateText = [self StringFromTapAddData:&value];
    }
    return appDateText;
}

//: _UITableViewCellSeparatorView
+ (NSString *)k_showText {
    /* static */ NSString *k_showText = nil;
    if (!k_showText) {
        StructTapAddData value = (StructTapAddData){80, (Byte []){15, 5, 25, 4, 49, 50, 60, 53, 6, 57, 53, 39, 19, 53, 60, 60, 3, 53, 32, 49, 34, 49, 36, 63, 34, 6, 57, 53, 39, 92}, 29, 34, 16};
        k_showText = [self StringFromTapAddData:&value];
    }
    return k_showText;
}

//: btn_message
+ (NSString *)noti_centerName {
    /* static */ NSString *noti_centerName = nil;
    if (!noti_centerName) {
        StructTapAddData value = (StructTapAddData){21, (Byte []){119, 97, 123, 74, 120, 112, 102, 102, 116, 114, 112, 92}, 11, 160, 133};
        noti_centerName = [self StringFromTapAddData:&value];
    }
    return noti_centerName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilizerView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "UtilizerView.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @implementation NTESFriendListTableViewCell
@implementation UtilizerView


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
        [self initUse];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)ting:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"UtilizerView";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    UtilizerView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[UtilizerView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initUse {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor min:[TapAddData kNameValue]];
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
- (void)onBarUser:(id<VarnaSessionProtocolUser>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.representation;
    //: self.memberId = [member memberId];
    self.memberId = [member dataWith];
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:self.memberId skinColour_strong:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[TapAddData show_shouldTitle]]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)visualization:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] pressMedia:self.memberId sizeOption:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[TapAddData appDateText]]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)dayStandard:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)team:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([TapAddData k_showText]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)closeItem {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(fastening:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate fastening:self.memberId];
    }
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

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor min:[TapAddData show_curFormat]];
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

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(closeItem) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[TapAddData noti_centerName]] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:[TapAddData main_successMsg]] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end
