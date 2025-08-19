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
//: #import "FFFSessionViewController.h"
#import "CollectionViewController.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @class FFFSessionViewController;
@class CollectionViewController;

//: @interface FFFSessionConfigurator : NSObject
@interface MaxConfigurator : NSObject

//: - (void)setup:(FFFSessionViewController *)vc;
- (void)messageAt:(CollectionViewController *)vc;

//: @end
@end