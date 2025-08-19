
#import <Foundation/Foundation.h>

typedef struct {
    Byte meat;
    Byte *counselingNecessary;
    unsigned int foam;
} StructCompanyData;

@interface CompanyData : NSObject

@end

@implementation CompanyData

+ (Byte *)CompanyDataToByte:(StructCompanyData *)data {
    for (int i = 0; i < data->foam; i++) {
        data->counselingNecessary[i] ^= data->meat;
    }
    data->counselingNecessary[data->foam] = 0;
    return data->counselingNecessary;
}

+ (NSString *)StringFromCompanyData:(StructCompanyData *)data {
    return [NSString stringWithUTF8String:(char *)[self CompanyDataToByte:data]];
}

//: #FF483D
+ (NSString *)mainColorCurMessage {
    /* static */ NSString *mainColorCurMessage = nil;
    if (!mainColorCurMessage) {
        StructCompanyData value = (StructCompanyData){47, (Byte []){12, 105, 105, 27, 23, 28, 107, 111}, 7};
        mainColorCurMessage = [self StringFromCompanyData:&value];
    }
    return mainColorCurMessage;
}

//: ic-waring
+ (NSString *)m_pictureId {
    /* static */ NSString *m_pictureId = nil;
    if (!m_pictureId) {
        StructCompanyData value = (StructCompanyData){108, (Byte []){5, 15, 65, 27, 13, 30, 5, 2, 11, 172}, 9};
        m_pictureId = [self StringFromCompanyData:&value];
    }
    return m_pictureId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "ZoneModelControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"

//: @implementation NTESTextHeaderView
@implementation ZoneModelControl

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor min:[CompanyData mainColorCurMessage]];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CompanyData m_pictureId]]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setNetIncomeColor:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end