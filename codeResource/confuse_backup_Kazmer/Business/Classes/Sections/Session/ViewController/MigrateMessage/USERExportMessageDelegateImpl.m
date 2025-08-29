//
//  USERExportMessageDelegateImpl.m
//  NIM
//
//  Created by Sampson on 2018/12/16.
//  Copyright © 2018 Netease. All rights reserved.
//

#import "USERExportMessageDelegateImpl.h"
#import "USERRedPacketAttachment.h"
#import "USERRedPacketTipAttachment.h"
#import "USERJanKenPonAttachment.h"
#import "USERWhiteboardAttachment.h"
#import "USERSnapchatAttachment.h"

@implementation USERExportMessageDelegateImpl

// 对于自定义消息的类型，用户需自行处理是否支持历史消息迁移
- (BOOL)shouldExportMessage:(NIMMessage *)message {
    if (message.messageType == NIMMessageTypeCustom) {
        NIMCustomObject *customObject = message.messageObject;
        id<NIMCustomAttachment> attachment = customObject.attachment;
        
        // 支持的自定义消息
        if ([attachment isKindOfClass:[USERJanKenPonAttachment class]]) {
            return YES;
        }
    
        // 其他类型的过滤
        return NO;
    }
             
    return YES;
}

- (void)onMessageWillExport:(NIMMessage *)message {
    
}

@end
