
#import <Foundation/Foundation.h>

typedef struct {
    Byte getCracking;
    Byte *ecosystem;
    unsigned int comparatively;
	int nimHeavily;
	int arti;
	int seat;
} StructClassifyData;

@interface ClassifyData : NSObject

@end

@implementation ClassifyData

+ (Byte *)ClassifyDataToByte:(StructClassifyData *)data {
    for (int i = 0; i < data->comparatively; i++) {
        data->ecosystem[i] ^= data->getCracking;
    }
    data->ecosystem[data->comparatively] = 0;
	if (data->comparatively >= 3) {
		data->nimHeavily = data->ecosystem[0];
		data->arti = data->ecosystem[1];
		data->seat = data->ecosystem[2];
	}
    return data->ecosystem;
}

+ (NSString *)StringFromClassifyData:(StructClassifyData *)data {
    return [NSString stringWithUTF8String:(char *)[self ClassifyDataToByte:data]];
}

//: AVLayerVideoGravityResizeAspect
+ (NSString *)kNameSandRecommendString {
    /* static */ NSString *kNameSandRecommendString = nil;
    if (!kNameSandRecommendString) {
        StructClassifyData value = (StructClassifyData){225, (Byte []){160, 183, 173, 128, 152, 132, 147, 183, 136, 133, 132, 142, 166, 147, 128, 151, 136, 149, 152, 179, 132, 146, 136, 155, 132, 160, 146, 145, 132, 130, 149, 7}, 31, 128, 166, 171};
        kNameSandRecommendString = [self StringFromClassifyData:&value];
    }
    return kNameSandRecommendString;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  YearTitleView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERAVPlayerView.h"
#import "YearTitleView.h"

//: @implementation USERAVPlayerView
@implementation YearTitleView
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
        _videoFillMode = [ClassifyData kNameSandRecommendString];
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
        [self setValueOn:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setValueOn:(NSString *)fillMode
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
            [self setValueOn:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setValueOn:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setValueOn:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setValueOn:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end