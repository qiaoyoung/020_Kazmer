
#import <Foundation/Foundation.h>

NSString *StringFromWaistBraData(Byte *data);        


//: /api
Byte kTitlePhenomenonValue[] = {38, 4, 37, 4, 10, 60, 75, 68, 95};

//: pushkit_voice_test
Byte kTitle_aircraftValue[] = {37, 18, 33, 7, 233, 173, 59, 79, 84, 82, 71, 74, 72, 83, 62, 85, 78, 72, 66, 68, 62, 83, 68, 82, 83, 199};

//: push_Kazmer_release
Byte kNamePeanutString[] = {57, 19, 48, 9, 48, 7, 198, 244, 252, 64, 69, 67, 56, 47, 27, 49, 74, 61, 53, 66, 47, 66, 53, 60, 53, 49, 67, 53, 163};

//: https://apple.akunjapan0206chat.com
Byte kText_overallRetiredName[] = {7, 35, 74, 7, 111, 199, 73, 30, 42, 42, 38, 41, 240, 229, 229, 23, 38, 38, 34, 27, 228, 23, 33, 43, 36, 32, 23, 38, 23, 36, 230, 232, 230, 236, 25, 30, 23, 42, 228, 25, 37, 35, 58};

//: https://kazmer.blob.core.windows.net/kaka/ka.txt
Byte kTitleSymbolGrateValue[] = {67, 48, 40, 12, 100, 240, 120, 180, 148, 132, 245, 251, 64, 76, 76, 72, 75, 18, 7, 7, 67, 57, 82, 69, 61, 74, 6, 58, 68, 71, 58, 6, 59, 71, 74, 61, 6, 79, 65, 70, 60, 71, 79, 75, 6, 70, 61, 76, 7, 67, 57, 67, 57, 7, 67, 57, 6, 76, 80, 76, 76};

//: api
Byte kName_allotString[] = {98, 3, 39, 4, 58, 73, 66, 212};

//: bb423e522c32002210fe5623f81a89ea
Byte kTextProudValue[] = {61, 32, 22, 12, 194, 92, 21, 134, 195, 205, 37, 204, 76, 76, 30, 28, 29, 79, 31, 28, 28, 77, 29, 28, 26, 26, 28, 28, 27, 26, 80, 79, 31, 32, 28, 29, 80, 34, 27, 75, 34, 35, 79, 75, 160};

//: http
Byte kName_doctrineData[] = {63, 4, 14, 11, 41, 148, 10, 12, 250, 72, 107, 90, 102, 102, 98, 156};

//: https://kazmer.s3.ap-northeast-1.amazonaws.com/ka.txt
Byte kTitle_screwData[] = {77, 53, 26, 13, 194, 66, 56, 47, 224, 58, 215, 46, 10, 78, 90, 90, 86, 89, 32, 21, 21, 81, 71, 96, 83, 75, 88, 20, 89, 25, 20, 71, 86, 19, 84, 85, 88, 90, 78, 75, 71, 89, 90, 19, 23, 20, 71, 83, 71, 96, 85, 84, 71, 93, 89, 20, 73, 85, 83, 21, 81, 71, 20, 90, 94, 90, 43};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContextTeam.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayConfig.h"
#import "ContextTeam.h"
//: #import "RestUtil.h"
#import "ParameterUtil.h"

//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const appSumMessage = @"SavedDomainKey";

//: @interface DisplayConfig ()
@interface ContextTeam ()

//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;
//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;

//: @end
@end

//: @implementation DisplayConfig
@implementation ContextTeam

//: - (NSString *)getCurrentDomain {
- (NSString *)betweenContainer {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *normalDomain = @"https://apple.akunjapan0206chat.com";
    NSString *normalDomain = StringFromWaistBraData(kText_overallRetiredName);
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: normalDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:appSumMessage] ?: normalDomain;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:StringFromWaistBraData(kTitlePhenomenonValue)])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromWaistBraData(kName_allotString)];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromWaistBraData(kTitlePhenomenonValue)];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)latestBubble:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [ParameterUtil margin:self.hostFrom
                   //: params:nil
                   domainMenu:nil
                  //: success:^(NSString *oss) {
                  paramsContent:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:StringFromWaistBraData(kName_doctrineData)]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:appSumMessage];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [ParameterUtil margin:self.hostFrom2
                           //: params:nil
                           domainMenu:nil
                          //: success:^(NSString *oss) {
                          paramsContent:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:StringFromWaistBraData(kName_doctrineData)]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:appSumMessage];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } appRestFail:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } appRestFail:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [ParameterUtil margin:self.hostFrom2
                       //: params:nil
                       domainMenu:nil
                      //: success:^(NSString *oss) {
                      paramsContent:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:StringFromWaistBraData(kName_doctrineData)]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:appSumMessage];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } appRestFail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    //: if (completion) completion(NO);
                    if (completion) completion(NO);
                //: }];
                }];
            //: }];
            }];


