// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.h
//  QuickNameView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabelDefines.h"
#import "M80AttributedLabelDefines.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSMutableAttributedString (M80)
@interface NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color;
- (void)isNameColor:(UIColor*)color;
//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range;
- (void)key:(UIColor*)color elite:(NSRange)range;

//: - (void)m80_setFont:(UIFont*)font;
- (void)duringTo:(UIFont*)font;
//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range;
- (void)rangeQuick:(UIFont*)font atMarkRange:(NSRange)range;

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)today:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier;
                 view:(CTUnderlineStyleModifiers)modifier;
//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)more:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 alongLine:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range;
                    upShow:(NSRange)range;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END