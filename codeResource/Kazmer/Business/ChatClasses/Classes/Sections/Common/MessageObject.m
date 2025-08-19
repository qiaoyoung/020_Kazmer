
#import <Foundation/Foundation.h>

NSString *StringFromValueBubbleData(Byte *data);


//: info must be fired in main thread
Byte kCommentDeerStr[] = {70, 33, 5, 193, 165, 100, 97, 101, 114, 104, 116, 32, 110, 105, 97, 109, 32, 110, 105, 32, 100, 101, 114, 105, 102, 32, 101, 98, 32, 116, 115, 117, 109, 32, 111, 102, 110, 105, 117};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageObject.m
// ButtonKit
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitNotificationFirer.h"
#import "MessageObject.h"

//: NSString *const NIMKitUserInfoHasUpdatedNotification = @"NIMKitUserInfoHasUpdatedNotification";
NSString *const showSubmitId = @"NIMKitUserInfoHasUpdatedNotification";
//: NSString *const NIMKitTeamInfoHasUpdatedNotification = @"NIMKitTeamInfoHasUpdatedNotification";
NSString *const appHostTitle = @"NIMKitTeamInfoHasUpdatedNotification";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const show_tapPath = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const dreamBackMsg = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const NIMKitTeamMembersHasUpdatedNotification = @"NIMKitTeamMembersHasUpdatedNotification";
NSString *const kTextData = @"NIMKitTeamMembersHasUpdatedNotification";

//: NSString *const FFFKitInfoKey = @"InfoId";
NSString *const notiOnceValue = @"InfoId";

//: @implementation FFFKitNotificationFirer
@implementation MessageObject

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[UserCell alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)gildTheLily:(TimeInfo *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromValueBubbleData(kCommentDeerStr));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer countFor:self.timeInterval greenish:self analogDigitalConverterRepeats:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.lastIn];
}

//: #pragma mark - FFFKitTimerHolderDelegate
#pragma mark - AssemblageDelegate

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder{
- (void)alled:(UserCell *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (TimeInfo *info in self.cachedInfo.allValues) {
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
        if (info.geologicalFormation) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.geologicalFormation];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ FFFKitInfoKey:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ notiOnceValue:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation TimeInfo

//: - (NSObject *)fireObject
- (NSObject *)geologicalFormation
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
- (NSString *)lastIn
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

Byte * ValueBubbleDataToCache(Byte *data) {
    int rumenRemind = data[0];
    int becomeVanish = data[1];
    int collectiveShowControl = data[2];
    if (!rumenRemind) return data + collectiveShowControl;
    for (int i = 0; i < becomeVanish / 2; i++) {
        int begin = collectiveShowControl + i;
        int end = collectiveShowControl + becomeVanish - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[collectiveShowControl + becomeVanish] = 0;
    return data + collectiveShowControl;
}

NSString *StringFromValueBubbleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ValueBubbleDataToCache(data)];
}  
