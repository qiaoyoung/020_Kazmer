
#import <Foundation/Foundation.h>

@interface QualifyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation QualifyData

+ (instancetype)sharedInstance {
    static QualifyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)QualifyDataToCache:(Byte *)data {
    int demand = data[0];
    int controlSine = data[1];
    for (int i = 0; i < demand / 2; i++) {
        int begin = controlSine + i;
        int end = controlSine + demand - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[controlSine + demand] = 0;
    return data + controlSine;
}

- (NSString *)StringFromQualifyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self QualifyDataToCache:data]];
}  

//: AppKey
- (NSString *)mainExcessId {
    /* static */ NSString *mainExcessId = nil;
    if (!mainExcessId) {
        Byte value[] = {6, 7, 8, 114, 117, 246, 234, 121, 101, 75, 112, 112, 65, 41};
        mainExcessId = [self StringFromQualifyData:value];
    }
    return mainExcessId;
}

//: text/javascript
- (NSString *)showPressedStrangeStr {
    /* static */ NSString *showPressedStrangeStr = nil;
    if (!showPressedStrangeStr) {
        Byte value[] = {15, 7, 134, 41, 29, 198, 55, 116, 112, 105, 114, 99, 115, 97, 118, 97, 106, 47, 116, 120, 101, 116, 193};
        showPressedStrangeStr = [self StringFromQualifyData:value];
    }
    return showPressedStrangeStr;
}

//: png
- (NSString *)noti_economistKey {
    /* static */ NSString *noti_economistKey = nil;
    if (!noti_economistKey) {
        Byte value[] = {3, 7, 188, 9, 56, 153, 154, 103, 110, 112, 162};
        noti_economistKey = [self StringFromQualifyData:value];
    }
    return noti_economistKey;
}

//: image
- (NSString *)userFatigueMessage {
    /* static */ NSString *userFatigueMessage = nil;
    if (!userFatigueMessage) {
        Byte value[] = {5, 9, 42, 42, 112, 22, 37, 114, 38, 101, 103, 97, 109, 105, 150};
        userFatigueMessage = [self StringFromQualifyData:value];
    }
    return userFatigueMessage;
}

//: %@.jpg
- (NSString *)kElsewhereMsg {
    /* static */ NSString *kElsewhereMsg = nil;
    if (!kElsewhereMsg) {
        Byte value[] = {6, 12, 228, 117, 239, 170, 33, 103, 86, 129, 30, 253, 103, 112, 106, 46, 64, 37, 140};
        kElsewhereMsg = [self StringFromQualifyData:value];
    }
    return kElsewhereMsg;
}

//: token
- (NSString *)mainOutsideKey {
    /* static */ NSString *mainOutsideKey = nil;
    if (!mainOutsideKey) {
        Byte value[] = {5, 6, 127, 134, 89, 205, 110, 101, 107, 111, 116, 24};
        mainOutsideKey = [self StringFromQualifyData:value];
    }
    return mainOutsideKey;
}

//: video/mp4
- (NSString *)noti_upUrl {
    /* static */ NSString *noti_upUrl = nil;
    if (!noti_upUrl) {
        Byte value[] = {9, 9, 117, 183, 142, 136, 6, 212, 63, 52, 112, 109, 47, 111, 101, 100, 105, 118, 180};
        noti_upUrl = [self StringFromQualifyData:value];
    }
    return noti_upUrl;
}

//: application/json
- (NSString *)mainInstallData {
    /* static */ NSString *mainInstallData = nil;
    if (!mainInstallData) {
        Byte value[] = {16, 4, 239, 104, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 4};
        mainInstallData = [self StringFromQualifyData:value];
    }
    return mainInstallData;
}

//: appSetting
- (NSString *)appLanceEducationalMsg {
    /* static */ NSString *appLanceEducationalMsg = nil;
    if (!appLanceEducationalMsg) {
        Byte value[] = {10, 11, 81, 133, 224, 200, 43, 37, 89, 198, 126, 103, 110, 105, 116, 116, 101, 83, 112, 112, 97, 17};
        appLanceEducationalMsg = [self StringFromQualifyData:value];
    }
    return appLanceEducationalMsg;
}

