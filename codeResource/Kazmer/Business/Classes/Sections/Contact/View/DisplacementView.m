
#import <Foundation/Foundation.h>

@interface OpenNameData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation OpenNameData

+ (instancetype)sharedInstance {
    static OpenNameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OpenNameDataToCache:(Byte *)data {
    int digitizer = data[0];
    Byte at = data[1];
    int userPressedTo = data[2];
    for (int i = userPressedTo; i < userPressedTo + digitizer; i++) {
        int value = data[i] + at;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[userPressedTo + digitizer] = 0;
    return data + userPressedTo;
}

- (NSString *)StringFromOpenNameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OpenNameDataToCache:data]];
}

//: user_id
- (NSString *)main_nameScalePath {
    /* static */ NSString *main_nameScalePath = nil;
    if (!main_nameScalePath) {
        Byte value[] = {7, 33, 12, 27, 113, 51, 46, 174, 3, 242, 119, 98, 84, 82, 68, 81, 62, 72, 67, 119};
        main_nameScalePath = [self StringFromOpenNameData:value];
    }
    return main_nameScalePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplacementView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "DisplacementView.h"

//: @implementation NTESContactGroupCell
@implementation DisplacementView

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[FFFAvatarImageView alloc] init];
    _avatar = [[RecordControl alloc] init];
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

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)showInformation:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information record:[[OpenNameData sharedInstance] main_nameScalePath]];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:user_id skinColour_strong:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar press:[NSURL URLWithString:info.avatarUrlString] title:info.avatarImage bubbleImageOptions:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end