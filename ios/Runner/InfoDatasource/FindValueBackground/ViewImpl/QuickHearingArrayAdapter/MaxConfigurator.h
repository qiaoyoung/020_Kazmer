// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionViewConfigurator.h
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionViewController.h"
#import "CollectionViewController.h"
//: #import "WatchSessionConfigurateProtocol.h"
#import "WatchSessionConfigurateProtocol.h"

//: @class WatchSessionViewController;
@class CollectionViewController;

//: @interface WatchSessionConfigurator : NSObject
@interface MaxConfigurator : NSObject

//: - (void)setup:(WatchSessionViewController *)vc;
- (void)messageAt:(CollectionViewController *)vc;

//: @end
@end
