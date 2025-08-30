// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+Year.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+USERFirstResponder.h"
#import "UIResponder+Year.h"

//: static __weak id currentFirstResponder;
static __weak id kEndCommentId;
//: static __weak id currentSecodResponder;
static __weak id dreamTextPath;

//: @implementation UIResponder (USERFirstResponder)
@implementation UIResponder (Year)

//: + (instancetype)currentFirstResponder {
+ (instancetype)handle {
    //: currentFirstResponder = nil;
    kEndCommentId = nil;
    //: currentSecodResponder = nil;
    dreamTextPath = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(mentalRepresentation:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return kEndCommentId;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)isLength{
    //: currentFirstResponder = nil;
    kEndCommentId = nil;
    //: currentSecodResponder = nil;
    dreamTextPath = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(mentalRepresentation:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return dreamTextPath;
}

//: - (void)findFirstResponder:(id)sender {
- (void)mentalRepresentation:(id)sender {
    //: currentFirstResponder = self;
    kEndCommentId = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder heritage:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)heritage:(id)sender{
    //: currentSecodResponder = self;
    dreamTextPath = self;
}

//: @end
@end