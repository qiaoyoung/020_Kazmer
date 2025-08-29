
#import <Foundation/Foundation.h>

@interface BroadcastData : NSObject

@end

@implementation BroadcastData

+ (NSData *)BroadcastDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BroadcastDataToCache:(Byte *)data {
    int plyRental = data[0];
    Byte devastating = data[1];
    int whiteHouse = data[2];
    for (int i = whiteHouse; i < whiteHouse + plyRental; i++) {
        int value = data[i] + devastating;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[whiteHouse + plyRental] = 0;
    return data + whiteHouse;
}

+ (NSString *)StringFromBroadcastData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BroadcastDataToCache:data]];
}

//: #2C3042
+ (NSString *)kNameNimValue {
    /* static */ NSString *kNameNimValue = nil;
    if (!kNameNimValue) {
		NSArray<NSString *> *origin = @[@"7", @"34", @"11", @"157", @"64", @"242", @"169", @"221", @"166", @"75", @"144", @"1", @"16", @"33", @"17", @"14", @"18", @"16", @"156"];
		NSData *data = [BroadcastData BroadcastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameNimValue = [self StringFromBroadcastData:value];
    }
    return kNameNimValue;
}

//: #ECECEC
+ (NSString *)kTitle_availabilityString {
    /* static */ NSString *kTitle_availabilityString = nil;
    if (!kTitle_availabilityString) {
		NSArray<NSString *> *origin = @[@"7", @"93", @"7", @"105", @"140", @"140", @"99", @"198", @"232", @"230", @"232", @"230", @"232", @"230", @"49"];
		NSData *data = [BroadcastData BroadcastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_availabilityString = [self StringFromBroadcastData:value];
    }
    return kTitle_availabilityString;
}

//: icon_me_arrow
+ (NSString *)kNameThousandString {
    /* static */ NSString *kNameThousandString = nil;
    if (!kNameThousandString) {
		NSArray<NSString *> *origin = @[@"13", @"26", @"13", @"92", @"5", @"183", @"82", @"205", @"174", @"136", @"32", @"224", @"68", @"79", @"73", @"85", @"84", @"69", @"83", @"75", @"69", @"71", @"88", @"88", @"85", @"93", @"69"];
		NSData *data = [BroadcastData BroadcastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameThousandString = [self StringFromBroadcastData:value];
    }
    return kNameThousandString;
}

//: #4B43DE
+ (NSString *)kText_fierceRangeRatherValue {
    /* static */ NSString *kText_fierceRangeRatherValue = nil;
    if (!kText_fierceRangeRatherValue) {
		NSArray<NSString *> *origin = @[@"7", @"41", @"10", @"188", @"195", @"80", @"217", @"80", @"48", @"81", @"250", @"11", @"25", @"11", @"10", @"27", @"28", @"215"];
		NSData *data = [BroadcastData BroadcastDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_fierceRangeRatherValue = [self StringFromBroadcastData:value];
    }
    return kText_fierceRangeRatherValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleSizeViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupEditTableViewCell.h"
#import "TitleSizeViewCell.h"

//: @implementation FFFGroupEditTableViewCell
@implementation TitleSizeViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initColor];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initColor {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor cell:[BroadcastData kTitle_availabilityString]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[BroadcastData kNameThousandString]];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor cell:[BroadcastData kNameNimValue]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _contentLabel.textColor = [UIColor cell:[BroadcastData kText_fierceRangeRatherValue]];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end