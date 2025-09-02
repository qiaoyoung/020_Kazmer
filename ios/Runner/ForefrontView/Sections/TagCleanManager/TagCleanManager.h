// __DEBUG__
// __CLOSE_PRINT__
//
//  TagCleanManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface USERSubscribeManager : NSObject
@interface TagCleanManager : NSObject

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)tingChild:(NSString *)userId;

//: + (instancetype)sharedManager;
+ (instancetype)success;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)mentalImage:(NSString *)userId;

//: - (void)start;
- (void)labelStart;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)withType:(NSInteger)type;

//: @end
@end