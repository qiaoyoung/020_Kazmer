
#import <Foundation/Foundation.h>

@interface AthleticContestData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AthleticContestData

+ (instancetype)sharedInstance {
    static AthleticContestData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AthleticContestDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AthleticContestDataToCache:(Byte *)data {
    int gnat = data[0];
    Byte etcetera = data[1];
    int pigInstruction = data[2];
    for (int i = pigInstruction; i < pigInstruction + gnat; i++) {
        int value = data[i] + etcetera;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pigInstruction + gnat] = 0;
    return data + pigInstruction;
}

- (NSString *)StringFromAthleticContestData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AthleticContestDataToCache:data]];
}

//: Menlo
- (NSString *)kText_towValue {
    /* static */ NSString *kText_towValue = nil;
    if (!kText_towValue) {
		NSArray<NSString *> *origin = @[@"5", @"71", @"12", @"88", @"70", @"28", @"211", @"171", @"156", @"185", @"141", @"105", @"6", @"30", @"39", @"37", @"40", @"182"];
		NSData *data = [AthleticContestData AthleticContestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_towValue = [self StringFromAthleticContestData:value];
    }
    return kText_towValue;
}

//: %d FPS
- (NSString *)kText_incomeTotalactTargetData {
    /* static */ NSString *kText_incomeTotalactTargetData = nil;
    if (!kText_incomeTotalactTargetData) {
		NSArray<NSString *> *origin = @[@"6", @"28", @"9", @"181", @"43", @"56", @"185", @"76", @"103", @"9", @"72", @"4", @"42", @"52", @"55", @"140"];
		NSData *data = [AthleticContestData AthleticContestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_incomeTotalactTargetData = [self StringFromAthleticContestData:value];
    }
    return kText_incomeTotalactTargetData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERFPSLabel.h"
#import "DirectView.h"

//: @implementation USERFPSLabel{
@implementation DirectView{
    //: CADisplayLink *_link;
    CADisplayLink *_link;
    //: NSUInteger _count;
    NSUInteger _count;
    //: NSTimeInterval _lastTime;
    NSTimeInterval _lastTime;
    //: UIFont *_font;
    UIFont *_font;
}


//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (frame.size.width == 0 && frame.size.height == 0) {
    if (frame.size.width == 0 && frame.size.height == 0) {
        //: frame.size = CGSizeMake(70, 20);
        frame.size = CGSizeMake(70, 20);
    }
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: self.textAlignment = NSTextAlignmentCenter;
    self.textAlignment = NSTextAlignmentCenter;
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: _font = [UIFont fontWithName:@"Menlo" size:13];
    _font = [UIFont fontWithName:[[AthleticContestData sharedInstance] kText_towValue] size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(ghbs:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)prolusionInvalidate
{
    //: [_link invalidate];
    [_link invalidate];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(70, 20);;
    return CGSizeMake(70, 20);;
}

//: - (void)tick:(CADisplayLink *)link {
- (void)ghbs:(CADisplayLink *)link {
    //: if (_lastTime == 0) {
    if (_lastTime == 0) {
        //: _lastTime = link.timestamp;
        _lastTime = link.timestamp;
        //: return;
        return;
    }

    //: _count++;
    _count++;
    //: NSTimeInterval delta = link.timestamp - _lastTime;
    NSTimeInterval delta = link.timestamp - _lastTime;
    //: if (delta < 1) return;
    if (delta < 1) return;
    //: _lastTime = link.timestamp;
    _lastTime = link.timestamp;
    //: float fps = _count / delta;
    float fps = _count / delta;
    //: _count = 0;
    _count = 0;


    //: self.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.text = [NSString stringWithFormat:[[AthleticContestData sharedInstance] kText_incomeTotalactTargetData],(int)round(fps)];
}

//: @end
@end