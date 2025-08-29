
#import <Foundation/Foundation.h>

@interface FileWheatData : NSObject

+ (instancetype)sharedInstance;

//: lang
@property (nonatomic, copy) NSString *kNameFrameText;

//: #27303F
@property (nonatomic, copy) NSString *kTitleChickDeviceString;

//: #ffffff
@property (nonatomic, copy) NSString *kNameCurrentValue;

//: #F6F7FA
@property (nonatomic, copy) NSString *kName_standardString;

@end

@implementation FileWheatData

- (Byte *)FileWheatDataToCache:(Byte *)data {
    int fierce = data[0];
    int commitHardware = data[1];
    for (int i = 0; i < fierce / 2; i++) {
        int begin = commitHardware + i;
        int end = commitHardware + fierce - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[commitHardware + fierce] = 0;
    return data + commitHardware;
}

+ (NSData *)FileWheatDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (instancetype)sharedInstance {
    static FileWheatData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #F6F7FA
- (NSString *)kName_standardString {
    if (!_kName_standardString) {
		NSArray<NSString *> *origin = @[@"7", @"9", @"123", @"158", @"152", @"43", @"7", @"111", @"253", @"65", @"70", @"55", @"70", @"54", @"70", @"35", @"179"];
		NSData *data = [FileWheatData FileWheatDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_standardString = [self StringFromFileWheatData:value];
    }
    return _kName_standardString;
}  

//: #27303F
- (NSString *)kTitleChickDeviceString {
    if (!_kTitleChickDeviceString) {
		NSArray<NSString *> *origin = @[@"7", @"3", @"53", @"70", @"51", @"48", @"51", @"55", @"50", @"35", @"78"];
		NSData *data = [FileWheatData FileWheatDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleChickDeviceString = [self StringFromFileWheatData:value];
    }
    return _kTitleChickDeviceString;
}

//: #ffffff
- (NSString *)kNameCurrentValue {
    if (!_kNameCurrentValue) {
		NSArray<NSString *> *origin = @[@"7", @"9", @"245", @"248", @"124", @"123", @"213", @"206", @"17", @"102", @"102", @"102", @"102", @"102", @"102", @"35", @"167"];
		NSData *data = [FileWheatData FileWheatDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameCurrentValue = [self StringFromFileWheatData:value];
    }
    return _kNameCurrentValue;
}

//: lang
- (NSString *)kNameFrameText {
    if (!_kNameFrameText) {
		NSArray<NSString *> *origin = @[@"4", @"6", @"13", @"73", @"96", @"99", @"103", @"110", @"97", @"108", @"172"];
		NSData *data = [FileWheatData FileWheatDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameFrameText = [self StringFromFileWheatData:value];
    }
    return _kNameFrameText;
}

- (NSString *)StringFromFileWheatData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FileWheatDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginOfErrorView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERLanguageTableViewCell.h"
#import "MarginOfErrorView.h"

//: @implementation USERLanguageTableViewCell
@implementation MarginOfErrorView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[FileWheatData sharedInstance].kNameFrameText]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor cell:[FileWheatData sharedInstance].kNameCurrentValue];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UIImageView *)countyImg
- (UIImageView *)countyImg
{
    //: if (!_countyImg) {
    if (!_countyImg) {
        //: _countyImg = [[UIImageView alloc] init];
        _countyImg = [[UIImageView alloc] init];
    }
    //: return _countyImg;
    return _countyImg;
}

//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        //: _labTitle.textColor = [UIColor colorWithHexString:@"#27303F"];
        _labTitle.textColor = [UIColor cell:[FileWheatData sharedInstance].kTitleChickDeviceString];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor cell:[FileWheatData sharedInstance].kName_standardString];
    }
    //: return _lineView;
    return _lineView;
}

//: @end
@end