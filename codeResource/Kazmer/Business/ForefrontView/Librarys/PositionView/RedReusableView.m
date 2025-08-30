
#import <Foundation/Foundation.h>

@interface RentalData : NSObject

@end

@implementation RentalData

+ (NSData *)RentalDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)RentalDataToCache:(Byte *)data {
    int huh = data[0];
    Byte seatConsist = data[1];
    int knowTarget = data[2];
    for (int i = knowTarget; i < knowTarget + huh; i++) {
        int value = data[i] - seatConsist;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[knowTarget + huh] = 0;
    return data + knowTarget;
}

+ (NSString *)StringFromRentalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RentalDataToCache:data]];
}

//: bg-gradient
+ (NSString *)kNameWheatDefineData {
    /* static */ NSString *kNameWheatDefineData = nil;
    if (!kNameWheatDefineData) {
		NSArray<NSString *> *origin = @[@"11", @"59", @"11", @"58", @"56", @"174", @"63", @"206", @"47", @"85", @"66", @"157", @"162", @"104", @"162", @"173", @"156", @"159", @"164", @"160", @"169", @"175", @"173"];
		NSData *data = [RentalData RentalDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameWheatDefineData = [self StringFromRentalData:value];
    }
    return kNameWheatDefineData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedReusableView.m
//  RowView
//
//  Created by aier on 15-3-22.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SDCollectionViewCell.h"
#import "RedReusableView.h"
//: #import "UIView+SDExtension.h"
#import "UIView+SizeReplyExtension.h"

/*
 
 *********************************************************************************
 *
 * 🌟🌟🌟 新建SDCycleScrollView交流QQ群：185534916 🌟🌟🌟
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我们，我们会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:GSD_iOS
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios
 *
 * 另（我的自动布局库SDAutoLayout）：
 *  一行代码搞定自动布局！支持Cell和Tableview高度自适应，Label和ScrollView内容自适应，致力于
 *  做最简单易用的AutoLayout库。
 * 视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * 用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 * GitHub：https://github.com/gsdios/SDAutoLayout
 *********************************************************************************
 
 */





//: @interface SDCollectionViewCell ()
@interface RedReusableView ()

//: @property (nonatomic, strong) UIImageView *gradientImageView;
@property (nonatomic, strong) UIImageView *gradientImageView;

//: @end
@end

//: @implementation SDCollectionViewCell
@implementation RedReusableView
{
    //: __weak UILabel *_titleLabel;
    __weak UILabel *_titleLabel;
}


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self setupImageView];
        [self showTextTool];
        //: [self setupTitleLabel];
        [self tick];
    }

    //: return self;
    return self;
}

//: - (void)setTitleLabelBackgroundColor:(UIColor *)titleLabelBackgroundColor
- (void)setTitleLabelBackgroundColor:(UIColor *)titleLabelBackgroundColor
{
    //: _titleLabelBackgroundColor = titleLabelBackgroundColor;
    _titleLabelBackgroundColor = titleLabelBackgroundColor;
    //: _titleLabel.backgroundColor = titleLabelBackgroundColor;
    _titleLabel.backgroundColor = titleLabelBackgroundColor;
}

//: - (void)setTitleLabelTextColor:(UIColor *)titleLabelTextColor
- (void)setTitleLabelTextColor:(UIColor *)titleLabelTextColor
{
    //: _titleLabelTextColor = titleLabelTextColor;
    _titleLabelTextColor = titleLabelTextColor;
    //: _titleLabel.textColor = titleLabelTextColor;
    _titleLabel.textColor = titleLabelTextColor;
}

//: - (void)setTitleLabelTextFont:(UIFont *)titleLabelTextFont
- (void)setTitleLabelTextFont:(UIFont *)titleLabelTextFont
{
    //: _titleLabelTextFont = titleLabelTextFont;
    _titleLabelTextFont = titleLabelTextFont;
    //: _titleLabel.font = titleLabelTextFont;
    _titleLabel.font = titleLabelTextFont;
}

//: - (void)setupImageView
- (void)showTextTool
{
    //: UIImageView *imageView = [[UIImageView alloc] init];
    UIImageView *imageView = [[UIImageView alloc] init];
    //: _imageView = imageView;
    _imageView = imageView;
    //: [self.contentView addSubview:imageView];
    [self.contentView addSubview:imageView];


    //: self.gradientImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg-gradient"]];
    self.gradientImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[RentalData kNameWheatDefineData]]];
    //: self.gradientImageView.hidden = YES;
    self.gradientImageView.hidden = YES;
    //: [self.contentView addSubview:self.gradientImageView];
    [self.contentView addSubview:self.gradientImageView];

}

//: - (void)setShowGradient:(BOOL)showGradient
- (void)setShowGradient:(BOOL)showGradient
{
    //: _showGradient = showGradient;
    _showGradient = showGradient;
    //: self.gradientImageView.hidden = !showGradient;
    self.gradientImageView.hidden = !showGradient;
}

//: - (void)setupTitleLabel
- (void)tick
{
    //: UILabel *titleLabel = [[UILabel alloc] init];
    UILabel *titleLabel = [[UILabel alloc] init];
    //: _titleLabel = titleLabel;
    _titleLabel = titleLabel;
    //: _titleLabel.hidden = YES;
    _titleLabel.hidden = YES;
    //: [self.contentView addSubview:titleLabel];
    [self.contentView addSubview:titleLabel];
}

//: - (void)setTitle:(NSString *)title
- (void)setTitle:(NSString *)title
{
    //: _title = [title copy];
    _title = [title copy];
    //: _titleLabel.text = [NSString stringWithFormat:@"   %@", title];
    _titleLabel.text = [NSString stringWithFormat:@"   %@", title];
}


//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _imageView.frame = self.bounds;
    _imageView.frame = self.bounds;

    //: CGFloat titleLabelW = self.sd_width;
    CGFloat titleLabelW = self.sd_width;
    //: CGFloat titleLabelH = _titleLabelHeight;
    CGFloat titleLabelH = _titleLabelHeight;
    //: CGFloat titleLabelX = 0;
    CGFloat titleLabelX = 0;
    //: CGFloat titleLabelY = self.sd_height - titleLabelH;
    CGFloat titleLabelY = self.sd_height - titleLabelH;
    //: _titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    _titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    //: _titleLabel.hidden = !_titleLabel.text;
    _titleLabel.hidden = !_titleLabel.text;

    //: self.gradientImageView.frame = CGRectMake(0, self.sd_height-90, self.sd_width, 90);
    self.gradientImageView.frame = CGRectMake(0, self.sd_height-90, self.sd_width, 90);
}

//: @end
@end