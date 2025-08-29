//
//  USERGlobalConfigManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "USERGlobalConfigManager.h"

@interface USERGlobalConfigManager ()
@property (nonatomic ,strong) NSArray *secretQuestionArray;
@end

@implementation USERGlobalConfigManager

static USERGlobalConfigManager *shareConfigManager = nil;

+ (USERGlobalConfigManager *)shareConfigManager{
    @synchronized(self) {
        if (shareConfigManager == nil) {
            shareConfigManager = [[USERGlobalConfigManager alloc] init];
        }
        return shareConfigManager;
    }
}



+ (NSArray *)getSecretQuestionList{
    return [USERGlobalConfigManager shareConfigManager].secretQuestionArray;
}

+ (void)refreshSecretQuestionConfig{
    
    [ZCHttpManager getWithUrl:Server_regist_questionlist params:nil isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            [USERGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
        }
    } failed:^(id responseObject, NSError *error) {
        
    }];
}

@end
