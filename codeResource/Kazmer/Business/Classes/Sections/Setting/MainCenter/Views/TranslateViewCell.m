
#import <Foundation/Foundation.h>

NSString *StringFromAtInevitablyData(Byte *data);


//: head_default
Byte kText_shallowString[] = {78, 12, 68, 9, 239, 231, 217, 252, 174, 172, 169, 165, 168, 163, 168, 169, 170, 165, 185, 176, 184, 239};

//: #EEEEEE
Byte kTitle_placeValue[] = {32, 7, 33, 11, 130, 52, 4, 112, 196, 118, 213, 68, 102, 102, 102, 102, 102, 102, 235};

//: #F6F6F6
Byte kTitleShowName[] = {49, 7, 24, 5, 124, 59, 94, 78, 94, 78, 94, 78, 22};

//: #333333
Byte kNameRawData[] = {43, 7, 50, 6, 139, 89, 85, 101, 101, 101, 101, 101, 101, 99};

//: _UITableViewCellSeparatorView
Byte kNameBridgeAircraftContent[] = {23, 29, 3, 10, 126, 244, 5, 24, 24, 189, 98, 88, 76, 87, 100, 101, 111, 104, 89, 108, 104, 122, 70, 104, 111, 111, 86, 104, 115, 100, 117, 100, 119, 114, 117, 89, 108, 104, 122, 75};

//: black_list_item_remove
Byte kTextColorAlsoValue[] = {17, 22, 96, 5, 168, 194, 204, 193, 195, 203, 191, 204, 201, 211, 212, 191, 201, 212, 197, 205, 191, 210, 197, 205, 207, 214, 197, 38};

//: #5D5F66
Byte kContent_playValueStandardString[] = {56, 7, 15, 11, 132, 234, 215, 173, 211, 9, 56, 50, 68, 83, 68, 85, 69, 69, 153};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TranslateViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERBlackListTableViewCell.h"
#import "TranslateViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERContactDataMember.h"
#import "InformationMember.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"

//: @implementation USERBlackListTableViewCell
@implementation TranslateViewCell

//: - (void)onTouchButton {
- (void)toButton {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(cancled:)] || [self.delegate respondsToSelector:@selector(maxButton:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate maxButton:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate cancled:self.member];
        }

    }
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)red:(UITableView *)tableView
{
    //: static NSString *identifier = @"USERBlackListTableViewCell";
    static NSString *identifier = @"TranslateViewCell";
    //: USERBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TranslateViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[USERBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TranslateViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString(StringFromAtInevitablyData(kNameBridgeAircraftContent)) class]] && view)
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
        _labName.textColor = [UIColor cell:StringFromAtInevitablyData(kNameRawData)];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)bringUp:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:data.userId keepingOption:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromAtInevitablyData(kText_shallowString)]];
}


//: - (void)initSubviews {
- (void)initBubble {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor cell:StringFromAtInevitablyData(kTitleShowName)];
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
    //: [_cancleBtn setTitle:[FFFLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[MakeManager cell:StringFromAtInevitablyData(kTextColorAlsoValue)] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(toButton) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor cell:StringFromAtInevitablyData(kContent_playValueStandardString)] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor cell:StringFromAtInevitablyData(kTitle_placeValue)].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}


//: - (void)refreshWithMember:(USERContactDataMember *)member{
- (void)show:(InformationMember *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [USERSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [SessionStandard hijabText:member.info.infoId managerTeam:nil];
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
        [self initBubble];
    }
    //: return self;
    return self;
}





//: @end
@end

Byte * AtInevitablyDataToCache(Byte *data) {
    int retireQuantityact = data[0];
    int peace = data[1];
    Byte heavilyShowColor = data[2];
    int needs = data[3];
    if (!retireQuantityact) return data + needs;
    for (int i = needs; i < needs + peace; i++) {
        int value = data[i] - heavilyShowColor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[needs + peace] = 0;
    return data + needs;
}

NSString *StringFromAtInevitablyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AtInevitablyDataToCache(data)];
}
