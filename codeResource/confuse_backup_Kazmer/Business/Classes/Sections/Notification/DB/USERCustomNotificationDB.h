//
//  USERCustomNotificationDB.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@class USERCustomNotificationObject;
@interface USERCustomNotificationDB : NSObject

dSINGLETON_FOR_CLASS_HEADER(USERCustomNotificationDB);

@property (nonatomic,assign) NSInteger unreadCount;

- (NSArray *)fetchNotifications:(USERCustomNotificationObject *)notification
                          limit:(NSInteger)limit;

- (BOOL)saveNotification:(USERCustomNotificationObject *)notification;

- (void)deleteNotification:(USERCustomNotificationObject *)notification;

- (void)deleteAllNotification;

- (void)markAllNotificationsAsRead;

@end
