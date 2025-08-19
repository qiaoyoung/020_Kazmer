
#import <Foundation/Foundation.h>

@interface FreedData : NSObject

@end

@implementation FreedData

+ (Byte *)FreedDataToCache:(Byte *)data {
    int agnomenPetition = data[0];
    Byte parade = data[1];
    int club = data[2];
    for (int i = club; i < club + agnomenPetition; i++) {
        int value = data[i] + parade;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[club + agnomenPetition] = 0;
    return data + club;
}

+ (NSString *)StringFromFreedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FreedDataToCache:data]];
}

//: group_mute_no
+ (NSString *)mainTubeTitle {
    /* static */ NSString *mainTubeTitle = nil;
    if (!mainTubeTitle) {
        Byte value[] = {13, 79, 12, 25, 134, 246, 138, 236, 83, 20, 78, 58, 24, 35, 32, 38, 33, 16, 30, 38, 37, 22, 16, 31, 32, 158};
        mainTubeTitle = [self StringFromFreedData:value];
    }
    return mainTubeTitle;
}

//: 5D5F66
+ (NSString *)dream_economicallyUrl {
    /* static */ NSString *dream_economicallyUrl = nil;
    if (!dream_economicallyUrl) {
        Byte value[] = {6, 35, 3, 18, 33, 18, 35, 19, 19, 150};
        dream_economicallyUrl = [self StringFromFreedData:value];
    }
    return dream_economicallyUrl;
}

//: #F6F6F6
+ (NSString *)dream_duringPath {
    /* static */ NSString *dream_duringPath = nil;
    if (!dream_duringPath) {
        Byte value[] = {7, 67, 7, 64, 91, 85, 31, 224, 3, 243, 3, 243, 3, 243, 132};
        dream_duringPath = [self StringFromFreedData:value];
    }
    return dream_duringPath;
}

//: #000000
+ (NSString *)mConventInsistMsg {
    /* static */ NSString *mConventInsistMsg = nil;
    if (!mConventInsistMsg) {
        Byte value[] = {7, 94, 12, 162, 90, 158, 229, 251, 127, 171, 46, 234, 197, 210, 210, 210, 210, 210, 210, 117};
        mConventInsistMsg = [self StringFromFreedData:value];
    }
    return mConventInsistMsg;
}

//: group_mute
+ (NSString *)dreamContainerName {
    /* static */ NSString *dreamContainerName = nil;
    if (!dreamContainerName) {
        Byte value[] = {10, 78, 12, 235, 249, 68, 87, 113, 17, 42, 166, 29, 25, 36, 33, 39, 34, 17, 31, 39, 38, 23, 126};
        dreamContainerName = [self StringFromFreedData:value];
    }
    return dreamContainerName;
}

//: group_remove
+ (NSString *)m_establishmentPeopleTitle {
    /* static */ NSString *m_establishmentPeopleTitle = nil;
    if (!m_establishmentPeopleTitle) {
        Byte value[] = {12, 67, 13, 20, 235, 50, 2, 232, 116, 190, 147, 201, 121, 36, 47, 44, 50, 45, 28, 47, 34, 42, 44, 51, 34, 193};
        m_establishmentPeopleTitle = [self StringFromFreedData:value];
    }
    return m_establishmentPeopleTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextEnableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchGroupMemberTableViewCell.h"
#import "TextEnableViewCell.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "WatchTeamHelper.h"
#import "MakeBubble.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"

//: @interface WatchGroupMemberTableViewCell()
@interface TextEnableViewCell()

//: @property (nonatomic,strong) id<WatchKitCardHeaderData> data;
@property (nonatomic,strong) id<WatchKitCardHeaderData> data;

//: @end
@end

//: @implementation WatchGroupMemberTableViewCell
@implementation TextEnableViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initTo];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)read:(UITableView *)tableView
{
    //: static NSString *identifier = @"WatchGroupMemberTableViewCell";
    static NSString *identifier = @"TextEnableViewCell";
    //: WatchGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TextEnableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[WatchGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TextEnableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor min:[FreedData dream_duringPath]];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTo {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor min:[FreedData mConventInsistMsg]];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor min:[FreedData dream_economicallyUrl]];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)barId:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(WatchKitInfo *)userInfo
- (void)setUserInfo:(TingMessage *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)saving:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(willed:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate willed:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)textBtn:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(willed:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate content:self.userId colorText:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(saving:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[FreedData m_establishmentPeopleTitle]] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(textBtn:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:[FreedData mainTubeTitle]] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:[FreedData dreamContainerName]] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end