//: yyyyMMddHHmmss
- (NSString *)appDeliverStr {
    /* static */ NSString *appDeliverStr = nil;
    if (!appDeliverStr) {
        Byte value[] = {14, 4, 157, 102, 115, 115, 109, 109, 72, 72, 100, 100, 77, 77, 121, 121, 121, 121, 96};
        appDeliverStr = [self StringFromQualifyData:value];
    }
    return appDeliverStr;
}

//: CheckSum
- (NSString *)k_pressedIdent {
    /* static */ NSString *k_pressedIdent = nil;
    if (!k_pressedIdent) {
        Byte value[] = {8, 5, 194, 229, 215, 109, 117, 83, 107, 99, 101, 104, 67, 108};
        k_pressedIdent = [self StringFromQualifyData:value];
    }
    return k_pressedIdent;
}

//: lang
- (NSString *)app_carbohydratePath {
    /* static */ NSString *app_carbohydratePath = nil;
    if (!app_carbohydratePath) {
        Byte value[] = {4, 11, 156, 210, 122, 230, 255, 81, 52, 152, 132, 103, 110, 97, 108, 84};
        app_carbohydratePath = [self StringFromQualifyData:value];
    }
    return app_carbohydratePath;
}

//: picture
- (NSString *)kCompanyPath {
    /* static */ NSString *kCompanyPath = nil;
    if (!kCompanyPath) {
        Byte value[] = {7, 7, 243, 136, 88, 217, 179, 101, 114, 117, 116, 99, 105, 112, 67};
        kCompanyPath = [self StringFromQualifyData:value];
    }
    return kCompanyPath;
}

//: text/plain
- (NSString *)notiEstablishmentMsg {
    /* static */ NSString *notiEstablishmentMsg = nil;
    if (!notiEstablishmentMsg) {
        Byte value[] = {10, 2, 110, 105, 97, 108, 112, 47, 116, 120, 101, 116, 64};
        notiEstablishmentMsg = [self StringFromQualifyData:value];
    }
    return notiEstablishmentMsg;
}

//: text/json
- (NSString *)user_expressionPath {
    /* static */ NSString *user_expressionPath = nil;
    if (!user_expressionPath) {
        Byte value[] = {9, 12, 96, 143, 130, 212, 165, 93, 221, 94, 139, 166, 110, 111, 115, 106, 47, 116, 120, 101, 116, 78};
        user_expressionPath = [self StringFromQualifyData:value];
    }
    return user_expressionPath;
}

//: image/%@
- (NSString *)mCountroductionMessage {
    /* static */ NSString *mCountroductionMessage = nil;
    if (!mCountroductionMessage) {
        Byte value[] = {8, 9, 132, 102, 184, 197, 122, 188, 69, 64, 37, 47, 101, 103, 97, 109, 105, 25};
        mCountroductionMessage = [self StringFromQualifyData:value];
    }
    return mCountroductionMessage;
}

//: image/jpg
- (NSString *)showRegnantStudyMsg {
    /* static */ NSString *showRegnantStudyMsg = nil;
    if (!showRegnantStudyMsg) {
        Byte value[] = {9, 9, 227, 157, 23, 216, 5, 107, 140, 103, 112, 106, 47, 101, 103, 97, 109, 105, 18};
        showRegnantStudyMsg = [self StringFromQualifyData:value];
    }
    return showRegnantStudyMsg;
}

//: http
- (NSString *)appStrangeTitle {
    /* static */ NSString *appStrangeTitle = nil;
    if (!appStrangeTitle) {
        Byte value[] = {4, 9, 142, 252, 149, 144, 229, 62, 252, 112, 116, 116, 104, 151};
        appStrangeTitle = [self StringFromQualifyData:value];
    }
    return appStrangeTitle;
}

