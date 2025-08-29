// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "IndoorsView.h"
//: #import "FFFSessionTimestampCell.h"
#import "TeamViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface ManFactory : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (IndoorsView *)dateMode:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 paddy:(CleanDoing *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TeamViewCell *)day:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            button:(WithPage *)model;

//: @end
@end