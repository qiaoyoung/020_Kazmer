
#import <Foundation/Foundation.h>

@interface ReactionPropulsionEngineData : NSObject

+ (instancetype)sharedInstance;

//: isregitor
@property (nonatomic, copy) NSString *app_elsewhereData;

//: language
@property (nonatomic, copy) NSString *mainQuireCelebId;

//: KEKENotificationLanguageChanged
@property (nonatomic, copy) NSString *showTourData;

//: Webpage
@property (nonatomic, copy) NSString *user_nameUrl;

//: webViewURL
@property (nonatomic, copy) NSString *dream_chickBronzeTitle;

//: e6548ec2fe71a38961430ee520b0ad47
@property (nonatomic, copy) NSString *m_salmonIdent;

//: isclose
@property (nonatomic, copy) NSString *noti_valueKey;

//: webViewTitle
@property (nonatomic, copy) NSString *main_uglyValue;

//: Hello World
@property (nonatomic, copy) NSString *app_cabinName;

//: NSUserDefault%@
@property (nonatomic, copy) NSString *mainHeavilyUrl;

//: logininfo
@property (nonatomic, copy) NSString *userWoodTitle;

//: appkey
@property (nonatomic, copy) NSString *appMuscleMessage;

@end

@implementation ReactionPropulsionEngineData

+ (instancetype)sharedInstance {
    static ReactionPropulsionEngineData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ReactionPropulsionEngineDataToCache:(Byte *)data {
    int phraseEnvelope = data[0];
    int teleport = data[1];
    for (int i = 0; i < phraseEnvelope / 2; i++) {
        int begin = teleport + i;
        int end = teleport + phraseEnvelope - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[teleport + phraseEnvelope] = 0;
    return data + teleport;
}

- (NSString *)StringFromReactionPropulsionEngineData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ReactionPropulsionEngineDataToCache:data]];
}  

//: webViewURL
- (NSString *)dream_chickBronzeTitle {
    if (!_dream_chickBronzeTitle) {
        Byte value[] = {10, 3, 154, 76, 82, 85, 119, 101, 105, 86, 98, 101, 119, 240};
        _dream_chickBronzeTitle = [self StringFromReactionPropulsionEngineData:value];
    }
    return _dream_chickBronzeTitle;
}

//: logininfo
- (NSString *)userWoodTitle {
    if (!_userWoodTitle) {
        Byte value[] = {9, 2, 111, 102, 110, 105, 110, 105, 103, 111, 108, 5};
        _userWoodTitle = [self StringFromReactionPropulsionEngineData:value];
    }
    return _userWoodTitle;
}

//: Webpage
- (NSString *)user_nameUrl {
    if (!_user_nameUrl) {
        Byte value[] = {7, 3, 11, 101, 103, 97, 112, 98, 101, 87, 166};
        _user_nameUrl = [self StringFromReactionPropulsionEngineData:value];
    }
    return _user_nameUrl;
}

//: appkey
- (NSString *)appMuscleMessage {
    if (!_appMuscleMessage) {
        Byte value[] = {6, 2, 121, 101, 107, 112, 112, 97, 33};
        _appMuscleMessage = [self StringFromReactionPropulsionEngineData:value];
    }
    return _appMuscleMessage;
}

//: isclose
- (NSString *)noti_valueKey {
    if (!_noti_valueKey) {
        Byte value[] = {7, 8, 4, 112, 139, 114, 97, 14, 101, 115, 111, 108, 99, 115, 105, 187};
        _noti_valueKey = [self StringFromReactionPropulsionEngineData:value];
    }
    return _noti_valueKey;
}

//: Hello World
- (NSString *)app_cabinName {
    if (!_app_cabinName) {
        Byte value[] = {11, 3, 179, 100, 108, 114, 111, 87, 32, 111, 108, 108, 101, 72, 189};
        _app_cabinName = [self StringFromReactionPropulsionEngineData:value];
    }
    return _app_cabinName;
}

//: isregitor
- (NSString *)app_elsewhereData {
    if (!_app_elsewhereData) {
        Byte value[] = {9, 11, 163, 34, 70, 140, 67, 253, 62, 241, 172, 114, 111, 116, 105, 103, 101, 114, 115, 105, 127};
        _app_elsewhereData = [self StringFromReactionPropulsionEngineData:value];
    }
    return _app_elsewhereData;
}

