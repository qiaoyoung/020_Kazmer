// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteTitleNotifier.h
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESAVNotifier : NSObject
@interface StatuteTitleNotifier : NSObject
//: - (void)start:(NSString *)text;
- (void)thread:(NSString *)text;
//: - (void)stop;
- (void)dataRequest;
//: @end
@end