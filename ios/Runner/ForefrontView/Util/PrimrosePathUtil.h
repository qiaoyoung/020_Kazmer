// __DEBUG__
// __CLOSE_PRINT__
//
//  PrimrosePathUtil.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "USERSnapchatAttachment.h"
#import "DigitizerAttachment.h"
//: #import "USERJanKenPonAttachment.h"
#import "GlossAttachment.h"
//: #import "USERWhiteboardAttachment.h"
#import "MessageAttachment.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"
//: #import "USERRedPacketTipAttachment.h"
#import "ContentAttachment.h"
//: #import "USERMultiRetweetAttachment.h"
#import "SessionWith.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERMessageUtil : NSObject
@interface PrimrosePathUtil : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)status:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END