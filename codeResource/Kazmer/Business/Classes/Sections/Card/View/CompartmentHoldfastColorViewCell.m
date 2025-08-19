
#import <Foundation/Foundation.h>

@interface FastData : NSObject

+ (instancetype)sharedInstance;

//: #A148FF
@property (nonatomic, copy) NSString *m_closeUrl;

//: icon_cell_red_normal
@property (nonatomic, copy) NSString *app_userData;

//: icon_cell_blue_normal
@property (nonatomic, copy) NSString *mManKey;

@end

@implementation FastData

+ (instancetype)sharedInstance {
    static FastData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FastDataToCache:(Byte *)data {
    int paterfamilias = data[0];
    int up = data[1];
    for (int i = 0; i < paterfamilias / 2; i++) {
        int begin = up + i;
        int end = up + paterfamilias - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[up + paterfamilias] = 0;
    return data + up;
}

- (NSString *)StringFromFastData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FastDataToCache:data]];
}  

//: icon_cell_red_normal
- (NSString *)app_userData {
    if (!_app_userData) {
        Byte value[] = {20, 2, 108, 97, 109, 114, 111, 110, 95, 100, 101, 114, 95, 108, 108, 101, 99, 95, 110, 111, 99, 105, 175};
        _app_userData = [self StringFromFastData:value];
    }
    return _app_userData;
}

//: #A148FF
- (NSString *)m_closeUrl {
    if (!_m_closeUrl) {
        Byte value[] = {7, 11, 99, 33, 5, 39, 172, 84, 131, 175, 4, 70, 70, 56, 52, 49, 65, 35, 96};
        _m_closeUrl = [self StringFromFastData:value];
    }
    return _m_closeUrl;
}

//: icon_cell_blue_normal
- (NSString *)mManKey {
    if (!_mManKey) {
        Byte value[] = {21, 2, 108, 97, 109, 114, 111, 110, 95, 101, 117, 108, 98, 95, 108, 108, 101, 99, 95, 110, 111, 99, 105, 128};
        _mManKey = [self StringFromFastData:value];
    }
    return _mManKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentHoldfastColorViewCell.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESColorButtonCell.h"
#import "CompartmentHoldfastColorViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"

//: @interface NTESColorButtonCell()
@interface CompartmentHoldfastColorViewCell()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) CommonRow *rowData;

//: @end
@end

//: @implementation NTESColorButtonCell
@implementation CompartmentHoldfastColorViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NTESColorButton alloc] initWithFrame:CGRectZero];
        _button = [[ModeButton alloc] initWithFrame:CGRectZero];
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

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.remote action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.remote action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

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

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.centerX = self.width * .5f;
    _button.centerX = self.width * .5f;
    //: _button.centerY = self.height * .5f;
    _button.centerY = self.height * .5f;
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NTESColorButton : UIButton
@implementation ModeButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self icon];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(ColorButtonCellStyle)style{
- (void)setStyle:(ColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self icon];
}

//: - (void)reset{
- (void)icon{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ColorButtonCellStyleRed:{
        case ColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [FastData sharedInstance].app_userData;
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: case ColorButtonCellStyleBlue:{
        case ColorButtonCellStyleBlue:{
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = [FastData sharedInstance].mManKey;
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage mentalPicture:imageNormalName child:[UIColor min:[FastData sharedInstance].m_closeUrl]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
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

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end
