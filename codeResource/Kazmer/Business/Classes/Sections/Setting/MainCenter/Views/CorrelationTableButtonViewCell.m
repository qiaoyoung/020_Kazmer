
#import <Foundation/Foundation.h>

@interface SupernumeraryData : NSObject

@end

@implementation SupernumeraryData

+ (Byte *)SupernumeraryDataToCache:(Byte *)data {
    int showMessage = data[0];
    Byte establishment = data[1];
    int scramPipe = data[2];
    for (int i = scramPipe; i < scramPipe + showMessage; i++) {
        int value = data[i] + establishment;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[scramPipe + showMessage] = 0;
    return data + scramPipe;
}

+ (NSString *)StringFromSupernumeraryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SupernumeraryDataToCache:data]];
}

//: #F6F6F6
+ (NSString *)notiMarkPointUrl {
    /* static */ NSString *notiMarkPointUrl = nil;
    if (!notiMarkPointUrl) {
        Byte value[] = {7, 5, 11, 221, 211, 120, 159, 217, 157, 32, 227, 30, 65, 49, 65, 49, 65, 49, 33};
        notiMarkPointUrl = [self StringFromSupernumeraryData:value];
    }
    return notiMarkPointUrl;
}

//: #333333
+ (NSString *)kShirtTableItemMessage {
    /* static */ NSString *kShirtTableItemMessage = nil;
    if (!kShirtTableItemMessage) {
        Byte value[] = {7, 62, 10, 140, 58, 110, 39, 98, 115, 235, 229, 245, 245, 245, 245, 245, 245, 210};
        kShirtTableItemMessage = [self StringFromSupernumeraryData:value];
    }
    return kShirtTableItemMessage;
}

//: black_list_item_remove
+ (NSString *)mainStreakRegnantKey {
    /* static */ NSString *mainStreakRegnantKey = nil;
    if (!mainStreakRegnantKey) {
        Byte value[] = {22, 93, 5, 163, 236, 5, 15, 4, 6, 14, 2, 15, 12, 22, 23, 2, 12, 23, 8, 16, 2, 21, 8, 16, 18, 25, 8, 198};
        mainStreakRegnantKey = [self StringFromSupernumeraryData:value];
    }
    return mainStreakRegnantKey;
}

//: _UITableViewCellSeparatorView
+ (NSString *)mMaxId {
    /* static */ NSString *mMaxId = nil;
    if (!mMaxId) {
        Byte value[] = {29, 30, 8, 170, 179, 86, 155, 193, 65, 55, 43, 54, 67, 68, 78, 71, 56, 75, 71, 89, 37, 71, 78, 78, 53, 71, 82, 67, 84, 67, 86, 81, 84, 56, 75, 71, 89, 187};
        mMaxId = [self StringFromSupernumeraryData:value];
    }
    return mMaxId;
}

//: #EEEEEE
+ (NSString *)k_heavyId {
    /* static */ NSString *k_heavyId = nil;
    if (!k_heavyId) {
        Byte value[] = {7, 38, 9, 206, 26, 219, 141, 210, 241, 253, 31, 31, 31, 31, 31, 31, 34};
        k_heavyId = [self StringFromSupernumeraryData:value];
    }
    return k_heavyId;
}

//: #5D5F66
+ (NSString *)dreamPowerStr {
    /* static */ NSString *dreamPowerStr = nil;
    if (!dreamPowerStr) {
        Byte value[] = {7, 65, 3, 226, 244, 3, 244, 5, 245, 245, 164};
        dreamPowerStr = [self StringFromSupernumeraryData:value];
    }
    return dreamPowerStr;
}

//: head_default
+ (NSString *)dreamCircleFormat {
    /* static */ NSString *dreamCircleFormat = nil;
    if (!dreamCircleFormat) {
        Byte value[] = {12, 93, 3, 11, 8, 4, 7, 2, 7, 8, 9, 4, 24, 15, 23, 111};
        dreamCircleFormat = [self StringFromSupernumeraryData:value];
    }
    return dreamCircleFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CorrelationTableButtonViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "CorrelationTableButtonViewCell.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation CorrelationTableButtonViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initColorWill];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)m:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"CorrelationTableButtonViewCell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    CorrelationTableButtonViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[CorrelationTableButtonViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initColorWill {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor min:[SupernumeraryData notiMarkPointUrl]];
    //: bodyView.layer.cornerRadius = 16;
    bodyView.layer.cornerRadius = 16;
    //: [self.contentView addSubview:bodyView];
    [self.contentView addSubview:bodyView];

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.cornerRadius = 24;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [bodyView addSubview:_avatarImageView];
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
    _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_cancleBtn setTitle:[WatchLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[PaintedNaturalLanguageTo exhibit:[SupernumeraryData mainStreakRegnantKey]] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(namePop) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor min:[SupernumeraryData dreamPowerStr]] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor min:[SupernumeraryData k_heavyId]].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)itemCan:(TimeMember *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [OldUtil red:member.info.infoId dateSession:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)addFlush:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:data.userId skinColour_strong:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[SupernumeraryData dreamCircleFormat]]];
}


//: - (void)onTouchButton {
- (void)namePop {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(forks:)] || [self.delegate respondsToSelector:@selector(paths:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate paths:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate forks:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([SupernumeraryData mMaxId]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor min:[SupernumeraryData kShirtTableItemMessage]];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end
