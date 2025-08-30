// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationAdd.h
// Mortification
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayKitTimerHolder.h"
#import "LargenessHolder.h"

//: @class NIMKitFirerInfo;
@class KitInfo;

//: @interface DisplayKitNotificationFirer : NSObject<DisplayKitTimerHolderDelegate>
@interface NotificationAdd : NSObject<CornerDelegate>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) DisplayKitTimerHolder *timer;
@property (nonatomic,strong) LargenessHolder *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)child:(KitInfo *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface KitInfo : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)vehicle;

//: - (NSString *)saveIdentity;
- (NSString *)save;

//: @end
@end
