
#import <Foundation/Foundation.h>

@interface StrangeMarkData : NSObject

+ (instancetype)sharedInstance;

//: user
@property (nonatomic, copy) NSString *kTableRegnantPath;

@end

@implementation StrangeMarkData

+ (instancetype)sharedInstance {
    static StrangeMarkData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StrangeMarkDataToCache:(Byte *)data {
    int chef = data[0];
    Byte popHeavily = data[1];
    int sidewalk = data[2];
    for (int i = sidewalk; i < sidewalk + chef; i++) {
        int value = data[i] - popHeavily;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[sidewalk + chef] = 0;
    return data + sidewalk;
}

- (NSString *)StringFromStrangeMarkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StrangeMarkDataToCache:data]];
}

//: user
- (NSString *)kTableRegnantPath {
    if (!_kTableRegnantPath) {
        Byte value[] = {4, 76, 6, 133, 58, 191, 193, 191, 177, 190, 63};
        _kTableRegnantPath = [self StringFromStrangeMarkData:value];
    }
    return _kTableRegnantPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextButtonViewCell.m
// ButtonKit
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamMemberCardHeaderCell.h"
#import "TextButtonViewCell.h"
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "WatchUsrInfoData.h"
#import "WatchUsrInfoData.h"
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"

//: @interface WatchTeamMemberCardHeaderCell()
@interface TextButtonViewCell()

//: @property (nonatomic,strong) WatchAvatarImageView *avatarView;
@property (nonatomic,strong) RecordControl *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation WatchTeamMemberCardHeaderCell
@implementation TextButtonViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.avatarView];
        //: [self.contentView addSubview:self.nickLabel];
        [self.contentView addSubview:self.nickLabel];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView;{
    //: WatchKitInfo *userInfo = rowData.extraInfo[@"user"];
    TingMessage *userInfo = rowData.extraInfo[[StrangeMarkData sharedInstance].kTableRegnantPath];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView message:avatarURL state:userInfo.avatarImage];
    //: self.nickLabel.text = userInfo.showName;
    self.nickLabel.text = userInfo.showName;
    //: [self.nickLabel sizeToFit];
    [self.nickLabel sizeToFit];
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatarView.nim_top = 52.f;
    self.avatarView.nim_top = 52.f;
    //: self.avatarView.nim_centerX = self.nim_width * .5f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    //: self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    //: self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


//: - (WatchAvatarImageView *)avatarView
- (RecordControl *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[WatchAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[RecordControl alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        //: _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    //: return _avatarView;
    return _avatarView;
}

//: - (UILabel *)nickLabel
- (UILabel *)nickLabel
{
    //: if (!_nickLabel) {
    if (!_nickLabel) {
        //: _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        //: _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        //: _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    //: return _nickLabel;
    return _nickLabel;
}


//: @end
@end