//: CurTime
- (NSString *)app_viaTitle {
    /* static */ NSString *app_viaTitle = nil;
    if (!app_viaTitle) {
        Byte value[] = {7, 5, 176, 83, 6, 101, 109, 105, 84, 114, 117, 67, 238};
        app_viaTitle = [self StringFromQualifyData:value];
    }
    return app_viaTitle;
}

//: cer
- (NSString *)show_shootPath {
    /* static */ NSString *show_shootPath = nil;
    if (!show_shootPath) {
        Byte value[] = {3, 5, 217, 229, 159, 114, 101, 99, 56};
        show_shootPath = [self StringFromQualifyData:value];
    }
    return show_shootPath;
}

//: text/html
- (NSString *)dreamIsolationUrl {
    /* static */ NSString *dreamIsolationUrl = nil;
    if (!dreamIsolationUrl) {
        Byte value[] = {9, 10, 79, 117, 6, 90, 140, 47, 92, 28, 108, 109, 116, 104, 47, 116, 120, 101, 116, 174};
        dreamIsolationUrl = [self StringFromQualifyData:value];
    }
    return dreamIsolationUrl;
}

//: xiaokaapi.com
- (NSString *)noti_nineElsewhereValue {
    /* static */ NSString *noti_nineElsewhereValue = nil;
    if (!noti_nineElsewhereValue) {
        Byte value[] = {13, 6, 122, 181, 173, 251, 109, 111, 99, 46, 105, 112, 97, 97, 107, 111, 97, 105, 120, 78};
        noti_nineElsewhereValue = [self StringFromQualifyData:value];
    }
    return noti_nineElsewhereValue;
}

//: ismustmobile
- (NSString *)app_woodPactContent {
    /* static */ NSString *app_woodPactContent = nil;
    if (!app_woodPactContent) {
        Byte value[] = {12, 7, 187, 12, 47, 28, 44, 101, 108, 105, 98, 111, 109, 116, 115, 117, 109, 115, 105, 9};
        app_woodPactContent = [self StringFromQualifyData:value];
    }
    return app_woodPactContent;
}

//: %@.mp4
- (NSString *)kSuggestData {
    /* static */ NSString *kSuggestData = nil;
    if (!kSuggestData) {
        Byte value[] = {6, 3, 128, 52, 112, 109, 46, 64, 37, 68};
        kSuggestData = [self StringFromQualifyData:value];
    }
    return kSuggestData;
}

//: Nonce
- (NSString *)app_journalismId {
    /* static */ NSString *app_journalismId = nil;
    if (!app_journalismId) {
        Byte value[] = {5, 11, 101, 55, 93, 69, 86, 55, 134, 103, 47, 101, 99, 110, 111, 78, 93};
        app_journalismId = [self StringFromQualifyData:value];
    }
    return app_journalismId;
}

//: loginip
- (NSString *)dream_studyShootName {
    /* static */ NSString *dream_studyShootName = nil;
    if (!dream_studyShootName) {
        Byte value[] = {7, 4, 154, 152, 112, 105, 110, 105, 103, 111, 108, 253};
        dream_studyShootName = [self StringFromQualifyData:value];
    }
    return dream_studyShootName;
}

//: jpg
- (NSString *)notiFineStr {
    /* static */ NSString *notiFineStr = nil;
    if (!notiFineStr) {
        Byte value[] = {3, 12, 226, 230, 28, 180, 199, 117, 64, 74, 254, 152, 103, 112, 106, 45};
        notiFineStr = [self StringFromQualifyData:value];
    }
    return notiFineStr;
}

//: video
- (NSString *)mContinuousNameId {
    /* static */ NSString *mContinuousNameId = nil;
    if (!mContinuousNameId) {
        Byte value[] = {5, 9, 157, 208, 131, 214, 119, 31, 213, 111, 101, 100, 105, 118, 3};
        mContinuousNameId = [self StringFromQualifyData:value];
    }
    return mContinuousNameId;
}

