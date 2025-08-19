// __DEBUG__
// __CLOSE_PRINT__
//
//  RedMessage.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimerHolder.h"
#import "RedMessage.h"

//: @interface NTESTimerHolder ()
@interface RedMessage ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)searchedUp: (NSTimer *)timer;
//: @end
@end

//: @implementation NTESTimerHolder
@implementation RedMessage

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self cartUpwardsBrief];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)fastener: (NSTimeInterval)seconds
          //: delegate: (id<NTESTimerHolderDelegate>)delegate
          startOutDelegateObjectLabel: (id<ContentPage>)delegate
           //: repeats: (BOOL)repeats
           beginNameRepeats: (BOOL)repeats
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
                                            selector:@selector(searchedUp:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)cartUpwardsBrief
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)searchedUp: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNTESTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(crimsonned:)])
    {
        //: [_timerDelegate onNTESTimerFired:self];
        [_timerDelegate crimsonned:self];
    }
}

//: @end
@end