// __DEBUG__
// __CLOSE_PRINT__
//
//  GhostValue.m
//  fanxingxue
//
//  Created by 曹宇 on 2018/3/28.
//  Copyright © 2018年 caoyu. All rights reserved.
//
//#import "JPushManager.h"

// __M_A_C_R_O__
//: #import "UserManager.h"
#import "GhostValue.h"

//: @implementation UserManager
@implementation GhostValue

//判断是否登录
//: +(BOOL)isLogin
+(BOOL)color
{
//    if ([OnName standardUserDefaults].user_id.length>0) {
//        return YES;
//    }else{
//        return NO;
//    }
    //: return YES;
    return YES;
}


//: + (void)refrushNewData{
+ (void)of{

}

//: + (void)saveUserInfo:(id)responseObject{
+ (void)insert:(id)responseObject{

    //: NSDictionary *resultListDict = (NSDictionary *)responseObject;
    NSDictionary *resultListDict = (NSDictionary *)responseObject;
    //NSLog(@"%@", [NSString changeToJsonWithDictionary:responseObject]);

    //: NSDictionary *data = (NSDictionary *)responseObject;
    NSDictionary *data = (NSDictionary *)responseObject;
    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    OnName *userDefaults = [OnName user];
//    userDefaults.user_id         = [data newStringValueForKey:@"id"];
//    userDefaults.mobile          = [data newStringValueForKey:@"mobile"];
//    userDefaults.user_name       = [data newStringValueForKey:@"user_name"];
//    userDefaults.user_nickname   = [data newStringValueForKey:@"user_nickname"];
//    userDefaults.head_img        = [data newStringValueForKey:@"head_img"];
//    userDefaults.city_id         = [data newStringValueForKey:@"city_id"];
//    userDefaults.token           = [data newStringValueForKey:@"token"];
//    userDefaults.deposit_money   = [data newStringValueForKey:@"deposit_money"];
//    userDefaults.guarantee_money    = [data newStringValueForKey:@"guarantee_money"];
//    userDefaults.freeze_deposit_money = [data newStringValueForKey:@"freeze_deposit_money"];
//    userDefaults.freeze_guarantee_money = [data newStringValueForKey:@"freeze_guarantee_money"];
//    userDefaults.auction_number         = [data newStringValueForKey:@"auction_number"];




//    AppDelegate *delegate =  (AppDelegate*)[[UIApplication sharedApplication]delegate];
//    [delegate setRootControllerWithLoginStatus];

//    [[JPushManager shareManager]bindJpushId];
//
//    [[NSNotificationCenter defaultCenter]postNotificationName:BYLoginSucceedNotification object:nil];
//
//    SK_MAIN_THREAD_START{
//
//        //[BYPLVVodSDK setCacheDir];
//
//    }SK_MAIN_THREAD_END
}




//: + (void)logout{
+ (void)frameworkLogout{

//    userDefaults.user_id         = @"";
//    userDefaults.mobile          = @"";
//    userDefaults.user_name       = @"";
//    userDefaults.user_nickname   = @"";
//    userDefaults.head_img        = @"";
//    userDefaults.city_id         = @"";
//    userDefaults.token           = @"";
//    userDefaults.favorites_num   = @"";
//    userDefaults.order_num       = @"";
//    userDefaults.coupon_num      = @"";
//    userDefaults.deposit_money   = @"";
//    userDefaults.guarantee_money    = @"";
//    userDefaults.freeze_deposit_money = @"";
//    userDefaults.freeze_guarantee_money = @"";
//    userDefaults.auction_number = @"";


//    userDefaults.headPortrait = @"";
//    userDefaults.mobile       = @"";
//    userDefaults.realName     = @"";
//    userDefaults.sex          = @"";
//    userDefaults.userId       = @"";
    //userDefaults.UserNo       = @"";
//    userDefaults.UserPassword = @"";
//    userDefaults.apikey       = @"";
//    userDefaults.apisecret    = @"";

//    AppDelegate *delegate =  (AppDelegate*)[[UIApplication sharedApplication]delegate];
//    [delegate setRootControllerWithLoginStatus];

//    [[NSNotificationCenter defaultCenter]postNotificationName:BYLoginSucceedNotification object:nil];

//    SK_MAIN_THREAD_START{
//        //[BYPLVVodSDK setCacheDir];
//
//        [HHttpManager removeAllHttpCache];
//        //Noti_Post(UserLogout, nil);
//    }SK_MAIN_THREAD_END
}

//: + (NSString *)getUserId{
+ (NSString *)info{
    //: NSString *userId = [NIMUserDefaults standardUserDefaults].accid;
    NSString *userId = [OnName user].accid;
    //: return userId;
    return userId;
}


