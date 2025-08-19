// __DEBUG__
// __CLOSE_PRINT__
//
//  NameLoginOption.m
//  NIM
//
//  Created by 田玉龙 on 2023/6/24.
//  Copyright © 2023 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCAutoLoginManager.h"
#import "NameLoginOption.h"

//: @implementation CCCAutoLoginManager
@implementation NameLoginOption

//: + (instancetype)sharedManager
+ (instancetype)sound
{
    //: static CCCAutoLoginManager *instance = nil;
    static NameLoginOption *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCAutoLoginManager alloc] init];
        instance = [[NameLoginOption alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: @end
@end