//: systemSetting
- (NSString *)showEverythingIdent {
    /* static */ NSString *showEverythingIdent = nil;
    if (!showEverythingIdent) {
        Byte value[] = {13, 6, 48, 111, 184, 228, 103, 110, 105, 116, 116, 101, 83, 109, 101, 116, 115, 121, 115, 198};
        showEverythingIdent = [self StringFromQualifyData:value];
    }
    return showEverythingIdent;
}

//: Download
- (NSString *)mainPointeStr {
    /* static */ NSString *mainPointeStr = nil;
    if (!mainPointeStr) {
        Byte value[] = {8, 3, 149, 100, 97, 111, 108, 110, 119, 111, 68, 56};
        mainPointeStr = [self StringFromQualifyData:value];
    }
    return mainPointeStr;
}

//: gif
- (NSString *)main_distinctiveFormat {
    /* static */ NSString *main_distinctiveFormat = nil;
    if (!main_distinctiveFormat) {
        Byte value[] = {3, 3, 150, 102, 105, 103, 28};
        main_distinctiveFormat = [self StringFromQualifyData:value];
    }
    return main_distinctiveFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverPageMode.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "CoverPageMode.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface CoverPageMode ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation CoverPageMode

//: + (instancetype)sharedManager{
+ (instancetype)app{
    //: static ZCHttpManager *sharedManager = nil;
    static CoverPageMode *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [CoverPageMode new];
    //: });
    });
    //: return sharedManager;
    return sharedManager;
}

//: - (id)init{
- (id)init{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: AFSecurityPolicy *securityPolicy = [ZCHttpManager defaultSecurityPolicy];
        AFSecurityPolicy *securityPolicy = [CoverPageMode offName];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[[QualifyData sharedInstance] mainInstallData], [[QualifyData sharedInstance] user_expressionPath], [[QualifyData sharedInstance] showPressedStrangeStr],[[QualifyData sharedInstance] notiEstablishmentMsg],[[QualifyData sharedInstance] dreamIsolationUrl], nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)offName{
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: securityPolicy.validatesDomainName = NO;
    securityPolicy.validatesDomainName = NO;
    //: return securityPolicy;
    return securityPolicy;
}

/**
 *https验证
 */
//: + (AFSecurityPolicy *)customSecurityPolicy {
+ (AFSecurityPolicy *)notice {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[[QualifyData sharedInstance] noti_nineElsewhereValue] ofType:[[QualifyData sharedInstance] show_shootPath]]; //证书的路径
    //: NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    // AFSSLPinningModeCertificate 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];

    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = NO;
    securityPolicy.allowInvalidCertificates = NO;

    //validatesDomainName 是否需要验证域名，默认为YES；
    //假如证书的域名与你请求的域名不一致，需把该项设置为NO；如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    //置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    //如置为NO，建议自己添加对应域名的校验逻辑。
    //: securityPolicy.validatesDomainName = YES;
    securityPolicy.validatesDomainName = YES;
    //: securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)bubbleFailed:(NSString *)urlStr
            //: params:(NSDictionary *)params
            reload_strong:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            with:(BOOL)isShow
           //: success:(ResponseSuccess)success
           forward:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            title:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: urlStr = RestApi(urlStr);
        urlStr = policyMain(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self translate:urlStr with:params distance:isShow messageFailed:0 lead:YES tell:success barrelhouse:failed];
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)translate: (NSString *)urlStr
            //: params: (NSDictionary *)params
            with: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            distance: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         messageFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       lead: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           tell: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            barrelhouse: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [OnName user].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = twineInside([OnName user].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[QualifyData sharedInstance] app_carbohydratePath]];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([OnName user].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[[QualifyData sharedInstance] mainOutsideKey]];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[[QualifyData sharedInstance] showEverythingIdent]] && ![urlStr containsString:[[QualifyData sharedInstance] dream_studyShootName]] && ![urlStr containsString:[[QualifyData sharedInstance] appLanceEducationalMsg]] && ![urlStr containsString:[[QualifyData sharedInstance] app_woodPactContent]]) {
            //: NSLog(@"%@\n------%@\n%@",urlStr,params,responseObject);
        }
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[CoverPageMode app] hidden:task];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)time: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           min: (NSString *)checksum
              //: nonce: (NSString *)nonce
              contentFailed: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            tap: (NSString *)CurTime
             //: params: (NSDictionary *)params
             eventInsert: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            valueSizeSession: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             tagFailed: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;

    //添加请求头
    //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
    NSString *appKey = [[RecordInput file] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[[QualifyData sharedInstance] mainExcessId]];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[[QualifyData sharedInstance] app_journalismId]];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[[QualifyData sharedInstance] app_viaTitle]];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[[QualifyData sharedInstance] k_pressedIdent]];

    //: NSLog(@"%@\n------%@",urlStr,params);
    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[CoverPageMode app] hidden:task];
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)pitchingChange{

    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSTimeZone *zone = [NSTimeZone localTimeZone];
    NSTimeZone *zone = [NSTimeZone localTimeZone];
  // 获取指定时间所在时区与UTC时区的间隔秒数
  //: NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  //: return timeSp;
  return timeSp;
}

