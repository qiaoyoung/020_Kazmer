
#import <Foundation/Foundation.h>

typedef struct {
    Byte harvest;
    Byte *monthSend;
    unsigned int quantitativeRelationText;
	int textColor;
} StructRedData;

@interface RedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RedData

//: ic_add_friend
- (NSString *)kContent_dateString {
    /* static */ NSString *kContent_dateString = nil;
    if (!kContent_dateString) {
		NSString *origin = @"3B310D3336360D34203B373C364A";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){82, (Byte *)data.bytes, 13, 189};
        kContent_dateString = [self StringFromRedData:&value];
    }
    return kContent_dateString;
}

//: nickname
- (NSString *)kTextSearchedString {
    /* static */ NSString *kTextSearchedString = nil;
    if (!kTextSearchedString) {
		NSString *origin = @"FBFCF6FEFBF4F8F097";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){149, (Byte *)data.bytes, 8, 193};
        kTextSearchedString = [self StringFromRedData:&value];
    }
    return kTextSearchedString;
}

+ (instancetype)sharedInstance {
    static RedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #FAF8FD
- (NSString *)kTextAddString {
    /* static */ NSString *kTextAddString = nil;
    if (!kTextAddString) {
		NSString *origin = @"EF8A8D8AF48A88B0";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){204, (Byte *)data.bytes, 7, 201};
        kTextAddString = [self StringFromRedData:&value];
    }
    return kTextAddString;
}

- (NSString *)StringFromRedData:(StructRedData *)data {
    return [NSString stringWithUTF8String:(char *)[self RedDataToByte:data]];
}

- (Byte *)RedDataToByte:(StructRedData *)data {
    for (int i = 0; i < data->quantitativeRelationText; i++) {
        data->monthSend[i] ^= data->harvest;
    }
    data->monthSend[data->quantitativeRelationText] = 0;
	if (data->quantitativeRelationText >= 1) {
		data->textColor = data->monthSend[0];
	}
    return data->monthSend;
}

//: contact_user_default_header
- (NSString *)kTitle_textMonthData {
    /* static */ NSString *kTitle_textMonthData = nil;
    if (!kTitle_textMonthData) {
		NSString *origin = @"EDE1E0FAEFEDFAD1FBFDEBFCD1EAEBE8EFFBE2FAD1E6EBEFEAEBFCEC";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){142, (Byte *)data.bytes, 27, 32};
        kTitle_textMonthData = [self StringFromRedData:&value];
    }
    return kTitle_textMonthData;
}

+ (NSData *)RedDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: Tamma Kirtner
- (NSString *)kTextModelValue {
    /* static */ NSString *kTextModelValue = nil;
    if (!kTextModelValue) {
		NSString *origin = @"F7C2CECEC283E8CAD1D7CDC6D12B";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){163, (Byte *)data.bytes, 13, 13};
        kTextModelValue = [self StringFromRedData:&value];
    }
    return kTextModelValue;
}

//: avatar
- (NSString *)kTitle_scaleValue {
    /* static */ NSString *kTitle_scaleValue = nil;
    if (!kTitle_scaleValue) {
		NSString *origin = @"9C8B9C899C8F54";
		NSData *data = [RedData RedDataToData:origin];
        StructRedData value = (StructRedData){253, (Byte *)data.bytes, 6, 249};
        kTitle_scaleValue = [self StringFromRedData:&value];
    }
    return kTitle_scaleValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsideView.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "InsideView.h"

//: @implementation RecommendfriendTableViewCell
@implementation InsideView

//: - (void)handleAdd{
- (void)handleReadAdd{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(osculating:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate osculating:self.userId];
    }
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
        _labName.text = [[RedData sharedInstance] kTextModelValue];
    }
    //: return _labName;
    return _labName;
}

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor cell:[[RedData sharedInstance] kTextAddString]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initChangeOf];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initChangeOf
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

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(handleReadAdd) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:[[RedData sharedInstance] kContent_dateString]] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
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
        _avaterImg.image = [UIImage imageNamed:[[RedData sharedInstance] kTitle_textMonthData]];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)displayTing:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem comment:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem comment:[[RedData sharedInstance] kTitle_scaleValue]];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem comment:[[RedData sharedInstance] kTextSearchedString]];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: @end
@end