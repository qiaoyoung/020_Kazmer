// __DEBUG__
// __CLOSE_PRINT__
//
//  GrowingTool.h
// Mortification
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, DisplayKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, DisplayKitAuthorizationStatus) {
    //: DisplayKitAuthorizationStatusAuthorized, 
    DisplayKitAuthorizationStatusAuthorized, // 已授权
    //: DisplayKitAuthorizationStatusDenied, 
    DisplayKitAuthorizationStatusDenied, // 拒绝
    //: DisplayKitAuthorizationStatusRestricted, 
    DisplayKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: DisplayKitAuthorizationStatusNotSupport 
    DisplayKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface DisplayKitAuthorizationTool : NSObject
@interface GrowingTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(DisplayKitAuthorizationStatus status))callback;
+ (void)photo:(void(^)(DisplayKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(DisplayKitAuthorizationStatus status))callback;
+ (void)icon:(void(^)(DisplayKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(DisplayKitAuthorizationStatus))callback;
+ (void)action:(void (^)(DisplayKitAuthorizationStatus))callback;

//: @end
@end
