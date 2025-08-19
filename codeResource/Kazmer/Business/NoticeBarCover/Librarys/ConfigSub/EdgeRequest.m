
#import <Foundation/Foundation.h>

@interface ScribePitcherData : NSObject

+ (instancetype)sharedInstance;

//: POST
@property (nonatomic, copy) NSString *mProbablyText;

//: [a-zA-Z_][a-zA-Z0-9_]{0,}
@property (nonatomic, copy) NSString *app_viaUrl;

//: https://taricher.com/common/api.php?
@property (nonatomic, copy) NSString *dream_enterpriseMessage;

//: SELF MATCHES %@
@property (nonatomic, copy) NSString *kHeavilyName;

@end

@implementation ScribePitcherData

+ (instancetype)sharedInstance {
    static ScribePitcherData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ScribePitcherDataToCache:(Byte *)data {
    int discoverAggressive = data[0];
    Byte similarity = data[1];
    int hunterCourt = data[2];
    for (int i = hunterCourt; i < hunterCourt + discoverAggressive; i++) {
        int value = data[i] + similarity;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[hunterCourt + discoverAggressive] = 0;
    return data + hunterCourt;
}

- (NSString *)StringFromScribePitcherData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScribePitcherDataToCache:data]];
}

//: SELF MATCHES %@
- (NSString *)kHeavilyName {
    if (!_kHeavilyName) {
        Byte value[] = {15, 46, 13, 133, 24, 238, 163, 106, 144, 64, 145, 167, 6, 37, 23, 30, 24, 242, 31, 19, 38, 21, 26, 23, 37, 242, 247, 18, 162};
        _kHeavilyName = [self StringFromScribePitcherData:value];
    }
    return _kHeavilyName;
}

//: POST
- (NSString *)mProbablyText {
    if (!_mProbablyText) {
        Byte value[] = {4, 98, 9, 229, 161, 91, 32, 83, 136, 238, 237, 241, 242, 121};
        _mProbablyText = [self StringFromScribePitcherData:value];
    }
    return _mProbablyText;
}

//: https://taricher.com/common/api.php?
- (NSString *)dream_enterpriseMessage {
    if (!_dream_enterpriseMessage) {
        Byte value[] = {36, 45, 12, 23, 89, 253, 19, 10, 56, 229, 166, 121, 59, 71, 71, 67, 70, 13, 2, 2, 71, 52, 69, 60, 54, 59, 56, 69, 1, 54, 66, 64, 2, 54, 66, 64, 64, 66, 65, 2, 52, 67, 60, 1, 67, 59, 67, 18, 174};
        _dream_enterpriseMessage = [self StringFromScribePitcherData:value];
    }
    return _dream_enterpriseMessage;
}

