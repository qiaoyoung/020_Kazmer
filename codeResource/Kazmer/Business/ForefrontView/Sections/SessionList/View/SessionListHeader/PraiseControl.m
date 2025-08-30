
#import <Foundation/Foundation.h>

@interface AircraftData : NSObject

+ (instancetype)sharedInstance;

//: ic-waring
@property (nonatomic, copy) NSString *kTextScienceValue;

//: #FF483D
@property (nonatomic, copy) NSString *kNameOutdoorData;

@end

@implementation AircraftData

//: ic-waring
- (NSString *)kTextScienceValue {
    if (!_kTextScienceValue) {
		NSArray<NSString *> *origin = @[@"9", @"72", @"9", @"217", @"229", @"116", @"32", @"228", @"89", @"33", @"27", @"229", @"47", @"25", @"42", @"33", @"38", @"31", @"223"];
		NSData *data = [AircraftData AircraftDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextScienceValue = [self StringFromAircraftData:value];
    }
    return _kTextScienceValue;
}

+ (NSData *)AircraftDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AircraftDataToCache:(Byte *)data {
    int violence = data[0];
    Byte hardware = data[1];
    int porch = data[2];
    for (int i = porch; i < porch + violence; i++) {
        int value = data[i] + hardware;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[porch + violence] = 0;
    return data + porch;
}

- (NSString *)StringFromAircraftData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AircraftDataToCache:data]];
}

//: #FF483D
- (NSString *)kNameOutdoorData {
    if (!_kNameOutdoorData) {
		NSArray<NSString *> *origin = @[@"7", @"14", @"10", @"97", @"53", @"63", @"64", @"237", @"8", @"184", @"21", @"56", @"56", @"38", @"42", @"37", @"54", @"110"];
		NSData *data = [AircraftData AircraftDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameOutdoorData = [self StringFromAircraftData:value];
    }
    return _kNameOutdoorData;
}

+ (instancetype)sharedInstance {
    static AircraftData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERTextHeaderView.h"
#import "PraiseControl.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"

//: @implementation USERTextHeaderView
@implementation PraiseControl

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: - (void)setContentText:(NSString *)content{
- (void)setView:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor cell:[AircraftData sharedInstance].kNameOutdoorData];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AircraftData sharedInstance].kTextScienceValue]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: @end
@end