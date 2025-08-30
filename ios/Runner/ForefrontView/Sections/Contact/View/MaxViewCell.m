
#import <Foundation/Foundation.h>

NSString *StringFromCellData(Byte *data);        


//: user_id
Byte kNameDataValue[] = {5, 7, 49, 9, 80, 176, 124, 246, 47, 68, 66, 52, 65, 46, 56, 51, 183};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactGroupCell.h"
#import "MaxViewCell.h"

//: @implementation USERContactGroupCell
@implementation MaxViewCell

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)show:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information comment:StringFromCellData(kNameDataValue)];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:user_id keepingOption:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar sendWith:[NSURL URLWithString:info.avatarUrlString] media:info.avatarImage doing:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: - (void)initSubviews{
- (void)initSendSubviews{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[DisplayAvatarImageView alloc] init];
    _avatar = [[MemoryImageControl alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: @end
@end

Byte * CellDataToCache(Byte *data) {
    int calendarMonth = data[0];
    int project = data[1];
    Byte at = data[2];
    int information = data[3];
    if (!calendarMonth) return data + information;
    for (int i = information; i < information + project; i++) {
        int value = data[i] + at;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[information + project] = 0;
    return data + information;
}

NSString *StringFromCellData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CellDataToCache(data)];
}
