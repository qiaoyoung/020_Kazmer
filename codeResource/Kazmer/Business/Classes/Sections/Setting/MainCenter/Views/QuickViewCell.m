
#import <Foundation/Foundation.h>

typedef struct {
    Byte infoTable;
    Byte *seize;
    unsigned int vid;
} StructCedeData;

@interface CedeData : NSObject

+ (instancetype)sharedInstance;

//: #5D5F66
@property (nonatomic, copy) NSString *show_userText;

//: _UITableViewCellSeparatorView
@property (nonatomic, copy) NSString *dream_transformationData;

//: #A148FF
@property (nonatomic, copy) NSString *main_addFormat;

//: activity_comment_setting_exit
@property (nonatomic, copy) NSString *show_eaterId;

//: icon_me_arrow
@property (nonatomic, copy) NSString *dreamIsolateMsg;

@end

@implementation CedeData

+ (instancetype)sharedInstance {
    static CedeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CedeDataToByte:(StructCedeData *)data {
    for (int i = 0; i < data->vid; i++) {
        data->seize[i] ^= data->infoTable;
    }
    data->seize[data->vid] = 0;
    return data->seize;
}

- (NSString *)StringFromCedeData:(StructCedeData *)data {
    return [NSString stringWithUTF8String:(char *)[self CedeDataToByte:data]];
}

//: #5D5F66
- (NSString *)show_userText {
    if (!_show_userText) {
        StructCedeData value = (StructCedeData){14, (Byte []){45, 59, 74, 59, 72, 56, 56, 213}, 7};
        _show_userText = [self StringFromCedeData:&value];
    }
    return _show_userText;
}

//: #A148FF
- (NSString *)main_addFormat {
    if (!_main_addFormat) {
        StructCedeData value = (StructCedeData){156, (Byte []){191, 221, 173, 168, 164, 218, 218, 150}, 7};
        _main_addFormat = [self StringFromCedeData:&value];
    }
    return _main_addFormat;
}

//: activity_comment_setting_exit
- (NSString *)show_eaterId {
    if (!_show_eaterId) {
        StructCedeData value = (StructCedeData){224, (Byte []){129, 131, 148, 137, 150, 137, 148, 153, 191, 131, 143, 141, 141, 133, 142, 148, 191, 147, 133, 148, 148, 137, 142, 135, 191, 133, 152, 137, 148, 224}, 29};
        _show_eaterId = [self StringFromCedeData:&value];
    }
    return _show_eaterId;
}

//: icon_me_arrow
- (NSString *)dreamIsolateMsg {
    if (!_dreamIsolateMsg) {
        StructCedeData value = (StructCedeData){153, (Byte []){240, 250, 246, 247, 198, 244, 252, 198, 248, 235, 235, 246, 238, 155}, 13};
        _dreamIsolateMsg = [self StringFromCedeData:&value];
    }
    return _dreamIsolateMsg;
}

//: _UITableViewCellSeparatorView
- (NSString *)dream_transformationData {
    if (!_dream_transformationData) {
        StructCedeData value = (StructCedeData){40, (Byte []){119, 125, 97, 124, 73, 74, 68, 77, 126, 65, 77, 95, 107, 77, 68, 68, 123, 77, 88, 73, 90, 73, 92, 71, 90, 126, 65, 77, 95, 231}, 29};
        _dream_transformationData = [self StringFromCedeData:&value];
    }
    return _dream_transformationData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetyTableViewCell.h"
#import "QuickViewCell.h"

//: @implementation NTESSafetyTableViewCell
@implementation QuickViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initTopDoing];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)container:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESSafetyTableViewCell";
    static NSString *identifier = @"QuickViewCell";
    //: NTESSafetyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    QuickViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESSafetyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[QuickViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTopDoing {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
    //: [self.contentView addSubview:self.labGoout];
    [self.contentView addSubview:self.labGoout];
    //: [self.contentView addSubview:self.pushSwitch];
    [self.contentView addSubview:self.pushSwitch];
    //: [self.contentView addSubview:self.labSubtitle];
    [self.contentView addSubview:self.labSubtitle];
    //: self.labGoout.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 56);
    self.labGoout.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 56);
    //: self.iconImageView.frame = CGRectMake(15, 16, 24, 24);
    self.iconImageView.frame = CGRectMake(15, 16, 24, 24);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 0, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 0, 12, 12);

    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 150, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 150, 21);
    //: self.labSubtitle.frame = CGRectMake(self.titleLabel.right-40, 0, self.arrowsImageView.left - self.titleLabel.right+30, 20);
    self.labSubtitle.frame = CGRectMake(self.titleLabel.right-40, 0, self.arrowsImageView.left - self.titleLabel.right+30, 20);

    //: self.pushSwitch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 50, 12, 50, 30);
    self.pushSwitch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 50, 12, 50, 30);
    //: self.titleLabel.centerY = self.arrowsImageView.centerY = self.labSubtitle.centerY = self.iconImageView.centerY;
    self.titleLabel.centerY = self.arrowsImageView.centerY = self.labSubtitle.centerY = self.iconImageView.centerY;

}


