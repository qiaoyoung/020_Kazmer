
#import <Foundation/Foundation.h>

@interface PeopleData : NSObject

@end

@implementation PeopleData

+ (Byte *)PeopleDataToCache:(Byte *)data {
    int correct = data[0];
    Byte coveStrengthenBalance = data[1];
    int successPop = data[2];
    for (int i = successPop; i < successPop + correct; i++) {
        int value = data[i] - coveStrengthenBalance;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[successPop + correct] = 0;
    return data + successPop;
}

+ (NSString *)StringFromPeopleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PeopleDataToCache:data]];
}

//: text/json
+ (NSString *)mShirtIdent {
    /* static */ NSString *mShirtIdent = nil;
    if (!mShirtIdent) {
        Byte value[] = {9, 64, 5, 161, 140, 180, 165, 184, 180, 111, 170, 179, 175, 174, 91};
        mShirtIdent = [self StringFromPeopleData:value];
    }
    return mShirtIdent;
}

//: image/*
+ (NSString *)dream_fuelId {
    /* static */ NSString *dream_fuelId = nil;
    if (!dream_fuelId) {
        Byte value[] = {7, 75, 11, 9, 249, 189, 169, 157, 12, 194, 199, 180, 184, 172, 178, 176, 122, 117, 18};
        dream_fuelId = [self StringFromPeopleData:value];
    }
    return dream_fuelId;
}

//: gif
+ (NSString *)appMuscleTitle {
    /* static */ NSString *appMuscleTitle = nil;
    if (!appMuscleTitle) {
        Byte value[] = {3, 38, 11, 71, 216, 32, 72, 232, 184, 39, 13, 141, 143, 140, 75};
        appMuscleTitle = [self StringFromPeopleData:value];
    }
    return appMuscleTitle;
}

//: 网络错误
+ (NSString *)dream_feedReputationContent {
    /* static */ NSString *dream_feedReputationContent = nil;
    if (!dream_feedReputationContent) {
        Byte value[] = {12, 57, 13, 73, 235, 114, 68, 190, 196, 34, 75, 161, 234, 32, 246, 202, 32, 244, 213, 34, 205, 210, 33, 232, 232, 87};
        dream_feedReputationContent = [self StringFromPeopleData:value];
    }
    return dream_feedReputationContent;
}

//: 连接错误
+ (NSString *)dreamThoroughlyContent {
    /* static */ NSString *dreamThoroughlyContent = nil;
    if (!dreamThoroughlyContent) {
        Byte value[] = {12, 66, 13, 168, 46, 123, 7, 231, 105, 159, 148, 65, 6, 42, 1, 224, 40, 208, 231, 43, 214, 219, 42, 241, 241, 201};
        dreamThoroughlyContent = [self StringFromPeopleData:value];
    }
    return dreamThoroughlyContent;
}

//: http
+ (NSString *)mCommitteeData {
    /* static */ NSString *mCommitteeData = nil;
    if (!mCommitteeData) {
        Byte value[] = {4, 71, 9, 69, 226, 27, 14, 169, 146, 175, 187, 187, 183, 64};
        mCommitteeData = [self StringFromPeopleData:value];
    }
    return mCommitteeData;
}

//: code
+ (NSString *)dream_maxUrl {
    /* static */ NSString *dream_maxUrl = nil;
    if (!dream_maxUrl) {
        Byte value[] = {4, 71, 13, 196, 15, 115, 53, 86, 119, 18, 253, 133, 47, 170, 182, 171, 172, 63};
        dream_maxUrl = [self StringFromPeopleData:value];
    }
    return dream_maxUrl;
}

//: msg
+ (NSString *)app_showPath {
    /* static */ NSString *app_showPath = nil;
    if (!app_showPath) {
        Byte value[] = {3, 57, 13, 29, 198, 4, 98, 240, 106, 84, 29, 247, 185, 166, 172, 160, 32};
        app_showPath = [self StringFromPeopleData:value];
    }
    return app_showPath;
}