//+ (NSString *)getMobileNumber{
//    NSString *UserNo = emptyString([OnName standardUserDefaults].mobile);
//    return UserNo;
//}
//
//+ (NSString *)getHeaderImageUrl{
//    NSString *headImageUrl = emptyString([OnName standardUserDefaults].head_img);
//    return headImageUrl;
//}
//+ (NSString *)getNickName{
//    NSString *headImageUrl = emptyString([OnName standardUserDefaults].user_nickname);
//    return headImageUrl;
//}
//
//+ (void)callSevicePhoneNumber{
//    NSMutableString * string = [[ NSMutableString alloc] initWithFormat: @"tel:%@", [OnName standardUserDefaults].serverPhoneNumber];
//    [[ UIApplication sharedApplication] openURL:[ NSURL URLWithString:string]];
//}
//+ (NSString *)setPrefixURLWithURL:(NSString *)imageurl{
//    NSString *prefixStr = [OnName standardUserDefaults].prefixURL;
//
//    NSString *url = [prefixStr stringByAppendingPathComponent:imageurl];
//
//    return url;
//}
//
//+ (NSString *)setPrefixAndSuffixURLWithURL:(NSString *)imageurl{
//    NSString *prefixStr = [OnName standardUserDefaults].prefixURL;
//    NSString *suffixStr = [OnName standardUserDefaults].thumbURL;
//    NSString *url = [[prefixStr stringByAppendingPathComponent:imageurl] stringByAppendingString:suffixStr];
//    return url;
//}


//+ (NSString *)getApikey{
//    NSString *apikey = emptyString([OnName standardUserDefaults].apikey);
//    return apikey;
//}
//
//+ (NSString *)getApisecret{
//    NSString *apisecret = emptyString([OnName standardUserDefaults].apisecret);
//    return apisecret;
//}

//+ (void)saveCompanyInfo:(NSDictionary *)dict{
//    if (dict.count <= 0) {
//        return;
//    }
//    [OnName standardUserDefaults].compId = [dict newStringValueForKey:@"compId"];
//    [OnName standardUserDefaults].orgId = [dict newStringValueForKey:@"orgId"];
//    [OnName standardUserDefaults].orgName = [dict newStringValueForKey:@"orgName"];
//
//
//    [OnName standardUserDefaults].longitude = [[dict newStringValueForKey:@"longitude"] doubleValue];
//    [OnName standardUserDefaults].latitude  = [[dict newStringValueForKey:@"latitude"] doubleValue];
//
//    [OnName standardUserDefaults].company_latitude = [dict newStringValueForKey:@"latitude"];
//    [OnName standardUserDefaults].company_longitude = [dict newStringValueForKey:@"longitude"];
//
//    [OnName standardUserDefaults].province = [dict newStringValueForKey:@"province"];
//    [OnName standardUserDefaults].city     = [dict newStringValueForKey:@"city"];
//    [OnName standardUserDefaults].district   = [dict newStringValueForKey:@"county"];
//    [OnName standardUserDefaults].address   = [dict newStringValueForKey:@"address"];
//
////    [[UCompamyDataManager sharedConfigManager] reloadPositionData];
//}


////保存公共信息-聊天字段
//+ (void)reloadUserInformation{
//    [HHttpManager POST:Server_userCard_get parameters:nil success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *success = [resultDict newStringValueForKey:@"success"];
//        NSDictionary *data = [resultDict valueForKey:@"data"];
//        if ([success isEqualToString:kConstant_1]) {
//            
//            [OnName standardUserDefaults].myName = [data newStringValueForKey:@"realName"];
//            [OnName standardUserDefaults].myHeadImg = [data newStringValueForKey:@"headImg"];
//            [OnName standardUserDefaults].myPosition = [data newStringValueForKey:@"position"];
//            [OnName standardUserDefaults].myCompanyName = [data newStringValueForKey:@"compName"];
//
//        }
//    } failure:^(NSError *error) {
//        
//    }];
//    
//}


//: + (NSString *)getLocaleString {
+ (NSString *)provider {
    //: NSString * preferredLanguage = @"en";
    NSString * preferredLanguage = @"en";
    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    OnName *userDefaults = [OnName user];
    //: NSString *langType = userDefaults.language;
    NSString *langType = userDefaults.language;
    //: if (langType.length <= 0) {
    if (langType.length <= 0) {
        //: preferredLanguage = @"en";
        preferredLanguage = @"en";
    //: } else {
    } else {
        //: preferredLanguage = langType;
        preferredLanguage = langType;
    }
    //: return preferredLanguage;
    return preferredLanguage;
}

//: @end
@end