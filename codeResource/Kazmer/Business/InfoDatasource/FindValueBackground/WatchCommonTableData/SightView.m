
#import <Foundation/Foundation.h>

@interface ParishData : NSObject

@end

@implementation ParishData

+ (Byte *)ParishDataToCache:(Byte *)data {
    int mount = data[0];
    Byte baseballTeam = data[1];
    int render = data[2];
    for (int i = render; i < render + mount; i++) {
        int value = data[i] + baseballTeam;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[render + mount] = 0;
    return data + render;
}

+ (NSString *)StringFromParishData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ParishDataToCache:data]];
}

//: #A148FF
+ (NSString *)k_agedNameKey {
    /* static */ NSString *k_agedNameKey = nil;
    if (!k_agedNameKey) {
        Byte value[] = {7, 23, 8, 39, 132, 70, 218, 77, 12, 42, 26, 29, 33, 47, 47, 213};
        k_agedNameKey = [self StringFromParishData:value];
    }
    return k_agedNameKey;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchKitSwitcherCell.h"
#import "SightView.h"
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface WatchKitSwitcherCell ()
@interface SightView ()

//: @end
@end

//: @implementation WatchKitSwitcherCell
@implementation SightView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor min:[ParishData k_agedNameKey]];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.checked action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.checked action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end