//sha1加密方式
//: + (NSString *)sha1:(NSString *)input
+ (NSString *)zonePath:(NSString *)input
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];

     //: NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
     NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    //: uint8_t digest[20];
    uint8_t digest[20];

    //: CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    //: NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    //: for(int i=0; i<20; i++) {
    for(int i=0; i<20; i++) {
        //: [output appendFormat:@"%02x", digest[i]];
        [output appendFormat:@"%02x", digest[i]];
    }

    //: return output;
    return output;
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)circle: (NSString *)urlStr
             //: params: (NSDictionary *)params
             godspeed: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             preserve: (BOOL)isShow
            //: success: (ResponseSuccess)success
            bottom: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             tagStandard: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: urlStr = RestApi(urlStr);
        urlStr = policyMain(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self lastSize:urlStr withRecord:params shadow:isShow input:0 marginOff:YES sizeFailed:success style:failed];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)lastSize: (NSString *)urlStr
             //: params: (NSDictionary *)params
             withRecord: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             shadow: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          input: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        marginOff: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            sizeFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             style: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [OnName user].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = twineInside([OnName user].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[QualifyData sharedInstance] app_carbohydratePath]];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([OnName user].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[[QualifyData sharedInstance] mainOutsideKey]];
    }

    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",urlStr,params,responseObject);
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[CoverPageMode app] hidden:task];
}


//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)associate:(NSString *)URL
               //: parameters:(id)parameters
               keyManager:(id)parameters
                     //: name:(NSString *)name
                     page:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 stepFailed:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 shared:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  blueOn:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   by:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: URL = RestApi(URL);
        URL = policyMain(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:filePath name:name error:&error];
        [formData appendPartWithFileURL:filePath name:name error:&error];
        //: (failed && error) ? failed(nil ,error) : nil;
        (failed && error) ? failed(nil ,error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{//上传进度
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:t];
    [[CoverPageMode app] hidden:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)contentSearched:(NSString *)URL
                 //: parameters:(id)parameters
                 title:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     pictureFailed:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   message:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    complete:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     container:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: URL = RestApi(URL);
        URL = policyMain(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = twineInside([OnName user].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[QualifyData sharedInstance] app_carbohydratePath]];

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [[QualifyData sharedInstance] notiFineStr];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [[QualifyData sharedInstance] notiFineStr];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [[QualifyData sharedInstance] noti_economistKey];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [[QualifyData sharedInstance] main_distinctiveFormat];
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[[QualifyData sharedInstance] mCountroductionMessage],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:[[QualifyData sharedInstance] userFatigueMessage] fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[CoverPageMode app] hidden:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)afterClear:(NSString *)URL
                 //: parameters:(id)parameters
                 hide:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     addFailed:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 numericalQuantity:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   sound:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    view:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     size:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: URL = RestApi(URL);
        URL = policyMain(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [[QualifyData sharedInstance] notiFineStr];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [[QualifyData sharedInstance] notiFineStr];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [[QualifyData sharedInstance] noti_economistKey];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [[QualifyData sharedInstance] main_distinctiveFormat];
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[[QualifyData sharedInstance] mCountroductionMessage],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :[[QualifyData sharedInstance] userFatigueMessage];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[CoverPageMode app] hidden:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)size:(NSString *)URL
                 //: parameters:(id)parameters
                 workFlow:(id)parameters
                       //: name:(NSString *)name
                       messageShould:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     key_strong:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  originTitle_strong:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 numerousness:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  parametersVersion:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   behindTransformHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    style:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     label:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [[QualifyData sharedInstance] appDeliverStr];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[[QualifyData sharedInstance] notiFineStr]];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[[QualifyData sharedInstance] notiFineStr]] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:[[QualifyData sharedInstance] mCountroductionMessage],imageType ?: [[QualifyData sharedInstance] notiFineStr]];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[CoverPageMode app] hidden:t];
}


