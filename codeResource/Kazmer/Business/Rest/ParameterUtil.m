
#import <Foundation/Foundation.h>

@interface EyebrowFlowerData : NSObject

@end

@implementation EyebrowFlowerData

+ (Byte *)EyebrowFlowerDataToCache:(Byte *)data {
    int fileMilk = data[0];
    int abduct = data[1];
    for (int i = 0; i < fileMilk / 2; i++) {
        int begin = abduct + i;
        int end = abduct + fileMilk - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[abduct + fileMilk] = 0;
    return data + abduct;
}

+ (NSString *)StringFromEyebrowFlowerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EyebrowFlowerDataToCache:data]];
}  

//: 网络错误
+ (NSString *)kTitleGravityRecordString {
    /* static */ NSString *kTitleGravityRecordString = nil;
    if (!kTitleGravityRecordString) {
        Byte value[] = {12, 10, 64, 228, 7, 37, 201, 148, 77, 53, 175, 175, 232, 153, 148, 233, 156, 187, 231, 145, 189, 231, 223};
        kTitleGravityRecordString = [self StringFromEyebrowFlowerData:value];
    }
    return kTitleGravityRecordString;
}

//: text/json
+ (NSString *)kNameRegulatorString {
    /* static */ NSString *kNameRegulatorString = nil;
    if (!kNameRegulatorString) {
        Byte value[] = {9, 7, 154, 177, 136, 140, 194, 110, 111, 115, 106, 47, 116, 120, 101, 116, 22};
        kNameRegulatorString = [self StringFromEyebrowFlowerData:value];
    }
    return kNameRegulatorString;
}

//: png
+ (NSString *)kTextProvedArtiData {
    /* static */ NSString *kTextProvedArtiData = nil;
    if (!kTextProvedArtiData) {
        Byte value[] = {3, 7, 223, 194, 189, 146, 50, 103, 110, 112, 25};
        kTextProvedArtiData = [self StringFromEyebrowFlowerData:value];
    }
    return kTextProvedArtiData;
}

//: upload错误：%@
+ (NSString *)kTitleFishValue {
    /* static */ NSString *kTitleFishValue = nil;
    if (!kTitleFishValue) {
        Byte value[] = {17, 11, 120, 70, 25, 91, 214, 212, 66, 8, 66, 64, 37, 154, 188, 239, 175, 175, 232, 153, 148, 233, 100, 97, 111, 108, 112, 117, 139};
        kTitleFishValue = [self StringFromEyebrowFlowerData:value];
    }
    return kTitleFishValue;
}

//: text/javascript
+ (NSString *)kName_nonprofitText {
    /* static */ NSString *kName_nonprofitText = nil;
    if (!kName_nonprofitText) {
        Byte value[] = {15, 8, 100, 177, 185, 24, 24, 128, 116, 112, 105, 114, 99, 115, 97, 118, 97, 106, 47, 116, 120, 101, 116, 228};
        kName_nonprofitText = [self StringFromEyebrowFlowerData:value];
    }
    return kName_nonprofitText;
}

//: text/html
+ (NSString *)kTitleSauceString {
    /* static */ NSString *kTitleSauceString = nil;
    if (!kTitleSauceString) {
        Byte value[] = {9, 6, 87, 200, 135, 107, 108, 109, 116, 104, 47, 116, 120, 101, 116, 123};
        kTitleSauceString = [self StringFromEyebrowFlowerData:value];
    }
    return kTitleSauceString;
}