//: [a-zA-Z_][a-zA-Z0-9_]{0,}
- (NSString *)app_viaUrl {
    if (!_app_viaUrl) {
        Byte value[] = {25, 55, 6, 242, 89, 206, 36, 42, 246, 67, 10, 246, 35, 40, 38, 36, 42, 246, 67, 10, 246, 35, 249, 246, 2, 40, 38, 68, 249, 245, 70, 9};
        _app_viaUrl = [self StringFromScribePitcherData:value];
    }
    return _app_viaUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EdgeRequest.m
//  reportsFollowers
//
//  Created by tianyulong on 2021/11/19.
//

// __M_A_C_R_O__
//: #import "TYLNoticeRequest.h"
#import "EdgeRequest.h"

//: @implementation TYLNoticeRequest
@implementation EdgeRequest

//: + (NSURLSessionTask *)noticeBodyWithJson:(NSDictionary *)params
+ (NSURLSessionTask *)item:(NSDictionary *)params
                     //: WithCompletionBlock:(void(^)(BOOL success , NSDictionary * dic))success {
                     userQuantity:(void(^)(BOOL success , NSDictionary * dic))success {

    //: NSString *urlString = @"https://taricher.com/common/api.php?";
    NSString *urlString = [ScribePitcherData sharedInstance].dream_enterpriseMessage;
    //: if (params) {
    if (params) {
        //参数拼接url
        //: NSMutableString *finalURL = [NSMutableString string];
        NSMutableString *finalURL = [NSMutableString string];
        //: NSArray *paramsarray = [TYLNoticeRequest queryparams:params];
        NSArray *paramsarray = [EdgeRequest with:params];
        //: if (paramsarray && [paramsarray count] > 0) {
        if (paramsarray && [paramsarray count] > 0) {
            //: [finalURL appendString:[paramsarray componentsJoinedByString:@"&"]];
            [finalURL appendString:[paramsarray componentsJoinedByString:@"&"]];
        }
        //: urlString = [urlString stringByAppendingString:finalURL];
        urlString = [urlString stringByAppendingString:finalURL];
    }

    //对URL中的中文进行转码
    //: NSString *pathStr = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSString *pathStr = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];

    //: NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:pathStr]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:pathStr]];
    //: [request setHTTPMethod:@"POST"];
    [request setHTTPMethod:[ScribePitcherData sharedInstance].mProbablyText];
    //: request.timeoutInterval = 30;
    request.timeoutInterval = 30;

    //: NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{

            //: if (data) {
            if (data) {
                //: NSString *responseStr = [TYLNoticeRequest gb2312toutf8:data];
                NSString *responseStr = [EdgeRequest name:data];
                //: if (responseStr && responseStr.length > 0) {
                if (responseStr && responseStr.length > 0) {
                    //: NSDictionary *dic = [TYLNoticeRequest dictionaryWithJSON:responseStr];
                    NSDictionary *dic = [EdgeRequest content:responseStr];
                    //: success(YES, dic);
                    success(YES, dic);
                //: } else {
                } else {
                    //: success(NO, nil);
                    success(NO, nil);
                }

            //: }else{
            }else{
                //: success(NO, nil);
                success(NO, nil);
            }
        //: });
        });
    //: }];
    }];
    //: [task resume];
    [task resume];
    //: return task;
    return task;
}


//: + (NSArray *)queryparams:(NSDictionary *)query {
+ (NSArray *)with:(NSDictionary *)query {
    //: NSMutableArray *params = [NSMutableArray new];
    NSMutableArray *params = [NSMutableArray new];
    //: NSString *paramRegex = @"[a-zA-Z_][a-zA-Z0-9_]{0,}";
    NSString *paramRegex = [ScribePitcherData sharedInstance].app_viaUrl;
    //: NSPredicate *paramPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", paramRegex];
    NSPredicate *paramPredicate = [NSPredicate predicateWithFormat:[ScribePitcherData sharedInstance].kHeavilyName, paramRegex];
    //: [query enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
    [query enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        //: if ([paramPredicate evaluateWithObject:key]) {
        if ([paramPredicate evaluateWithObject:key]) {
            //: if ([obj isKindOfClass:[NSString class]] && [obj length] > 0) {
            if ([obj isKindOfClass:[NSString class]] && [obj length] > 0) {
                // 字符串
                //: [params addObject:[NSString stringWithFormat:@"%@=%@", key, obj]];
                [params addObject:[NSString stringWithFormat:@"%@=%@", key, obj]];
            //: } else if ([obj isKindOfClass:[NSNumber class]]) {
            } else if ([obj isKindOfClass:[NSNumber class]]) {
                // 数字
                //: NSNumberFormatter *formater = [[NSNumberFormatter alloc] init];
                NSNumberFormatter *formater = [[NSNumberFormatter alloc] init];
                //: NSString *str = [formater stringFromNumber:obj];
                NSString *str = [formater stringFromNumber:obj];
                //: if (str && str.length > 0) {
                if (str && str.length > 0) {
                    //: [params addObject:[NSString stringWithFormat:@"%@=%@", key, str]];
                    [params addObject:[NSString stringWithFormat:@"%@=%@", key, str]];
                }
            //: } else if ([obj isKindOfClass:[NSArray class]] && [obj count] > 0) {
            } else if ([obj isKindOfClass:[NSArray class]] && [obj count] > 0) {
                // 数组(子项只取字符串/数字)
                //: [obj enumerateObjectsUsingBlock:^(id _Nonnull obj1, NSUInteger idx1, BOOL * _Nonnull stop1) {
                [obj enumerateObjectsUsingBlock:^(id _Nonnull obj1, NSUInteger idx1, BOOL * _Nonnull stop1) {
                    //: if ([obj1 isKindOfClass:[NSString class]] && [obj1 length] > 0) {
                    if ([obj1 isKindOfClass:[NSString class]] && [obj1 length] > 0) {
                        //: [params addObject:[NSString stringWithFormat:@"%@=%@", key, obj1]];
                        [params addObject:[NSString stringWithFormat:@"%@=%@", key, obj1]];
                    //: } else if ([obj1 isKindOfClass:[NSNumber class]]) {
                    } else if ([obj1 isKindOfClass:[NSNumber class]]) {
                        //: NSNumberFormatter *formater = [[NSNumberFormatter alloc] init];
                        NSNumberFormatter *formater = [[NSNumberFormatter alloc] init];
                        //: NSString *str = [formater stringFromNumber:obj1];
                        NSString *str = [formater stringFromNumber:obj1];
                        //: if (str && str.length > 0) {
                        if (str && str.length > 0) {
                            //: [params addObject:[NSString stringWithFormat:@"%@=%@", key, str]];
                            [params addObject:[NSString stringWithFormat:@"%@=%@", key, str]];
                        }
                    }
                //: }];
                }];
            }
        }
    //: }];
    }];
    //: return [NSArray arrayWithArray:params];
    return [NSArray arrayWithArray:params];
}

