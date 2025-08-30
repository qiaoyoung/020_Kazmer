
#import <Foundation/Foundation.h>

@interface DiscoMusicData : NSObject

@end

@implementation DiscoMusicData

+ (NSData *)DiscoMusicDataToData:(NSString *)value {
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

+ (Byte *)DiscoMusicDataToCache:(Byte *)data {
    int numb = data[0];
    Byte rush = data[1];
    int field = data[2];
    for (int i = field; i < field + numb; i++) {
        int value = data[i] - rush;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[field + numb] = 0;
    return data + field;
}

+ (NSString *)StringFromDiscoMusicData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DiscoMusicDataToCache:data]];
}

//: code
+ (NSString *)kTitle_reputationValue {
    /* static */ NSString *kTitle_reputationValue = nil;
    if (!kTitle_reputationValue) {
		NSString *origin = @"0439052B2A9CA89D9EA8";
		NSData *data = [DiscoMusicData DiscoMusicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_reputationValue = [self StringFromDiscoMusicData:value];
    }
    return kTitle_reputationValue;
}

//: /wallet/questionList
+ (NSString *)kTitleHouseValue {
    /* static */ NSString *kTitleHouseValue = nil;
    if (!kTitleHouseValue) {
		NSString *origin = @"142B0B9B8C1183B141A9D45AA28C9797909F5A9CA0909E9F949A9977949E9F0C";
		NSData *data = [DiscoMusicData DiscoMusicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleHouseValue = [self StringFromDiscoMusicData:value];
    }
    return kTitleHouseValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplyControl.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERGlobalConfigManager.h"
#import "ReplyControl.h"

//: @interface USERGlobalConfigManager ()
@interface ReplyControl ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation USERGlobalConfigManager
@implementation ReplyControl

//: static USERGlobalConfigManager *shareConfigManager = nil;
static ReplyControl *user_linkMessage = nil;

//: + (void)refreshSecretQuestionConfig{
+ (void)info{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[DiscoMusicData kTitleHouseValue]] query:nil showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[DiscoMusicData kTitle_reputationValue]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [USERGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [ReplyControl content].secretQuestionArray = [resultDict buttonAt:@"data"];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)origin{
    //: return [USERGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [ReplyControl content].secretQuestionArray;
}

//: + (USERGlobalConfigManager *)shareConfigManager{
+ (ReplyControl *)content{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (user_linkMessage == nil) {
            //: shareConfigManager = [[USERGlobalConfigManager alloc] init];
            user_linkMessage = [[ReplyControl alloc] init];
        }
        //: return shareConfigManager;
        return user_linkMessage;
    }
}

//: @end
@end
//: __SAVE__ ignore_string [410.4]