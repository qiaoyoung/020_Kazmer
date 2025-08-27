
#import <Foundation/Foundation.h>

NSString *StringFromSurgeryMinData(Byte *data);


//: tyl_NTESLoginData
Byte notiColorValue[] = {16, 17, 4, 112, 97, 116, 97, 68, 110, 105, 103, 111, 76, 83, 69, 84, 78, 95, 108, 121, 116, 14};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoUser.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "InfoUser.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"

//: @interface NTESLoginData ()
@interface PageSub ()

//: @end
@end

//: @implementation NTESLoginData
@implementation PageSub

//: - (BOOL)isValid {
- (BOOL)bubble {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation CCCLoginManager
@implementation InfoUser

//: + (instancetype)sharedManager
+ (instancetype)value
{
    //: static CCCLoginManager *instance = nil;
    static InfoUser *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[InfoUser alloc] init];
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
        //: [self readData];
        [self gesture];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(PageSub *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self session];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)gesture
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromSurgeryMinData(notiColorValue)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [PageSub yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)session
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromSurgeryMinData(notiColorValue)];
    }
}


//: @end
@end

Byte * SurgeryMinDataToCache(Byte *data) {
    int meatDateBorrow = data[0];
    int gammaHydroxybutyrate = data[1];
    int genetAdd = data[2];
    if (!meatDateBorrow) return data + genetAdd;
    for (int i = 0; i < gammaHydroxybutyrate / 2; i++) {
        int begin = genetAdd + i;
        int end = genetAdd + gammaHydroxybutyrate - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[genetAdd + gammaHydroxybutyrate] = 0;
    return data + genetAdd;
}

NSString *StringFromSurgeryMinData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SurgeryMinDataToCache(data)];
}  
