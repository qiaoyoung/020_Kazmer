// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSDKConfig.m
//  NIM
//
//  Created by amao on 5/9/16.
//  Copyright © 2016 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSDKConfigDelegate.h"
#import "IndexShouldDelegate.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"

//: @implementation USERSDKConfigDelegate
@implementation IndexShouldDelegate
//: - (BOOL)shouldIgnoreNotification:(NIMNotificationObject *)notification
- (BOOL)shouldIgnoreNotification:(NIMNotificationObject *)notification
{
    //: BOOL ignore = NO;
    BOOL ignore = NO;
    //: NIMNotificationContent *content = notification.content;
    NIMNotificationContent *content = notification.content;
    //: if ([content isKindOfClass:[NIMTeamNotificationContent class]]) 
    if ([content isKindOfClass:[NIMTeamNotificationContent class]]) //这里做个示范如何忽略部分通知 (不在聊天界面显示)
    {
        //: NSArray *types = [[USERBundleSetting sharedConfig] ignoreTeamNotificationTypes];
        NSArray *types = [[UserLabelMan user] showTypes];
        //: NIMTeamOperationType type = [(NIMTeamNotificationContent *)content operationType];
        NIMTeamOperationType type = [(NIMTeamNotificationContent *)content operationType];
        //: for (NSString *item in types)
        for (NSString *item in types)
        {
            //: if (type == [item integerValue])
            if (type == [item integerValue])
            {
                //: ignore = YES;
                ignore = YES;
                //: break;
                break;
            }
        }


        //: if (type==1 || type==2 || type==4 || type==5 || type==6 || type==8 || type==10) {
        if (type==1 || type==2 || type==4 || type==5 || type==6 || type==8 || type==10) {//通知类型 全部屏蔽
            //: ignore = YES;
            ignore = YES;
        }
    }
    //: return ignore;
    return ignore;
}

//: - (BOOL)shouldIgnoreMessage:(NIMMessage *)message
- (BOOL)shouldIgnoreMessage:(NIMMessage *)message
{
    //: NIMMessageType type = [USERBundleSetting sharedConfig].ignoreMessageType;
    NIMMessageType type = [UserLabelMan user].length;
    //: if (message.messageType == type) {
    if (message.messageType == type) {
        //: return YES;
        return YES;
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return YES;
        return YES;
    }
    //: if (message.messageType == NIMMessageTypeNotification) {
    if (message.messageType == NIMMessageTypeNotification) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: @end
@end