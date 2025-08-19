
#import <Foundation/Foundation.h>

NSString *StringFromHostaImageData(Byte *data);        


//: login_bg
Byte noti_keyPath[] = {68, 8, 68, 13, 240, 203, 50, 114, 224, 137, 192, 150, 202, 40, 43, 35, 37, 42, 27, 30, 35, 142};

//: #5D5F66
Byte showDestinationMessage[] = {93, 7, 17, 8, 59, 23, 219, 109, 18, 36, 51, 36, 53, 37, 37, 142};

//: 中东小王子
Byte noti_educationalTextCloudMsg[] = {72, 15, 70, 13, 30, 215, 133, 235, 253, 135, 137, 26, 23, 158, 114, 103, 158, 114, 86, 159, 106, 73, 161, 72, 69, 159, 103, 74, 74};

//: #333333
Byte mainPlaceMsg[] = {98, 7, 86, 9, 176, 65, 226, 93, 147, 205, 221, 221, 221, 221, 221, 221, 170};

//: 来一个摇滚表演
Byte notiManShouldBookTitle[] = {50, 21, 22, 10, 115, 86, 231, 56, 76, 155, 208, 135, 143, 206, 162, 106, 206, 162, 148, 208, 123, 113, 208, 165, 132, 210, 139, 146, 208, 166, 126, 121};

//: login_logo
Byte show_patrolText[] = {94, 10, 11, 10, 91, 143, 149, 72, 116, 246, 97, 100, 92, 94, 99, 84, 97, 100, 92, 100, 119};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EdgeReusableView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "EdgeReusableView.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation EdgeReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self upwardBottom];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)upwardBottom
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:StringFromHostaImageData(noti_keyPath)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor min:StringFromHostaImageData(mainPlaceMsg)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromHostaImageData(notiManShouldBookTitle);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromHostaImageData(show_patrolText)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor min:StringFromHostaImageData(showDestinationMessage)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromHostaImageData(noti_educationalTextCloudMsg);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte * HostaImageDataToCache(Byte *data) {
    int patience = data[0];
    int nuclearCart = data[1];
    Byte loser = data[2];
    int erase = data[3];
    if (!patience) return data + erase;
    for (int i = erase; i < erase + nuclearCart; i++) {
        int value = data[i] + loser;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[erase + nuclearCart] = 0;
    return data + erase;
}

NSString *StringFromHostaImageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HostaImageDataToCache(data)];
}
