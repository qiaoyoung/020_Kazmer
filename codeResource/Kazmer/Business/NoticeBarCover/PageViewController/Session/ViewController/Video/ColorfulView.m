
#import <Foundation/Foundation.h>

@interface IsolationData : NSObject

@end

@implementation IsolationData

+ (Byte *)IsolationDataToCache:(Byte *)data {
    int afterwardHunter = data[0];
    Byte colorScheme = data[1];
    int foilFreed = data[2];
    for (int i = foilFreed; i < foilFreed + afterwardHunter; i++) {
        int value = data[i] + colorScheme;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[foilFreed + afterwardHunter] = 0;
    return data + foilFreed;
}

+ (NSString *)StringFromIsolationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self IsolationDataToCache:data]];
}

//: AVLayerVideoGravityResizeAspect
+ (NSString *)mainRnaKey {
    /* static */ NSString *mainRnaKey = nil;
    if (!mainRnaKey) {
        Byte value[] = {31, 47, 11, 150, 165, 137, 229, 133, 172, 167, 37, 18, 39, 29, 50, 74, 54, 67, 39, 58, 53, 54, 64, 24, 67, 50, 71, 58, 69, 74, 35, 54, 68, 58, 75, 54, 18, 68, 65, 54, 52, 69, 206};
        mainRnaKey = [self StringFromIsolationData:value];
    }
    return mainRnaKey;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorfulView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVPlayerView.h"
#import "ColorfulView.h"

//: @implementation NTESAVPlayerView
@implementation ColorfulView
{
    //: NSString* _videoFillMode;
    NSString* _videoFillMode;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _videoFillMode = @"AVLayerVideoGravityResizeAspect";
        _videoFillMode = [IsolationData mainRnaKey];
        // Initialization code
    }
    //: return self;
    return self;
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [AVPlayerLayer class];
    return [AVPlayerLayer class];
}

//: - (AVPlayer*)player
- (AVPlayer*)player
{
    //: return [(AVPlayerLayer*)[self layer] player];
    return [(AVPlayerLayer*)[self layer] player];
}

//: - (void)setPlayer:(AVPlayer*)player
- (void)setPlayer:(AVPlayer*)player
{
    //: if ([self player] != player) {
    if ([self player] != player) {
        //: [(AVPlayerLayer*)[self layer] setPlayer:player];
        [(AVPlayerLayer*)[self layer] setPlayer:player];
        //: [self setVideoFillMode:_videoFillMode];
        [self setStorage:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setStorage:(NSString *)fillMode
{
    //: _videoFillMode = fillMode;
    _videoFillMode = fillMode;

    //: AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    //: playerLayer.videoGravity = fillMode;
    playerLayer.videoGravity = fillMode;
}

//: - (void)setContentMode:(UIViewContentMode)contentMode
- (void)setContentMode:(UIViewContentMode)contentMode
{
    //: [super setContentMode:contentMode];
    [super setContentMode:contentMode];

    //: switch (contentMode) {
    switch (contentMode) {
        //: case UIViewContentModeScaleToFill:
        case UIViewContentModeScaleToFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResize];
            [self setStorage:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setStorage:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setStorage:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setStorage:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end