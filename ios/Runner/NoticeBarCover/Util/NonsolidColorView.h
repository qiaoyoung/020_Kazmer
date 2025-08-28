// __DEBUG__
// __CLOSE_PRINT__
//
//  NonsolidColorView.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "WeltanschauungAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ObjectAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "InfoAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "InfoMessageBackground.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "ReplacementAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface NonsolidColorView : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)randomDown:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END