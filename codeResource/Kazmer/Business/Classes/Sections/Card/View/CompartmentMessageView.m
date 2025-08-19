
#import <Foundation/Foundation.h>

@interface SkyManData : NSObject

@end

@implementation SkyManData

+ (Byte *)SkyManDataToCache:(Byte *)data {
    int originSum = data[0];
    Byte titleDrink = data[1];
    int but = data[2];
    for (int i = but; i < but + originSum; i++) {
        int value = data[i] - titleDrink;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[but + originSum] = 0;
    return data + but;
}

+ (NSString *)StringFromSkyManData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SkyManDataToCache:data]];
}

//: activity_add_friend_my_request
+ (NSString *)app_endText {
    /* static */ NSString *app_endText = nil;
    if (!app_endText) {
        Byte value[] = {30, 22, 10, 244, 242, 176, 126, 92, 202, 234, 119, 121, 138, 127, 140, 127, 138, 143, 117, 119, 122, 122, 117, 124, 136, 127, 123, 132, 122, 117, 131, 143, 117, 136, 123, 135, 139, 123, 137, 138, 33};
        app_endText = [self StringFromSkyManData:value];
    }
    return app_endText;
}

//: activity_add_friend_my_is
+ (NSString *)app_guidancePath {
    /* static */ NSString *app_guidancePath = nil;
    if (!app_guidancePath) {
        Byte value[] = {25, 85, 8, 57, 14, 36, 224, 77, 182, 184, 201, 190, 203, 190, 201, 206, 180, 182, 185, 185, 180, 187, 199, 190, 186, 195, 185, 180, 194, 206, 180, 190, 200, 156};
        app_guidancePath = [self StringFromSkyManData:value];
    }
    return app_guidancePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentMessageView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardVerificationCell.h"
#import "CompartmentMessageView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @interface NTESCardVerificationCell ()<UITextViewDelegate>
@interface CompartmentMessageView ()<UITextViewDelegate>
//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) CommonRow *rowData;
//: @end
@end

//: @implementation NTESCardVerificationCell
@implementation CompartmentMessageView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.userInteractionEnabled = NO;
        self.userInteractionEnabled = NO;

//        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.textColor = [UIColor lightGrayColor];
//        _titleLabel.text = @"填写验证信息";
//        _titleLabel.font = [UIFont systemFontOfSize:14];
//        [self addSubview:_titleLabel];
//        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(15);
//            make.top.mas_offset(-10);
//            make.width.mas_equalTo(100);
//            make.height.mas_equalTo(20);
//        }];

//        UIView *background = [[UIView alloc] init];
//        background.backgroundColor = [UIColor whiteColor];
//        [self addSubview:background];
//        [background mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(0);
//            make.height.mas_equalTo(100);
//        }];
//

        //: NSString *activity_add_friend_my_is = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_is"];
        NSString *activity_add_friend_my_is = [PaintedNaturalLanguageTo exhibit:[SkyManData app_guidancePath]];
        //: NSString *activity_add_friend_my_request = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_request"];
        NSString *activity_add_friend_my_request = [PaintedNaturalLanguageTo exhibit:[SkyManData app_endText]];

        //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
        NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];

        //: _textView = [[UITextView alloc] init];
        _textView = [[UITextView alloc] init];
        //: _textView.delegate = self;
        _textView.delegate = self;
        //: _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        //: _textView.returnKeyType = UIReturnKeyDone;
        _textView.returnKeyType = UIReturnKeyDone;
        //: [self.contentView addSubview:_textView];
        [self.contentView addSubview:_textView];
        //: _textView.layer.masksToBounds = YES;
        _textView.layer.masksToBounds = YES;
        //: _textView.layer.cornerRadius = 6.;
        _textView.layer.cornerRadius = 6.;
        //: _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        //: _textView.layer.borderWidth = 0.7;
        _textView.layer.borderWidth = 0.7;
        //: [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.top.mas_offset(10);
            make.top.mas_offset(10);
            //: make.bottom.mas_offset(-10);
            make.bottom.mas_offset(-10);
        //: }];
        }];


    }
    //: return self;
    return self;
}
//: - (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    //: return YES;
    return YES;
}

//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    //: [NIMUserDefaults standardUserDefaults].tempVerificationInfo = textView.text;
    [OnName user].tempVerificationInfo = textView.text;

    //: if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
    if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
        //在这里做你响应return键的代码
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
        //: return NO; 
        return NO; //这里返回NO，就代表return键值失效，即页面上按下return，不会出现换行，如果为yes，则输入页面会换行
    }
    //: return YES;
    return YES;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView{

    //: _rowData = rowData;
    _rowData = rowData;

}
//: @end
@end