
#import <Foundation/Foundation.h>

@interface StateData : NSObject

+ (instancetype)sharedInstance;

//: #999999
@property (nonatomic, copy) NSString *mMarkIdent;

//: #333333
@property (nonatomic, copy) NSString *noti_admitValue;

//: #E9ECF0
@property (nonatomic, copy) NSString *dream_poolName;

//: time
@property (nonatomic, copy) NSString *dream_nameStr;

//: content
@property (nonatomic, copy) NSString *show_garlicUrl;

//: MM-dd HH:mm
@property (nonatomic, copy) NSString *showCloudPointeUrl;

//: title
@property (nonatomic, copy) NSString *k_becomeContainerData;

@end

@implementation StateData

+ (instancetype)sharedInstance {
    static StateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StateDataToCache:(Byte *)data {
    int dominateParish = data[0];
    int cornerGarlic = data[1];
    for (int i = 0; i < dominateParish / 2; i++) {
        int begin = cornerGarlic + i;
        int end = cornerGarlic + dominateParish - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[cornerGarlic + dominateParish] = 0;
    return data + cornerGarlic;
}

- (NSString *)StringFromStateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StateDataToCache:data]];
}  

//: content
- (NSString *)show_garlicUrl {
    if (!_show_garlicUrl) {
        Byte value[] = {7, 8, 82, 93, 152, 4, 134, 129, 116, 110, 101, 116, 110, 111, 99, 46};
        _show_garlicUrl = [self StringFromStateData:value];
    }
    return _show_garlicUrl;
}

//: #E9ECF0
- (NSString *)dream_poolName {
    if (!_dream_poolName) {
        Byte value[] = {7, 6, 155, 89, 57, 84, 48, 70, 67, 69, 57, 69, 35, 245};
        _dream_poolName = [self StringFromStateData:value];
    }
    return _dream_poolName;
}

//: MM-dd HH:mm
- (NSString *)showCloudPointeUrl {
    if (!_showCloudPointeUrl) {
        Byte value[] = {11, 11, 189, 71, 120, 137, 176, 8, 100, 78, 138, 109, 109, 58, 72, 72, 32, 100, 100, 45, 77, 77, 64};
        _showCloudPointeUrl = [self StringFromStateData:value];
    }
    return _showCloudPointeUrl;
}

//: time
- (NSString *)dream_nameStr {
    if (!_dream_nameStr) {
        Byte value[] = {4, 12, 97, 167, 108, 9, 221, 35, 93, 87, 228, 18, 101, 109, 105, 116, 36};
        _dream_nameStr = [self StringFromStateData:value];
    }
    return _dream_nameStr;
}

//: #999999
- (NSString *)mMarkIdent {
    if (!_mMarkIdent) {
        Byte value[] = {7, 7, 10, 39, 153, 8, 167, 57, 57, 57, 57, 57, 57, 35, 232};
        _mMarkIdent = [self StringFromStateData:value];
    }
    return _mMarkIdent;
}

//: title
- (NSString *)k_becomeContainerData {
    if (!_k_becomeContainerData) {
        Byte value[] = {5, 6, 163, 64, 103, 99, 101, 108, 116, 105, 116, 22};
        _k_becomeContainerData = [self StringFromStateData:value];
    }
    return _k_becomeContainerData;
}

