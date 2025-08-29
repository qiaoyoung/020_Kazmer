// __DEBUG__
// __CLOSE_PRINT__
//
//  LargenessHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitTimerHolder.h"
#import "LargenessHolder.h"

//: @interface FFFKitTimerHolder ()
@interface LargenessHolder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)columning: (NSTimer *)timer;
//: @end
@end

//: @implementation FFFKitTimerHolder
@implementation LargenessHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self sum];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)delegateMonitor: (NSTimeInterval)seconds
          //: delegate: (id<FFFKitTimerHolderDelegate>)delegate
          repeats: (id<CornerDelegate>)delegate
           //: repeats: (BOOL)repeats
           date: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(columning:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)sum
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)columning: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(shoulding:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate shoulding:self];
    }
}

//: @end
@end