// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "PinFactory.h"
//: #import "NTESTimestampCell.h"
#import "SessionCompartmentTimestampCell.h"
//: #import "NTESMergeMessageCell.h"
#import "MessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : FFFMessageCellFactory
@interface KeyCellFactory : PinFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (MessageCell *)max:(UITableView*)tableView
                           //: forMessageMode:(FFFMessageModel *)model;
                           with:(CentralProcessingUnitModel *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (SessionCompartmentTimestampCell *)compartment:(UITableView *)tableView
                          //: forTimeModel:(FFFTimestampModel *)model;
                          valueIn:(EnableName *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END