//: #333333
- (NSString *)noti_admitValue {
    if (!_noti_admitValue) {
        Byte value[] = {7, 4, 87, 254, 51, 51, 51, 51, 51, 51, 35, 175};
        _noti_admitValue = [self StringFromStateData:value];
    }
    return _noti_admitValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListCell.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamAnnouncementListCell.h"
#import "ToShortListView.h"
//: #import "WatchUsrInfoData.h"
#import "WatchUsrInfoData.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"
//: #import "M80AttributedLabel.h"
#import "QuickNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"

//: @interface WatchTeamAnnouncementListCell ()
@interface ToShortListView ()
//: @property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *titleLabel;
//: @property (strong, nonatomic) UILabel *infoLabel;
@property (strong, nonatomic) UILabel *infoLabel;
//: @property (strong, nonatomic) UIView *line;
@property (strong, nonatomic) UIView *line;
//: @property (strong, nonatomic) M80AttributedLabel *contentLabel;
@property (strong, nonatomic) QuickNameView *contentLabel;

//: @end
@end

//: @implementation WatchTeamAnnouncementListCell
@implementation ToShortListView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.accessoryType = UITableViewCellAccessoryNone;
//        self.layer.cornerRadius = 10;

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];

        //: _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        //: _infoLabel.font = [UIFont systemFontOfSize:12.f];
        _infoLabel.font = [UIFont systemFontOfSize:12.f];
        //: _infoLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _infoLabel.textColor = [UIColor min:[StateData sharedInstance].mMarkIdent];
        //: [self.contentView addSubview:_infoLabel];
        [self.contentView addSubview:_infoLabel];

        //: _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        //: _line.backgroundColor = [UIColor colorWithHexString:@"#E9ECF0"];
        _line.backgroundColor = [UIColor min:[StateData sharedInstance].dream_poolName];
        //: _line.hidden = YES;
        _line.hidden = YES;
        //: [self.contentView addSubview:_line];
        [self.contentView addSubview:_line];

        //: _contentLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        _contentLabel = [[QuickNameView alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _contentLabel.textColor = [UIColor min:[StateData sharedInstance].noti_admitValue];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: _contentLabel.font = [UIFont systemFontOfSize:14.f];
        _contentLabel.font = [UIFont systemFontOfSize:14.f];
        //: _contentLabel.autoDetectLinks = YES;
        _contentLabel.autoDetectLinks = YES;
        //: _contentLabel.underLineForLink = YES;
        _contentLabel.underLineForLink = YES;
        //: _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _contentLabel.backgroundColor = [UIColor clearColor];
        _contentLabel.backgroundColor = [UIColor clearColor];
        //: _contentLabel.isShowTextSelection = YES;
        _contentLabel.isShowTextSelection = YES;
        //: _contentLabel.selectable = YES;
        _contentLabel.selectable = YES;

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _contentLabel.selectBlock = ^(WatchMediaItem *item) {
        _contentLabel.selectBlock = ^(InfoMakeBar *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            //: if (text.length) {
            if (text.length) {
                //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                //: [pasteboard setString:text];
                [pasteboard setString:text];
            }
        //: };
        };

        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];

        //: [_contentLabel new_genMediaButton];
        [_contentLabel ondSession];

    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NSDictionary *)data nick:(NSString *)nick{
- (void)bubble:(NSDictionary *)data month:(NSString *)nick{
    //: NSString *title = [data objectForKey:@"title"];
    NSString *title = [data objectForKey:[StateData sharedInstance].k_becomeContainerData];
    //: _titleLabel.text = title;
    _titleLabel.text = title;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];
    //: _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);
    _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);

    //: _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);
    _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);

    //: _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);
    _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);

    //: NSString *content = [data objectForKey:@"content"];
    NSString *content = [data objectForKey:[StateData sharedInstance].show_garlicUrl];
    //: [_contentLabel nim_setText:content];
    [_contentLabel stay:content];
    //: [_contentLabel sizeToFit];
    [_contentLabel sizeToFit];

    //: _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    //: NSNumber *time = [data objectForKey:@"time"];
    NSNumber *time = [data objectForKey:[StateData sharedInstance].dream_nameStr];
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"MM-dd HH:mm"];
    [dateFormatter setDateFormat:[StateData sharedInstance].showCloudPointeUrl];
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    //: NSString *dataString = [dateFormatter stringFromDate:date];
    NSString *dataString = [dateFormatter stringFromDate:date];
    //: _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
    _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
}

//: + (CGFloat)cellHeight:(NSString *)title
+ (CGFloat)faculty:(NSString *)title
{
    //: CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;

    //: return 85 + size.height + 20;
    return 85 + size.height + 20;
}

//: @end
@end
