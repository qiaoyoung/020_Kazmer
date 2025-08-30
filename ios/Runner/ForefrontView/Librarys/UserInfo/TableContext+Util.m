
#import <Foundation/Foundation.h>
typedef struct {
    Byte execLiteral;
    Byte *multiple;
    unsigned int pitaSand;
    Byte artiAmple;
	int lungThink;
} YoursGenerateData;

NSString *StringFromYoursGenerateData(YoursGenerateData *data);


//: appkey
YoursGenerateData kNameInstructionText = (YoursGenerateData){95, (Byte []){62, 47, 47, 52, 58, 38, 46}, 6, 224, 170};

//: webViewTitle
YoursGenerateData kName_privilegeData = (YoursGenerateData){202, (Byte []){189, 175, 168, 156, 163, 175, 189, 158, 163, 190, 166, 175, 87}, 12, 215, 27};

//: KEKENotificationLanguageChanged
YoursGenerateData kName_consciousnessString = (YoursGenerateData){40, (Byte []){99, 109, 99, 109, 102, 71, 92, 65, 78, 65, 75, 73, 92, 65, 71, 70, 100, 73, 70, 79, 93, 73, 79, 77, 107, 64, 73, 70, 79, 77, 76, 154}, 31, 225, 207};

//: language
YoursGenerateData kNameSecurityValue = (YoursGenerateData){200, (Byte []){164, 169, 166, 175, 189, 169, 175, 173, 117}, 8, 248, 162};

//: e6548ec2fe71a38961430ee520b0ad47
YoursGenerateData kTextKnowValue = (YoursGenerateData){205, (Byte []){168, 251, 248, 249, 245, 168, 174, 255, 171, 168, 250, 252, 172, 254, 245, 244, 251, 252, 249, 254, 253, 168, 168, 248, 255, 253, 175, 253, 172, 169, 249, 250, 85}, 32, 224, 17};

//: isclose
YoursGenerateData kTextBroadcastContent = (YoursGenerateData){208, (Byte []){185, 163, 179, 188, 191, 163, 181, 95}, 7, 151, 110};

//: Webpage
YoursGenerateData kTitleBronzeString = (YoursGenerateData){14, (Byte []){89, 107, 108, 126, 111, 105, 107, 133}, 7, 171, 18};

//: logininfo
YoursGenerateData kText_monthString = (YoursGenerateData){43, (Byte []){71, 68, 76, 66, 69, 66, 69, 77, 68, 206}, 9, 255, 233};

//: isregitor
YoursGenerateData kTitleDevoteKitchenViewData = (YoursGenerateData){7, (Byte []){110, 116, 117, 98, 96, 110, 115, 104, 117, 192}, 9, 166, 41};

//: webViewURL
YoursGenerateData kTitle_joinString = (YoursGenerateData){195, (Byte []){180, 166, 161, 149, 170, 166, 180, 150, 145, 143, 206}, 10, 243, 195};

//: NSUserDefault%@
YoursGenerateData kContentWallHideData = (YoursGenerateData){23, (Byte []){89, 68, 66, 100, 114, 101, 83, 114, 113, 118, 98, 123, 99, 50, 87, 160}, 15, 253, 89};

//: Hello World
YoursGenerateData kNameGentData = (YoursGenerateData){231, (Byte []){175, 130, 139, 139, 136, 199, 176, 136, 149, 139, 131, 21}, 11, 176, 178};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableContext+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "TableContext+Util.h"
//: #import "ZCHttpManager.h"
#import "BlendView.h"

//: @implementation NIMUserDefaults (Util)
@implementation TableContext (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)caned:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromYoursGenerateData(&kContentWallHideData), key];
}

//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)key {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromYoursGenerateData(&kName_privilegeData) : StringFromYoursGenerateData(&kTitleBronzeString),
             //: @"webViewURL" : @"",
             StringFromYoursGenerateData(&kTitle_joinString) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromYoursGenerateData(&kNameInstructionText) : StringFromYoursGenerateData(&kTextKnowValue),
             //: @"isclose" : @"0",
             StringFromYoursGenerateData(&kTextBroadcastContent) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromYoursGenerateData(&kText_monthString) : StringFromYoursGenerateData(&kNameGentData),
             //: @"isregitor" : @"1",
             StringFromYoursGenerateData(&kTitleDevoteKitchenViewData) : @"1",
             //: @"language" : @""
             StringFromYoursGenerateData(&kNameSecurityValue) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)language:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [BlendView with].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    TableContext *userDefaults = [TableContext name];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[DisplayLanguageManager shareInstance] setLanguagre:lang];
    [[MakeManager range] setShould:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [Mortification text].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromYoursGenerateData(&kName_consciousnessString) object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.userToken) {
    if (delegate.userToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.userToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.userToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}
//: @end
@end

Byte *YoursGenerateDataToByte(YoursGenerateData *data) {
    if (data->artiAmple < 139) return data->multiple;
    for (int i = 0; i < data->pitaSand; i++) {
        data->multiple[i] ^= data->execLiteral;
    }
    data->multiple[data->pitaSand] = 0;
    data->artiAmple = 48;
	if (data->pitaSand >= 1) {
		data->lungThink = data->multiple[0];
	}
    return data->multiple;
}

NSString *StringFromYoursGenerateData(YoursGenerateData *data) {
    return [NSString stringWithUTF8String:(char *)YoursGenerateDataToByte(data)];
}
