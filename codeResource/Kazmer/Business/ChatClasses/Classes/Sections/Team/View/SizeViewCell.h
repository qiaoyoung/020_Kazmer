// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewCell.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: extern NSString *const kTeamMember;
extern NSString *const show_messageIdent;
//: extern NSString *const kTeamMemberInfo;
extern NSString *const noti_collectionId;

//: @protocol FFFTeamMemberListCellActionDelegate <NSObject>
@protocol OldQuery <NSObject>

//: - (void)didSelectAddOpeartor;
- (void)successStop;

//: @end
@end


//: @interface FFFTeamMemberListCell : UITableViewCell
@interface SizeViewCell : UITableViewCell


//: @property(nonatomic, assign) BOOL disableInvite;
@property(nonatomic, assign) BOOL disableInvite;

//: @property(nonatomic, assign) NSInteger maxShowMemberCount;
@property(nonatomic, assign) NSInteger maxShowMemberCount;

//: @property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;
@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

//: @property(nonatomic, weak) id<FFFTeamMemberListCellActionDelegate>delegate;
@property(nonatomic, weak) id<OldQuery>delegate;

//: @end
@end