//    NSString *configURL = self.hostFrom; // 配置接口地址
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:configURL]];
//    
//    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        if (error || !data) {
//            if (completion) completion(NO);
//            return;
//        }
//        
////        // 解析响应数据（假设返回 JSON: {"domain": "https://api.new.com"}）
////        NSError *jsonError;
////        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
////        NSString *newDomain = json[@"domain"];
//        
//
//        NSString *newDomain = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//
//        
//        if (newDomain) {
//            // 保存新域名
//            [[NSUserDefaults standardUserDefaults] setObject:newDomain forKey:kSavedDomainKey];
//            [[NSUserDefaults standardUserDefaults] synchronize];
//            if (completion) completion(YES);
//        } else {
//            if (completion) completion(NO);
//        }
//    }];
//    
//    [task resume];
}

//: + (instancetype)sharedConfig
+ (instancetype)mutual
{
    //: static DisplayConfig *instance = nil;
    static ContextTeam *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[DisplayConfig alloc] init];
        instance = [[ContextTeam alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = StringFromWaistBraData(kTextProudValue);//本项目使用
//        _apiURL = @"https://app.netease.im/api";
        //: _apnsCername = @"push_Kazmer_release";
        _apnsCername = StringFromWaistBraData(kNamePeanutString);
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = StringFromWaistBraData(kTitle_aircraftValue);

        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://kazmer.blob.core.windows.net/kaka/ka.txt";
        self.hostFrom = StringFromWaistBraData(kTitleSymbolGrateValue);

        // 打包OSS-2
        //: self.hostFrom2 = @"https://kazmer.s3.ap-northeast-1.amazonaws.com/ka.txt";
        self.hostFrom2 = StringFromWaistBraData(kTitle_screwData);

//        保底域名
//        NSString *PreSetHost = @"https://apple.akunjapan0206chat.com";//⚠️警告：最后面不能有斜杠/
//
//        //如果包含了api则不处理了，否则就要加上api
//        if ([PreSetHost containsString:@"/api"])
//        {} else {
//            if ([PreSetHost hasSuffix:@"/"]) {
//                PreSetHost = [PreSetHost stringByAppendingString:@"api"];
//            } else {
//                PreSetHost = [PreSetHost stringByAppendingString:@"/api"];
//            }
//        }
//        self.domainURL = PreSetHost;


//        NSString *defaultHost = [[NSUserDefaults standardUserDefaults] stringForKey:@"HOST_KEY"] ? :@"";//本地存储的host
//        if (defaultHost.length > 0){
//            //如果包含了api则不处理了，否则就要加上api
//            if ([defaultHost containsString:@"/api"])
//            {} else {
//                if ([defaultHost hasSuffix:@"/"]) {
//                    defaultHost = [defaultHost stringByAppendingString:@"api"];
//                } else {
//                    defaultHost = [defaultHost stringByAppendingString:@"/api"];
//                }
//            }
//            self.domainURL = defaultHost;
//        }




//        void (^hostBlock)(NSString *HOST) = ^(NSString *HOST){
//           
////            if (!HOST || HOST.length < 5) {
////                HOST = [[NSString alloc] initWithString:PreSetHost];
////                NSLog(@"========>警告⚠️读不到网上的host");
////            }
//            
////            if ([HOST containsString:defaultHost]) {
////                _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
////            }
////            else
////            {
////                _allowAutoLogin = NO; //如果网上的host和本地的不一致，则禁止🈲️自动登录
////                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:@"HOST_KEY"];
////            }
////            
//            
//            //如果包含了api则不处理了，否则就要加上api
//            if ([HOST containsString:@"/api"])
//            {} else {
//                if ([HOST hasSuffix:@"/"]) {
//                    HOST = [HOST stringByAppendingString:@"api"];
//                } else {
//                    HOST = [HOST stringByAppendingString:@"/api"];
//                }
//            }
//                    
//            self.domainURL = [[NSString alloc] initWithString:HOST];//设置host主域名
//
//        };



//        @weakify(self);
//        __block NSString *HOST = @"";
//        [ParameterUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [ParameterUtil get:self.hostFrom2
//                       params:nil
//                      success:^(NSString *oss) {
//                    if ([oss hasPrefix:@"http"]) {
//                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    }
//                    hostBlock(HOST);
//                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
//                }];
//            }
//            
//        } fail:^(int code, NSString *msg) {
//            
//            [ParameterUtil get:self.hostFrom2
//                   params:nil
//                  success:^(NSString *oss) {
//                if ([oss hasPrefix:@"http"]) {
//                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                }
//                hostBlock(HOST);
//
//            } fail:^(int code, NSString *msg) {
//                hostBlock(HOST);
//
//            }];
//        }];

    }
    //: return self;
    return self;
}




//: @end
@end

Byte * WaistBraDataToCache(Byte *data) {
    int chopUp = data[0];
    int example = data[1];
    Byte modelCation = data[2];
    int porchFist = data[3];
    if (!chopUp) return data + porchFist;
    for (int i = porchFist; i < porchFist + example; i++) {
        int value = data[i] + modelCation;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[porchFist + example] = 0;
    return data + porchFist;
}

NSString *StringFromWaistBraData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WaistBraDataToCache(data)];
}
