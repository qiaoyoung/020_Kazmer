
#import <Foundation/Foundation.h>

typedef struct {
    Byte biddy;
    Byte *knifeDoor;
    unsigned int privilegeAgileCraw;
	int sustain;
	int availabilityEnd;
	int hydra;
} StructAllotData;

@interface AllotData : NSObject

@end

@implementation AllotData

+ (NSData *)AllotDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)AllotDataToByte:(StructAllotData *)data {
    for (int i = 0; i < data->privilegeAgileCraw; i++) {
        data->knifeDoor[i] ^= data->biddy;
    }
    data->knifeDoor[data->privilegeAgileCraw] = 0;
	if (data->privilegeAgileCraw >= 3) {
		data->sustain = data->knifeDoor[0];
		data->availabilityEnd = data->knifeDoor[1];
		data->hydra = data->knifeDoor[2];
	}
    return data->knifeDoor;
}

+ (NSString *)StringFromAllotData:(StructAllotData *)data {
    return [NSString stringWithUTF8String:(char *)[self AllotDataToByte:data]];
}

//: head_default
+ (NSString *)kContent_singData {
    /* static */ NSString *kContent_singData = nil;
    if (!kContent_singData) {
		NSArray<NSNumber *> *origin = @[@147, @158, @154, @159, @164, @159, @158, @157, @154, @142, @151, @143, @163];
		NSData *data = [AllotData AllotDataToData:origin];
        StructAllotData value = (StructAllotData){251, (Byte *)data.bytes, 12, 54, 250, 156};
        kContent_singData = [self StringFromAllotData:&value];
    }
    return kContent_singData;
}

//: 创建于%@
+ (NSString *)kNameDeserveItemString {
    /* static */ NSString *kNameDeserveItemString = nil;
    if (!kNameDeserveItemString) {
		NSArray<NSNumber *> *origin = @[@51, @94, @77, @51, @109, @108, @50, @108, @88, @243, @150, @4];
		NSData *data = [AllotData AllotDataToData:origin];
        StructAllotData value = (StructAllotData){214, (Byte *)data.bytes, 11, 149, 28, 13};
        kNameDeserveItemString = [self StringFromAllotData:&value];
    }
    return kNameDeserveItemString;
}

//: 未知时间创建
+ (NSString *)kName_denseValue {
    /* static */ NSString *kName_denseValue = nil;
    if (!kName_denseValue) {
		NSArray<NSNumber *> *origin = @[@23, @109, @91, @22, @110, @84, @23, @102, @71, @24, @102, @69, @20, @121, @106, @20, @74, @75, @110];
		NSData *data = [AllotData AllotDataToData:origin];
        StructAllotData value = (StructAllotData){241, (Byte *)data.bytes, 18, 200, 87, 232};
        kName_denseValue = [self StringFromAllotData:&value];
    }
    return kName_denseValue;
}

//: yyyy/MM/dd
+ (NSString *)kTitleImageString {
    /* static */ NSString *kTitleImageString = nil;
    if (!kTitleImageString) {
		NSArray<NSNumber *> *origin = @[@211, @211, @211, @211, @133, @231, @231, @133, @206, @206, @247];
		NSData *data = [AllotData AllotDataToData:origin];
        StructAllotData value = (StructAllotData){170, (Byte *)data.bytes, 10, 142, 219, 136};
        kTitleImageString = [self StringFromAllotData:&value];
    }
    return kTitleImageString;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DerisionView.m
// Mortification
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardHeaderView.h"
#import "DerisionView.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @interface FFFTeamCardHeaderView ()
@interface DerisionView ()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) MemoryImageControl *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *numberLabel;
@property (nonatomic,strong) UILabel *numberLabel;

//: @property (nonatomic,strong) UILabel *createTimeLabel;
@property (nonatomic,strong) UILabel *createTimeLabel;

//: @end
@end

