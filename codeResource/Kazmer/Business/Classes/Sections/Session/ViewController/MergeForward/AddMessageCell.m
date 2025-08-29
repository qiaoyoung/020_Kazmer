
#import <Foundation/Foundation.h>

@interface ShallowData : NSObject

@end

@implementation ShallowData

+ (Byte *)ShallowDataToCache:(Byte *)data {
    int architectRecent = data[0];
    Byte nous = data[1];
    int racyLoop = data[2];
    for (int i = racyLoop; i < racyLoop + architectRecent; i++) {
        int value = data[i] - nous;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[racyLoop + architectRecent] = 0;
    return data + racyLoop;
}

+ (NSString *)StringFromShallowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShallowDataToCache:data]];
}

//: HH:mm
+ (NSString *)kText_playerValue {
    /* static */ NSString *kText_playerValue = nil;
    if (!kText_playerValue) {
        Byte value[] = {5, 23, 3, 95, 95, 81, 132, 132, 215};
        kText_playerValue = [self StringFromShallowData:value];
    }
    return kText_playerValue;
}

//: 00:00
+ (NSString *)kName_basementData {
    /* static */ NSString *kName_basementData = nil;
    if (!kName_basementData) {
        Byte value[] = {5, 81, 7, 50, 25, 19, 191, 129, 129, 139, 129, 129, 182};
        kName_basementData = [self StringFromShallowData:value];
    }
    return kName_basementData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddMessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERMergeMessageCell.h"
#import "AddMessageCell.h"
//: #import "FFFBadgeView.h"
#import "CenterStandardView.h"
//: #import "FFFSessionTextContentView.h"
#import "ToControl.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERMessageModel.h"
#import "GradePointAverageMessageModel.h"

//: @interface USERMergeMessageCell ()
@interface AddMessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation USERMergeMessageCell
@implementation AddMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [MyUserKit sharedKit].config.nickFont;
        _timeLab.font = [Mortification text].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [Mortification text].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = [ShallowData kName_basementData];
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(FFFMessageModel *)data {
- (void)pin:(CleanDoing *)data {
    //: [super refreshData:data];
    [super pin:data];

    //: USERMessageModel *model = nil;
    GradePointAverageMessageModel *model = nil;
    //: if ([data isKindOfClass:[USERMessageModel class]]) {
    if ([data isKindOfClass:[GradePointAverageMessageModel class]]) {
        //: model = (USERMessageModel *)data;
        model = (GradePointAverageMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self time:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: [ShallowData kName_basementData];

        //: self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[ToControl class]]) {
        //: ((FFFSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((ToControl *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)time:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:[ShallowData kText_playerValue]];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end