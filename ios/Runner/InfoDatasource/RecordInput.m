
#import <Foundation/Foundation.h>

NSString *StringFromPhraseData(Byte *data);        


//: https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt
Byte user_constitutionalText[] = {72, 52, 5, 14, 219, 33, 214, 252, 73, 67, 2, 137, 20, 102, 99, 111, 111, 107, 110, 53, 42, 42, 109, 100, 113, 96, 109, 103, 92, 41, 106, 110, 110, 40, 94, 105, 40, 99, 106, 105, 98, 102, 106, 105, 98, 41, 92, 103, 100, 116, 112, 105, 94, 110, 41, 94, 106, 104, 42, 109, 100, 113, 41, 111, 115, 111, 62};

//: pushkit_voice_test
Byte app_formeTitle[] = {43, 18, 40, 5, 129, 72, 77, 75, 64, 67, 65, 76, 55, 78, 71, 65, 59, 61, 55, 76, 61, 75, 76, 156};

//: bb423e522c32002210fe5623f81a89ea
Byte mainTweePressedName[] = {82, 32, 27, 11, 63, 219, 169, 250, 47, 111, 101, 71, 71, 25, 23, 24, 74, 26, 23, 23, 72, 24, 23, 21, 21, 23, 23, 22, 21, 75, 74, 26, 27, 23, 24, 75, 29, 22, 70, 29, 30, 74, 70, 63};

//: http
Byte appRidgeKey[] = {46, 4, 47, 5, 240, 57, 69, 69, 65, 222};

//: api
Byte kHappinessFormat[] = {55, 3, 10, 7, 39, 183, 228, 87, 102, 95, 199};

//: /api
Byte m_scholarshipId[] = {37, 4, 64, 12, 80, 255, 1, 38, 200, 131, 27, 61, 239, 33, 48, 41, 210};

//: pushDev
Byte notiPurePeaceIdent[] = {2, 7, 1, 12, 56, 36, 161, 19, 96, 202, 104, 108, 111, 116, 114, 103, 67, 100, 117, 111};

//: https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt
Byte userOverKey[] = {26, 55, 90, 8, 253, 2, 84, 153, 14, 26, 26, 22, 25, 224, 213, 213, 24, 15, 28, 11, 24, 18, 7, 212, 25, 217, 212, 7, 22, 211, 25, 21, 27, 26, 14, 11, 7, 25, 26, 211, 215, 212, 7, 19, 7, 32, 21, 20, 7, 29, 25, 212, 9, 21, 19, 213, 24, 15, 28, 212, 26, 30, 26, 62};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordInput.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchConfig.h"
#import "RecordInput.h"
//: #import "RestUtil.h"
#import "PointUtil.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const main_rowId = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const user_dataUrl = @"SavedDomainKey";

//: @interface WatchConfig ()
@interface RecordInput ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation WatchConfig
@implementation RecordInput

//: + (instancetype)sharedConfig
+ (instancetype)file
{
    //: static WatchConfig *instance = nil;
    static RecordInput *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[WatchConfig alloc] init];
        instance = [[RecordInput alloc] init];
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
        _appKey = StringFromPhraseData(mainTweePressedName);//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername = @"push_Kazmer_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = StringFromPhraseData(app_formeTitle);
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
         self.hostFrom = @"https://kazmer.blob.core.windows.net/kaka/ka.txt";
//        self.hostFrom = StringFromPhraseData(user_constitutionalText);

        // 打包OSS-2
         self.hostFrom2 = @"https://kazmer.s3.ap-northeast-1.amazonaws.com/ka.txt";
//        self.hostFrom2 = StringFromPhraseData(userOverKey);

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
//        [PointUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [PointUtil get:self.hostFrom2
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
//            [PointUtil get:self.hostFrom2
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

//: - (NSString *)getCurrentDomain {
- (NSString *)screen {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:user_dataUrl] ?: main_rowId;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:StringFromPhraseData(m_scholarshipId)])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromPhraseData(kHappinessFormat)];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromPhraseData(m_scholarshipId)];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)maxToCompletionUp:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [PointUtil sound:self.hostFrom
                   //: params:nil
                   messageMenu:nil
                  //: success:^(NSString *oss) {
                  hide:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:StringFromPhraseData(appRidgeKey)]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:user_dataUrl];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [PointUtil sound:self.hostFrom2
                           //: params:nil
                           messageMenu:nil
                          //: success:^(NSString *oss) {
                          hide:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:StringFromPhraseData(appRidgeKey)]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:user_dataUrl];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } view:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } view:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [PointUtil sound:self.hostFrom2
                       //: params:nil
                       messageMenu:nil
                      //: success:^(NSString *oss) {
                      hide:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:StringFromPhraseData(appRidgeKey)]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:user_dataUrl];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } view:^(int code, NSString *msg) {
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




//: @end
@end

Byte * PhraseDataToCache(Byte *data) {
    int totalellectual = data[0];
    int treat = data[1];
    Byte education = data[2];
    int barMax = data[3];
    if (!totalellectual) return data + barMax;
    for (int i = barMax; i < barMax + treat; i++) {
        int value = data[i] + education;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[barMax + treat] = 0;
    return data + barMax;
}

NSString *StringFromPhraseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PhraseDataToCache(data)];
}
