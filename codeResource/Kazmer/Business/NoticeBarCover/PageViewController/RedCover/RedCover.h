// __DEBUG__
// __CLOSE_PRINT__
//
//  RedCover.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface RedCover : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)custom;

//: - (void)start;
- (void)resolutionScale;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)buttonForType:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)gray:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)activity:(NSString *)userId;

//: @end
@end