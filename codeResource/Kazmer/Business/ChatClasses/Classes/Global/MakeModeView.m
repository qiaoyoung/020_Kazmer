
#import <Foundation/Foundation.h>

@interface ArmData : NSObject

+ (instancetype)sharedInstance;

//: #A148FF
@property (nonatomic, copy) NSString *app_significantTitle;

//: icon_cell_blue_normal
@property (nonatomic, copy) NSString *k_shamTechMsg;

//: icon_cell_red_normal
@property (nonatomic, copy) NSString *appBreezeData;

@end

@implementation ArmData

+ (instancetype)sharedInstance {
    static ArmData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ArmDataToCache:(Byte *)data {
    int palLoud = data[0];
    Byte outsideAggression = data[1];
    int beef = data[2];
    for (int i = beef; i < beef + palLoud; i++) {
        int value = data[i] + outsideAggression;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[beef + palLoud] = 0;
    return data + beef;
}

- (NSString *)StringFromArmData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ArmDataToCache:data]];
}

//: icon_cell_blue_normal
- (NSString *)k_shamTechMsg {
    if (!_k_shamTechMsg) {
        Byte value[] = {21, 70, 11, 89, 141, 82, 122, 99, 58, 89, 1, 35, 29, 41, 40, 25, 29, 31, 38, 38, 25, 28, 38, 47, 31, 25, 40, 41, 44, 39, 27, 38, 149};
        _k_shamTechMsg = [self StringFromArmData:value];
    }
    return _k_shamTechMsg;
}

//: #A148FF
- (NSString *)app_significantTitle {
    if (!_app_significantTitle) {
        Byte value[] = {7, 50, 13, 181, 242, 60, 212, 21, 122, 122, 100, 200, 28, 241, 15, 255, 2, 6, 20, 20, 84};
        _app_significantTitle = [self StringFromArmData:value];
    }
    return _app_significantTitle;
}

//: icon_cell_red_normal
- (NSString *)appBreezeData {
    if (!_appBreezeData) {
        Byte value[] = {20, 34, 3, 71, 65, 77, 76, 61, 65, 67, 74, 74, 61, 80, 67, 66, 61, 76, 77, 80, 75, 63, 74, 85};
        _appBreezeData = [self StringFromArmData:value];
    }
    return _appBreezeData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeModeView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitColorButtonCell.h"
#import "MakeModeView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @interface FFFKitColorButtonCell()
@interface MakeModeView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) CommonRow *rowData;

//: @end
@end

//: @implementation FFFKitColorButtonCell
@implementation MakeModeView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[FixingButton alloc] initWithFrame:CGRectZero];
        //: _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
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
    //: FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.nim_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.checked action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.nim_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.checked action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

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


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.nim_centerX = self.nim_width * .5f;
    _button.nim_centerX = self.nim_width * .5f;
    //: _button.nim_centerY = self.nim_height * .5f;
    _button.nim_centerY = self.nim_height * .5f;
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


//: @implementation NIMKitColorButton : UIButton
@implementation FixingButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self display];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(FFFKitColorButtonCellStyle)style{
- (void)setStyle:(FFFKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self display];
}

//: - (void)reset{
- (void)display{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case FFFKitColorButtonCellStyleRed:{
        case FFFKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [ArmData sharedInstance].appBreezeData;
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
            imageNormalName = [ArmData sharedInstance].k_shamTechMsg;
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage mentalPicture:imageNormalName child:[UIColor min:[ArmData sharedInstance].app_significantTitle]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
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

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end