// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageCell.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class IndexTargetRow;

//: @protocol FFFCommonTableViewCell <NSObject>
@protocol ImageCell <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithIdentifier:(UITableViewCellStyle)style dismiss:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)characterize:(IndexTargetRow *)rowData cuttingEdge:(UITableView *)tableView;

//: @end
@end