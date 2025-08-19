
#import <Foundation/Foundation.h>

@interface TotalellectualData : NSObject

@end

@implementation TotalellectualData

+ (Byte *)TotalellectualDataToCache:(Byte *)data {
    int address = data[0];
    int flueKin = data[1];
    for (int i = 0; i < address / 2; i++) {
        int begin = flueKin + i;
        int end = flueKin + address - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[flueKin + address] = 0;
    return data + flueKin;
}

+ (NSString *)StringFromTotalellectualData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TotalellectualDataToCache:data]];
}  

//: icon_session_time_bg
+ (NSString *)app_coupleValue {
    /* static */ NSString *app_coupleValue = nil;
    if (!app_coupleValue) {
        Byte value[] = {20, 12, 89, 174, 3, 124, 12, 219, 82, 81, 228, 229, 103, 98, 95, 101, 109, 105, 116, 95, 110, 111, 105, 115, 115, 101, 115, 95, 110, 111, 99, 105, 247};
        app_coupleValue = [self StringFromTotalellectualData:value];
    }
    return app_coupleValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionTimestampCell.h"
#import "ObjectViewCell.h"
//: #import "WatchCellConfig.h"
#import "WatchCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchTimestampModel.h"
#import "EnableName.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface WatchSessionTimestampCell()
@interface ObjectViewCell()

//: @property (nonatomic,strong) WatchTimestampModel *model;
@property (nonatomic,strong) EnableName *model;

//: @end
@end

//: @implementation WatchSessionTimestampCell
@implementation ObjectViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [ButtonKit sharedKit].config.cellBackgroundColor;
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
        [_timeBGView setImage:[[UIImage imageNamed:[TotalellectualData app_coupleValue]] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

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
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(WatchTimestampModel *)data{
- (void)contextData:(EnableName *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self rawDataShare]){
        //: WatchTimestampModel *model = (WatchTimestampModel *)data;
        EnableName *model = (EnableName *)data;
        //: [_timeLabel setText:[WatchKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[ObjectUtil pinTextDetail:model.messageTime keyDoing:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)rawDataShare{
    //: return [self.model isKindOfClass:[WatchTimestampModel class]];
    return [self.model isKindOfClass:[EnableName class]];
}

//: @end
@end
