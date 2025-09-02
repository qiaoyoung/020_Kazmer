// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayMessageCellMaker.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayMessageCell.h"
#import "IndoorsView.h"
//: #import "DisplaySessionTimestampCell.h"
#import "TeamViewCell.h"
//: #import "DisplayCellConfigDelegate.h"
#import "DisplayCellConfigDelegate.h"
//: #import "CompartmentPathDelegate.h"
#import "CompartmentPathDelegate.h"

//: @interface DisplayMessageCellFactory : NSObject
@interface ManFactory : NSObject

//: - (DisplayMessageCell *)cellInTable:(UITableView*)tableView
- (IndoorsView *)dateMode:(UITableView*)tableView
                 //: forMessageMode:(DisplayMessageModel *)model;
                 paddy:(CleanDoing *)model;

//: - (DisplaySessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TeamViewCell *)day:(UITableView *)tableView
                            //: forTimeModel:(DisplayTimestampModel *)model;
                            button:(WithPage *)model;

//: @end
@end
