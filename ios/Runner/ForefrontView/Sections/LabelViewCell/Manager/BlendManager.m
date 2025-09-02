
#import <Foundation/Foundation.h>
typedef struct {
    Byte rawInvent;
    Byte *civilianTeam;
    unsigned int stableItem;
    Byte doingCell;
} KnowDisturbData;

NSString *StringFromKnowDisturbData(KnowDisturbData *data);


//: tyl_USERLoginData
KnowDisturbData kTextShallowWithValue = (KnowDisturbData){82, (Byte []){38, 43, 62, 13, 7, 1, 23, 0, 30, 61, 53, 59, 60, 22, 51, 38, 51, 212}, 17, 193};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendManager.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "BlendManager.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"

//: @interface USERLoginData ()
@interface FlipData ()

//: @end
@end

//: @implementation USERLoginData
@implementation FlipData

//: - (BOOL)isValid {
- (BOOL)exceptBubble {
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
@implementation BlendManager

//: - (void)saveData
- (void)fileColorView
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_USERLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromKnowDisturbData(&kTextShallowWithValue)];
    }
}


//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)clean
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_USERLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromKnowDisturbData(&kTextShallowWithValue)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [USERLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [FlipData yy_modelWithDictionary:loginDataDic];
    }
}


//: - (void)setCurrentLoginData:(USERLoginData *)currentLoginData
- (void)setCurrentLoginData:(FlipData *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self fileColorView];
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self readData];
        [self clean];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedManager
+ (instancetype)iconAcrossManager
{
    //: static CCCLoginManager *instance = nil;
    static BlendManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[BlendManager alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: @end
@end

Byte *KnowDisturbDataToByte(KnowDisturbData *data) {
    if (data->doingCell < 140) return data->civilianTeam;
    for (int i = 0; i < data->stableItem; i++) {
        data->civilianTeam[i] ^= data->rawInvent;
    }
    data->civilianTeam[data->stableItem] = 0;
    data->doingCell = 6;
    return data->civilianTeam;
}

NSString *StringFromKnowDisturbData(KnowDisturbData *data) {
    return [NSString stringWithUTF8String:(char *)KnowDisturbDataToByte(data)];
}
