// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleImage.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSearchLocalHistoryObject.h"
#import "BubbleImage.h"
//: #import "NTESSearchCellLayoutConstant.h"
#import "NTESSearchCellLayoutConstant.h"

//: @implementation NTESSearchLocalHistoryObject
@implementation BubbleImage

//: - (instancetype)initWithMessage:(NIMMessage *)message{
- (instancetype)initWithContainer:(NIMMessage *)message{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _message = message;
        _message = message;
        //: [self calculateHistoryItemHeight];
        [self labelHighnessHeight];
    }
    //: return self;
    return self;
}


//: - (void)calculateHistoryItemHeight{
- (void)labelHighnessHeight{
    //: NSString *content = _message.text;
    NSString *content = _message.text;
    //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: label.font = [UIFont systemFontOfSize:SearchCellContentFontSize];
    label.font = [UIFont systemFontOfSize:showButtonTitle];
    //: label.text = content;
    label.text = content;
    //: CGSize labelSize = [label sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    CGSize labelSize = [label sizeThatFits:CGSizeMake(noti_sizeStr * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: CGFloat labelHeight = ((SearchCellContentMinHeight) > (labelSize.height) ? (SearchCellContentMinHeight) : (labelSize.height));
    CGFloat labelHeight = ((app_halfUrl) > (labelSize.height) ? (app_halfUrl) : (labelSize.height));
    //: CGFloat height = labelHeight + SearchCellContentTop + SearchCellContentBottom;
    CGFloat height = labelHeight + kIndexMsg + dreamKitIdent;
    //: _uiHeight = height;
    _uiHeight = height;
}

//: @end
@end