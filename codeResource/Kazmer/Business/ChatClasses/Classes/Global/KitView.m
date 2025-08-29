
#import <Foundation/Foundation.h>

@interface RatherSeedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RatherSeedData

+ (instancetype)sharedInstance {
    static RatherSeedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RatherSeedDataToData:(NSString *)value {
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

- (Byte *)RatherSeedDataToCache:(Byte *)data {
    int town = data[0];
    Byte failure = data[1];
    int gasCommit = data[2];
    for (int i = gasCommit; i < gasCommit + town; i++) {
        int value = data[i] - failure;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gasCommit + town] = 0;
    return data + gasCommit;
}

- (NSString *)StringFromRatherSeedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RatherSeedDataToCache:data]];
}

//: icon_cell_red_normal
- (NSString *)kTitleCollegeAxString {
    /* static */ NSString *kTitleCollegeAxString = nil;
    if (!kTitleCollegeAxString) {
		NSString *origin = @"14040d8d55497bb751db73e8626d677372636769707063766968637273767165703f";
		NSData *data = [RatherSeedData RatherSeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCollegeAxString = [self StringFromRatherSeedData:value];
    }
    return kTitleCollegeAxString;
}

//: #A148FF
- (NSString *)kNamePromptColonyString {
    /* static */ NSString *kNamePromptColonyString = nil;
    if (!kNamePromptColonyString) {
		NSString *origin = @"071b0cff029ed6d67ce4a4433e5c4c4f536161da";
		NSData *data = [RatherSeedData RatherSeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePromptColonyString = [self StringFromRatherSeedData:value];
    }
    return kNamePromptColonyString;
}

//: icon_cell_blue_normal
- (NSString *)kTitleYoursContent {
    /* static */ NSString *kTitleYoursContent = nil;
    if (!kTitleYoursContent) {
		NSString *origin = @"15560a509c9d4df6b427bfb9c5c4b5b9bbc2c2b5b8c2cbbbb5c4c5c8c3b7c2e9";
		NSData *data = [RatherSeedData RatherSeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleYoursContent = [self StringFromRatherSeedData:value];
    }
    return kTitleYoursContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KitView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitColorButtonCell.h"
#import "KitView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @interface FFFKitColorButtonCell()
@interface KitView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) IndexTargetRow *rowData;

//: @end
@end

//: @implementation FFFKitColorButtonCell
@implementation KitView

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect buttonRect = self.button.frame;
    CGRect buttonRect = self.button.frame;
    //: if(CGRectContainsPoint(buttonRect, point)){
    if(CGRectContainsPoint(buttonRect, point)){
        //: return self;
        return self;
    }
    //: return [super hitTest:point withEvent:event];
    return [super hitTest:point withEvent:event];
}

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[ScaleButton alloc] initWithFrame:CGRectZero];
        //: _button.device_size = [_button sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        _button.device_size = [_button sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.device_centerX = self.device_width * .5f;
    _button.device_centerX = self.device_width * .5f;
    //: _button.device_centerY = self.device_height * .5f;
    _button.device_centerY = self.device_height * .5f;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)characterize:(IndexTargetRow *)rowData cuttingEdge:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.device_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.red action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.device_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.red action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NIMKitColorButton : UIButton
@implementation ScaleButton : UIButton

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: - (void)reset{
- (void)districtManager{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case FFFKitColorButtonCellStyleRed:{
        case FFFKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [[RatherSeedData sharedInstance] kTitleCollegeAxString];
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: case FFFKitColorButtonCellStyleBlue:
        case FFFKitColorButtonCellStyleBlue:
        {
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = [[RatherSeedData sharedInstance] kTitleYoursContent];
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage disable:imageNormalName image:[UIColor cell:[[RatherSeedData sharedInstance] kNamePromptColonyString]]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self districtManager];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(FFFKitColorButtonCellStyle)style{
- (void)setStyle:(FFFKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self districtManager];
}

//: @end
@end