// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckTableViewController.h
//  NIM
//
//  Created by Genning-Work on 2020/1/2.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol USERContactSearchDelegate <NSObject>
@protocol TargetDelegate <NSObject>

//不搜索team
//: - (BOOL)disableSearchTeam;
- (BOOL)buttonPressed;

//忽略大小写
//: - (BOOL)ignoreCase;
- (BOOL)valueTip;

//: @end
@end

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERContactSearchViewController : UITableViewController
@interface CheckTableViewController : UITableViewController

//: @property (nonatomic, assign) id <USERContactSearchDelegate> delegate;
@property (nonatomic, assign) id <TargetDelegate> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END