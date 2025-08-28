// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchMessageCellMaker.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WatchMessageCell.h"
#import "ModelViewCell.h"
//: #import "WatchSessionTimestampCell.h"
#import "ObjectViewCell.h"
//: #import "WatchCellConfig.h"
#import "WatchCellConfig.h"
//: #import "WatchMessageCellProtocol.h"
#import "WatchMessageCellProtocol.h"

//: @interface WatchMessageCellFactory : NSObject
@interface PinFactory : NSObject

//: - (WatchMessageCell *)cellInTable:(UITableView*)tableView
- (ModelViewCell *)restoreMode:(UITableView*)tableView
                 //: forMessageMode:(WatchMessageModel *)model;
                 table:(CentralProcessingUnitModel *)model;

//: - (WatchSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ObjectViewCell *)error:(UITableView *)tableView
                            //: forTimeModel:(WatchTimestampModel *)model;
                            search:(EnableName *)model;

//: @end
@end
