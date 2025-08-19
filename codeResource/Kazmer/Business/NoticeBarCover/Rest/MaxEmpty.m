
#import <Foundation/Foundation.h>
typedef struct {
    Byte kin;
    Byte *damask;
    unsigned int operating;
    Byte excess;
	int mid;
} CardinalData;

NSString *StringFromCardinalData(CardinalData *data);


//: image/%@
CardinalData appEndPreparationPath = (CardinalData){141, (Byte []){228, 224, 236, 234, 232, 162, 168, 205, 206}, 8, 223, 254};

//: error = %@
CardinalData show_educationalId = (CardinalData){192, (Byte []){165, 178, 178, 175, 178, 224, 253, 224, 229, 128, 83}, 10, 254, 113};

//: text/xml
CardinalData k_cornPrimaryKey = (CardinalData){153, (Byte []){237, 252, 225, 237, 182, 225, 244, 245, 99}, 8, 209, 229};

//: WIFI
CardinalData m_evolutionKey = (CardinalData){195, (Byte []){148, 138, 133, 138, 36}, 4, 222, 4};

//: yyyyMMddHHmmss
CardinalData app_marchPath = (CardinalData){187, (Byte []){194, 194, 194, 194, 246, 246, 223, 223, 243, 243, 214, 214, 200, 200, 49}, 14, 211, 105};

//: application/json
CardinalData appPipeFormat = (CardinalData){142, (Byte []){239, 254, 254, 226, 231, 237, 239, 250, 231, 225, 224, 161, 228, 253, 225, 224, 190}, 16, 241, 99};

//: 未知网络
CardinalData notiBoomMessage = (CardinalData){49, (Byte []){215, 173, 155, 214, 174, 148, 214, 140, 160, 214, 138, 173, 206}, 12, 232, 233};

//: video
CardinalData mParishMessage = (CardinalData){47, (Byte []){89, 70, 75, 74, 64, 58}, 5, 220, 164};

//: text/javascript
CardinalData dream_removalId = (CardinalData){34, (Byte []){86, 71, 90, 86, 13, 72, 67, 84, 67, 81, 65, 80, 75, 82, 86, 221}, 15, 249, 5};

//: Download
CardinalData main_threadArrestIdent = (CardinalData){149, (Byte []){209, 250, 226, 251, 249, 250, 244, 241, 11}, 8, 157, 18};

//: jpg
CardinalData app_cooperateQuickUglyText = (CardinalData){178, (Byte []){216, 194, 213, 29}, 3, 227, 37};

//: 无网络
CardinalData userKillerStr = (CardinalData){95, (Byte []){185, 200, 255, 184, 226, 206, 184, 228, 195, 214}, 9, 200, 46};

//: responseObject = %@
CardinalData k_preciselyFormat = (CardinalData){255, (Byte []){141, 154, 140, 143, 144, 145, 140, 154, 176, 157, 149, 154, 156, 139, 223, 194, 223, 218, 191, 1}, 19, 255, 188};

//: image/*
CardinalData appTableUrl = (CardinalData){13, (Byte []){100, 96, 108, 106, 104, 34, 39, 92}, 7, 221, 92};

//: text/json
CardinalData dreamMagnitudeId = (CardinalData){106, (Byte []){30, 15, 18, 30, 69, 0, 25, 5, 4, 25}, 9, 183, 254};

//: thumb
CardinalData k_treatBoostKey = (CardinalData){146, (Byte []){230, 250, 231, 255, 240, 130}, 5, 221, 59};

//: image/jpg
CardinalData dreamDominateContent = (CardinalData){23, (Byte []){126, 122, 118, 112, 114, 56, 125, 103, 112, 28}, 9, 210, 155};

//: 手机自带网络
CardinalData m_powerWeepMsg = (CardinalData){123, (Byte []){157, 242, 240, 157, 231, 193, 147, 252, 209, 158, 195, 221, 156, 198, 234, 156, 192, 231, 212}, 18, 241, 57};

//: thumb.jpg
CardinalData mShowEquallyName = (CardinalData){255, (Byte []){139, 151, 138, 146, 157, 209, 149, 143, 152, 134}, 9, 182, 214};

//: text/html
CardinalData noti_hugeIdent = (CardinalData){26, (Byte []){110, 127, 98, 110, 53, 114, 110, 119, 118, 53}, 9, 228, 234};

//: text/plain
CardinalData app_coveText = (CardinalData){77, (Byte []){57, 40, 53, 57, 98, 61, 33, 44, 36, 35, 93}, 10, 187, 196};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxEmpty.m
//  MaxEmpty
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "MaxEmpty.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation MaxEmpty

//: static BOOL _isOpenLog; 
static BOOL appStateModelName; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *app_contextStr;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *app_customStr;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)with:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (appStateModelName) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&notiBoomMessage)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (appStateModelName) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&userKillerStr)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (appStateModelName) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&m_powerWeepMsg)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (appStateModelName) printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&m_evolutionKey)] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)sessionByNetwork {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)touchDown {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)bankManager {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)parent {
    //: _isOpenLog = YES;
    appStateModelName = YES;
}

