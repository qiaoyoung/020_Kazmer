// __DEBUG__
// __CLOSE_PRINT__
//
//  ChanceImage.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class ModeObject;
//: @interface NTESCustomNotificationDB : NSObject
@interface ChanceImage : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)travelKit;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)compartment:(ModeObject *)notification
                          //: limit:(NSInteger)limit;
                          language:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)salvage:(ModeObject *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)color:(ModeObject *)notification;

//: - (void)deleteAllNotification;
- (void)all;

//: - (void)markAllNotificationsAsRead;
- (void)media;

//: @end
@end