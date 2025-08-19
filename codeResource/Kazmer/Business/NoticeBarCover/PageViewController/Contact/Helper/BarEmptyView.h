// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface BarEmptyView : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)make:(NSString *)content name:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)background:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)info:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    ignore:(NSString *)roomName
                     //: members:(NSArray *)members;
                     flushGlobal_strong:(NSArray *)members;

//: @end
@end