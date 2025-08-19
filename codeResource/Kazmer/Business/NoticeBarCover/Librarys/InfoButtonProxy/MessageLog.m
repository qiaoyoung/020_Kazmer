// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGQRCodeLog.h"
#import "MessageLog.h"

//: static SGQRCodeLog *singleton = nil;
static MessageLog *mainCustomMessage = nil;

//: @implementation SGQRCodeLog
@implementation MessageLog

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)bite {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (mainCustomMessage == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            mainCustomMessage = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return mainCustomMessage;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] bite];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)change:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] bite];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)atZone:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] bite];
}

//: @end
@end