//: KEKENotificationLanguageChanged
- (NSString *)showTourData {
    if (!_showTourData) {
        Byte value[] = {31, 4, 6, 158, 100, 101, 103, 110, 97, 104, 67, 101, 103, 97, 117, 103, 110, 97, 76, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 69, 75, 69, 75, 50};
        _showTourData = [self StringFromReactionPropulsionEngineData:value];
    }
    return _showTourData;
}

//: language
- (NSString *)mainQuireCelebId {
    if (!_mainQuireCelebId) {
        Byte value[] = {8, 10, 53, 114, 131, 212, 7, 166, 142, 22, 101, 103, 97, 117, 103, 110, 97, 108, 82};
        _mainQuireCelebId = [self StringFromReactionPropulsionEngineData:value];
    }
    return _mainQuireCelebId;
}

//: NSUserDefault%@
- (NSString *)mainHeavilyUrl {
    if (!_mainHeavilyUrl) {
        Byte value[] = {15, 12, 185, 107, 60, 116, 89, 146, 4, 180, 127, 151, 64, 37, 116, 108, 117, 97, 102, 101, 68, 114, 101, 115, 85, 83, 78, 227};
        _mainHeavilyUrl = [self StringFromReactionPropulsionEngineData:value];
    }
    return _mainHeavilyUrl;
}

//: e6548ec2fe71a38961430ee520b0ad47
- (NSString *)m_salmonIdent {
    if (!_m_salmonIdent) {
        Byte value[] = {32, 7, 131, 58, 56, 17, 240, 55, 52, 100, 97, 48, 98, 48, 50, 53, 101, 101, 48, 51, 52, 49, 54, 57, 56, 51, 97, 49, 55, 101, 102, 50, 99, 101, 56, 52, 53, 54, 101, 4};
        _m_salmonIdent = [self StringFromReactionPropulsionEngineData:value];
    }
    return _m_salmonIdent;
}

//: webViewTitle
- (NSString *)main_uglyValue {
    if (!_main_uglyValue) {
        Byte value[] = {12, 9, 34, 213, 224, 144, 166, 64, 160, 101, 108, 116, 105, 84, 119, 101, 105, 86, 98, 101, 119, 50};
        _main_uglyValue = [self StringFromReactionPropulsionEngineData:value];
    }
    return _main_uglyValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnName+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "OnName+Util.h"
//: #import "ZCHttpManager.h"
#import "CoverPageMode.h"

//: @implementation NIMUserDefaults (Util)
@implementation OnName (Util)

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



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)bar {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             [ReactionPropulsionEngineData sharedInstance].main_uglyValue : [ReactionPropulsionEngineData sharedInstance].user_nameUrl,
             //: @"webViewURL" : @"",
             [ReactionPropulsionEngineData sharedInstance].dream_chickBronzeTitle : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             [ReactionPropulsionEngineData sharedInstance].appMuscleMessage : [ReactionPropulsionEngineData sharedInstance].m_salmonIdent,
             //: @"isclose" : @"0",
             [ReactionPropulsionEngineData sharedInstance].noti_valueKey : @"0",
             //: @"logininfo" : @"Hello World",
             [ReactionPropulsionEngineData sharedInstance].userWoodTitle : [ReactionPropulsionEngineData sharedInstance].app_cabinName,
             //: @"isregitor" : @"1",
             [ReactionPropulsionEngineData sharedInstance].app_elsewhereData : @"1",
             //: @"language" : @""
             [ReactionPropulsionEngineData sharedInstance].mainQuireCelebId : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)reloadWith:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [CoverPageMode app].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    OnName *userDefaults = [OnName user];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[WatchLanguageManager shareInstance] setLanguagre:lang];
    [[PaintedNaturalLanguageTo marginSource] setOfImage:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [ButtonKit sheerOption].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:[ReactionPropulsionEngineData sharedInstance].showTourData object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
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

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)alterItem:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:[ReactionPropulsionEngineData sharedInstance].mainHeavilyUrl, key];
}
//: @end
@end
