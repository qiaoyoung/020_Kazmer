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

//: @class FFFKitInfo;
@class TingMessage;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol TingDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)parent:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface ColorPositionView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<TingDelegate> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)someShow:(TingMessage *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)colorTo:(TingMessage *)info;

//: @end
@end