//: text/plain
+ (NSString *)kTitle_castAtImpossibleValue {
    /* static */ NSString *kTitle_castAtImpossibleValue = nil;
    if (!kTitle_castAtImpossibleValue) {
        Byte value[] = {10, 8, 92, 162, 190, 203, 192, 123, 110, 105, 97, 108, 112, 47, 116, 120, 101, 116, 43};
        kTitle_castAtImpossibleValue = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_castAtImpossibleValue;
}

//: jpg
+ (NSString *)kTitle_squadString {
    /* static */ NSString *kTitle_squadString = nil;
    if (!kTitle_squadString) {
        Byte value[] = {3, 2, 103, 112, 106, 203};
        kTitle_squadString = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_squadString;
}

//: http
+ (NSString *)kTitle_rakeData {
    /* static */ NSString *kTitle_rakeData = nil;
    if (!kTitle_rakeData) {
        Byte value[] = {4, 4, 69, 163, 112, 116, 116, 104, 172};
        kTitle_rakeData = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_rakeData;
}

//: code
+ (NSString *)kTitle_shrimpString {
    /* static */ NSString *kTitle_shrimpString = nil;
    if (!kTitle_shrimpString) {
        Byte value[] = {4, 10, 173, 76, 208, 188, 18, 14, 230, 84, 101, 100, 111, 99, 33};
        kTitle_shrimpString = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_shrimpString;
}

//: img_%@.jpg
+ (NSString *)kTitlePartiallyValue {
    /* static */ NSString *kTitlePartiallyValue = nil;
    if (!kTitlePartiallyValue) {
        Byte value[] = {10, 10, 189, 17, 25, 212, 51, 185, 8, 176, 103, 112, 106, 46, 64, 37, 95, 103, 109, 105, 162};
        kTitlePartiallyValue = [self StringFromEyebrowFlowerData:value];
    }
    return kTitlePartiallyValue;
}

//: text/xml
+ (NSString *)kName_interruptText {
    /* static */ NSString *kName_interruptText = nil;
    if (!kName_interruptText) {
        Byte value[] = {8, 10, 214, 112, 186, 227, 119, 67, 163, 42, 108, 109, 120, 47, 116, 120, 101, 116, 157};
        kName_interruptText = [self StringFromEyebrowFlowerData:value];
    }
    return kName_interruptText;
}

//: 系统错误～
+ (NSString *)kName_ruralValue {
    /* static */ NSString *kName_ruralValue = nil;
    if (!kName_ruralValue) {
        Byte value[] = {15, 9, 131, 17, 59, 120, 73, 67, 148, 158, 189, 239, 175, 175, 232, 153, 148, 233, 159, 187, 231, 187, 179, 231, 9};
        kName_ruralValue = [self StringFromEyebrowFlowerData:value];
    }
    return kName_ruralValue;
}

//: msg
+ (NSString *)kTitleExhaustSnapString {
    /* static */ NSString *kTitleExhaustSnapString = nil;
    if (!kTitleExhaustSnapString) {
        Byte value[] = {3, 3, 196, 103, 115, 109, 24};
        kTitleExhaustSnapString = [self StringFromEyebrowFlowerData:value];
    }
    return kTitleExhaustSnapString;
}

//: 连接失败,请检查网络连接
+ (NSString *)kText_goodTapString {
    /* static */ NSString *kText_goodTapString = nil;
    if (!kText_goodTapString) {
        Byte value[] = {34, 7, 168, 98, 144, 192, 152, 165, 142, 230, 158, 191, 232, 156, 187, 231, 145, 189, 231, 165, 159, 230, 128, 163, 230, 183, 175, 232, 44, 165, 180, 232, 177, 164, 229, 165, 142, 230, 158, 191, 232, 130};
        kText_goodTapString = [self StringFromEyebrowFlowerData:value];
    }
    return kText_goodTapString;
}

//: application/json
+ (NSString *)kTitle_devoteCompareValue {
    /* static */ NSString *kTitle_devoteCompareValue = nil;
    if (!kTitle_devoteCompareValue) {
        Byte value[] = {16, 2, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 212};
        kTitle_devoteCompareValue = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_devoteCompareValue;
}

//: jpeg
+ (NSString *)kName_bendData {
    /* static */ NSString *kName_bendData = nil;
    if (!kName_bendData) {
        Byte value[] = {4, 8, 180, 232, 224, 119, 212, 101, 103, 101, 112, 106, 52};
        kName_bendData = [self StringFromEyebrowFlowerData:value];
    }
    return kName_bendData;
}

//: file
+ (NSString *)kTitlePlanningName {
    /* static */ NSString *kTitlePlanningName = nil;
    if (!kTitlePlanningName) {
        Byte value[] = {4, 10, 71, 26, 193, 237, 60, 90, 214, 184, 101, 108, 105, 102, 91};
        kTitlePlanningName = [self StringFromEyebrowFlowerData:value];
    }
    return kTitlePlanningName;
}

//: gif
+ (NSString *)kTitle_proudText {
    /* static */ NSString *kTitle_proudText = nil;
    if (!kTitle_proudText) {
        Byte value[] = {3, 12, 199, 25, 146, 197, 84, 4, 125, 94, 206, 198, 102, 105, 103, 142};
        kTitle_proudText = [self StringFromEyebrowFlowerData:value];
    }
    return kTitle_proudText;
}

//: 连接错误
+ (NSString *)kText_overnightString {
    /* static */ NSString *kText_overnightString = nil;
    if (!kText_overnightString) {
        Byte value[] = {12, 2, 175, 175, 232, 153, 148, 233, 165, 142, 230, 158, 191, 232, 24};
        kText_overnightString = [self StringFromEyebrowFlowerData:value];
    }
    return kText_overnightString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParameterUtil.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "ParameterUtil.h"
//: #import "YLNetworkHelper.h"
#import "TopLabelHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation ParameterUtil

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)view:(NSString *)url more:(NSDictionary *)params fail:(YLRestSuccess)success to:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [TopLabelHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[EyebrowFlowerData kTitle_rakeData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [EyebrowFlowerData kText_goodTapString]);
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [TopLabelHelper outpostMax:url successNameFailure:params holder:^(id response) {

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
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } alongFailure:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",[EyebrowFlowerData kText_overnightString]]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)margin:(NSString *)url domainMenu:(NSDictionary *)params paramsContent:(YLRestSuccess)success appRestFail:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [TopLabelHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[EyebrowFlowerData kTitle_rakeData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [EyebrowFlowerData kText_goodTapString]);
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[EyebrowFlowerData kTitle_devoteCompareValue], [EyebrowFlowerData kTitleSauceString], [EyebrowFlowerData kNameRegulatorString], [EyebrowFlowerData kTitle_castAtImpossibleValue], [EyebrowFlowerData kName_nonprofitText], [EyebrowFlowerData kName_interruptText], @"image/*", nil];
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
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [TopLabelHelper GET:url parameters:params success:^(id response) {
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
+ (NSURLSessionTask *)yieldFail:(NSString *)url content:(NSDictionary *)params voiceButton:(NSArray *)images path:(YLRestSuccess)success name:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [TopLabelHelper showFailure:url to:params colour:@"image" send:images stop:nil infoFloat:0.8f elect:[EyebrowFlowerData kName_bendData] view:nil container:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[EyebrowFlowerData kTitleFishValue],msg]);
        }
    //: } failure:^(NSError *error) {
    } value:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)mailCamera:(NSString *)url uploadOnMuffFail:(NSDictionary *)params reply:(NSData *)data fail:(YLRestSuccess)success dredgeOrFailBar:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:[EyebrowFlowerData kTitlePartiallyValue],[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = [EyebrowFlowerData kTitle_squadString];
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = [EyebrowFlowerData kTitle_proudText];
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = [EyebrowFlowerData kTextProvedArtiData];
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [TopLabelHelper uploadInNonachievement:url honkyTonkData:params invite:@"image" falseTextFailure:data denomination:fileName bubble:imageType can:nil toFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[EyebrowFlowerData kTitleFishValue],msg]);
        }
    //: } failure:^(NSError *error) {
    } touch:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)ingeminate:(NSString *)url reload:(NSDictionary *)params table:(NSString *)file backgroundOf:(YLRestSuccess)success response:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [TopLabelHelper tip:url key:params background:[EyebrowFlowerData kTitlePlanningName] date:file from:nil tapFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[EyebrowFlowerData kTitleFishValue],msg]);
        }
    //: } failure:^(NSError *error) {
    } mobileSelected:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)sessionFail:(NSString *)url accumulation:(NSDictionary *)params comment:(NSDictionary<NSString*, NSString*> *)files sub:(YLRestSuccess)success reply:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [TopLabelHelper showBlack:url uploadMyRelapse:params makeQuick:files press:nil border:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[EyebrowFlowerData kTitleFishValue],msg]);
        }
    //: } failure:^(NSError *error) {
    } withToFailure:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)musculusAbductorPollicisCanFail:(NSString *)url device:(NSDictionary *)params imageExtra:(NSString*)videoPath streetSmartColor:(UIImage*)thumb video:(YLRestSuccess)success by:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [TopLabelHelper upload:url nonconformance:params manager:videoPath cell:thumb view:nil forward:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res toValue:[EyebrowFlowerData kTitle_shrimpString] under:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:@"data"];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:[EyebrowFlowerData kTitleExhaustSnapString] gain:[EyebrowFlowerData kName_ruralValue]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[EyebrowFlowerData kTitleFishValue],msg]);
        }
    //: } failure:^(NSError *error) {
    } model:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [EyebrowFlowerData kTitleGravityRecordString]);
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)disable:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return [EyebrowFlowerData kTitle_squadString];
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
            return [EyebrowFlowerData kTitle_squadString];
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return [EyebrowFlowerData kTextProvedArtiData];
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return [EyebrowFlowerData kTitle_proudText];
        //: default:
        default:
            //: return @"jpg";
            return [EyebrowFlowerData kTitle_squadString];
    }
}


//: @end
@end
//: __SAVE__ ignore_string [515.5,410.4]