//: text/javascript
+ (NSString *)user_sandwichData {
    /* static */ NSString *user_sandwichData = nil;
    if (!user_sandwichData) {
        Byte value[] = {15, 40, 5, 24, 239, 156, 141, 160, 156, 87, 146, 137, 158, 137, 155, 139, 154, 145, 152, 156, 5};
        user_sandwichData = [self StringFromPeopleData:value];
    }
    return user_sandwichData;
}

//: 系统错误～
+ (NSString *)showCoachUrl {
    /* static */ NSString *showCoachUrl = nil;
    if (!showCoachUrl) {
        Byte value[] = {15, 19, 10, 82, 149, 193, 49, 170, 216, 202, 250, 198, 206, 250, 206, 178, 252, 167, 172, 251, 194, 194, 2, 208, 177, 30};
        showCoachUrl = [self StringFromPeopleData:value];
    }
    return showCoachUrl;
}

//: image
+ (NSString *)dreamEstheticMessage {
    /* static */ NSString *dreamEstheticMessage = nil;
    if (!dreamEstheticMessage) {
        Byte value[] = {5, 69, 3, 174, 178, 166, 172, 170, 82};
        dreamEstheticMessage = [self StringFromPeopleData:value];
    }
    return dreamEstheticMessage;
}

//: data
+ (NSString *)user_seemMessage {
    /* static */ NSString *user_seemMessage = nil;
    if (!user_seemMessage) {
        Byte value[] = {4, 62, 8, 103, 231, 128, 3, 218, 162, 159, 178, 159, 239};
        user_seemMessage = [self StringFromPeopleData:value];
    }
    return user_seemMessage;
}

//: application/json
+ (NSString *)appPrimaryIsolateCompanyText {
    /* static */ NSString *appPrimaryIsolateCompanyText = nil;
    if (!appPrimaryIsolateCompanyText) {
        Byte value[] = {16, 53, 7, 221, 169, 210, 192, 150, 165, 165, 161, 158, 152, 150, 169, 158, 164, 163, 100, 159, 168, 164, 163, 247};
        appPrimaryIsolateCompanyText = [self StringFromPeopleData:value];
    }
    return appPrimaryIsolateCompanyText;
}

//: file
+ (NSString *)main_techData {
    /* static */ NSString *main_techData = nil;
    if (!main_techData) {
        Byte value[] = {4, 82, 6, 2, 64, 250, 184, 187, 190, 183, 182};
        main_techData = [self StringFromPeopleData:value];
    }
    return main_techData;
}

//: text/plain
+ (NSString *)k_additionalMessage {
    /* static */ NSString *k_additionalMessage = nil;
    if (!k_additionalMessage) {
        Byte value[] = {10, 44, 3, 160, 145, 164, 160, 91, 156, 152, 141, 149, 154, 162};
        k_additionalMessage = [self StringFromPeopleData:value];
    }
    return k_additionalMessage;
}

//: png
+ (NSString *)show_addUrl {
    /* static */ NSString *show_addUrl = nil;
    if (!show_addUrl) {
        Byte value[] = {3, 50, 11, 90, 221, 235, 126, 133, 3, 198, 202, 162, 160, 153, 182};
        show_addUrl = [self StringFromPeopleData:value];
    }
    return show_addUrl;
}

//: jpg
+ (NSString *)k_producerText {
    /* static */ NSString *k_producerText = nil;
    if (!k_producerText) {
        Byte value[] = {3, 64, 10, 69, 45, 159, 57, 38, 11, 161, 170, 176, 167, 37};
        k_producerText = [self StringFromPeopleData:value];
    }
    return k_producerText;
}

//: text/xml
+ (NSString *)dreamDareStr {
    /* static */ NSString *dreamDareStr = nil;
    if (!dreamDareStr) {
        Byte value[] = {8, 54, 12, 181, 242, 213, 145, 40, 82, 254, 200, 247, 170, 155, 174, 170, 101, 174, 163, 162, 31};
        dreamDareStr = [self StringFromPeopleData:value];
    }
    return dreamDareStr;
}