//: + (NSString *)gb2312toutf8:(NSData *) data{
+ (NSString *)name:(NSData *) data{

    //: NSStringEncoding enc =CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSStringEncoding enc =CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);

    //: NSString *retStr = [[NSString alloc] initWithData:data encoding:enc];
    NSString *retStr = [[NSString alloc] initWithData:data encoding:enc];

    //: return retStr;
    return retStr;

}

//: #pragma mark -- 拼接参数
#pragma mark -- 拼接参数
//: + (NSString *)dealWithParam:(NSDictionary *)param
+ (NSString *)disableAppMy:(NSDictionary *)param
{
    //: NSArray *allkeys = [param allKeys];
    NSArray *allkeys = [param allKeys];
    //: NSMutableString *result = [NSMutableString string];
    NSMutableString *result = [NSMutableString string];

    //: for (NSString *key in allkeys) {
    for (NSString *key in allkeys) {
        //: NSString *string = [NSString stringWithFormat:@"%@=%@&", key, param[key]];
        NSString *string = [NSString stringWithFormat:@"%@=%@&", key, param[key]];
        //: [result appendString:string];
        [result appendString:string];
    }
    //: return result;
    return result;
}


//: + (NSDictionary *)dictionaryWithJSON:(id)json {
+ (NSDictionary *)content:(id)json {
    //: if (!json || json == (id)kCFNull) return nil;
    if (!json || json == (id)kCFNull) return nil;
    //: NSDictionary *dic = nil;
    NSDictionary *dic = nil;
    //: NSData *jsonData = nil;
    NSData *jsonData = nil;
    //: if ([json isKindOfClass:[NSDictionary class]]) {
    if ([json isKindOfClass:[NSDictionary class]]) {
        //: dic = json;
        dic = json;
    //: } else if ([json isKindOfClass:[NSString class]]) {
    } else if ([json isKindOfClass:[NSString class]]) {
        //: jsonData = [(NSString *)json dataUsingEncoding : NSUTF8StringEncoding];
        jsonData = [(NSString *)json dataUsingEncoding : NSUTF8StringEncoding];
    //: } else if ([json isKindOfClass:[NSData class]]) {
    } else if ([json isKindOfClass:[NSData class]]) {
        //: jsonData = json;
        jsonData = json;
    }
    //: if (jsonData) {
    if (jsonData) {
        //: dic = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:NULL];
        dic = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:NULL];
        //: if (![dic isKindOfClass:[NSDictionary class]]) dic = nil;
        if (![dic isKindOfClass:[NSDictionary class]]) dic = nil;
    }
    //: return dic;
    return dic;
}

//: @end
@end