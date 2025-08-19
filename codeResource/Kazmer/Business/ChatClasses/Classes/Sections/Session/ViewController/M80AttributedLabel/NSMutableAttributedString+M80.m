// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.m
//  QuickNameView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableAttributedString+M80.h"
#import "NSMutableAttributedString+M80.h"

//: @implementation NSMutableAttributedString (M80)
@implementation NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color
- (void)isNameColor:(UIColor*)color
{
    //: [self m80_setTextColor:color range:NSMakeRange(0, [self length])];
    [self key:color elite:NSMakeRange(0, [self length])];
}

//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range
- (void)key:(UIColor*)color elite:(NSRange)range
{
    //: [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
    [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
}


//: - (void)m80_setFont:(UIFont*)font
- (void)duringTo:(UIFont*)font
{
    //: [self m80_setFont:font range:NSMakeRange(0, [self length])];
    [self rangeQuick:font atMarkRange:NSMakeRange(0, [self length])];
}

//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range
- (void)rangeQuick:(UIFont*)font atMarkRange:(NSRange)range
{
    //: if (font)
    if (font)
    {
        //: [self addAttributes:@{NSFontAttributeName:font} range:range];
        [self addAttributes:@{NSFontAttributeName:font} range:range];
    }
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)today:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 view:(CTUnderlineStyleModifiers)modifier
{
    //: [self m80_setUnderlineStyle:style
    [self more:style
                   //: modifier:modifier
                   alongLine:modifier
                      //: range:NSMakeRange(0, self.length)];
                      upShow:NSMakeRange(0, self.length)];
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)more:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 alongLine:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range
                    upShow:(NSRange)range
{
    //: [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
    [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
}

//: @end
@end