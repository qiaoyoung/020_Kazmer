// __DEBUG__
// __CLOSE_PRINT__
//
//  ZoneUimanager.h
// ButtonKit
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchChatUIManagerProtocol.h"
#import "WatchChatUIManagerProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WatchChatUIManager : NSObject<WatchChatUIManager>
@interface ZoneUimanager : NSObject<ZoneUimanager>

//: + (instancetype)sharedManager;
+ (instancetype)abstract;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
