//
//  USERSDKConfig.m
//  NIM
//
//  Created by amao on 5/9/16.
//  Copyright © 2016 Netease. All rights reserved.
//

#import "USERSDKConfigDelegate.h"
#import "USERBundleSetting.h"

@implementation USERSDKConfigDelegate
- (BOOL)shouldIgnoreNotification:(NIMNotificationObject *)notification
{
    BOOL ignore = NO;
    NIMNotificationContent *content = notification.content;
    if ([content isKindOfClass:[NIMTeamNotificationContent class]]) //这里做个示范如何忽略部分通知 (不在聊天界面显示)
    {
        NSArray *types = [[USERBundleSetting sharedConfig] ignoreTeamNotificationTypes];
        NIMTeamOperationType type = [(NIMTeamNotificationContent *)content operationType];
        for (NSString *item in types)
        {
            if (type == [item integerValue])
            {
                ignore = YES;
                break;
            }
        }
        
        
        if (type==1 || type==2 || type==4 || type==5 || type==6 || type==8 || type==10) {//通知类型 全部屏蔽
            ignore = YES;
        }
    }
    return ignore;
}

- (BOOL)shouldIgnoreMessage:(NIMMessage *)message
{
    NIMMessageType type = [USERBundleSetting sharedConfig].ignoreMessageType;
    if (message.messageType == type) {
        return YES;
    }
    if (message.messageType == NIMMessageTypeTip) {
        return YES;
    }
    if (message.messageType == NIMMessageTypeNotification) {
        return YES;
    }
    return NO;
}
@end
