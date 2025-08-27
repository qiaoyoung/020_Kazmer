// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeTextView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactHeaderView : UIView
@interface NoticeTextView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: -(void)reloadCountNumber:(NSInteger)systemCount;
-(void)oeuvre:(NSInteger)systemCount;
//: @end
@end

//: @protocol NTESContactHeaderDelegate <NSObject>
@protocol SubTingDelegate <NSObject>


//: -(void)searchClick;
-(void)sizeView;
//: -(void)addFriend;
-(void)holderBrother;
//: -(void)newGroup;
-(void)textInterval;
//: -(void)scan;
-(void)contentTeam;
//: -(void)friendNotification;
-(void)seekTime;
//: -(void)groupNotification;
-(void)atView;
//: -(void)deviceList;
-(void)picture;
//: -(void)blackFriendList;
-(void)mustShow;
//: -(void)signIn;
-(void)manager;
//: -(void)collectList;
-(void)statisticalTable;
//: -(void)onlineServer;
-(void)doingline;

//: -(void)sliderWithIndex:(NSInteger)index;
-(void)tools:(NSInteger)index;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END