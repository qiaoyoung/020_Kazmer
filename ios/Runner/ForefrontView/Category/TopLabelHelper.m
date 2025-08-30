
#import <Foundation/Foundation.h>

@interface AdministrativeDistrictData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AdministrativeDistrictData

+ (instancetype)sharedInstance {
    static AdministrativeDistrictData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AdministrativeDistrictDataToCache:(Byte *)data {
    int comprehensible = data[0];
    Byte ratedPrivacy = data[1];
    int religion = data[2];
    for (int i = religion; i < religion + comprehensible; i++) {
        int value = data[i] + ratedPrivacy;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[religion + comprehensible] = 0;
    return data + religion;
}

- (NSString *)StringFromAdministrativeDistrictData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AdministrativeDistrictDataToCache:data]];
}

//: text/plain
- (NSString *)kText_clinicIronString {
    /* static */ NSString *kText_clinicIronString = nil;
    if (!kText_clinicIronString) {
        Byte value[] = {10, 80, 9, 222, 22, 130, 4, 87, 83, 36, 21, 40, 36, 223, 32, 28, 17, 25, 30, 116};
        kText_clinicIronString = [self StringFromAdministrativeDistrictData:value];
    }
    return kText_clinicIronString;
}

//: yyyyMMddHHmmss
- (NSString *)kNameShelfString {
    /* static */ NSString *kNameShelfString = nil;
    if (!kNameShelfString) {
        Byte value[] = {14, 34, 10, 81, 69, 135, 72, 25, 175, 159, 87, 87, 87, 87, 43, 43, 66, 66, 38, 38, 75, 75, 81, 81, 127};
        kNameShelfString = [self StringFromAdministrativeDistrictData:value];
    }
    return kNameShelfString;
}

