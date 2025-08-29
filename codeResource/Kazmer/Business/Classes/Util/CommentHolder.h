// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentHolder.h
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//
//M80TimerHolder，管理某个Timer，功能为
//1.隐藏NSTimer,使得NSTimer只能retain M80TimerHolder
//2.对于非repeats的Timer,执行一次后自动释放Timer
//3.对于repeats的Timer,需要持有M80TimerHolder的对象在析构时调用[M80TimerHolder stopTimer]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class USERTimerHolder;
@class CommentHolder;

//: @protocol USERTimerHolderDelegate <NSObject>
@protocol InsideAtDelegate <NSObject>
//: - (void)onUSERTimerFired:(USERTimerHolder *)holder;
- (void)labels:(CommentHolder *)holder;
//: @end
@end

//: @interface USERTimerHolder : NSObject
@interface CommentHolder : NSObject
//: @property (nonatomic,weak) id<USERTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<InsideAtDelegate> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)pressQuick:(NSTimeInterval)seconds
          //: delegate:(id<USERTimerHolderDelegate>)delegate
          allChange:(id<InsideAtDelegate>)delegate
           //: repeats:(BOOL)repeats;
           demonstrate:(BOOL)repeats;

//: - (void)stopTimer;
- (void)handleDown;
//: @end
@end