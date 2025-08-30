
#import <Foundation/Foundation.h>

@interface ViolationData : NSObject

+ (instancetype)sharedInstance;

//: login_bg
@property (nonatomic, copy) NSString *kName_viewText;

//: 中东小王子
@property (nonatomic, copy) NSString *kText_errorContent;

//: #333333
@property (nonatomic, copy) NSString *kNameColorTitle;

//: #5D5F66
@property (nonatomic, copy) NSString *kName_loopData;

//: login_logo
@property (nonatomic, copy) NSString *kText_showData;

//: 来一个摇滚表演
@property (nonatomic, copy) NSString *kNameItemData;

@end

@implementation ViolationData

- (Byte *)ViolationDataToCache:(Byte *)data {
    int commitImage = data[0];
    Byte cellPull = data[1];
    int too = data[2];
    for (int i = too; i < too + commitImage; i++) {
        int value = data[i] + cellPull;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[too + commitImage] = 0;
    return data + too;
}

//: #5D5F66
- (NSString *)kName_loopData {
    if (!_kName_loopData) {
		NSString *origin = @"070d06e2e467162837283929299c";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_loopData = [self StringFromViolationData:value];
    }
    return _kName_loopData;
}

- (NSString *)StringFromViolationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViolationDataToCache:data]];
}

//: 中东小王子
- (NSString *)kText_errorContent {
    if (!_kText_errorContent) {
		NSString *origin = @"0f23085d1b11650fc1958ac19579c28d6cc46b68c28a6dae";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_errorContent = [self StringFromViolationData:value];
    }
    return _kText_errorContent;
}

+ (NSData *)ViolationDataToData:(NSString *)value {
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

//: login_logo
- (NSString *)kText_showData {
    if (!_kText_showData) {
		NSString *origin = @"0a17054b54555850525748555850586f";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_showData = [self StringFromViolationData:value];
    }
    return _kText_showData;
}

+ (instancetype)sharedInstance {
    static ViolationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #333333
- (NSString *)kNameColorTitle {
    if (!_kNameColorTitle) {
		NSString *origin = @"0701078df884fb22323232323232c0";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameColorTitle = [self StringFromViolationData:value];
    }
    return _kNameColorTitle;
}

//: 来一个摇滚表演
- (NSString *)kNameItemData {
    if (!_kNameItemData) {
		NSString *origin = @"15410788ed9fe8a55c64a3773fa37769a55046a57a59a76067a57b53da";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameItemData = [self StringFromViolationData:value];
    }
    return _kNameItemData;
}

//: login_bg
- (NSString *)kName_viewText {
    if (!_kName_viewText) {
		NSString *origin = @"0849042523261e202516191e2f";
		NSData *data = [ViolationData ViolationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_viewText = [self StringFromViolationData:value];
    }
    return _kName_viewText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageCenterView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERVideolistCollectionViewCell.h"
#import "ImageCenterView.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"

//: @implementation USERVideolistCollectionViewCell
@implementation ImageCenterView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self range];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)range
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:[ViolationData sharedInstance].kName_viewText];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor cell:[ViolationData sharedInstance].kNameColorTitle];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = [ViolationData sharedInstance].kNameItemData;
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:[ViolationData sharedInstance].kText_showData];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor cell:[ViolationData sharedInstance].kName_loopData];
    //: _labname.text = @"中东小王子";
    _labname.text = [ViolationData sharedInstance].kText_errorContent;
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end