//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)cellOf:(NSDictionary *)information {
    //: return 56.f;
    return 56.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([CedeData sharedInstance].dream_transformationData) class]] && view)
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
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[CedeData sharedInstance].dreamIsolateMsg];
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


//: - (UILabel *)labGoout {
- (UILabel *)labGoout {
    //: if (!_labGoout) {
    if (!_labGoout) {
        //: _labGoout = [[UILabel alloc] init];
        _labGoout = [[UILabel alloc] init];
        //: _labGoout.font = [UIFont systemFontOfSize:16.f];
        _labGoout.font = [UIFont systemFontOfSize:16.f];
        //: _labGoout.textColor = [UIColor colorWithAlpha:1.0 red:255/255.0 green:72/255.0 blue:61/255.0];
        _labGoout.textColor = [UIColor ting:1.0 clever:255/255.0 tag:72/255.0 behindOptionBlue:61/255.0];
//        _labGoout.textColor = [UIColor redColor];
        //: _labGoout.textAlignment = NSTextAlignmentCenter;
        _labGoout.textAlignment = NSTextAlignmentCenter;
        //: _labGoout.text = [WatchLanguageManager getTextWithKey:@"activity_comment_setting_exit"];
        _labGoout.text = [PaintedNaturalLanguageTo exhibit:[CedeData sharedInstance].show_eaterId];
        //: _labGoout.hidden = YES;
        _labGoout.hidden = YES;
    }
    //: return _labGoout;
    return _labGoout;
}

//: - (UILabel *)labSubtitle {
- (UILabel *)labSubtitle {
    //: if (!_labSubtitle) {
    if (!_labSubtitle) {
        //: _labSubtitle = [[UILabel alloc] init];
        _labSubtitle = [[UILabel alloc] init];
        //: _labSubtitle.font = [UIFont systemFontOfSize:14.f];
        _labSubtitle.font = [UIFont systemFontOfSize:14.f];
        //: _labSubtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _labSubtitle.textColor = [UIColor min:[CedeData sharedInstance].show_userText];
        //: _labSubtitle.textAlignment = NSTextAlignmentRight;
        _labSubtitle.textAlignment = NSTextAlignmentRight;
        //: _labSubtitle.hidden = YES;
        _labSubtitle.hidden = YES;
    }
    //: return _labSubtitle;
    return _labSubtitle;
}

//: - (UISwitch *)pushSwitch {
- (UISwitch *)pushSwitch {
    //: if (!_pushSwitch) {
    if (!_pushSwitch) {
        //: _pushSwitch = [[UISwitch alloc] init];
        _pushSwitch = [[UISwitch alloc] init];
        //: [_pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#A148FF"]];
        [_pushSwitch setOnTintColor: [UIColor min:[CedeData sharedInstance].main_addFormat]];
        //: _pushSwitch.hidden = YES;
        _pushSwitch.hidden = YES;
    }
    //: return _pushSwitch;
    return _pushSwitch;
}


//: @end
@end
