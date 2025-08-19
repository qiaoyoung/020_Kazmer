// __DEBUG__
// __CLOSE_PRINT__
//
//  HolderCheck.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class HolderCheck;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol QuickTo <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)imageLink:(HolderCheck *)holder
                 //: duration:(NSTimeInterval)duration
                 messageBegin:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              visible:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface HolderCheck : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<QuickTo> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)draw: (id<QuickTo>)delegate;

//: - (void)stop;
- (void)statuteTitle;

//: @end
@end