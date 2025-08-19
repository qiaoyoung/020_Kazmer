
#import <Foundation/Foundation.h>
typedef struct {
    Byte palaceKey;
    Byte *reabsorb;
    unsigned int humannessTeenage;
    Byte coveDrum;
} ExtraData;

NSString *StringFromExtraData(ExtraData *data);


//: nimkit.url.query
ExtraData showCabinKey = (ExtraData){88, (Byte []){54, 49, 53, 51, 49, 44, 118, 45, 42, 52, 118, 41, 45, 61, 42, 33, 249}, 16, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KitShow.m
// ButtonKit
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitUrlManager.h"
#import "KitShow.h"
//: #import "FFFKitTimerHolder.h"
#import "UserCell.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NSString *const kNIMKitUrlDataKey = @"kNIMKitUrlDataKey";
NSString *const mainIndexMsg = @"kNIMKitUrlDataKey";

//: @interface FFFKitUrlManager ()<FFFKitTimerHolderDelegate>
@interface KitShow ()<AssemblageDelegate>

//: @property (nonatomic, strong) NSMutableDictionary *dic;
@property (nonatomic, strong) NSMutableDictionary *dic;

//: @property (nonatomic, strong) FFFKitTimerHolder *timer;
@property (nonatomic, strong) UserCell *timer;

//: @property (nonatomic, assign) BOOL needSync;
@property (nonatomic, assign) BOOL needSync;

//: @end
@end

//: @implementation FFFKitUrlManager
@implementation KitShow

//: + (instancetype)shareManager {
+ (instancetype)cornerShare {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static id instance = nil;
    static id instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFKitUrlManager alloc] init];
        instance = [[KitShow alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _dic = [self loadLocalFile];
        _dic = [self user];
        //: if (!_dic) {
        if (!_dic) {
            //: _dic = [NSMutableDictionary dictionary];
            _dic = [NSMutableDictionary dictionary];
        }
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[UserCell alloc] init];
        //: [_timer startTimer:5.0f delegate:self repeats:YES];
        [_timer countFor:5.0f greenish:self analogDigitalConverterRepeats:YES];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onEnterBackground:)
                                                 selector:@selector(optionBackground:)
                                                     //: name:UIApplicationDidEnterBackgroundNotification
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onTerminate:)
                                                 selector:@selector(countersectionned:)
                                                     //: name:UIApplicationWillTerminateNotification
                                                     name:UIApplicationWillTerminateNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)valueCompletion:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion {
                          beyondScreenForce:(NIMKitUrlCompletion)completion {
    //: NSError *error = nil;
    NSError *error = nil;
    //: if (!shortUrl) {
    if (!shortUrl) {
        //: error = [NSError errorWithDomain:@"nimkit.url.query" code:0x1000 userInfo:nil];
        error = [NSError errorWithDomain:StringFromExtraData(&showCabinKey) code:0x1000 userInfo:nil];
        //: if (completion) {
        if (completion) {
            //: completion(nil, error);
            completion(nil, error);
        }
        //: return;
        return;
    }

    //: NSString *ret = _dic[shortUrl];
    NSString *ret = _dic[shortUrl];
    //: if (ret.length != 0) {
    if (ret.length != 0) {
        //: if (completion) {
        if (completion) {
            //: completion(ret, nil);
            completion(ret, nil);
        }
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
    [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
                                                //: completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
                                                completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
        //: if (!error && urlString) {
        if (!error && urlString) {
            //: [weakSelf storeShortUrl:shortUrl originalUrl:urlString];
            [weakSelf display:shortUrl worsted:urlString];
        }
        //: if (completion) {
        if (completion) {
            //: completion(urlString, error);
            completion(urlString, error);
        }
    //: }];
    }];

}

//: - (void)storeShortUrl:(NSString *)shortUrl originalUrl:(NSString *)originalUrl {
- (void)display:(NSString *)shortUrl worsted:(NSString *)originalUrl {
    //: if (!shortUrl || !originalUrl) {
    if (!shortUrl || !originalUrl) {
        //: return;
        return;
    }
    //: if ([shortUrl isEqualToString:originalUrl]) {
    if ([shortUrl isEqualToString:originalUrl]) {
        //: return;
        return;
    }
    //: if (!_dic[shortUrl]) {
    if (!_dic[shortUrl]) {
        //: _dic[shortUrl] = [originalUrl copy];
        _dic[shortUrl] = [originalUrl copy];
        //: _needSync = YES;
        _needSync = YES;
    }
}

//: - (NSString *)originalUrlWithShortUrl:(NSString *)shortUrl {
- (NSString *)of:(NSString *)shortUrl {
    //: return _dic[shortUrl];
    return _dic[shortUrl];
}

//: - (NSMutableDictionary *)loadLocalFile {
- (NSMutableDictionary *)user {
    //: NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kNIMKitUrlDataKey];
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:mainIndexMsg];
    //: return [NSMutableDictionary dictionaryWithDictionary:dic];
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

//: - (void)syncToLocal {
- (void)margin {
    //: if (_needSync) {
    if (_needSync) {
        //: [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kNIMKitUrlDataKey];
        [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:mainIndexMsg];
        //: _needSync = NO;
        _needSync = NO;
    }
}

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder {
- (void)alled:(UserCell *)holder {
    //: if (holder != _timer) {
    if (holder != _timer) {
        //: return;
        return;
    }
    //: [self syncToLocal];
    [self margin];
}

//: - (void)onEnterBackground:(NSNotification *)note {
- (void)optionBackground:(NSNotification *)note {
    //: [self syncToLocal];
    [self margin];
}

//: - (void)onTerminate:(NSNotification *)note {
- (void)countersectionned:(NSNotification *)note {
    //: [self syncToLocal];
    [self margin];
}

//: @end
@end

Byte *ExtraDataToByte(ExtraData *data) {
    if (data->coveDrum < 143) return data->reabsorb;
    for (int i = 0; i < data->humannessTeenage; i++) {
        data->reabsorb[i] ^= data->palaceKey;
    }
    data->reabsorb[data->humannessTeenage] = 0;
    data->coveDrum = 81;
    return data->reabsorb;
}

NSString *StringFromExtraData(ExtraData *data) {
    return [NSString stringWithUTF8String:(char *)ExtraDataToByte(data)];
}
