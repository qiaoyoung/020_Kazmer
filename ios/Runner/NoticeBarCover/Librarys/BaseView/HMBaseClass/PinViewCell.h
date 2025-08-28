// __DEBUG__
// __CLOSE_PRINT__
//
//  PinViewCell.h
//  ProjectK
//
//  Created by beartech on 13-9-25.
//  Copyright (c) 2013年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface BaseTableViewCell : UITableViewCell{
@interface PinViewCell : UITableViewCell{
    //: NSDictionary *_cellInfomation;
    NSDictionary *_cellInfomation;
    //: NSIndexPath *_indexPath;
    NSIndexPath *_indexPath;
}

//: @property(nonatomic,strong) NSDictionary *cellInfomation;
@property(nonatomic,strong) NSDictionary *cellInfomation;
//: @property(nonatomic,strong) NSIndexPath *indexPath;
@property(nonatomic,strong) NSIndexPath *indexPath;


//: - (void)initSubviews;
- (void)initChiaroscuroQuick;

//: - (void)reloadWithInformation:(NSDictionary*)information;
- (void)showInformation:(NSDictionary*)information;

//: + (CGFloat)getCellHeight:(NSDictionary*)information;
+ (CGFloat)publication:(NSDictionary*)information;

//: @end
@end