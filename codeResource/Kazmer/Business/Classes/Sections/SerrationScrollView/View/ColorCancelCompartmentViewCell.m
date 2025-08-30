
#import <Foundation/Foundation.h>

@interface ProgressData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ProgressData

//: icon_cell_blue_normal
- (NSString *)kNameModelString {
    /* static */ NSString *kNameModelString = nil;
    if (!kNameModelString) {
		NSArray<NSNumber *> *origin = @[@21, @94, @11, @104, @119, @175, @177, @60, @234, @105, @238, @11, @5, @17, @16, @1, @5, @7, @14, @14, @1, @4, @14, @23, @7, @1, @16, @17, @20, @15, @3, @14, @151];
		NSData *data = [ProgressData ProgressDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameModelString = [self StringFromProgressData:value];
    }
    return kNameModelString;
}

//: icon_cell_red_normal
- (NSString *)kNameTapStopPinData {
    /* static */ NSString *kNameTapStopPinData = nil;
    if (!kNameTapStopPinData) {
		NSArray<NSNumber *> *origin = @[@20, @43, @11, @201, @211, @8, @43, @253, @227, @174, @110, @62, @56, @68, @67, @52, @56, @58, @65, @65, @52, @71, @58, @57, @52, @67, @68, @71, @66, @54, @65, @9];
		NSData *data = [ProgressData ProgressDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameTapStopPinData = [self StringFromProgressData:value];
    }
    return kNameTapStopPinData;
}

+ (NSData *)ProgressDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (instancetype)sharedInstance {
    static ProgressData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #A148FF
- (NSString *)kTitleKnowValue {
    /* static */ NSString *kTitleKnowValue = nil;
    if (!kTitleKnowValue) {
		NSArray<NSNumber *> *origin = @[@7, @39, @3, @252, @26, @10, @13, @17, @31, @31, @98];
		NSData *data = [ProgressData ProgressDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleKnowValue = [self StringFromProgressData:value];
    }
    return kTitleKnowValue;
}

- (Byte *)ProgressDataToCache:(Byte *)data {
    int placeStandard = data[0];
    Byte framework = data[1];
    int tapTeam = data[2];
    for (int i = tapTeam; i < tapTeam + placeStandard; i++) {
        int value = data[i] + framework;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[tapTeam + placeStandard] = 0;
    return data + tapTeam;
}

- (NSString *)StringFromProgressData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ProgressDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorCancelCompartmentViewCell.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERColorButtonCell.h"
#import "ColorCancelCompartmentViewCell.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "DisplayCommonTableData.h"
#import "DisplayCommonTableData.h"

//: @interface USERColorButtonCell()
@interface ColorCancelCompartmentViewCell()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) IndexTargetRow *rowData;

//: @end
@end

//: @implementation USERColorButtonCell
@implementation ColorCancelCompartmentViewCell

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: if (self.rowData.cellActionName.length) {
    if (self.rowData.cellActionName.length) {
        //: return [super hitTest:point withEvent:event];
        return [super hitTest:point withEvent:event];
    }
    //: return self;
    return self;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)characterize:(IndexTargetRow *)rowData cuttingEdge:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.view action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.view action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[USERColorButton alloc] initWithFrame:CGRectZero];
        _button = [[AmbagesControl alloc] initWithFrame:CGRectZero];
        //: _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.centerX = self.width * .5f;
    _button.centerX = self.width * .5f;
    //: _button.centerY = self.height * .5f;
    _button.centerY = self.height * .5f;
}

//: @end
@end


//: @implementation USERColorButton : UIButton
@implementation AmbagesControl : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self title];
    }
    //: return self;
    return self;
}

//: - (void)reset{
- (void)title{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ColorButtonCellStyleRed:{
        case ColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [[ProgressData sharedInstance] kNameTapStopPinData];
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: case ColorButtonCellStyleBlue:{
        case ColorButtonCellStyleBlue:{
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = [[ProgressData sharedInstance] kNameModelString];
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage disable:imageNormalName image:[UIColor cell:[[ProgressData sharedInstance] kTitleKnowValue]]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (void)setStyle:(ColorButtonCellStyle)style{
- (void)setStyle:(ColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self title];
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end
