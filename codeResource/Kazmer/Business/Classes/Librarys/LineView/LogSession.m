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
#import "LogSession.h"

//: static SGQRCodeLog *singleton = nil;
static LogSession *app_makeValue = nil;

//: @implementation SGQRCodeLog
@implementation LogSession

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] red];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)mortalOrigin:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] red];
}

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)red {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (app_makeValue == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            app_makeValue = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return app_makeValue;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)number:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] red];
}

//: @end
@end