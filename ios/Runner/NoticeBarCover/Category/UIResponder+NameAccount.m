// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+NameAccount.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+NameAccount.h"

//: static __weak id currentFirstResponder;
static __weak id dreamLinkTitle;
//: static __weak id currentSecodResponder;
static __weak id main_dataId;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (NameAccount)

//: + (instancetype)currentFirstResponder {
+ (instancetype)chock {
    //: currentFirstResponder = nil;
    dreamLinkTitle = nil;
    //: currentSecodResponder = nil;
    main_dataId = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(befored:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return dreamLinkTitle;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)signal{
    //: currentFirstResponder = nil;
    dreamLinkTitle = nil;
    //: currentSecodResponder = nil;
    main_dataId = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(befored:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return main_dataId;
}

//: - (void)findFirstResponder:(id)sender {
- (void)befored:(id)sender {
    //: currentFirstResponder = self;
    dreamLinkTitle = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder endThread:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)endThread:(id)sender{
    //: currentSecodResponder = self;
    main_dataId = self;
}

//: @end
@end