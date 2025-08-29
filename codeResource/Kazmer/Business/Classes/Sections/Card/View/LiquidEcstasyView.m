
#import <Foundation/Foundation.h>

NSString *StringFromRangeDetailData(Byte *data);


//: activity_add_friend_my_is
Byte kTitle_colorString[] = {1, 25, 5, 10, 42, 115, 105, 95, 121, 109, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 176};

//: activity_add_friend_my_request
Byte kTitleContentData[] = {4, 30, 12, 155, 147, 151, 57, 97, 196, 144, 235, 11, 116, 115, 101, 117, 113, 101, 114, 95, 121, 109, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 56};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LiquidEcstasyView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERCardVerificationCell.h"
#import "LiquidEcstasyView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @interface USERCardVerificationCell ()<UITextViewDelegate>
@interface LiquidEcstasyView ()<UITextViewDelegate>
//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) IndexTargetRow *rowData;
//: @end
@end

//: @implementation USERCardVerificationCell
@implementation LiquidEcstasyView

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
        NSString *activity_add_friend_my_is = [MakeManager cell:StringFromRangeDetailData(kTitle_colorString)];
        //: NSString *activity_add_friend_my_request = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_request"];
        NSString *activity_add_friend_my_request = [MakeManager cell:StringFromRangeDetailData(kTitleContentData)];

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

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)characterize:(IndexTargetRow *)rowData cuttingEdge:(UITableView *)tableView{

    //: _rowData = rowData;
    _rowData = rowData;

}


//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    //: [NIMUserDefaults standardUserDefaults].tempVerificationInfo = textView.text;
    [TableContext name].tempVerificationInfo = textView.text;

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
//: @end
@end

Byte * RangeDetailDataToCache(Byte *data) {
    int teamModel = data[0];
    int detailCell = data[1];
    int becloud = data[2];
    if (!teamModel) return data + becloud;
    for (int i = 0; i < detailCell / 2; i++) {
        int begin = becloud + i;
        int end = becloud + detailCell - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[becloud + detailCell] = 0;
    return data + becloud;
}

NSString *StringFromRangeDetailData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RangeDetailDataToCache(data)];
}  
