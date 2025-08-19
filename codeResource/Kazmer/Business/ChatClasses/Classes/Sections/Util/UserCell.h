// __DEBUG__
// __CLOSE_PRINT__
//
//  UserCell.h
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

//: @class WatchKitTimerHolder;
@class UserCell;

//: @protocol WatchKitTimerHolderDelegate <NSObject>
@protocol AssemblageDelegate <NSObject>
//: - (void)onNIMKitTimerFired:(WatchKitTimerHolder *)holder;
- (void)alled:(UserCell *)holder;
//: @end
@end

//: @interface WatchKitTimerHolder : NSObject
@interface UserCell : NSObject
//: @property (nonatomic,weak) id<WatchKitTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<AssemblageDelegate> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)countFor:(NSTimeInterval)seconds
          //: delegate:(id<WatchKitTimerHolderDelegate>)delegate
          greenish:(id<AssemblageDelegate>)delegate
           //: repeats:(BOOL)repeats;
           analogDigitalConverterRepeats:(BOOL)repeats;

//: - (void)stopTimer;
- (void)tap;
//: @end
@end
