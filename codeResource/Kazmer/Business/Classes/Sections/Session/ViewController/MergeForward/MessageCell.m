
#import <Foundation/Foundation.h>

@interface RoyalCharterData : NSObject

@end

@implementation RoyalCharterData

+ (Byte *)RoyalCharterDataToCache:(Byte *)data {
    int dinHeavily = data[0];
    Byte rub = data[1];
    int moderateShould = data[2];
    for (int i = moderateShould; i < moderateShould + dinHeavily; i++) {
        int value = data[i] - rub;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[moderateShould + dinHeavily] = 0;
    return data + moderateShould;
}

+ (NSString *)StringFromRoyalCharterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RoyalCharterDataToCache:data]];
}

//: HH:mm
+ (NSString *)show_clubKey {
    /* static */ NSString *show_clubKey = nil;
    if (!show_clubKey) {
        Byte value[] = {5, 80, 5, 144, 216, 152, 152, 138, 189, 189, 182};
        show_clubKey = [self StringFromRoyalCharterData:value];
    }
    return show_clubKey;
}

//: 00:00
+ (NSString *)dreamOfSexyName {
    /* static */ NSString *dreamOfSexyName = nil;
    if (!dreamOfSexyName) {
        Byte value[] = {5, 1, 8, 99, 140, 154, 181, 55, 49, 49, 59, 49, 49, 11};
        dreamOfSexyName = [self StringFromRoyalCharterData:value];
    }
    return dreamOfSexyName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "MessageCell.h"
//: #import "FFFBadgeView.h"
#import "NameSessionView.h"
//: #import "FFFSessionTextContentView.h"
#import "InfoControl.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESMessageModel.h"
#import "TitleMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface MessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation MessageCell

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
        _timeLab.font = [ButtonKit sheerOption].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [ButtonKit sheerOption].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = [RoyalCharterData dreamOfSexyName];
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(FFFMessageModel *)data {
- (void)accumulationRestore:(CentralProcessingUnitModel *)data {
    //: [super refreshData:data];
    [super accumulationRestore:data];

    //: NTESMessageModel *model = nil;
    TitleMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[TitleMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (TitleMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self green:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: [RoyalCharterData dreamOfSexyName];

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
    if ([bubbleView isKindOfClass:[InfoControl class]]) {
        //: ((FFFSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((InfoControl *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)green:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:[RoyalCharterData show_clubKey]];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end