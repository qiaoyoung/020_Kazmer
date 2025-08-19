// __DEBUG__
// __CLOSE_PRINT__
//
//  ApproximateViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface NTESPersonalCardViewController : UIViewController
@interface ApproximateViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithSmart:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)connection:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)aboveUser:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)sumervalAfter:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)darked:(id)sender;

//: - (void)chat;
- (void)videoEnd;
//: - (void)deleteFriend;
- (void)commentDate;
//: -(void)addFriend;
-(void)holderBrother;
//: @end
@end