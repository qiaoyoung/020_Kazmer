// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthAt.m
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayFileContentConfig.h"
#import "LengthAt.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation DisplayFileContentConfig
@implementation LengthAt

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message
{
    //: return CGSizeMake(110, 110);
    return CGSizeMake(110, 110);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)viewTing:(NIMMessage *)message
{
    //: return @"DisplaySessionFileTransContentView";
    return @"ControlTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)nameSearched:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Mortification text].config toWith:message].contentInsets;
}



//: @end
@end