//: + (void)closeLog {
+ (void)foregather {
    //: _isOpenLog = NO;
    appStateModelName = NO;
}

//: + (void)cancelAllRequest {
+ (void)blue {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self view] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self view] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)title:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self view] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self view] removeObject:task];
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
+ (NSURLSessionTask *)sumHire:(NSString *)URL
               //: parameters:(id)parameters
               touch:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  temp:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  woof:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self time:URL with:parameters spectralColor:nil manager:success viewSuccess:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)click:(NSString *)URL
                //: parameters:(id)parameters
                parameters:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   searchedForRequestSuccess:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   should:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self protrude:URL with:parameters input:nil session:success colorTo:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)time:(NSString *)URL
               //: parameters:(id)parameters
               with:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            spectralColor:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  manager:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  viewSuccess:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setInsertPressed:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [app_customStr GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)protrude:(NSString *)URL
                //: parameters:(id)parameters
                with:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             input:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   session:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   colorTo:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setInsertPressed:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)maxFailure:(NSString *)URL
                             //: parameters:(id)parameters
                             shoot:(id)parameters
                                   //: name:(NSString *)name
                                   item:(NSString *)name
                               //: filePath:(NSString *)filePath
                               time:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               show:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                everyTo:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                path:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)languageKey:(NSString *)URL
                                      //: parameters:(id)parameters
                                      button:(id)parameters
                                           //: video:(NSString *)videoPath
                                           with:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           label:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        referPress:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         image:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         roll:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:StringFromCardinalData(&mParishMessage) error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:StringFromCardinalData(&k_treatBoostKey)
                                //: fileName:@"thumb.jpg"
                                fileName:StringFromCardinalData(&mShowEquallyName)
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromCardinalData(&dreamDominateContent)]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

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
+ (__kindof NSURLSessionTask *)progress:(NSString *)URL
                                       //: parameters:(id)parameters
                                       screen:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            message:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         name:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          dittyBag:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          files:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)text:(NSString *)URL show:(id)parameters query:(NSString *)name standard:(NSData *)data change:(NSString *)fileName view_strong:(NSString *)imageType ting:(YLHttpProgress)progress goop:(YLHttpRequestSuccess)success shouldPress:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = StringFromCardinalData(&app_marchPath);
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:StringFromCardinalData(&app_cooperateQuickUglyText)];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:StringFromCardinalData(&app_cooperateQuickUglyText)] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromCardinalData(&appEndPreparationPath),imageType ?: StringFromCardinalData(&app_cooperateQuickUglyText)]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)information:(NSString *)URL
                               //: parameters:(id)parameters
                               mobile:(id)parameters
                                     //: name:(NSString *)name
                                     userVideo:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   selection:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                empty:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               labelFailure:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                custom:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 tag:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  voice:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  beginRequestFailed:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [app_customStr POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = StringFromCardinalData(&app_marchPath);
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:StringFromCardinalData(&app_cooperateQuickUglyText)];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:StringFromCardinalData(&app_cooperateQuickUglyText)] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:StringFromCardinalData(&appEndPreparationPath),imageType ?: StringFromCardinalData(&app_cooperateQuickUglyText)]];
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&k_preciselyFormat),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (appStateModelName) {printf("[%s] %s [第%d行]: %s\n", "12:18:47" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromCardinalData(&show_educationalId),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self view] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self view] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)background:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              stride_strong:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             need:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              determineFailure:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              intervalerval:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [app_customStr downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
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
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : StringFromCardinalData(&main_threadArrestIdent)];
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
        [[self view] removeObject:downloadTask];
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
    downloadTask ? [[self view] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)view {
    //: if (!_allSessionTask) {
    if (!app_contextStr) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        app_contextStr = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return app_contextStr;
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
    app_customStr = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    app_customStr.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    app_customStr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromCardinalData(&appPipeFormat), StringFromCardinalData(&noti_hugeIdent), StringFromCardinalData(&dreamMagnitudeId), StringFromCardinalData(&app_coveText), StringFromCardinalData(&dream_removalId), StringFromCardinalData(&k_cornPrimaryKey), StringFromCardinalData(&appTableUrl), nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setValueText:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(app_customStr) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setSizeStatus:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    app_customStr.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setInsertPressed:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    app_customStr.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setTableDHoteCounterval:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    app_customStr.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)than:(NSString *)value view:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [app_customStr.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)background:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)path:(NSString *)cerPath touchShould:(BOOL)validatesDomainName {
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
    [app_customStr setSecurityPolicy:securityPolicy];
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

Byte *CardinalDataToByte(CardinalData *data) {
    if (data->excess < 104) return data->damask;
    for (int i = 0; i < data->operating; i++) {
        data->damask[i] ^= data->kin;
    }
    data->damask[data->operating] = 0;
    data->excess = 6;
	if (data->operating >= 1) {
		data->mid = data->damask[0];
	}
    return data->damask;
}

NSString *StringFromCardinalData(CardinalData *data) {
    return [NSString stringWithUTF8String:(char *)CardinalDataToByte(data)];
}