//: 连接失败,请检查网络连接
+ (NSString *)kThroughCueKey {
    /* static */ NSString *kThroughCueKey = nil;
    if (!kThroughCueKey) {
        Byte value[] = {34, 34, 6, 56, 157, 126, 10, 225, 192, 8, 176, 199, 7, 198, 211, 10, 214, 199, 78, 10, 209, 217, 8, 197, 162, 8, 193, 199, 9, 223, 179, 9, 221, 190, 10, 225, 192, 8, 176, 199, 187};
        kThroughCueKey = [self StringFromPeopleData:value];
    }
    return kThroughCueKey;
}

//: jpeg
+ (NSString *)appAdviseUrl {
    /* static */ NSString *appAdviseUrl = nil;
    if (!appAdviseUrl) {
        Byte value[] = {4, 87, 7, 83, 193, 246, 164, 193, 199, 188, 190, 98};
        appAdviseUrl = [self StringFromPeopleData:value];
    }
    return appAdviseUrl;
}

//: img_%@.jpg
+ (NSString *)noti_heavilyData {
    /* static */ NSString *noti_heavilyData = nil;
    if (!noti_heavilyData) {
        Byte value[] = {10, 54, 11, 114, 105, 142, 114, 123, 23, 144, 240, 159, 163, 157, 149, 91, 118, 100, 160, 166, 157, 178};
        noti_heavilyData = [self StringFromPeopleData:value];
    }
    return noti_heavilyData;
}

//: text/html
+ (NSString *)show_positionName {
    /* static */ NSString *show_positionName = nil;
    if (!show_positionName) {
        Byte value[] = {9, 65, 12, 39, 79, 14, 225, 132, 254, 192, 25, 253, 181, 166, 185, 181, 112, 169, 181, 174, 173, 200};
        show_positionName = [self StringFromPeopleData:value];
    }
    return show_positionName;
}

