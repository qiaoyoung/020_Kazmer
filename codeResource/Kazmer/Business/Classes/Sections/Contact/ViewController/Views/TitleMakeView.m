
#import <Foundation/Foundation.h>

NSString *StringFromJointData(Byte *data);


//: activity_add_friend_my_account
Byte kText_viewString[] = {23, 30, 12, 13, 77, 84, 250, 149, 14, 14, 211, 70, 41, 109, 111, 128, 117, 130, 117, 128, 133, 107, 109, 112, 112, 107, 114, 126, 117, 113, 122, 112, 107, 121, 133, 107, 109, 111, 111, 123, 129, 122, 128, 127};

//: icon_user_contact_qr
Byte kTextKnowTopValue[] = {31, 20, 46, 14, 7, 119, 149, 211, 227, 246, 82, 117, 138, 65, 151, 145, 157, 156, 141, 163, 161, 147, 160, 141, 145, 157, 156, 162, 143, 145, 162, 141, 159, 160, 111};

//: ic_search
Byte kNameDetailString[] = {83, 9, 94, 7, 76, 254, 192, 199, 193, 189, 209, 195, 191, 208, 193, 198, 38};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMakeView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactAddFriendCell.h"
#import "TitleMakeView.h"

//: @implementation USERContactAddFriendCell
@implementation TitleMakeView

//: - (void)initSubviews{
- (void)initSendSubviews{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backView = [[UIView alloc] init];
    UIView *backView = [[UIView alloc] init];
    //: backView.backgroundColor = [UIColor whiteColor];
    backView.backgroundColor = [UIColor whiteColor];
    //: backView.layer.masksToBounds = YES;
    backView.layer.masksToBounds = YES;
    //: backView.layer.cornerRadius = 4.6f;
    backView.layer.cornerRadius = 4.6f;
    //: [self addSubview:backView];
    [self addSubview:backView];
    //: [backView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);

    //: }];
    }];

    //: UIImageView *imageIcon = [[UIImageView alloc] init];
    UIImageView *imageIcon = [[UIImageView alloc] init];
    //: imageIcon.image = [UIImage imageNamed:@"ic_search"];
    imageIcon.image = [UIImage imageNamed:StringFromJointData(kNameDetailString)];
    //: [backView addSubview:imageIcon];
    [backView addSubview:imageIcon];
    //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(8);
        make.left.mas_offset(8);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.height.mas_equalTo(23);
        make.width.height.mas_equalTo(23);
    //: }];
    }];

    //: _textField = [[UITextField alloc] init];
    _textField = [[UITextField alloc] init];
    //: [backView addSubview:_textField];
    [backView addSubview:_textField];
    //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);

    //: }];
    }];

    //: NSString *my_account = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_account"];
    NSString *my_account = [MakeManager cell:StringFromJointData(kText_viewString)];
    //: NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NIMUserDefaults standardUserDefaults].accountName];
    NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[TableContext name].accountName];
    //: UILabel *titleLable = [[UILabel alloc] init];
    UILabel *titleLable = [[UILabel alloc] init];
    //: titleLable.font = [UIFont systemFontOfSize:15];
    titleLable.font = [UIFont systemFontOfSize:15];
    //: titleLable.textColor = [UIColor blackColor];
    titleLable.textColor = [UIColor blackColor];
    //: titleLable.text = myCodeStr;
    titleLable.text = myCodeStr;
    //: [titleLable sizeToFit];
    [titleLable sizeToFit];
    //: [self addSubview:titleLable];
    [self addSubview:titleLable];
    //: [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
    [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        //: make.centerX.mas_offset(0).mas_offset(-25);
        make.centerX.mas_offset(0).mas_offset(-25);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];


    //: _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateNormal];
    [_myQRCodeBtn setImage:[UIImage imageNamed:StringFromJointData(kTextKnowTopValue)] forState:UIControlStateNormal];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateHighlighted];
    [_myQRCodeBtn setImage:[UIImage imageNamed:StringFromJointData(kTextKnowTopValue)] forState:UIControlStateHighlighted];
    //: [self addSubview:_myQRCodeBtn];
    [self addSubview:_myQRCodeBtn];
    //: [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
    [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(titleLable);
        make.centerY.mas_equalTo(titleLable);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];



}

//: @end
@end

Byte * JointDataToCache(Byte *data) {
    int content = data[0];
    int tap = data[1];
    Byte step = data[2];
    int spectacles = data[3];
    if (!content) return data + spectacles;
    for (int i = spectacles; i < spectacles + tap; i++) {
        int value = data[i] - step;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[spectacles + tap] = 0;
    return data + spectacles;
}

NSString *StringFromJointData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)JointDataToCache(data)];
}
