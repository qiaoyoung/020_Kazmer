// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageFlipMax.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSearchLocalHistoryObject.h"
#import "MessageFlipMax.h"
//: #import "USERSearchCellLayoutConstant.h"
#import "USERSearchCellLayoutConstant.h"

//: @implementation USERSearchLocalHistoryObject
@implementation MessageFlipMax

//: - (instancetype)initWithMessage:(NIMMessage *)message{
- (instancetype)initWithTeamStreetwiseMessage:(NIMMessage *)message{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _message = message;
        _message = message;
        //: [self calculateHistoryItemHeight];
        [self to];
    }
    //: return self;
    return self;
}


//: - (void)calculateHistoryItemHeight{
- (void)to{
    //: NSString *content = _message.text;
    NSString *content = _message.text;
    //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: label.font = [UIFont systemFontOfSize:SearchCellContentFontSize];
    label.font = [UIFont systemFontOfSize:m_byMessage];
    //: label.text = content;
    label.text = content;
    //: CGSize labelSize = [label sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    CGSize labelSize = [label sizeThatFits:CGSizeMake(kHighFormat * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: CGFloat labelHeight = ((SearchCellContentMinHeight) > (labelSize.height) ? (SearchCellContentMinHeight) : (labelSize.height));
    CGFloat labelHeight = ((dream_dataFormat) > (labelSize.height) ? (dream_dataFormat) : (labelSize.height));
    //: CGFloat height = labelHeight + SearchCellContentTop + SearchCellContentBottom;
    CGFloat height = labelHeight + appTapKey + user_maxStr;
    //: _uiHeight = height;
    _uiHeight = height;
}

//: @end
@end