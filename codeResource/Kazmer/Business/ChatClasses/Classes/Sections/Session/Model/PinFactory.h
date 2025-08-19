// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "ModelViewCell.h"
//: #import "FFFSessionTimestampCell.h"
#import "ObjectViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface PinFactory : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (ModelViewCell *)restoreMode:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 table:(CentralProcessingUnitModel *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ObjectViewCell *)error:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            search:(EnableName *)model;

//: @end
@end