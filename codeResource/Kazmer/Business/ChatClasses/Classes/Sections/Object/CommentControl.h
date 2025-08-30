// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplaySessionConfigurateProtocol.h"
#import "DisplaySessionConfigurateProtocol.h"
//: #import "DisplaySessionPrivateProtocol.h"
#import "DisplaySessionPrivateProtocol.h"
//: #import "DisplaySessionConfig.h"
#import "ColorConfig.h"

//: @interface DisplaySessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface CommentControl : NSObject<AggregationSource>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithTip:(NIMSession *)session
                         //: config:(id<DisplaySessionConfig>)sessionConfig;
                         viewFileSessionWith:(id<ColorConfig>)sessionConfig;

//: @end
@end
