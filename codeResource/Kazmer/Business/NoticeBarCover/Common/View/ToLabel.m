
#import <Foundation/Foundation.h>

NSString *StringFromCabinMarchData(Byte *data);        


//: Menlo
Byte dream_contributionName[] = {35, 5, 9, 14, 92, 132, 111, 137, 179, 81, 15, 132, 137, 51, 68, 92, 101, 99, 102, 232};

//: %d FPS
Byte dream_shipFormat[] = {23, 6, 39, 13, 191, 74, 120, 2, 57, 235, 35, 179, 8, 254, 61, 249, 31, 41, 44, 243};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToLabel.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "ToLabel.h"

//: @implementation NTESFPSLabel{
@implementation ToLabel{
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
    _font = [UIFont fontWithName:StringFromCabinMarchData(dream_contributionName) size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(placeTitle:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)can
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
- (void)placeTitle:(CADisplayLink *)link {
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
    self.text = [NSString stringWithFormat:StringFromCabinMarchData(dream_shipFormat),(int)round(fps)];
}

//: @end
@end

Byte * CabinMarchDataToCache(Byte *data) {
    int oakLeafCluster = data[0];
    int thanksSuggest = data[1];
    Byte pictureUntil = data[2];
    int mayDate = data[3];
    if (!oakLeafCluster) return data + mayDate;
    for (int i = mayDate; i < mayDate + thanksSuggest; i++) {
        int value = data[i] + pictureUntil;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mayDate + thanksSuggest] = 0;
    return data + mayDate;
}

NSString *StringFromCabinMarchData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CabinMarchDataToCache(data)];
}