//: @implementation FFFTeamCardHeaderView
@implementation DerisionView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self addSubview:self.avatar];
        [self addSubview:self.avatar];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.numberLabel];
        [self addSubview:self.numberLabel];
        //: [self addSubview:self.createTimeLabel];
        [self addSubview:self.createTimeLabel];
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _titleLabel.device_width = _titleLabel.device_width > 200 ? 200 : self.titleLabel.device_width;
    _titleLabel.device_width = _titleLabel.device_width > 200 ? 200 : self.titleLabel.device_width;
    //: _avatar.nim_left = 20;
    _avatar.nim_left = 20;
    //: _avatar.device_top = 25;
    _avatar.device_top = 25;
    //: _titleLabel.nim_left = _avatar.device_right + 10;
    _titleLabel.nim_left = _avatar.device_right + 10;
    //: _titleLabel.device_top = _avatar.device_top;
    _titleLabel.device_top = _avatar.device_top;
    //: _numberLabel.nim_left = _titleLabel.nim_left;
    _numberLabel.nim_left = _titleLabel.nim_left;
    //: _numberLabel.device_bottom = _avatar.device_bottom;
    _numberLabel.device_bottom = _avatar.device_bottom;
    //: _createTimeLabel.nim_left = _numberLabel.device_right + 10;
    _createTimeLabel.nim_left = _numberLabel.device_right + 10;
    //: _createTimeLabel.device_bottom = _numberLabel.device_bottom;
    _createTimeLabel.device_bottom = _numberLabel.device_bottom;
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(size.width, 89);
    return CGSizeMake(size.width, 89);
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)setTeam:(NIMTeam *)team {
- (void)setTeam:(NIMTeam *)team {
    //: _team = team;
    _team = team;

    //avatar
    //: NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    //: [_avatar nim_setImageWithURL:avatarUrl placeholderImage:[UIImage imageNamed:@"head_default"]];
    [_avatar past:avatarUrl display:[UIImage imageNamed:[AllotData kContent_singData]]];

    //title
    //: _titleLabel.text = team.teamName;
    _titleLabel.text = team.teamName;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];

    //teamId
    //: _numberLabel.text = team.teamId;
    _numberLabel.text = team.teamId;
    //: [_numberLabel sizeToFit];
    [_numberLabel sizeToFit];

    //create time
    //: _createTimeLabel.text = [self formatTime:team.createTime];
    _createTimeLabel.text = [self count:team.createTime];
    //: [_createTimeLabel sizeToFit];
    [_createTimeLabel sizeToFit];

    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (NSString*)formatTime:(NSTimeInterval)time {
- (NSString*)count:(NSTimeInterval)time {
    //: NSTimeInterval timestamp = time;
    NSTimeInterval timestamp = time;
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    [dateFormatter setDateFormat:[AllotData kTitleImageString]];
    //: NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    //: if (!dateString.length) {
    if (!dateString.length) {
        //: return @"未知时间创建".nim_localized;
        return [AllotData kName_denseValue].disable;
    }
    //: return [NSString stringWithFormat:@"创建于%@".nim_localized,dateString];
    return [NSString stringWithFormat:[AllotData kNameDeserveItemString].disable,dateString];
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onTouchAvatar:(id)sender
- (void)doSumTool:(id)sender
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onTouchAvatar:)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(doSumTool:)]) {
        //: [_delegate onTouchAvatar:sender];
        [_delegate doSumTool:sender];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (FFFAvatarImageView *)avatar {
- (MemoryImageControl *)avatar {
    //: if (!_avatar) {
    if (!_avatar) {
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatar = [[MemoryImageControl alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [_avatar addTarget:self
        [_avatar addTarget:self
                    //: action:@selector(onTouchAvatar:)
                    action:@selector(doSumTool:)
          //: forControlEvents:UIControlEventTouchUpInside];
          forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:17.f];
        _titleLabel.font = [UIFont systemFontOfSize:17.f];
        //: _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
        _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numberLabel {
- (UILabel *)numberLabel {
    //: if (!_numberLabel) {
    if (!_numberLabel) {
        //: _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _numberLabel.backgroundColor = [UIColor clearColor];
        _numberLabel.backgroundColor = [UIColor clearColor];
        //: _numberLabel.font = [UIFont systemFontOfSize:14.f];
        _numberLabel.font = [UIFont systemFontOfSize:14.f];
        //: _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _numberLabel;
    return _numberLabel;
}

//: - (UILabel *)createTimeLabel {
- (UILabel *)createTimeLabel {
    //: if (!_createTimeLabel) {
    if (!_createTimeLabel) {
        //: _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _createTimeLabel.backgroundColor = [UIColor clearColor];
        _createTimeLabel.backgroundColor = [UIColor clearColor];
        //: _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        //: _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _createTimeLabel;
    return _createTimeLabel;
}

//: @end
@end