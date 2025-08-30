// __DEBUG__
// __CLOSE_PRINT__
//
//  HarmShould.m
//  NIM
//
//  Created by Sampson on 2018/12/16.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERExportMessageDelegateImpl.h"
#import "HarmShould.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"

//: @implementation USERExportMessageDelegateImpl
@implementation HarmShould

// 对于自定义消息的类型，用户需自行处理是否支持历史消息迁移
//: - (BOOL)shouldExportMessage:(NIMMessage *)message {
- (BOOL)shouldExportMessage:(NIMMessage *)message {
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *customObject = message.messageObject;
        NIMCustomObject *customObject = message.messageObject;
        //: id<NIMCustomAttachment> attachment = customObject.attachment;
        id<NIMCustomAttachment> attachment = customObject.attachment;

        // 支持的自定义消息
        //: if ([attachment isKindOfClass:[USERJanKenPonAttachment class]]) {
        if ([attachment isKindOfClass:[GlossAttachment class]]) {
            //: return YES;
            return YES;
        }

        // 其他类型的过滤
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}

//: - (void)onMessageWillExport:(NIMMessage *)message {
- (void)onMessageWillExport:(NIMMessage *)message {

}

//: @end
@end