// __DEBUG__
// __CLOSE_PRINT__
//
//  ManView.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "USERContactDefines.h"
#import "USERContactDefines.h"

//: @protocol USERContactUtilCellDelegate <NSObject>
@protocol ReplyDelegate <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)teamMax:(NSString *)content;

//: @end
@end

//: @interface USERContactUtilCell : UITableViewCell
@interface ManView : UITableViewCell

//: @property (nonatomic,weak) id<USERContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<ReplyDelegate> delegate;

//: - (void)refreshWithContactItem:(id<USERContactItem>)item;
- (void)iconItem:(id<DoingAdd>)item;

//: @end
@end