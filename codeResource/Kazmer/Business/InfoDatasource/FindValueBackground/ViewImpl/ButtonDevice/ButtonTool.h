// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonTool.h
// ButtonKit
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, WatchKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, WatchKitAuthorizationStatus) {
    //: WatchKitAuthorizationStatusAuthorized, 
    WatchKitAuthorizationStatusAuthorized, // 已授权
    //: WatchKitAuthorizationStatusDenied, 
    WatchKitAuthorizationStatusDenied, // 拒绝
    //: WatchKitAuthorizationStatusRestricted, 
    WatchKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: WatchKitAuthorizationStatusNotSupport 
    WatchKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface WatchKitAuthorizationTool : NSObject
@interface ButtonTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(WatchKitAuthorizationStatus status))callback;
+ (void)closeColor:(void(^)(WatchKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(WatchKitAuthorizationStatus status))callback;
+ (void)extraFile:(void(^)(WatchKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(WatchKitAuthorizationStatus))callback;
+ (void)requestPathUpwardly:(void (^)(WatchKitAuthorizationStatus))callback;

//: @end
@end
