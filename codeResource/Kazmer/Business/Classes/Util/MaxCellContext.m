
#import <Foundation/Foundation.h>

@interface RelativelyTotalactData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RelativelyTotalactData

+ (instancetype)sharedInstance {
    static RelativelyTotalactData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RelativelyTotalactDataToCache:(Byte *)data {
    int ultimate = data[0];
    int word = data[1];
    for (int i = 0; i < ultimate / 2; i++) {
        int begin = word + i;
        int end = word + ultimate - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[word + ultimate] = 0;
    return data + word;
}

- (NSString *)StringFromRelativelyTotalactData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RelativelyTotalactDataToCache:data]];
}  

//: toRecord
- (NSString *)kText_lamValue {
    /* static */ NSString *kText_lamValue = nil;
    if (!kText_lamValue) {
        Byte value[] = {8, 6, 112, 8, 230, 8, 100, 114, 111, 99, 101, 82, 111, 116, 123};
        kText_lamValue = [self StringFromRelativelyTotalactData:value];
    }
    return kText_lamValue;
}

//: video_chat_push.mp3
- (NSString *)kName_ampleData {
    /* static */ NSString *kName_ampleData = nil;
    if (!kName_ampleData) {
        Byte value[] = {19, 10, 55, 166, 13, 62, 62, 115, 139, 222, 51, 112, 109, 46, 104, 115, 117, 112, 95, 116, 97, 104, 99, 95, 111, 101, 100, 105, 118, 40};
        kName_ampleData = [self StringFromRelativelyTotalactData:value];
    }
    return kName_ampleData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxCellContext.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERAVNotifier.h"
#import "MaxCellContext.h"

//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void iWeakBorder(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[USERAVNotifier class]])
    if([notifier isKindOfClass:[MaxCellContext class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString([[RelativelyTotalactData sharedInstance] kText_lamValue]);
        //: SuppressPerformSelectorLeakWarning([(USERAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        [(MaxCellContext *)notifier performSelector:selector withObject:nil afterDelay:1.0];
    }
}

//: @interface USERAVNotifier ()
@interface MaxCellContext ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation USERAVNotifier
@implementation MaxCellContext
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(childed:)
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
- (void)cropStart:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self share];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self text:text];
    //: [self vibrate];
    [self toRecord];

}

//: - (void)stop
- (void)share
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
- (void)childed:(NSNotification *)notification
{
    //: [self stop];
    [self share];
}

//: - (void)vibrate
- (void)toRecord
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, iWeakBorder, (__bridge void *)self);

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
- (void)text:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = [[RelativelyTotalactData sharedInstance] kName_ampleData];
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end
