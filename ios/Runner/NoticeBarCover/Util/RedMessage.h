// __DEBUG__
// __CLOSE_PRINT__
//
//  RedMessage.h
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

//: @class NTESTimerHolder;
@class RedMessage;

//: @protocol NTESTimerHolderDelegate <NSObject>
@protocol ContentPage <NSObject>
//: - (void)onNTESTimerFired:(NTESTimerHolder *)holder;
- (void)crimsonned:(RedMessage *)holder;
//: @end
@end

//: @interface NTESTimerHolder : NSObject
@interface RedMessage : NSObject
//: @property (nonatomic,weak) id<NTESTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<ContentPage> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)fastener:(NSTimeInterval)seconds
          //: delegate:(id<NTESTimerHolderDelegate>)delegate
          startOutDelegateObjectLabel:(id<ContentPage>)delegate
           //: repeats:(BOOL)repeats;
           beginNameRepeats:(BOOL)repeats;

//: - (void)stopTimer;
- (void)cartUpwardsBrief;
//: @end
@end