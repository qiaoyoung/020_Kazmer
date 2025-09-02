// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerViewController.h
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

//: @interface USERPersonalCardViewController : UIViewController
@interface CornerViewController : UIViewController

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: -(void)onActionGroup:(id)sender;
-(void)by:(id)sender;

//: -(void)addFriend;
-(void)chromaticColour;

//: - (void)onActionBlackListValueChange:(id)sender;
- (void)withQuick:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)alongInRetardation:(id)sender;
//: - (void)onActionEditAlias:(id)sender;
- (void)row:(id)sender;

//: - (void)chat;
- (void)cancelTable;
//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithRestoreSession:(NSString *)userId;
//: - (void)deleteFriend;
- (void)lengthValue;
//: @end
@end