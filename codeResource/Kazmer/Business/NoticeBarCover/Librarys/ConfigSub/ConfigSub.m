
#import <Foundation/Foundation.h>

typedef struct {
    Byte stomachBid;
    Byte *subconsciousMind;
    unsigned int ported;
} StructRacketeerData;

@interface RacketeerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RacketeerData

+ (instancetype)sharedInstance {
    static RacketeerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RacketeerDataToByte:(StructRacketeerData *)data {
    for (int i = 0; i < data->ported; i++) {
        data->subconsciousMind[i] ^= data->stomachBid;
    }
    data->subconsciousMind[data->ported] = 0;
    return data->subconsciousMind;
}

- (NSString *)StringFromRacketeerData:(StructRacketeerData *)data {
    return [NSString stringWithUTF8String:(char *)[self RacketeerDataToByte:data]];
}

//: code
- (NSString *)userScholarshipId {
    /* static */ NSString *userScholarshipId = nil;
    if (!userScholarshipId) {
        StructRacketeerData value = (StructRacketeerData){93, (Byte []){62, 50, 57, 56, 110}, 4};
        userScholarshipId = [self StringFromRacketeerData:&value];
    }
    return userScholarshipId;
}

//: data
- (NSString *)kTeenageIdent {
    /* static */ NSString *kTeenageIdent = nil;
    if (!kTeenageIdent) {
        StructRacketeerData value = (StructRacketeerData){92, (Byte []){56, 61, 40, 61, 251}, 4};
        kTeenageIdent = [self StringFromRacketeerData:&value];
    }
    return kTeenageIdent;
}

//: /wallet/questionList
- (NSString *)user_pieceValuePath {
    /* static */ NSString *user_pieceValuePath = nil;
    if (!user_pieceValuePath) {
        StructRacketeerData value = (StructRacketeerData){252, (Byte []){211, 139, 157, 144, 144, 153, 136, 211, 141, 137, 153, 143, 136, 149, 147, 146, 176, 149, 143, 136, 241}, 20};
        user_pieceValuePath = [self StringFromRacketeerData:&value];
    }
    return user_pieceValuePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConfigSub.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "ConfigSub.h"

//: @interface NTESGlobalConfigManager ()
@interface ConfigSub ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation ConfigSub

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static ConfigSub *mainMinPathKey = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (ConfigSub *)message{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (mainMinPathKey == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            mainMinPathKey = [[ConfigSub alloc] init];
        }
        //: return shareConfigManager;
        return mainMinPathKey;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)size{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [ConfigSub message].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)duringCounterrogation{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[RacketeerData sharedInstance] user_pieceValuePath]] reload_strong:nil with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[RacketeerData sharedInstance] userScholarshipId]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [ConfigSub message].secretQuestionArray = [resultDict successAdd:[[RacketeerData sharedInstance] kTeenageIdent]];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end