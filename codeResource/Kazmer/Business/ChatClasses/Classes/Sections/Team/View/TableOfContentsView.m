
#import <Foundation/Foundation.h>

@interface ComparisonData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ComparisonData

+ (instancetype)sharedInstance {
    static ComparisonData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ComparisonDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ComparisonDataToCache:(Byte *)data {
    int teachEyebrow = data[0];
    Byte filling = data[1];
    int proved = data[2];
    for (int i = proved; i < proved + teachEyebrow; i++) {
        int value = data[i] + filling;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[proved + teachEyebrow] = 0;
    return data + proved;
}

- (NSString *)StringFromComparisonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComparisonDataToCache:data]];
}

//: _UITableViewCellSeparatorView
- (NSString *)kContentSecurityValue {
    /* static */ NSString *kContentSecurityValue = nil;
    if (!kContentSecurityValue) {
		NSArray<NSString *> *origin = @[@"29", @"70", @"8", @"81", @"180", @"63", @"86", @"255", @"25", @"15", @"3", @"14", @"27", @"28", @"38", @"31", @"16", @"35", @"31", @"49", @"253", @"31", @"38", @"38", @"13", @"31", @"42", @"27", @"44", @"27", @"46", @"41", @"44", @"16", @"35", @"31", @"49", @"3"];
		NSData *data = [ComparisonData ComparisonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSecurityValue = [self StringFromComparisonData:value];
    }
    return kContentSecurityValue;
}

//: icon_accessory_selected
- (NSString *)kText_staffBronzeBanValue {
    /* static */ NSString *kText_staffBronzeBanValue = nil;
    if (!kText_staffBronzeBanValue) {
		NSArray<NSString *> *origin = @[@"23", @"89", @"5", @"106", @"6", @"16", @"10", @"22", @"21", @"6", @"8", @"10", @"10", @"12", @"26", @"26", @"22", @"25", @"32", @"6", @"26", @"12", @"19", @"12", @"10", @"27", @"12", @"11", @"151"];
		NSData *data = [ComparisonData ComparisonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_staffBronzeBanValue = [self StringFromComparisonData:value];
    }
    return kText_staffBronzeBanValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableOfContentsView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCartSetTableViewCell.h"
#import "TableOfContentsView.h"

//: @implementation FFFTeamCartSetTableViewCell
@implementation TableOfContentsView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 8;
        self.layer.cornerRadius = 8;
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        self.layer.cornerRadius = 8;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initMax];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)yaw:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFTeamCartSetTableViewCell";
    static NSString *identifier = @"TableOfContentsView";
    //: FFFTeamCartSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TableOfContentsView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFTeamCartSetTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TableOfContentsView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initMax {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];


    //: self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);

    //: self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;
    self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;

}


//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)with:(NSDictionary *)information {
    //: return 56.f;
    return 56.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[ComparisonData sharedInstance] kContentSecurityValue]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_accessory_selected"];
        _arrowsImageView.image = [UIImage imageNamed:[[ComparisonData sharedInstance] kText_staffBronzeBanValue]];
        //: _arrowsImageView.hidden = YES;
        _arrowsImageView.hidden = YES;
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}





//: @end
@end