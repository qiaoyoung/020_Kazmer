
#import <Foundation/Foundation.h>

typedef struct {
    Byte commentPoint;
    Byte *content;
    unsigned int tap;
	int showName;
	int man;
} StructAnalogDigitalConverterData;

@interface AnalogDigitalConverterData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AnalogDigitalConverterData

+ (instancetype)sharedInstance {
    static AnalogDigitalConverterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AnalogDigitalConverterDataToByte:(StructAnalogDigitalConverterData *)data {
    for (int i = 0; i < data->tap; i++) {
        data->content[i] ^= data->commentPoint;
    }
    data->content[data->tap] = 0;
	if (data->tap >= 2) {
		data->showName = data->content[0];
		data->man = data->content[1];
	}
    return data->content;
}

- (NSString *)StringFromAnalogDigitalConverterData:(StructAnalogDigitalConverterData *)data {
    return [NSString stringWithUTF8String:(char *)[self AnalogDigitalConverterDataToByte:data]];
}

//: avatar
- (NSString *)k_maxTitle {
    /* static */ NSString *k_maxTitle = nil;
    if (!k_maxTitle) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){208, (Byte []){177, 166, 177, 164, 177, 162, 219}, 6, 206, 73};
        k_maxTitle = [self StringFromAnalogDigitalConverterData:&value];
    }
    return k_maxTitle;
}

//: contact_user_default_header
- (NSString *)k_scaleTextPath {
    /* static */ NSString *k_scaleTextPath = nil;
    if (!k_scaleTextPath) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){144, (Byte []){243, 255, 254, 228, 241, 243, 228, 207, 229, 227, 245, 226, 207, 244, 245, 246, 241, 229, 252, 228, 207, 248, 245, 241, 244, 245, 226, 224}, 27, 112, 213};
        k_scaleTextPath = [self StringFromAnalogDigitalConverterData:&value];
    }
    return k_scaleTextPath;
}

//: #FAF8FD
- (NSString *)dream_containerKeyMsg {
    /* static */ NSString *dream_containerKeyMsg = nil;
    if (!dream_containerKeyMsg) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){210, (Byte []){241, 148, 147, 148, 234, 148, 150, 120}, 7, 198, 174};
        dream_containerKeyMsg = [self StringFromAnalogDigitalConverterData:&value];
    }
    return dream_containerKeyMsg;
}

//: nickname
- (NSString *)mFlushFormat {
    /* static */ NSString *mFlushFormat = nil;
    if (!mFlushFormat) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){208, (Byte []){190, 185, 179, 187, 190, 177, 189, 181, 138}, 8, 151, 118};
        mFlushFormat = [self StringFromAnalogDigitalConverterData:&value];
    }
    return mFlushFormat;
}

//: Tamma Kirtner
- (NSString *)show_ofId {
    /* static */ NSString *show_ofId = nil;
    if (!show_ofId) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){161, (Byte []){245, 192, 204, 204, 192, 129, 234, 200, 211, 213, 207, 196, 211, 240}, 13, 175, 45};
        show_ofId = [self StringFromAnalogDigitalConverterData:&value];
    }
    return show_ofId;
}

//: ic_add_friend
- (NSString *)main_monthText {
    /* static */ NSString *main_monthText = nil;
    if (!main_monthText) {
        StructAnalogDigitalConverterData value = (StructAnalogDigitalConverterData){98, (Byte []){11, 1, 61, 3, 6, 6, 61, 4, 16, 11, 7, 12, 6, 253}, 13, 162, 251};
        main_monthText = [self StringFromAnalogDigitalConverterData:&value];
    }
    return main_monthText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickView.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "QuickView.h"

//: @implementation RecommendfriendTableViewCell
@implementation QuickView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor min:[[AnalogDigitalConverterData sharedInstance] dream_containerKeyMsg]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initModel];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initModel
{
    //: [self.contentView addSubview:self.avaterImg];
    [self.contentView addSubview:self.avaterImg];
    //: self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);

    //: [self.contentView addSubview:self.btnAdd];
    [self.contentView addSubview:self.btnAdd];
    //: self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
    self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)child:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem record:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem record:[[AnalogDigitalConverterData sharedInstance] k_maxTitle]];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem record:[[AnalogDigitalConverterData sharedInstance] mFlushFormat]];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor blackColor];
        _labName.textColor = [UIColor blackColor];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
        //: _labName.text = @"Tamma Kirtner";
        _labName.text = [[AnalogDigitalConverterData sharedInstance] show_ofId];
    }
    //: return _labName;
    return _labName;
}

//: - (UIImageView *)avaterImg
- (UIImageView *)avaterImg
{
    //: if (!_avaterImg) {
    if (!_avaterImg) {
        //: _avaterImg = [[UIImageView alloc] init];
        _avaterImg = [[UIImageView alloc] init];
        //: _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.cornerRadius = 24;
        //: _avaterImg.layer.masksToBounds = YES;
        _avaterImg.layer.masksToBounds = YES;
        //: _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
        _avaterImg.image = [UIImage imageNamed:[[AnalogDigitalConverterData sharedInstance] k_scaleTextPath]];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(dataWith) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:[[AnalogDigitalConverterData sharedInstance] main_monthText]] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)dataWith{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveMedia:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate aboveMedia:self.userId];
    }
}

//: @end
@end