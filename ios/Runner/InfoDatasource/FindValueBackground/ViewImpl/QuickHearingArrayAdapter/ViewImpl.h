// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchSessionConfigurateProtocol.h"
#import "WatchSessionConfigurateProtocol.h"
//: #import "WatchSessionPrivateProtocol.h"
#import "WatchSessionPrivateProtocol.h"
//: #import "WatchSessionConfig.h"
#import "MessagePinImage.h"

//: @interface WatchSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface ViewImpl : NSObject<SizeSource>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithValue:(NIMSession *)session
                         //: config:(id<WatchSessionConfig>)sessionConfig;
                         pastSearched:(id<MessagePinImage>)sessionConfig;

//: @end
@end
