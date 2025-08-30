
#import <Foundation/Foundation.h>

@interface ExcitementData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ExcitementData

+ (instancetype)sharedInstance {
    static ExcitementData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ExcitementDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ExcitementDataToCache:(Byte *)data {
    int commitSustain = data[0];
    Byte madrigal = data[1];
    int bronzeImpossible = data[2];
    for (int i = bronzeImpossible; i < bronzeImpossible + commitSustain; i++) {
        int value = data[i] + madrigal;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bronzeImpossible + commitSustain] = 0;
    return data + bronzeImpossible;
}

- (NSString *)StringFromExcitementData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ExcitementDataToCache:data]];
}

//: info must be fired in main thread
- (NSString *)kContentPlaceValue {
    /* static */ NSString *kContentPlaceValue = nil;
    if (!kContentPlaceValue) {
		NSString *origin = @"214E031B201821D21F272526D21417D2181B241716D21B20D21F131B20D2261A2417131617";
		NSData *data = [ExcitementData ExcitementDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPlaceValue = [self StringFromExcitementData:value];
    }
    return kContentPlaceValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationAdd.m
// Mortification
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitNotificationFirer.h"
#import "NotificationAdd.h"

//: NSString *const noti_cellUrl = @"noti_cellUrl";
NSString *const noti_cellUrl = @"noti_cellUrl";
//: NSString *const k_labelMsg = @"k_labelMsg";
NSString *const k_labelMsg = @"k_labelMsg";

//: NSString *const kAContextCellName = @"kAContextCellName";
NSString *const kAContextCellName = @"kAContextCellName";
//: NSString *const dream_infoFormat = @"dream_infoFormat";
NSString *const dream_infoFormat = @"dream_infoFormat";

//: NSString *const kUserStr = @"kUserStr";
NSString *const kUserStr = @"kUserStr";

//: NSString *const showDoingLoadData = @"InfoId";
NSString *const showDoingLoadData = @"InfoId";

//: @implementation FFFKitNotificationFirer
@implementation NotificationAdd

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[LargenessHolder alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)child:(KitInfo *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, [[ExcitementData sharedInstance] kContentPlaceValue]);
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer delegateMonitor:self.timeInterval repeats:self date:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.save];
}

//: #pragma mark - FFFKitTimerHolderDelegate
#pragma mark - CornerDelegate

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder{
- (void)shoulding:(LargenessHolder *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (KitInfo *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.vehicle) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.vehicle];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ showDoingLoadData:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ showDoingLoadData:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation KitInfo

//: - (NSObject *)fireObject
- (NSObject *)vehicle
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)save
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end
