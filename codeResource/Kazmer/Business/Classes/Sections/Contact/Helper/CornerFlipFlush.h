// __DEBUG__
// __CLOSE_PRINT__
//
//  USERCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface USERCustomSysNotificationSender : NSObject
@interface CornerFlipFlush : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)location:(NSString *)content assemblage:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)center:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    style:(NSString *)roomName
                     //: members:(NSArray *)members;
                     pictureOff:(NSArray *)members;
//: - (void)sendTypingState:(NIMSession *)session;
- (void)forename:(NIMSession *)session;


//: @end
@end