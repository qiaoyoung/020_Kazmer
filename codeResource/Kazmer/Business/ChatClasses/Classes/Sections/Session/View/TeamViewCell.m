
#import <Foundation/Foundation.h>

typedef struct {
    Byte incase;
    Byte *semenDisturb;
    unsigned int press;
	int socialUnit;
	int castOo;
} StructWoodData;

@interface WoodData : NSObject

+ (instancetype)sharedInstance;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *kNameProudString;

@end

@implementation WoodData

+ (instancetype)sharedInstance {
    static WoodData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WoodDataToData:(NSString *)value {
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

- (Byte *)WoodDataToByte:(StructWoodData *)data {
    for (int i = 0; i < data->press; i++) {
        data->semenDisturb[i] ^= data->incase;
    }
    data->semenDisturb[data->press] = 0;
	if (data->press >= 2) {
		data->socialUnit = data->semenDisturb[0];
		data->castOo = data->semenDisturb[1];
	}
    return data->semenDisturb;
}

- (NSString *)StringFromWoodData:(StructWoodData *)data {
    return [NSString stringWithUTF8String:(char *)[self WoodDataToByte:data]];
}

//: icon_session_time_bg
- (NSString *)kNameProudString {
    if (!_kNameProudString) {
		NSString *origin = @"2e24282918342234342e282918332e2a2218252022";
		NSData *data = [WoodData WoodDataToData:origin];
        StructWoodData value = (StructWoodData){71, (Byte *)data.bytes, 20, 30, 103};
        _kNameProudString = [self StringFromWoodData:&value];
    }
    return _kNameProudString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionTimestampCell.h"
#import "TeamViewCell.h"
//: #import "DisplayCellConfig.h"
#import "DisplayCellConfig.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayTimestampModel.h"
#import "WithPage.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @interface DisplaySessionTimestampCell()
@interface TeamViewCell()

//: @property (nonatomic,strong) DisplayTimestampModel *model;
@property (nonatomic,strong) WithPage *model;

//: @end
@end

//: @implementation DisplaySessionTimestampCell
@implementation TeamViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [Mortification sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:[WoodData sharedInstance].kNameProudString] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.device_centerX, 20);
    _timeLabel.center = CGPointMake(self.device_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.device_top - 2, _timeLabel.device_width + 14, _timeLabel.device_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.device_top - 2, _timeLabel.device_width + 14, _timeLabel.device_height + 4);
}


//: - (void)refreshData:(DisplayTimestampModel *)data{
- (void)count:(WithPage *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self analyzeWithoutDataComplete]){
        //: DisplayTimestampModel *model = (DisplayTimestampModel *)data;
        WithPage *model = (WithPage *)data;
        //: [_timeLabel setText:[DisplayKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[AtPull account:model.messageTime notice:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)analyzeWithoutDataComplete{
    //: return [self.model isKindOfClass:[DisplayTimestampModel class]];
    return [self.model isKindOfClass:[WithPage class]];
}

//: @end
@end
