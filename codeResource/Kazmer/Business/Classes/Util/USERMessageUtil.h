//
//  USERMessageUtil.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "USERSnapchatAttachment.h"
#import "USERJanKenPonAttachment.h"
#import "USERWhiteboardAttachment.h"
#import "USERRedPacketAttachment.h"
#import "USERRedPacketTipAttachment.h"
#import "USERMultiRetweetAttachment.h"

NS_ASSUME_NONNULL_BEGIN

@interface USERMessageUtil : NSObject

+ (NSString *)messageContent:(NIMMessage *)message;

@end

NS_ASSUME_NONNULL_END