//: upload错误：%@
+ (NSString *)main_midKey {
    /* static */ NSString *main_midKey = nil;
    if (!main_midKey) {
        Byte value[] = {17, 39, 9, 11, 69, 248, 165, 94, 17, 156, 151, 147, 150, 136, 139, 16, 187, 192, 15, 214, 214, 22, 227, 193, 76, 103, 35};
        main_midKey = [self StringFromPeopleData:value];
    }
    return main_midKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointUtil.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "PointUtil.h"
//: #import "YLNetworkHelper.h"
#import "MaxEmpty.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation PointUtil

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)name:(NSString *)url provider:(NSDictionary *)params line:(YLRestSuccess)success domain:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [MaxEmpty setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[PeopleData mCommitteeData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [PeopleData kThroughCueKey]);
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [MaxEmpty click:url parameters:params searchedForRequestSuccess:^(id response) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res;
        NSDictionary *res;
        //: if ([response isKindOfClass:[NSData class]]){
        if ([response isKindOfClass:[NSData class]]){
            //: res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
            res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
        //: } else {
        } else {
            //: res = (NSDictionary *)response;
            res = (NSDictionary *)response;
        }

        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } should:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",[PeopleData dreamThoroughlyContent]]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, [PeopleData dream_feedReputationContent]);
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)sound:(NSString *)url messageMenu:(NSDictionary *)params hide:(YLRestSuccess)success view:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [MaxEmpty setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[PeopleData mCommitteeData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [PeopleData kThroughCueKey]);
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[PeopleData appPrimaryIsolateCompanyText], [PeopleData show_positionName], [PeopleData mShirtIdent], [PeopleData k_additionalMessage], [PeopleData user_sandwichData], [PeopleData dreamDareStr], [PeopleData dream_fuelId], nil];
    //: [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];


    //: NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if ([responseObject isKindOfClass:[NSData class]]){
        if ([responseObject isKindOfClass:[NSData class]]){
            //: NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            //: success ? success(str) : nil;
            success ? success(str) : nil;
        //: } else if ([responseObject isKindOfClass:[NSString class]]){
        } else if ([responseObject isKindOfClass:[NSString class]]){
            //: success ? success(responseObject) : nil;
            success ? success(responseObject) : nil;
        }

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [MaxEmpty GET:url parameters:params success:^(id response) {
//
//        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
//        //        success(responseObject);
//
//        NSString *dataStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
//        if (dataStr.length > 0) {
//            success(dataStr);
//        } else {
//            fail(-1,@"OSS系统错误～");
//        }
//    } failure:^(NSError *error) {
//        NSArray *array = [url componentsSeparatedByString:@"/"];
//        if (array.count){
//            fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
//        } else {
//            fail(-1, @"网络错误");
//        }
//    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)clear:(NSString *)url number:(NSDictionary *)params tool_strong:(NSArray *)images disable:(YLRestSuccess)success cell:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [MaxEmpty information:url mobile:params userVideo:[PeopleData dreamEstheticMessage] selection:images empty:nil labelFailure:0.8f custom:[PeopleData appAdviseUrl] tag:nil voice:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[PeopleData main_midKey],msg]);
        }
    //: } failure:^(NSError *error) {
    } beginRequestFailed:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)accountFail:(NSString *)url pathOn:(NSDictionary *)params key:(NSData *)data showFail:(YLRestSuccess)success pressStorage:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:[PeopleData noti_heavilyData],[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = [PeopleData k_producerText];
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = [PeopleData appMuscleTitle];
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = [PeopleData show_addUrl];
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [MaxEmpty text:url show:params query:[PeopleData dreamEstheticMessage] standard:data change:fileName view_strong:imageType ting:nil goop:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[PeopleData main_midKey],msg]);
        }
    //: } failure:^(NSError *error) {
    } shouldPress:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)params:(NSString *)url date_strong:(NSDictionary *)params bar:(NSString *)file with:(YLRestSuccess)success rangeByMessage:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [MaxEmpty maxFailure:url shoot:params item:[PeopleData main_techData] time:file show:nil everyTo:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[PeopleData main_midKey],msg]);
        }
    //: } failure:^(NSError *error) {
    } path:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)text:(NSString *)url domain:(NSDictionary *)params distance:(NSDictionary<NSString*, NSString*> *)files viewRestSuccess:(YLRestSuccess)success targetRestFail:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [MaxEmpty progress:url screen:params message:files name:nil dittyBag:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[PeopleData main_midKey],msg]);
        }
    //: } failure:^(NSError *error) {
    } files:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)bubble:(NSString *)url query:(NSDictionary *)params total:(NSString*)videoPath keyTo:(UIImage*)thumb upload:(YLRestSuccess)success pollexRestFail:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [MaxEmpty languageKey:url button:params with:videoPath label:thumb referPress:nil image:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res userValue:[PeopleData dream_maxUrl] index:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[PeopleData user_seemMessage]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res comparable:[PeopleData app_showPath] progress:[PeopleData showCoachUrl]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[PeopleData main_midKey],msg]);
        }
    //: } failure:^(NSError *error) {
    } roll:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [PeopleData dream_feedReputationContent]);
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)magnitude:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return [PeopleData k_producerText];
    }
    //: uint8_t c;
    uint8_t c;
    //: [data getBytes:&c length:1];
    [data getBytes:&c length:1];
    //: switch (c) {
    switch (c) {
        //: case 0xFF:
        case 0xFF:
            //: return @"jpg";
            return [PeopleData k_producerText];
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return [PeopleData show_addUrl];
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return [PeopleData appMuscleTitle];
        //: default:
        default:
            //: return @"jpg";
            return [PeopleData k_producerText];
    }
}


//: @end
@end