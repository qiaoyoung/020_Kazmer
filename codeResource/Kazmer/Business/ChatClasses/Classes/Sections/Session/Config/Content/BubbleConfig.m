// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleConfig.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLocationContentConfig.h"
#import "BubbleConfig.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation FFFLocationContentConfig
@implementation BubbleConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: return CGSizeMake(110.f, 105.f);
    return CGSizeMake(110.f, 105.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"FFFSessionLocationContentView";
    return @"RowControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}

//: @end
@end