//: text/javascript
- (NSString *)kNameVitaminEquivalentValue {
    /* static */ NSString *kNameVitaminEquivalentValue = nil;
    if (!kNameVitaminEquivalentValue) {
        Byte value[] = {15, 62, 7, 225, 64, 2, 214, 54, 39, 58, 54, 241, 44, 35, 56, 35, 53, 37, 52, 43, 50, 54, 108};
        kNameVitaminEquivalentValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kNameVitaminEquivalentValue;
}

//: error = %@
- (NSString *)kText_seldomAughtSemenData {
    /* static */ NSString *kText_seldomAughtSemenData = nil;
    if (!kText_seldomAughtSemenData) {
        Byte value[] = {10, 8, 5, 204, 115, 93, 106, 106, 103, 106, 24, 53, 24, 29, 56, 99};
        kText_seldomAughtSemenData = [self StringFromAdministrativeDistrictData:value];
    }
    return kText_seldomAughtSemenData;
}

//: thumb.jpg
- (NSString *)kTitleGreetData {
    /* static */ NSString *kTitleGreetData = nil;
    if (!kTitleGreetData) {
        Byte value[] = {9, 44, 5, 176, 58, 72, 60, 73, 65, 54, 2, 62, 68, 59, 20};
        kTitleGreetData = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleGreetData;
}

//: WIFI
- (NSString *)kTextRegulationPosterValue {
    /* static */ NSString *kTextRegulationPosterValue = nil;
    if (!kTextRegulationPosterValue) {
        Byte value[] = {4, 40, 5, 76, 102, 47, 33, 30, 33, 255};
        kTextRegulationPosterValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTextRegulationPosterValue;
}

//: Download
- (NSString *)kTitleDiscoMarriedButValue {
    /* static */ NSString *kTitleDiscoMarriedButValue = nil;
    if (!kTitleDiscoMarriedButValue) {
        Byte value[] = {8, 64, 13, 228, 128, 33, 189, 25, 2, 108, 41, 147, 175, 4, 47, 55, 46, 44, 47, 33, 36, 178};
        kTitleDiscoMarriedButValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleDiscoMarriedButValue;
}

//: application/json
- (NSString *)kTitleSheetData {
    /* static */ NSString *kTitleSheetData = nil;
    if (!kTitleSheetData) {
        Byte value[] = {16, 1, 11, 164, 74, 150, 148, 106, 101, 183, 172, 96, 111, 111, 107, 104, 98, 96, 115, 104, 110, 109, 46, 105, 114, 110, 109, 209};
        kTitleSheetData = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleSheetData;
}

//: responseObject = %@
- (NSString *)kTitleLiteralValue {
    /* static */ NSString *kTitleLiteralValue = nil;
    if (!kTitleLiteralValue) {
        Byte value[] = {19, 52, 11, 131, 191, 191, 62, 5, 88, 107, 216, 62, 49, 63, 60, 59, 58, 63, 49, 27, 46, 54, 49, 47, 64, 236, 9, 236, 241, 12, 131};
        kTitleLiteralValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleLiteralValue;
}

//: 手机自带网络
- (NSString *)kTitleSealValue {
    /* static */ NSString *kTitleSealValue = nil;
    if (!kTitleSealValue) {
        Byte value[] = {18, 56, 8, 93, 76, 37, 72, 148, 174, 81, 83, 174, 100, 130, 176, 79, 114, 173, 128, 110, 175, 133, 89, 175, 131, 100, 101};
        kTitleSealValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleSealValue;
}

//: 无网络
- (NSString *)kName_lowlyThinkString {
    /* static */ NSString *kName_lowlyThinkString = nil;
    if (!kName_lowlyThinkString) {
        Byte value[] = {9, 21, 6, 109, 128, 171, 209, 130, 139, 210, 168, 124, 210, 166, 135, 251};
        kName_lowlyThinkString = [self StringFromAdministrativeDistrictData:value];
    }
    return kName_lowlyThinkString;
}

//: text/xml
- (NSString *)kTextDoctrineValue {
    /* static */ NSString *kTextDoctrineValue = nil;
    if (!kTextDoctrineValue) {
        Byte value[] = {8, 34, 5, 181, 254, 82, 67, 86, 82, 13, 86, 75, 74, 76};
        kTextDoctrineValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTextDoctrineValue;
}

//: text/json
- (NSString *)kNameHydraString {
    /* static */ NSString *kNameHydraString = nil;
    if (!kNameHydraString) {
        Byte value[] = {9, 19, 9, 97, 248, 22, 24, 222, 137, 97, 82, 101, 97, 28, 87, 96, 92, 91, 121};
        kNameHydraString = [self StringFromAdministrativeDistrictData:value];
    }
    return kNameHydraString;
}

//: text/html
- (NSString *)kTitleLungValue {
    /* static */ NSString *kTitleLungValue = nil;
    if (!kTitleLungValue) {
        Byte value[] = {9, 57, 8, 12, 153, 239, 255, 201, 59, 44, 63, 59, 246, 47, 59, 52, 51, 208};
        kTitleLungValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleLungValue;
}

//: 未知网络
- (NSString *)kTitle_aircraftData {
    /* static */ NSString *kTitle_aircraftData = nil;
    if (!kTitle_aircraftData) {
        Byte value[] = {12, 76, 8, 201, 112, 39, 242, 134, 154, 80, 94, 155, 83, 89, 155, 113, 69, 155, 111, 80, 75};
        kTitle_aircraftData = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitle_aircraftData;
}

//: jpg
- (NSString *)kName_castValue {
    /* static */ NSString *kName_castValue = nil;
    if (!kName_castValue) {
        Byte value[] = {3, 16, 6, 96, 66, 73, 90, 96, 87, 217};
        kName_castValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kName_castValue;
}

//: thumb
- (NSString *)kContent_modelString {
    /* static */ NSString *kContent_modelString = nil;
    if (!kContent_modelString) {
        Byte value[] = {5, 10, 12, 149, 139, 24, 33, 192, 51, 167, 176, 83, 106, 94, 107, 99, 88, 174};
        kContent_modelString = [self StringFromAdministrativeDistrictData:value];
    }
    return kContent_modelString;
}

//: video
- (NSString *)kTitleStableValue {
    /* static */ NSString *kTitleStableValue = nil;
    if (!kTitleStableValue) {
        Byte value[] = {5, 89, 7, 243, 163, 215, 197, 29, 16, 11, 12, 22, 67};
        kTitleStableValue = [self StringFromAdministrativeDistrictData:value];
    }
    return kTitleStableValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TopLabelHelper.m
//  TopLabelHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "TopLabelHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation TopLabelHelper

//: static BOOL _isOpenLog; 
static BOOL dreamButtonFormat; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *mOffMsg;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *user_panMsg;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)viewBlock:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (dreamButtonFormat) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitle_aircraftData]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (dreamButtonFormat) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kName_lowlyThinkString]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (dreamButtonFormat) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleSealValue]] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (dreamButtonFormat) printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTextRegulationPosterValue]] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)timeSession {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)bar {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)pushOrTextNetwork {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)info {
    //: _isOpenLog = YES;
    dreamButtonFormat = YES;
}

//: + (void)closeLog {
+ (void)temp {
    //: _isOpenLog = NO;
    dreamButtonFormat = NO;
}

//: + (void)cancelAllRequest {
+ (void)size {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self with] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self with] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)cipher:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self with] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self with] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)language:(NSString *)URL
               //: parameters:(id)parameters
               duringCan:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  view:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  tap:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self send:URL press:parameters failure:nil reliquary:success pathNameImage:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)outpostMax:(NSString *)URL
                //: parameters:(id)parameters
                successNameFailure:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   holder:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   alongFailure:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self viewRange:URL tip:parameters noneStart:nil temp:success searchDoing:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)send:(NSString *)URL
               //: parameters:(id)parameters
               press:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            failure:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  reliquary:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  pathNameImage:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setRoundResponse:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [user_panMsg GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)viewRange:(NSString *)URL
                //: parameters:(id)parameters
                tip:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             noneStart:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   temp:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   searchDoing:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setRoundResponse:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)tip:(NSString *)URL
                             //: parameters:(id)parameters
                             key:(id)parameters
                                   //: name:(NSString *)name
                                   background:(NSString *)name
                               //: filePath:(NSString *)filePath
                               date:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               from:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                tapFailure:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                mobileSelected:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)upload:(NSString *)URL
                                      //: parameters:(id)parameters
                                      nonconformance:(id)parameters
                                           //: video:(NSString *)videoPath
                                           manager:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           cell:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        view:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         forward:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         model:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:[[AdministrativeDistrictData sharedInstance] kTitleStableValue] error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:[[AdministrativeDistrictData sharedInstance] kContent_modelString]
                                //: fileName:@"thumb.jpg"
                                fileName:[[AdministrativeDistrictData sharedInstance] kTitleGreetData]
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:@"image/jpg"]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)showBlack:(NSString *)URL
                                       //: parameters:(id)parameters
                                       uploadMyRelapse:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            makeQuick:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         press:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          border:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          withToFailure:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)uploadInNonachievement:(NSString *)URL honkyTonkData:(id)parameters invite:(NSString *)name falseTextFailure:(NSData *)data denomination:(NSString *)fileName bubble:(NSString *)imageType can:(YLHttpProgress)progress toFailure:(YLHttpRequestSuccess)success touch:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = [[AdministrativeDistrictData sharedInstance] kNameShelfString];
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:[[AdministrativeDistrictData sharedInstance] kName_castValue]];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:[[AdministrativeDistrictData sharedInstance] kName_castValue]] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: [[AdministrativeDistrictData sharedInstance] kName_castValue]]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)showFailure:(NSString *)URL
                               //: parameters:(id)parameters
                               to:(id)parameters
                                     //: name:(NSString *)name
                                     colour:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   send:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                stop:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               infoFloat:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                elect:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 view:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  container:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  value:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [user_panMsg POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [[AdministrativeDistrictData sharedInstance] kNameShelfString];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[[AdministrativeDistrictData sharedInstance] kName_castValue]];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[[AdministrativeDistrictData sharedInstance] kName_castValue]] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: [[AdministrativeDistrictData sharedInstance] kName_castValue]]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kTitleLiteralValue],responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (dreamButtonFormat) {printf("[%s] %s [第%d行]: %s\n", "23:57:30" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[[AdministrativeDistrictData sharedInstance] kText_seldomAughtSemenData],error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self with] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self with] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)providerFailure:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              occurrentOf:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             numberHttpProgress:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              threadEnable:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              reply:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [user_panMsg downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [[AdministrativeDistrictData sharedInstance] kTitleDiscoMarriedButValue]];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];

    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self with] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self with] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)with {
    //: if (!_allSessionTask) {
    if (!mOffMsg) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        mOffMsg = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return mOffMsg;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    user_panMsg = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    user_panMsg.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    user_panMsg.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[[AdministrativeDistrictData sharedInstance] kTitleSheetData], [[AdministrativeDistrictData sharedInstance] kTitleLungValue], [[AdministrativeDistrictData sharedInstance] kNameHydraString], [[AdministrativeDistrictData sharedInstance] kText_clinicIronString], [[AdministrativeDistrictData sharedInstance] kNameVitaminEquivalentValue], [[AdministrativeDistrictData sharedInstance] kTextDoctrineValue], @"image/*", nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setPerchDownwardSessionProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(user_panMsg) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setNumbererpret:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    user_panMsg.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setRoundResponse:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    user_panMsg.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setTitle:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    user_panMsg.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)songbook:(NSString *)value view:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [user_panMsg.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)cell:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)need:(NSString *)cerPath media:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [user_panMsg setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end
//: __SAVE__ ignore_string [515.5]