//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)uploadTableKey:(NSString *)URL
                 //: parameters:(id)parameters
                 upload:(id)parameters
                     //: images:(NSData *)videoData
                     move:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 collection:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   add:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    streetwise:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     session:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: URL = RestApi(URL);
        URL = policyMain(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[[QualifyData sharedInstance] kSuggestData],timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [[QualifyData sharedInstance] noti_upUrl];
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[[QualifyData sharedInstance] mContinuousNameId] fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[[QualifyData sharedInstance] kCompanyPath] fileName:[NSString stringWithFormat:[[QualifyData sharedInstance] kElsewhereMsg],timeSp] mimeType:[[QualifyData sharedInstance] showRegnantStudyMsg]];
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[CoverPageMode app] hidden:t];
}




//: + (void)downloadWithURL:(NSString *)URL
+ (void)rangeFlip:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                length:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               event:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                progressTip:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 failed:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[QualifyData sharedInstance] appStrangeTitle]]){
        //: URL = RestApi(URL);
        URL = policyMain(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [CoverPageMode app].manager;
    //: NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(downloadProgress);
            progress(downloadProgress);
        }
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [[QualifyData sharedInstance] mainPointeStr]];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];
    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //: if(failed && error) {failed(nil ,error) ; return ;};
        if(failed && error) {failed(nil ,error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;
    //: }];
    }];
    //: [downloadTask resume];
    [downloadTask resume];
}




//: #pragma mark - 管理请求队列
#pragma mark - 管理请求队列


//: - (void)addTask:(NSURLSessionDataTask *)task{
- (void)hidden:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self stint];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)assemblageTask:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self withBe]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self stint];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)stint{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (!taskDic) {
//        taskDic = @{}.mutableCopy;
//        objc_setAssociatedObject(self, @selector(addTask:), taskDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return taskDic;
    //: return nil;
    return nil;
}

//: - (BOOL)ifRequesting{
- (BOOL)withBe{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}

//: - (void)cancelRequest{
- (void)analogDigitalConverter{

    //: if ([self ifRequesting]) {
    if ([self withBe]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[CoverPageMode app] stint];
        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);

        //: [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
            //: if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
                //: [((NSURLSessionDataTask *)obj) cancel];
                [((NSURLSessionDataTask *)obj) cancel];
            }
        //: }];
        }];
    }
}

//取消网络请求
//: + (void)cancelRequestWithURLString:(NSString *)URLString{
+ (void)selected:(NSString *)URLString{

//    if ([[HMDataRequest shareDataRequest] ifRequesting]) {
//        NSMutableDictionary *taskDic = [[HMDataRequest shareDataRequest] taskQueue];
//        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);
//
//        [taskDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted
//                && [[((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString] rangeOfString:URLString].location != NSNotFound) {
//
//                HMLog(@"----end----%@", [((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString]);
//
//                [((NSURLSessionDataTask *)obj) cancel];
//
//            }
//        }];
//    }


}

//: @end
@end