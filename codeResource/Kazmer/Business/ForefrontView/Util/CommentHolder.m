// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERTimerHolder.h"
#import "CommentHolder.h"

//: @interface USERTimerHolder ()
@interface CommentHolder ()
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

//: @implementation USERTimerHolder
@implementation CommentHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self handleDown];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)pressQuick: (NSTimeInterval)seconds
          //: delegate: (id<USERTimerHolderDelegate>)delegate
          allChange: (id<InsideAtDelegate>)delegate
           //: repeats: (BOOL)repeats
           demonstrate: (BOOL)repeats
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
- (void)handleDown
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
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onUSERTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(labels:)])
    {
        //: [_timerDelegate onUSERTimerFired:self];
        [_timerDelegate labels:self];
    }
}

//: @end
@end