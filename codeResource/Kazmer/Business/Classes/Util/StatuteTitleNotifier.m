
#import <Foundation/Foundation.h>

typedef struct {
    Byte textTwist;
    Byte *pottle;
    unsigned int porterTrain;
	int mushroomCloud;
	int egret;
	int originSeize;
} StructMedalData;

@interface MedalData : NSObject

@end

@implementation MedalData

+ (Byte *)MedalDataToByte:(StructMedalData *)data {
    for (int i = 0; i < data->porterTrain; i++) {
        data->pottle[i] ^= data->textTwist;
    }
    data->pottle[data->porterTrain] = 0;
	if (data->porterTrain >= 3) {
		data->mushroomCloud = data->pottle[0];
		data->egret = data->pottle[1];
		data->originSeize = data->pottle[2];
	}
    return data->pottle;
}

+ (NSString *)StringFromMedalData:(StructMedalData *)data {
    return [NSString stringWithUTF8String:(char *)[self MedalDataToByte:data]];
}

//: video_chat_push.mp3
+ (NSString *)show_pactPorterAllKey {
    /* static */ NSString *show_pactPorterAllKey = nil;
    if (!show_pactPorterAllKey) {
        StructMedalData value = (StructMedalData){171, (Byte []){221, 194, 207, 206, 196, 244, 200, 195, 202, 223, 244, 219, 222, 216, 195, 133, 198, 219, 152, 191}, 19, 78, 1, 208};
        show_pactPorterAllKey = [self StringFromMedalData:&value];
    }
    return show_pactPorterAllKey;
}

//: numberInTo
+ (NSString *)noti_economistId {
    /* static */ NSString *noti_economistId = nil;
    if (!noti_economistId) {
        StructMedalData value = (StructMedalData){132, (Byte []){234, 241, 233, 230, 225, 246, 205, 234, 208, 235, 78}, 10, 167, 227, 210};
        noti_economistId = [self StringFromMedalData:&value];
    }
    return noti_economistId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteTitleNotifier.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVNotifier.h"
#import "StatuteTitleNotifier.h"
//: #import "NTESGlobalMacro.h"
#import "NTESGlobalMacro.h"

//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void keyMarkDate(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[NTESAVNotifier class]])
    if([notifier isKindOfClass:[StatuteTitleNotifier class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString([MedalData noti_economistId]);
        //: SuppressPerformSelectorLeakWarning([(NTESAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        SuppressPerformSelectorLeakWarning([(StatuteTitleNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
    }
}

//: @interface NTESAVNotifier ()
@interface StatuteTitleNotifier ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation NTESAVNotifier
@implementation StatuteTitleNotifier
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(dating:)
                                                     //: name:UIApplicationWillEnterForegroundNotification
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)start:(NSString *)text
- (void)thread:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self dataRequest];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self join:text];
    //: [self vibrate];
    [self numberInTo];

}

//: - (void)stop
- (void)dataRequest
{
    //: if (_currentNotification)
    if (_currentNotification)
    {
        //: [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        //: _currentNotification = nil;
        _currentNotification = nil;
    }
    //: _shouldStopVibrate = YES;
    _shouldStopVibrate = YES;
}

//: - (void)willEnterForeground:(NSNotification *)notification
- (void)dating:(NSNotification *)notification
{
    //: [self stop];
    [self dataRequest];
}

//: - (void)vibrate
- (void)numberInTo
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, keyMarkDate, (__bridge void *)self);

        //: _vibrateCount++;
        _vibrateCount++;
        //: if (_vibrateCount >= 15)
        if (_vibrateCount >= 15)
        {
            //: _shouldStopVibrate = YES;
            _shouldStopVibrate = YES;
        }
    }
}

//: - (void)raiseNotification:(NSString *)text
- (void)join:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = [MedalData show_pactPorterAllKey];
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end