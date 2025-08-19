
#import <Foundation/Foundation.h>

@interface CorporateData : NSObject

@end

@implementation CorporateData

+ (Byte *)CorporateDataToCache:(Byte *)data {
    int mediaLegalMembership = data[0];
    int porterPeace = data[1];
    for (int i = 0; i < mediaLegalMembership / 2; i++) {
        int begin = porterPeace + i;
        int end = porterPeace + mediaLegalMembership - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[porterPeace + mediaLegalMembership] = 0;
    return data + porterPeace;
}

+ (NSString *)StringFromCorporateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CorporateDataToCache:data]];
}  

//: #4B43DE
+ (NSString *)dreamPloyContent {
    /* static */ NSString *dreamPloyContent = nil;
    if (!dreamPloyContent) {
        Byte value[] = {7, 4, 242, 239, 69, 68, 51, 52, 66, 52, 35, 56};
        dreamPloyContent = [self StringFromCorporateData:value];
    }
    return dreamPloyContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamSwitchTableViewCell.h"
#import "TableViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation WatchTeamSwitchTableViewCell
@implementation TableViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#4B43DE"];
        _switcher.onTintColor = [UIColor min:[CorporateData dreamPloyContent]];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(flouts:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)flouts:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(find:colorWhen:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate find:self colorWhen:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end
