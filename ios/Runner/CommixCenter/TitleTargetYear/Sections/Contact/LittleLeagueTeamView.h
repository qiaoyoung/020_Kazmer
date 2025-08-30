// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class DisplayKitInfo;
@class CancelTeamCorner;

//: @protocol DisplayContactPickedViewDelegate <NSObject>
@protocol DelegateClean <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)bearDownUser:(NSString *)userId;

//: @end
@end

//: @interface DisplayContactPickedView : UIView <UIScrollViewDelegate>
@interface LittleLeagueTeamView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<DisplayContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<DelegateClean> delegate;

//: - (void)removeMemberInfo:(DisplayKitInfo *)info;
- (void)invisibleColor:(CancelTeamCorner *)info;

//: - (void)addMemberInfo:(DisplayKitInfo *)info;
- (void)memberInfo:(CancelTeamCorner *)info;

//: @end
@end
