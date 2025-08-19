
#import <Foundation/Foundation.h>

typedef struct {
    Byte electronicTextContainer;
    Byte *status;
    unsigned int table;
} StructEndAddData;

@interface EndAddData : NSObject

+ (instancetype)sharedInstance;

//: ic_search
@property (nonatomic, copy) NSString *mValuePictureFormat;

//: activity_add_friend_my_account
@property (nonatomic, copy) NSString *dream_timeTitle;

//: icon_user_contact_qr
@property (nonatomic, copy) NSString *mainBarIdent;

@end

@implementation EndAddData

+ (instancetype)sharedInstance {
    static EndAddData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EndAddDataToByte:(StructEndAddData *)data {
    for (int i = 0; i < data->table; i++) {
        data->status[i] ^= data->electronicTextContainer;
    }
    data->status[data->table] = 0;
    return data->status;
}

- (NSString *)StringFromEndAddData:(StructEndAddData *)data {
    return [NSString stringWithUTF8String:(char *)[self EndAddDataToByte:data]];
}

//: ic_search
- (NSString *)mValuePictureFormat {
    if (!_mValuePictureFormat) {
        StructEndAddData value = (StructEndAddData){89, (Byte []){48, 58, 6, 42, 60, 56, 43, 58, 49, 222}, 9};
        _mValuePictureFormat = [self StringFromEndAddData:&value];
    }
    return _mValuePictureFormat;
}

//: activity_add_friend_my_account
- (NSString *)dream_timeTitle {
    if (!_dream_timeTitle) {
        StructEndAddData value = (StructEndAddData){203, (Byte []){170, 168, 191, 162, 189, 162, 191, 178, 148, 170, 175, 175, 148, 173, 185, 162, 174, 165, 175, 148, 166, 178, 148, 170, 168, 168, 164, 190, 165, 191, 4}, 30};
        _dream_timeTitle = [self StringFromEndAddData:&value];
    }
    return _dream_timeTitle;
}

//: icon_user_contact_qr
- (NSString *)mainBarIdent {
    if (!_mainBarIdent) {
        StructEndAddData value = (StructEndAddData){136, (Byte []){225, 235, 231, 230, 215, 253, 251, 237, 250, 215, 235, 231, 230, 252, 233, 235, 252, 215, 249, 250, 80}, 20};
        _mainBarIdent = [self StringFromEndAddData:&value];
    }
    return _mainBarIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendCell.h"
#import "ColumnViewCell.h"

//: @implementation NTESContactAddFriendCell
@implementation ColumnViewCell

//: - (void)initSubviews{
- (void)initChiaroscuroQuick{

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
    imageIcon.image = [UIImage imageNamed:[EndAddData sharedInstance].mValuePictureFormat];
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
    NSString *my_account = [PaintedNaturalLanguageTo exhibit:[EndAddData sharedInstance].dream_timeTitle];
    //: NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NIMUserDefaults standardUserDefaults].accountName];
    NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[OnName user].accountName];
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
    [_myQRCodeBtn setImage:[UIImage imageNamed:[EndAddData sharedInstance].mainBarIdent] forState:UIControlStateNormal];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateHighlighted];
    [_myQRCodeBtn setImage:[UIImage imageNamed:[EndAddData sharedInstance].mainBarIdent] forState:UIControlStateHighlighted];
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