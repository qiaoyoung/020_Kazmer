
#import <Foundation/Foundation.h>

NSString *StringFromSuspicionData(Byte *data);


//: #F6F6F6
Byte kTitleAircraftName[] = {81, 7, 83, 10, 60, 79, 171, 187, 149, 115, 118, 153, 137, 153, 137, 153, 137, 24};

//: group_remove
Byte kText_roveMonthData[] = {2, 12, 86, 11, 223, 77, 230, 243, 120, 139, 185, 189, 200, 197, 203, 198, 181, 200, 187, 195, 197, 204, 187, 181};

//: #000000
Byte kTitleDaughterData[] = {87, 7, 98, 7, 176, 104, 65, 133, 146, 146, 146, 146, 146, 146, 66};

//: group_mute
Byte kContent_yoursData[] = {33, 10, 78, 13, 155, 237, 179, 239, 93, 190, 106, 28, 83, 181, 192, 189, 195, 190, 173, 187, 195, 194, 179, 25};

//: group_mute_no
Byte kContent_fileScrewTollValue[] = {39, 13, 46, 7, 43, 181, 89, 149, 160, 157, 163, 158, 141, 155, 163, 162, 147, 141, 156, 157, 170};

//: 5D5F66
Byte kTitlePrecedentSateFistValue[] = {91, 6, 94, 11, 237, 15, 146, 216, 208, 165, 161, 147, 162, 147, 164, 148, 148, 32};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupMemberTableViewCell.h"
#import "StandardViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "FFFTeamHelper.h"
#import "MaxHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"

//: @interface FFFGroupMemberTableViewCell()
@interface StandardViewCell()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<HalogenComment> data;

//: @end
@end

//: @implementation FFFGroupMemberTableViewCell
@implementation StandardViewCell

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(tos:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:StringFromSuspicionData(kContent_fileScrewTollValue)] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:StringFromSuspicionData(kContent_yoursData)] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)along:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFGroupMemberTableViewCell";
    static NSString *identifier = @"StandardViewCell";
    //: FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    StandardViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[StandardViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor cell:StringFromSuspicionData(kTitleAircraftName)];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initCan {

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
    _titleLabel.textColor = [UIColor cell:StringFromSuspicionData(kTitleDaughterData)];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor cell:StringFromSuspicionData(kTitlePrecedentSateFistValue)];
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

//: - (void)onTouchMuteBtn:(id)sender{
- (void)tos:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(lines:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate writtenRecord:self.userId behindMember:YES];
    }
}

//: - (void)setUserInfo:(FFFKitInfo *)userInfo
- (void)setUserInfo:(CancelTeamCorner *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(indicatorred:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromSuspicionData(kText_roveMonthData)] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

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
        [self initCan];
    }
    //: return self;
    return self;
}
//: - (void)reloadWithUserId:(NSString *)UserId
- (void)my:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)indicatorred:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(lines:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate lines:self.userId];
    }
}


//: @end
@end

Byte * SuspicionDataToCache(Byte *data) {
    int tableGame = data[0];
    int appointed = data[1];
    Byte well = data[2];
    int brush = data[3];
    if (!tableGame) return data + brush;
    for (int i = brush; i < brush + appointed; i++) {
        int value = data[i] - well;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[brush + appointed] = 0;
    return data + brush;
}

NSString *StringFromSuspicionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SuspicionDataToCache(data)];
}
