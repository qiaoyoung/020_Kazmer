//
//  USERNotificationCenter.h
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//


@class USERCustomNotificationDB;

extern NSString *USERCustomNotificationCountChanged;

@interface USERNotificationCenter : NSObject

+ (instancetype)sharedCenter;
- (void)start;

@end
