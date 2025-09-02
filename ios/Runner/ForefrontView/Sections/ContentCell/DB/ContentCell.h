// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentCell.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class USERCustomNotificationObject;
@class CommentObject;
//: @interface USERCustomNotificationDB : NSObject
@interface ContentCell : NSObject

//: - (void)deleteAllNotification;
- (void)allBackgroundBetween;
;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (BOOL)saveNotification:(USERCustomNotificationObject *)notification;
- (BOOL)subNotification:(CommentObject *)notification;


//: + (instancetype)sharedInstance;;
+ (instancetype)session;
//: - (void)deleteNotification:(USERCustomNotificationObject *)notification;
- (void)should:(CommentObject *)notification;

//: - (NSArray *)fetchNotifications:(USERCustomNotificationObject *)notification
- (NSArray *)telecastingLimit:(CommentObject *)notification
                          //: limit:(NSInteger)limit;
                          clear:(NSInteger)limit;
//: - (void)markAllNotificationsAsRead;
- (void)overViewBe;

//: @end
@end