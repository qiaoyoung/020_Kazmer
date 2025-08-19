// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageObject.h
// ButtonKit
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WatchKitTimerHolder.h"
#import "UserCell.h"

//: @class NIMKitFirerInfo;
@class TimeInfo;

//: @interface WatchKitNotificationFirer : NSObject<WatchKitTimerHolderDelegate>
@interface MessageObject : NSObject<AssemblageDelegate>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) WatchKitTimerHolder *timer;
@property (nonatomic,strong) UserCell *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)gildTheLily:(TimeInfo *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface TimeInfo : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)geologicalFormation;

//: - (NSString *)saveIdentity;
- (NSString *)lastIn;

//: @end
@end
