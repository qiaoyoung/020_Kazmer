// __DEBUG__
// __CLOSE_PRINT__
//
//  OldInfo.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class CommonRow;

//: @protocol WatchCommonTableViewCell <NSObject>
@protocol OldInfo <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithIdentifier:(UITableViewCellStyle)style livingMode:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView;

//: @end
@end
