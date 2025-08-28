
#import <Foundation/Foundation.h>

@interface ShowerData : NSObject

+ (instancetype)sharedInstance;

//: #fffWatch
@property (nonatomic, copy) NSString *k_weepMsg;

//: lang
@property (nonatomic, copy) NSString *showNuclearName;

//: #27303F
@property (nonatomic, copy) NSString *dreamItemKey;

//: #F6F7FA
@property (nonatomic, copy) NSString *dream_goryName;

@end

@implementation ShowerData

+ (instancetype)sharedInstance {
    static ShowerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ShowerDataToCache:(Byte *)data {
    int itch = data[0];
    Byte ligation = data[1];
    int lance = data[2];
    for (int i = lance; i < lance + itch; i++) {
        int value = data[i] - ligation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[lance + itch] = 0;
    return data + lance;
}

- (NSString *)StringFromShowerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShowerDataToCache:data]];
}

//: #F6F7FA
- (NSString *)dream_goryName {
    if (!_dream_goryName) {
        Byte value[] = {7, 2, 5, 130, 250, 37, 72, 56, 72, 57, 72, 67, 10};
        _dream_goryName = [self StringFromShowerData:value];
    }
    return _dream_goryName;
}

//: #fffWatch
- (NSString *)k_weepMsg {
    if (!_k_weepMsg) {
        Byte value[] = {7, 41, 9, 188, 250, 233, 55, 245, 78, 76, 143, 143, 143, 143, 143, 143, 47};
        _k_weepMsg = [self StringFromShowerData:value];
    }
    return _k_weepMsg;
}

//: #27303F
- (NSString *)dreamItemKey {
    if (!_dreamItemKey) {
        Byte value[] = {7, 39, 13, 42, 83, 159, 35, 50, 76, 128, 28, 116, 101, 74, 89, 94, 90, 87, 90, 109, 81};
        _dreamItemKey = [self StringFromShowerData:value];
    }
    return _dreamItemKey;
}

//: lang
- (NSString *)showNuclearName {
    if (!_showNuclearName) {
        Byte value[] = {4, 9, 10, 230, 123, 42, 91, 221, 216, 79, 117, 106, 119, 112, 158};
        _showNuclearName = [self StringFromShowerData:value];
    }
    return _showNuclearName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "CoverViewCell.h"

//: @implementation NTESLanguageTableViewCell
@implementation CoverViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[ShowerData sharedInstance].showNuclearName]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
        self.backgroundColor = [UIColor min:[ShowerData sharedInstance].k_weepMsg];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
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
        _labTitle.textColor = [UIColor min:[ShowerData sharedInstance].dreamItemKey];
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
        _lineView.backgroundColor = [UIColor min:[ShowerData sharedInstance].dream_goryName];
    }
    //: return _lineView;
    return _lineView;
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

//: @end
@end
